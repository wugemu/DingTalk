.class public Lorg/altbeacon/beacon/distance/DistanceConfigFetcher;
.super Ljava/lang/Object;
.source "DistanceConfigFetcher.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "DistanceConfigFetcher"


# instance fields
.field protected mException:Ljava/lang/Exception;

.field protected mResponse:Ljava/lang/String;

.field private mResponseCode:I

.field private mUrlString:Ljava/lang/String;

.field private mUserAgentString:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "urlString"    # Ljava/lang/String;
    .param p2, "userAgentString"    # Ljava/lang/String;

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    const/4 v0, -0x1

    iput v0, p0, Lorg/altbeacon/beacon/distance/DistanceConfigFetcher;->mResponseCode:I

    .line 25
    iput-object p1, p0, Lorg/altbeacon/beacon/distance/DistanceConfigFetcher;->mUrlString:Ljava/lang/String;

    .line 26
    iput-object p2, p0, Lorg/altbeacon/beacon/distance/DistanceConfigFetcher;->mUserAgentString:Ljava/lang/String;

    .line 27
    return-void
.end method


# virtual methods
.method public getException()Ljava/lang/Exception;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lorg/altbeacon/beacon/distance/DistanceConfigFetcher;->mException:Ljava/lang/Exception;

    return-object v0
.end method

.method public getResponseCode()I
    .locals 1

    .prologue
    .line 31
    iget v0, p0, Lorg/altbeacon/beacon/distance/DistanceConfigFetcher;->mResponseCode:I

    return v0
.end method

.method public getResponseString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lorg/altbeacon/beacon/distance/DistanceConfigFetcher;->mResponse:Ljava/lang/String;

    return-object v0
.end method

