.class public final Lkpv;
.super Ljava/lang/Object;
.source "IOUtils.java"


# static fields
.field public static final a:C

.field public static final b:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 97
    sget-char v2, Ljava/io/File;->separatorChar:C

    sput-char v2, Lkpv;->a:C

    .line 112
    new-instance v0, Ljava/io/StringWriter;

    const/4 v2, 0x4

    invoke-direct {v0, v2}, Ljava/io/StringWriter;-><init>(I)V

    .line 113
    .local v0, "buf":Ljava/io/StringWriter;
    new-instance v1, Ljava/io/PrintWriter;

    invoke-direct {v1, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 114
    .local v1, "out":Ljava/io/PrintWriter;
    invoke-virtual {v1}, Ljava/io/PrintWriter;->println()V

    .line 115
    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lkpv;->b:Ljava/lang/String;

    .line 116
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 127
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 128
    return-void
.end method

.method public static a(Ljava/io/InputStream;Ljava/io/OutputStream;)I
    .locals 6
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "output"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, -0x1

    .line 999
    .line 4022
    const/16 v3, 0x1000

    new-array v3, v3, [B

    .line 4023
    const-wide/16 v0, 0x0

    .line 4025
    :goto_0
    invoke-virtual {p0, v3}, Ljava/io/InputStream;->read([B)I

    move-result v4

    if-eq v2, v4, :cond_0

    .line 4026
    const/4 v5, 0x0

    invoke-virtual {p1, v3, v5, v4}, Ljava/io/OutputStream;->write([BII)V

    .line 4027
    int-to-long v4, v4

    add-long/2addr v0, v4

    goto :goto_0

    .line 1000
    .local v0, "count":J
    :cond_0
    const-wide/32 v4, 0x7fffffff

    cmp-long v3, v0, v4

    if-lez v3, :cond_1

    .line 1003
    :goto_1
    return v2

    :cond_1
    long-to-int v2, v0

    goto :goto_1
.end method

.method private static a(Ljava/io/Reader;Ljava/io/Writer;)I
    .locals 6
    .param p0, "input"    # Ljava/io/Reader;
    .param p1, "output"    # Ljava/io/Writer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, -0x1

    .line 1104
    .line 4125
    const/16 v3, 0x1000

    new-array v3, v3, [C

    .line 4126
    const-wide/16 v0, 0x0

    .line 4128
    :goto_0
    invoke-virtual {p0, v3}, Ljava/io/Reader;->read([C)I

    move-result v4

    if-eq v2, v4, :cond_0

    .line 4129
    const/4 v5, 0x0

    invoke-virtual {p1, v3, v5, v4}, Ljava/io/Writer;->write([CII)V

    .line 4130
    int-to-long v4, v4

    add-long/2addr v0, v4

    goto :goto_0

    .line 1105
    .local v0, "count":J
    :cond_0
    const-wide/32 v4, 0x7fffffff

    cmp-long v3, v0, v4

    if-lez v3, :cond_1

    .line 1108
    :goto_1
    return v2

    :cond_1
    long-to-int v2, v0

    goto :goto_1
.end method

.method public static a(Ljava/io/InputStream;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "encoding"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 381
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    .line 2074
    .local v0, "sw":Ljava/io/StringWriter;
    if-nez p1, :cond_0

    .line 3049
    new-instance v1, Ljava/io/InputStreamReader;

    invoke-direct {v1, p0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 3050
    invoke-static {v1, v0}, Lkpv;->a(Ljava/io/Reader;Ljava/io/Writer;)I

    .line 383
    :goto_0
    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 2077
    :cond_0
    new-instance v1, Ljava/io/InputStreamReader;

    invoke-direct {v1, p0, p1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 2078
    invoke-static {v1, v0}, Lkpv;->a(Ljava/io/Reader;Ljava/io/Writer;)I

    goto :goto_0
.end method

.method public static a(Ljava/io/InputStream;)V
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;

    .prologue
    .line 177
    if-eqz p0, :cond_0

    .line 178
    :try_start_0
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 183
    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static a(Ljava/io/OutputStream;)V
    .locals 1
    .param p0, "output"    # Ljava/io/OutputStream;

    .prologue
    .line 196
    :try_start_0
    invoke-virtual {p0}, Ljava/io/OutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 201
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
