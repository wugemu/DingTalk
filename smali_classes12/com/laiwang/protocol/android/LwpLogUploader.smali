.class public Lcom/laiwang/protocol/android/LwpLogUploader;
.super Ljava/lang/Object;
.source "LwpLogUploader.java"

# interfaces
.implements Lcom/laiwang/protocol/android/log/PerfLogger$b;


# static fields
.field private static PERF_URL:Ljava/lang/String;


# instance fields
.field private wifiOnlyLen:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    const-string/jumbo v0, "/r/LwpLog/stat"

    sput-object v0, Lcom/laiwang/protocol/android/LwpLogUploader;->PERF_URL:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(J)V
    .locals 1
    .param p1, "wifiOnlyLen"    # J

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-wide p1, p0, Lcom/laiwang/protocol/android/LwpLogUploader;->wifiOnlyLen:J

    .line 30
    return-void
.end method

.method private upload(Ljava/io/File;Lcom/laiwang/protocol/android/Reply;)V
    .locals 10
    .param p1, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Lcom/laiwang/protocol/android/Reply",
            "<",
            "Lcom/laiwang/protocol/core/Response;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 51
    .local p2, "reply":Lcom/laiwang/protocol/android/Reply;, "Lcom/laiwang/protocol/android/Reply<Lcom/laiwang/protocol/core/Response;>;"
    :try_start_0
    sget-object v6, Lcom/laiwang/protocol/android/LwpLogUploader;->PERF_URL:Ljava/lang/String;

    invoke-static {v6}, Lcom/laiwang/protocol/core/Request;->newRequest(Ljava/lang/String;)Lcom/laiwang/protocol/core/Request;

    move-result-object v5

    .line 53
    .local v5, "request":Lcom/laiwang/protocol/core/Request;
    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v2

    .line 54
    .local v2, "len":J
    const-wide/32 v6, 0x7d000

    cmp-long v6, v2, v6

    if-lez v6, :cond_0

    .line 55
    const-string/jumbo v6, "[Log] perf log file too large, %d bytes"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v6, v7}, Lcom/laiwang/protocol/android/log/TraceLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 56
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v2, v3}, Lcom/laiwang/protocol/android/log/PerfLogger;->logPerfLog2Large(Ljava/lang/String;J)V

    .line 73
    .end local v2    # "len":J
    .end local v5    # "request":Lcom/laiwang/protocol/core/Request;
    :goto_0
    return-void

    .line 59
    .restart local v2    # "len":J
    .restart local v5    # "request":Lcom/laiwang/protocol/core/Request;
    :cond_0
    const-string/jumbo v6, "perf log len is %d"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v6, v7}, Lcom/laiwang/protocol/android/log/TraceLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 60
    iget-wide v6, p0, Lcom/laiwang/protocol/android/LwpLogUploader;->wifiOnlyLen:J

    cmp-long v6, v2, v6

    if-lez v6, :cond_1

    .line 61
    sget-object v6, Lcom/laiwang/protocol/attribute/Attributes;->WIFI_ONLY:Lcom/laiwang/protocol/attribute/AttributeKey;

    invoke-virtual {v5, v6}, Lcom/laiwang/protocol/core/Request;->attr(Lcom/laiwang/protocol/attribute/AttributeKey;)Lcom/laiwang/protocol/attribute/Attribute;

    move-result-object v6

    const/4 v7, 0x1

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-interface {v6, v7}, Lcom/laiwang/protocol/attribute/Attribute;->set(Ljava/lang/Object;)V

    .line 63
    :cond_1
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 65
    .local v1, "in":Ljava/io/InputStream;
    long-to-int v6, v2

    new-array v4, v6, [B

    .line 66
    .local v4, "payload":[B
    invoke-virtual {v1, v4}, Ljava/io/InputStream;->read([B)I

    .line 67
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 68
    invoke-virtual {v5, v4}, Lcom/laiwang/protocol/core/Request;->payload([B)V

    .line 69
    invoke-static {v5, p2}, Lcom/laiwang/protocol/android/LWP;->ask(Lcom/laiwang/protocol/core/Request;Lcom/laiwang/protocol/android/Reply;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 70
    .end local v1    # "in":Ljava/io/InputStream;
    .end local v2    # "len":J
    .end local v4    # "payload":[B
    .end local v5    # "request":Lcom/laiwang/protocol/core/Request;
    :catch_0
    move-exception v0

    .line 71
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v6, "[Log] upload error"

    invoke-static {v6, v0}, Lcom/laiwang/protocol/android/log/TraceLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method


# virtual methods
.method public uploadLog(Ljava/io/File;)V
    .locals 1
    .param p1, "file"    # Ljava/io/File;

    .prologue
    .line 33
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/laiwang/protocol/android/LwpLogUploader;->upload(Ljava/io/File;Lcom/laiwang/protocol/android/Reply;)V

    .line 34
    return-void
.end method

.method public uploadLogAndDel(Ljava/io/File;)V
    .locals 1
    .param p1, "file"    # Ljava/io/File;

    .prologue
    .line 38
    new-instance v0, Lcom/laiwang/protocol/android/LwpLogUploader$1;

    invoke-direct {v0, p0, p1}, Lcom/laiwang/protocol/android/LwpLogUploader$1;-><init>(Lcom/laiwang/protocol/android/LwpLogUploader;Ljava/io/File;)V

    invoke-direct {p0, p1, v0}, Lcom/laiwang/protocol/android/LwpLogUploader;->upload(Ljava/io/File;Lcom/laiwang/protocol/android/Reply;)V

    .line 47
    return-void
.end method
