.class public final Lph;
.super Ljava/lang/Object;
.source "WebUtils.java"


# static fields
.field private static final a:Ljava/util/TimeZone;

.field private static b:Z

.field private static c:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 29
    const-string/jumbo v0, "GMT+8"

    invoke-static {v0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v0

    sput-object v0, Lph;->a:Ljava/util/TimeZone;

    .line 32
    sput-boolean v1, Lph;->b:Z

    .line 33
    sput-boolean v1, Lph;->c:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Ljava/io/InputStream;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "stream"    # Ljava/io/InputStream;
    .param p1, "charset"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 61
    :try_start_0
    new-instance v2, Ljava/io/InputStreamReader;

    invoke-direct {v2, p0, p1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 62
    .local v2, "reader":Ljava/io/Reader;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 64
    .local v3, "response":Ljava/lang/StringBuilder;
    const/16 v4, 0x400

    new-array v0, v4, [C

    .line 66
    .local v0, "buff":[C
    :goto_0
    invoke-virtual {v2, v0}, Ljava/io/Reader;->read([C)I

    move-result v1

    .local v1, "read":I
    if-lez v1, :cond_1

    .line 67
    const/4 v4, 0x0

    invoke-virtual {v3, v0, v4, v1}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 72
    .end local v0    # "buff":[C
    .end local v1    # "read":I
    .end local v2    # "reader":Ljava/io/Reader;
    .end local v3    # "response":Ljava/lang/StringBuilder;
    :catchall_0
    move-exception v4

    if-eqz p0, :cond_0

    .line 73
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    :cond_0
    throw v4

    .line 70
    .restart local v0    # "buff":[C
    .restart local v1    # "read":I
    .restart local v2    # "reader":Ljava/io/Reader;
    .restart local v3    # "response":Ljava/lang/StringBuilder;
    :cond_1
    :try_start_1
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v4

    .line 72
    if-eqz p0, :cond_2

    .line 73
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    .line 70
    :cond_2
    return-object v4
.end method

.method public static a(Ljava/net/HttpURLConnection;)Ljava/lang/String;
    .locals 10
    .param p0, "conn"    # Ljava/net/HttpURLConnection;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v9, 0x190

    const/4 v8, 0x2

    const/4 v7, 0x1

    .line 36
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getContentType()Ljava/lang/String;

    move-result-object v2

    .line 1079
    const-string/jumbo v0, "UTF-8"

    .line 1081
    invoke-static {v2}, Lph;->a(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1082
    const-string/jumbo v3, ";"

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 1083
    array-length v4, v3

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v4, :cond_0

    aget-object v5, v3, v2

    .line 1084
    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    .line 1085
    const-string/jumbo v6, "charset"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 1086
    const-string/jumbo v2, "="

    invoke-virtual {v5, v2, v8}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v2

    .line 1087
    array-length v3, v2

    if-ne v3, v8, :cond_0

    .line 1088
    aget-object v3, v2, v7

    invoke-static {v3}, Lph;->a(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1089
    aget-object v2, v2, v7

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 37
    .local v0, "charset":Ljava/lang/String;
    :cond_0
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v2

    if-ge v2, v9, :cond_2

    .line 38
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getContentEncoding()Ljava/lang/String;

    .line 41
    new-instance v2, Ljava/util/zip/GZIPInputStream;

    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-static {v2, v0}, Lph;->a(Ljava/io/InputStream;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 51
    :goto_1
    return-object v2

    .line 1083
    .end local v0    # "charset":Ljava/lang/String;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 48
    .restart local v0    # "charset":Ljava/lang/String;
    :cond_2
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v2

    if-ne v2, v9, :cond_3

    .line 49
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object v1

    .line 50
    .local v1, "error":Ljava/io/InputStream;
    if-eqz v1, :cond_3

    .line 51
    invoke-static {v1, v0}, Lph;->a(Ljava/io/InputStream;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 55
    .end local v1    # "error":Ljava/io/InputStream;
    :cond_3
    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getResponseMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public static a(Ljava/util/Date;)Ljava/lang/String;
    .locals 2
    .param p0, "date"    # Ljava/util/Date;

    .prologue
    .line 101
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v1, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 102
    .local v0, "format":Ljava/text/DateFormat;
    sget-object v1, Lph;->a:Ljava/util/TimeZone;

    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 103
    invoke-virtual {v0, p0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private static a(Ljava/lang/String;)Z
    .locals 4
    .param p0, "value"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    .line 108
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    .local v1, "strLen":I
    if-nez v1, :cond_1

    .line 116
    .end local v1    # "strLen":I
    :cond_0
    :goto_0
    return v2

    .line 111
    .restart local v1    # "strLen":I
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, v1, :cond_0

    .line 112
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v3

    if-nez v3, :cond_2

    .line 113
    const/4 v2, 0x0

    goto :goto_0

    .line 111
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public static varargs a([Ljava/lang/String;)Z
    .locals 5
    .param p0, "values"    # [Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 120
    const/4 v0, 0x1

    .local v0, "result":Z
    move v4, v3

    .line 124
    :goto_0
    const/4 v2, 0x2

    if-ge v4, v2, :cond_1

    aget-object v1, p0, v4

    .line 125
    .local v1, "value":Ljava/lang/String;
    invoke-static {v1}, Lph;->a(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x1

    :goto_1
    and-int/2addr v0, v2

    .line 124
    add-int/lit8 v2, v4, 0x1

    move v4, v2

    goto :goto_0

    :cond_0
    move v2, v3

    .line 125
    goto :goto_1

    .line 128
    .end local v1    # "value":Ljava/lang/String;
    :cond_1
    return v0
.end method
