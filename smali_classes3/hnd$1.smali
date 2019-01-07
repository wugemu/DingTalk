.class final Lhnd$1;
.super Ljava/lang/Object;
.source "SimpleHttpRequest.java"

# interfaces
.implements Lcom/alibaba/doraemon/request/ResponseReceiver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lhnd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lhnd;


# direct methods
.method constructor <init>(Lhnd;)V
    .locals 0
    .param p1, "this$0"    # Lhnd;

    .prologue
    .line 64
    iput-object p1, p0, Lhnd$1;->a:Lhnd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onProgressChange(Lcom/alibaba/doraemon/request/Request;JJ)V
    .locals 4
    .param p1, "request"    # Lcom/alibaba/doraemon/request/Request;
    .param p2, "totalSize"    # J
    .param p4, "downloadSize"    # J

    .prologue
    .line 120
    iget-object v1, p0, Lhnd$1;->a:Lhnd;

    iget-object v1, v1, Lhnd;->f:Lhna$a;

    if-eqz v1, :cond_0

    const-wide/16 v2, 0x0

    cmp-long v1, p2, v2

    if-eqz v1, :cond_0

    .line 121
    const-wide/16 v2, 0x64

    mul-long/2addr v2, p4

    div-long/2addr v2, p2

    long-to-int v0, v2

    .line 122
    .local v0, "percentage":I
    iget-object v1, p0, Lhnd$1;->a:Lhnd;

    iget-object v1, v1, Lhnd;->f:Lhna$a;

    invoke-interface {v1, v0}, Lhna$a;->a(I)V

    .line 124
    .end local v0    # "percentage":I
    :cond_0
    return-void
.end method

.method public final onRequestFinsh(Lcom/alibaba/doraemon/request/Request;Lcom/alibaba/doraemon/request/Response;)V
    .locals 10
    .param p1, "request"    # Lcom/alibaba/doraemon/request/Request;
    .param p2, "response"    # Lcom/alibaba/doraemon/request/Response;

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    const/16 v9, 0x13

    .line 67
    iget-object v6, p0, Lhnd$1;->a:Lhnd;

    iget-object v6, v6, Lhnd;->f:Lhna$a;

    if-nez v6, :cond_0

    .line 108
    :goto_0
    return-void

    .line 71
    :cond_0
    if-nez p2, :cond_1

    .line 72
    iget-object v6, p0, Lhnd$1;->a:Lhnd;

    iget-object v6, v6, Lhnd;->f:Lhna$a;

    const/16 v7, 0xa

    const-string/jumbo v8, "response is null"

    invoke-interface {v6, v7, v8}, Lhna$a;->a(ILjava/lang/String;)V

    goto :goto_0

    .line 77
    :cond_1
    invoke-interface {p2}, Lcom/alibaba/doraemon/request/Response;->isSuccess()Z

    move-result v6

    if-nez v6, :cond_2

    .line 78
    iget-object v6, p0, Lhnd$1;->a:Lhnd;

    iget-object v6, v6, Lhnd;->f:Lhna$a;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "response is unsuccessful: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 79
    invoke-interface {p2}, Lcom/alibaba/doraemon/request/Response;->getErrorDescription()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 78
    invoke-interface {v6, v9, v7}, Lhna$a;->a(ILjava/lang/String;)V

    goto :goto_0

    .line 83
    :cond_2
    invoke-interface {p2}, Lcom/alibaba/doraemon/request/Response;->getStatusCode()I

    move-result v5

    .line 85
    .local v5, "statusCode":I
    new-instance v2, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v2}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 86
    .local v2, "resHeadersJson":Lcom/alibaba/fastjson/JSONObject;
    invoke-interface {p2}, Lcom/alibaba/doraemon/request/Response;->getResponseHeaders()Ljava/util/Map;

    move-result-object v3

    .line 87
    .local v3, "resHeadersMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz v3, :cond_3

    .line 88
    invoke-static {v3}, Lhnd;->a(Ljava/util/Map;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v2

    .line 92
    :cond_3
    :try_start_0
    new-instance v4, Lhmz$a;

    iget-object v6, p0, Lhnd$1;->a:Lhnd;

    invoke-direct {v4, v6}, Lhmz$a;-><init>(Lhmz;)V

    .line 93
    .local v4, "result":Lhmz$a;
    iput v5, v4, Lhmz$a;->a:I

    .line 94
    iput-object v2, v4, Lhmz$a;->c:Lcom/alibaba/fastjson/JSONObject;

    .line 95
    invoke-interface {p2}, Lcom/alibaba/doraemon/request/Response;->getResponseBody()Lcom/alibaba/doraemon/request/RequestInputStream;

    move-result-object v1

    .line 96
    .local v1, "is":Ljava/io/InputStream;
    if-eqz v1, :cond_4

    .line 97
    iget-object v6, p0, Lhnd$1;->a:Lhnd;

    .line 1021
    invoke-static {v1}, Lhnd;->a(Ljava/io/InputStream;)[B

    move-result-object v6

    .line 97
    iput-object v6, v4, Lhmz$a;->b:[B

    .line 100
    :cond_4
    iget-object v6, p0, Lhnd$1;->a:Lhnd;

    iget-object v6, v6, Lhnd;->f:Lhna$a;

    invoke-interface {v6, v4}, Lhna$a;->a(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 102
    .end local v1    # "is":Ljava/io/InputStream;
    .end local v4    # "result":Lhmz$a;
    :catch_0
    move-exception v0

    .line 103
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 104
    const-string/jumbo v6, "SimpleHttpRequest"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "read stream error"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    iget-object v6, p0, Lhnd$1;->a:Lhnd;

    iget-object v6, v6, Lhnd;->f:Lhna$a;

    const-string/jumbo v7, "read response stream error"

    invoke-interface {v6, v9, v7}, Lhna$a;->a(ILjava/lang/String;)V

    goto/16 :goto_0
.end method

.method public final onRequestStarted(Lcom/alibaba/doraemon/request/Request;)V
    .locals 1
    .param p1, "request"    # Lcom/alibaba/doraemon/request/Request;

    .prologue
    .line 113
    iget-object v0, p0, Lhnd$1;->a:Lhnd;

    iget-object v0, v0, Lhnd;->f:Lhna$a;

    if-eqz v0, :cond_0

    .line 114
    iget-object v0, p0, Lhnd$1;->a:Lhnd;

    iget-object v0, v0, Lhnd;->f:Lhna$a;

    invoke-interface {v0}, Lhna$a;->a()V

    .line 116
    :cond_0
    return-void
.end method
