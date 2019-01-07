.class final Lhnb$1;
.super Ljava/lang/Object;
.source "SimpleFileDownloader.java"

# interfaces
.implements Lcom/alibaba/doraemon/request/ResponseReceiver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lhnb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lhnb;


# direct methods
.method constructor <init>(Lhnb;)V
    .locals 0
    .param p1, "this$0"    # Lhnb;

    .prologue
    .line 49
    iput-object p1, p0, Lhnb$1;->a:Lhnb;

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
    iget-object v1, p0, Lhnb$1;->a:Lhnb;

    iget-object v1, v1, Lhnb;->f:Lhna$a;

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
    iget-object v1, p0, Lhnb$1;->a:Lhnb;

    iget-object v1, v1, Lhnb;->f:Lhna$a;

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
    const/4 v9, 0x0

    const/16 v8, 0xc

    .line 52
    if-nez p2, :cond_1

    .line 53
    iget-object v4, p0, Lhnb$1;->a:Lhnb;

    iget-object v4, v4, Lhnb;->f:Lhna$a;

    if-eqz v4, :cond_0

    .line 54
    iget-object v4, p0, Lhnb$1;->a:Lhnb;

    iget-object v4, v4, Lhnb;->f:Lhna$a;

    const-string/jumbo v5, "response is null"

    invoke-interface {v4, v8, v5}, Lhna$a;->a(ILjava/lang/String;)V

    .line 109
    :cond_0
    :goto_0
    return-void

    .line 60
    :cond_1
    invoke-interface {p2}, Lcom/alibaba/doraemon/request/Response;->isSuccess()Z

    move-result v4

    if-nez v4, :cond_2

    .line 61
    iget-object v4, p0, Lhnb$1;->a:Lhnb;

    iget-object v4, v4, Lhnb;->f:Lhna$a;

    if-eqz v4, :cond_0

    .line 62
    iget-object v4, p0, Lhnb$1;->a:Lhnb;

    iget-object v4, v4, Lhnb;->f:Lhna$a;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "response is unsuccessful: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 63
    invoke-interface {p2}, Lcom/alibaba/doraemon/request/Response;->getErrorDescription()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 62
    invoke-interface {v4, v8, v5}, Lhna$a;->a(ILjava/lang/String;)V

    goto :goto_0

    .line 71
    :cond_2
    invoke-static {v9}, Lcms;->k(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 72
    invoke-interface {p2}, Lcom/alibaba/doraemon/request/Response;->dataLength()J

    move-result-wide v4

    const-wide/32 v6, 0xa00000

    cmp-long v4, v4, v6

    if-lez v4, :cond_3

    .line 73
    const-string/jumbo v0, "file too large in cellular network"

    .line 74
    .local v0, "errorMessage":Ljava/lang/String;
    const-string/jumbo v4, "SimpleFileDownloader"

    invoke-static {v4, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    iget-object v4, p0, Lhnb$1;->a:Lhnb;

    iget-object v4, v4, Lhnb;->f:Lhna$a;

    if-eqz v4, :cond_0

    .line 76
    iget-object v4, p0, Lhnb$1;->a:Lhnb;

    iget-object v4, v4, Lhnb;->f:Lhna$a;

    new-instance v5, Ljava/lang/Exception;

    invoke-direct {v5, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-interface {v4, v8, v0}, Lhna$a;->a(ILjava/lang/String;)V

    goto :goto_0

    .line 82
    .end local v0    # "errorMessage":Ljava/lang/String;
    :cond_3
    invoke-interface {p2}, Lcom/alibaba/doraemon/request/Response;->getStatusCode()I

    move-result v2

    .line 84
    .local v2, "statusCode":I
    const/16 v4, 0xc8

    if-lt v2, v4, :cond_5

    const/16 v4, 0x12c

    if-ge v2, v4, :cond_5

    .line 85
    invoke-static {}, Lcom/alibaba/lightapp/runtime/miniapp/res/LocalResManager;->a()Lcom/alibaba/lightapp/runtime/miniapp/res/LocalResManager;

    move-result-object v4

    .line 86
    invoke-interface {p2}, Lcom/alibaba/doraemon/request/Response;->getResponseBody()Lcom/alibaba/doraemon/request/RequestInputStream;

    move-result-object v5

    invoke-virtual {v4, v5, v9, v9}, Lcom/alibaba/lightapp/runtime/miniapp/res/LocalResManager;->a(Ljava/io/InputStream;Ljava/lang/String;Lcom/alibaba/lightapp/runtime/miniapp/res/LocalResManager$FileType;)Lcom/alibaba/lightapp/runtime/miniapp/model/LocalResModel;

    move-result-object v3

    .line 88
    .local v3, "tempResModel":Lcom/alibaba/lightapp/runtime/miniapp/model/LocalResModel;
    if-nez v3, :cond_4

    .line 89
    iget-object v4, p0, Lhnb$1;->a:Lhnb;

    iget-object v4, v4, Lhnb;->f:Lhna$a;

    if-eqz v4, :cond_0

    .line 90
    iget-object v4, p0, Lhnb$1;->a:Lhnb;

    iget-object v4, v4, Lhnb;->f:Lhna$a;

    const-string/jumbo v5, "save temp file failed"

    invoke-interface {v4, v8, v5}, Lhna$a;->a(ILjava/lang/String;)V

    goto/16 :goto_0

    .line 96
    :cond_4
    iget-object v4, p0, Lhnb$1;->a:Lhnb;

    iget-object v4, v4, Lhnb;->f:Lhna$a;

    if-eqz v4, :cond_0

    .line 97
    new-instance v1, Lhmx$a;

    iget-object v4, p0, Lhnb$1;->a:Lhnb;

    invoke-direct {v1, v4}, Lhmx$a;-><init>(Lhmx;)V

    .line 98
    .local v1, "r":Lhmx$a;
    iput-object v3, v1, Lhmx$a;->a:Lcom/alibaba/lightapp/runtime/miniapp/model/LocalResModel;

    .line 100
    iget-object v4, p0, Lhnb$1;->a:Lhnb;

    iget-object v4, v4, Lhnb;->f:Lhna$a;

    invoke-interface {v4, v1}, Lhna$a;->a(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 104
    .end local v1    # "r":Lhmx$a;
    .end local v3    # "tempResModel":Lcom/alibaba/lightapp/runtime/miniapp/model/LocalResModel;
    :cond_5
    iget-object v4, p0, Lhnb$1;->a:Lhnb;

    iget-object v4, v4, Lhnb;->f:Lhna$a;

    if-eqz v4, :cond_0

    .line 105
    iget-object v4, p0, Lhnb$1;->a:Lhnb;

    iget-object v4, v4, Lhnb;->f:Lhna$a;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "download failed statusCode="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v8, v5}, Lhna$a;->a(ILjava/lang/String;)V

    goto/16 :goto_0
.end method

.method public final onRequestStarted(Lcom/alibaba/doraemon/request/Request;)V
    .locals 1
    .param p1, "request"    # Lcom/alibaba/doraemon/request/Request;

    .prologue
    .line 113
    iget-object v0, p0, Lhnb$1;->a:Lhnb;

    iget-object v0, v0, Lhnb;->f:Lhna$a;

    if-eqz v0, :cond_0

    .line 114
    iget-object v0, p0, Lhnb$1;->a:Lhnb;

    iget-object v0, v0, Lhnb;->f:Lhna$a;

    invoke-interface {v0}, Lhna$a;->a()V

    .line 116
    :cond_0
    return-void
.end method