.method public request()V
    .locals 18

    .prologue
    .line 43
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-object v13, v0, Lorg/altbeacon/beacon/distance/DistanceConfigFetcher;->mResponse:Ljava/lang/String;

    .line 44
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/altbeacon/beacon/distance/DistanceConfigFetcher;->mUrlString:Ljava/lang/String;

    .line 45
    .local v2, "currentUrlString":Ljava/lang/String;
    const/4 v9, 0x0

    .line 46
    .local v9, "requestCount":I
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 48
    .local v10, "responseBuilder":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .line 50
    .local v1, "conn":Ljava/net/HttpURLConnection;
    :cond_0
    if-eqz v9, :cond_1

    .line 51
    const-string/jumbo v13, "DistanceConfigFetcher"

    const-string/jumbo v14, "Following redirect from %s to %s"

    const/4 v15, 0x2

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/altbeacon/beacon/distance/DistanceConfigFetcher;->mUrlString:Ljava/lang/String;

    move-object/from16 v17, v0

    aput-object v17, v15, v16

    const/16 v16, 0x1

    const-string/jumbo v17, "Location"

    .line 52
    move-object/from16 v0, v17

    invoke-virtual {v1, v0}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    aput-object v17, v15, v16

    .line 51
    invoke-static {v13, v14, v15}, Lorg/altbeacon/beacon/logging/LogManager;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 53
    const-string/jumbo v13, "Location"

    invoke-virtual {v1, v13}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 55
    :cond_1
    add-int/lit8 v9, v9, 0x1

    .line 56
    const/4 v13, -0x1

    move-object/from16 v0, p0

    iput v13, v0, Lorg/altbeacon/beacon/distance/DistanceConfigFetcher;->mResponseCode:I

    .line 57
    const/4 v11, 0x0

    .line 59
    .local v11, "url":Ljava/net/URL;
    :try_start_0
    new-instance v12, Ljava/net/URL;

    invoke-direct {v12, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .end local v11    # "url":Ljava/net/URL;
    .local v12, "url":Ljava/net/URL;
    move-object v11, v12

    .line 65
    .end local v12    # "url":Ljava/net/URL;
    .restart local v11    # "url":Ljava/net/URL;
    :goto_0
    if-nez v11, :cond_4

    .line 66
    const-string/jumbo v13, "DistanceConfigFetcher"

    const-string/jumbo v14, "URL is null.  Cannot make request"

    const/4 v15, 0x0

    new-array v15, v15, [Ljava/lang/Object;

    invoke-static {v13, v14, v15}, Lorg/altbeacon/beacon/logging/LogManager;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 85
    :goto_1
    const/16 v13, 0xa

    if-ge v9, v13, :cond_2

    move-object/from16 v0, p0

    iget v13, v0, Lorg/altbeacon/beacon/distance/DistanceConfigFetcher;->mResponseCode:I

    const/16 v14, 0x12e

    if-eq v13, v14, :cond_0

    move-object/from16 v0, p0

    iget v13, v0, Lorg/altbeacon/beacon/distance/DistanceConfigFetcher;->mResponseCode:I

    const/16 v14, 0x12d

    if-eq v13, v14, :cond_0

    move-object/from16 v0, p0

    iget v13, v0, Lorg/altbeacon/beacon/distance/DistanceConfigFetcher;->mResponseCode:I

    const/16 v14, 0x12f

    if-eq v13, v14, :cond_0

    .line 90
    :cond_2
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/altbeacon/beacon/distance/DistanceConfigFetcher;->mException:Ljava/lang/Exception;

    if-nez v13, :cond_3

    .line 92
    :try_start_1
    new-instance v7, Ljava/io/BufferedReader;

    new-instance v13, Ljava/io/InputStreamReader;

    .line 94
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v14

    invoke-direct {v13, v14}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v7, v13}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 97
    .local v7, "in":Ljava/io/BufferedReader;
    :goto_2
    invoke-virtual {v7}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v8

    .local v8, "inputLine":Ljava/lang/String;
    if-eqz v8, :cond_5

    .line 98
    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    .line 101
    .end local v7    # "in":Ljava/io/BufferedReader;
    .end local v8    # "inputLine":Ljava/lang/String;
    :catch_0
    move-exception v3

    .line 102
    .local v3, "e":Ljava/lang/Exception;
    move-object/from16 v0, p0

    iput-object v3, v0, Lorg/altbeacon/beacon/distance/DistanceConfigFetcher;->mException:Ljava/lang/Exception;

    .line 103
    const-string/jumbo v13, "DistanceConfigFetcher"

    const-string/jumbo v14, "error reading beacon data"

    const/4 v15, 0x0

    new-array v15, v15, [Ljava/lang/Object;

    invoke-static {v3, v13, v14, v15}, Lorg/altbeacon/beacon/logging/LogManager;->w(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 107
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_3
    :goto_3
    return-void

    .line 60
    :catch_1
    move-exception v3

    .line 61
    .restart local v3    # "e":Ljava/lang/Exception;
    const-string/jumbo v13, "DistanceConfigFetcher"

    const-string/jumbo v14, "Can\'t construct URL from: %s"

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/altbeacon/beacon/distance/DistanceConfigFetcher;->mUrlString:Ljava/lang/String;

    move-object/from16 v17, v0

    aput-object v17, v15, v16

    invoke-static {v13, v14, v15}, Lorg/altbeacon/beacon/logging/LogManager;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 62
    move-object/from16 v0, p0

    iput-object v3, v0, Lorg/altbeacon/beacon/distance/DistanceConfigFetcher;->mException:Ljava/lang/Exception;

    goto :goto_0

    .line 69
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_4
    :try_start_2
    invoke-virtual {v11}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v13

    move-object v0, v13

    check-cast v0, Ljava/net/HttpURLConnection;

    move-object v1, v0

    .line 70
    const-string/jumbo v13, "User-Agent"

    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/altbeacon/beacon/distance/DistanceConfigFetcher;->mUserAgentString:Ljava/lang/String;

    invoke-virtual {v1, v13, v14}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v13

    move-object/from16 v0, p0

    iput v13, v0, Lorg/altbeacon/beacon/distance/DistanceConfigFetcher;->mResponseCode:I

    .line 72
    const-string/jumbo v13, "DistanceConfigFetcher"

    const-string/jumbo v14, "response code is %s"

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v17

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v15, v16

    invoke-static {v13, v14, v15}, Lorg/altbeacon/beacon/logging/LogManager;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4

    goto/16 :goto_1

    .line 73
    :catch_2
    move-exception v4

    .line 74
    .local v4, "e1":Ljava/lang/SecurityException;
    const-string/jumbo v13, "DistanceConfigFetcher"

    const-string/jumbo v14, "Can\'t reach sever.  Have you added android.permission.INTERNET to your manifest?"

    const/4 v15, 0x0

    new-array v15, v15, [Ljava/lang/Object;

    invoke-static {v4, v13, v14, v15}, Lorg/altbeacon/beacon/logging/LogManager;->w(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 75
    move-object/from16 v0, p0

    iput-object v4, v0, Lorg/altbeacon/beacon/distance/DistanceConfigFetcher;->mException:Ljava/lang/Exception;

    goto/16 :goto_1

    .line 76
    .end local v4    # "e1":Ljava/lang/SecurityException;
    :catch_3
    move-exception v5

    .line 77
    .local v5, "e2":Ljava/io/FileNotFoundException;
    const-string/jumbo v13, "DistanceConfigFetcher"

    const-string/jumbo v14, "No data exists at \"+urlString"

    const/4 v15, 0x0

    new-array v15, v15, [Ljava/lang/Object;

    invoke-static {v5, v13, v14, v15}, Lorg/altbeacon/beacon/logging/LogManager;->w(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 78
    move-object/from16 v0, p0

    iput-object v5, v0, Lorg/altbeacon/beacon/distance/DistanceConfigFetcher;->mException:Ljava/lang/Exception;

    goto/16 :goto_1

    .line 79
    .end local v5    # "e2":Ljava/io/FileNotFoundException;
    :catch_4
    move-exception v6

    .line 80
    .local v6, "e3":Ljava/io/IOException;
    const-string/jumbo v13, "DistanceConfigFetcher"

    const-string/jumbo v14, "Can\'t reach server"

    const/4 v15, 0x0

    new-array v15, v15, [Ljava/lang/Object;

    invoke-static {v6, v13, v14, v15}, Lorg/altbeacon/beacon/logging/LogManager;->w(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 81
    move-object/from16 v0, p0

    iput-object v6, v0, Lorg/altbeacon/beacon/distance/DistanceConfigFetcher;->mException:Ljava/lang/Exception;

    goto/16 :goto_1

    .line 99
    .end local v6    # "e3":Ljava/io/IOException;
    .restart local v7    # "in":Ljava/io/BufferedReader;
    .restart local v8    # "inputLine":Ljava/lang/String;
    :cond_5
    :try_start_3
    invoke-virtual {v7}, Ljava/io/BufferedReader;->close()V

    .line 100
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Lorg/altbeacon/beacon/distance/DistanceConfigFetcher;->mResponse:Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_3
.end method
