.class public final Lclk;
.super Ljava/lang/Object;
.source "HttpDetector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lclk$a;
    }
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:I


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 1
    .param p1, "timeout"    # I
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    const/16 v0, 0x1388

    iput v0, p0, Lclk;->b:I

    .line 24
    iput-object p2, p0, Lclk;->a:Ljava/lang/String;

    .line 25
    return-void
.end method


# virtual methods
.method public final a(Lclk$a;)V
    .locals 6
    .param p1, "httpDetectCallback"    # Lclk$a;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 30
    const/4 v1, 0x0

    .line 32
    .local v1, "conn":Ljava/net/HttpURLConnection;
    :try_start_0
    new-instance v3, Ljava/net/URL;

    iget-object v4, p0, Lclk;->a:Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 33
    .local v3, "url":Ljava/net/URL;
    invoke-virtual {v3}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Ljava/net/HttpURLConnection;

    move-object v1, v0

    .line 34
    iget v4, p0, Lclk;->b:I

    invoke-virtual {v1, v4}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 35
    const-string/jumbo v4, "User-Agent"

    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v5

    invoke-virtual {v5}, Lcid;->b()Lchy;

    move-result-object v5

    invoke-virtual {v5}, Lchy;->getWKUserAgent()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    const-string/jumbo v4, "Connection"

    const-string/jumbo v5, "close"

    invoke-virtual {v1, v4, v5}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v4

    const/16 v5, 0xc8

    if-ne v4, v5, :cond_0

    .line 38
    const/4 v4, 0x1

    invoke-interface {p1, v4}, Lclk$a;->a(Z)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 51
    :goto_0
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 52
    .end local v3    # "url":Ljava/net/URL;
    :goto_1
    return-void

    .line 40
    .restart local v3    # "url":Ljava/net/URL;
    :cond_0
    const/4 v4, 0x0

    :try_start_1
    invoke-interface {p1, v4}, Lclk$a;->a(Z)V
    :try_end_1
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 42
    .end local v3    # "url":Ljava/net/URL;
    :catch_0
    move-exception v2

    .line 44
    .local v2, "e":Ljava/net/MalformedURLException;
    :try_start_2
    invoke-virtual {v2}, Ljava/net/MalformedURLException;->printStackTrace()V

    .line 45
    const/4 v4, 0x0

    invoke-interface {p1, v4}, Lclk$a;->a(Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 51
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    goto :goto_1

    .line 46
    .end local v2    # "e":Ljava/net/MalformedURLException;
    :catch_1
    move-exception v2

    .line 48
    .local v2, "e":Ljava/io/IOException;
    :try_start_3
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    .line 49
    const/4 v4, 0x0

    invoke-interface {p1, v4}, Lclk$a;->a(Z)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 51
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    goto :goto_1

    .end local v2    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v4

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    throw v4
.end method
