.class final Leww$2;
.super Ljava/lang/Object;
.source "TelePhoneContactManager.java"

# interfaces
.implements Lcom/alibaba/doraemon/request/ResponseReceiver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Leww;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:J

.field final synthetic b:Leww;


# direct methods
.method constructor <init>(Leww;J)V
    .locals 0
    .param p1, "this$0"    # Leww;

    .prologue
    .line 279
    iput-object p1, p0, Leww$2;->b:Leww;

    iput-wide p2, p0, Leww$2;->a:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onProgressChange(Lcom/alibaba/doraemon/request/Request;JJ)V
    .locals 0
    .param p1, "request"    # Lcom/alibaba/doraemon/request/Request;
    .param p2, "totalSize"    # J
    .param p4, "downloadSize"    # J

    .prologue
    .line 310
    return-void
.end method

.method public final onRequestFinsh(Lcom/alibaba/doraemon/request/Request;Lcom/alibaba/doraemon/request/Response;)V
    .locals 8
    .param p1, "request"    # Lcom/alibaba/doraemon/request/Request;
    .param p2, "response"    # Lcom/alibaba/doraemon/request/Response;

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 282
    if-eqz p2, :cond_0

    invoke-interface {p2}, Lcom/alibaba/doraemon/request/Response;->isSuccess()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 283
    invoke-interface {p2}, Lcom/alibaba/doraemon/request/Response;->getResponseBody()Lcom/alibaba/doraemon/request/RequestInputStream;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 285
    :try_start_0
    invoke-interface {p2}, Lcom/alibaba/doraemon/request/Response;->dataLength()J

    move-result-wide v4

    long-to-int v0, v4

    .line 286
    .local v0, "dataSize":I
    if-lez v0, :cond_0

    const v3, 0x7d000

    if-ge v0, v3, :cond_0

    .line 287
    new-array v1, v0, [B

    .line 288
    .local v1, "drawableData":[B
    invoke-interface {p2}, Lcom/alibaba/doraemon/request/Response;->getResponseBody()Lcom/alibaba/doraemon/request/RequestInputStream;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/alibaba/doraemon/request/RequestInputStream;->read([B)I

    .line 290
    iget-wide v4, p0, Leww$2;->a:J

    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-lez v3, :cond_0

    .line 291
    iget-wide v4, p0, Leww$2;->a:J

    invoke-static {v4, v5, v1}, Leyt;->a(J[B)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 300
    .end local v0    # "dataSize":I
    .end local v1    # "drawableData":[B
    :cond_0
    :goto_0
    return-void

    .line 294
    :catch_0
    move-exception v2

    .line 295
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    .line 296
    const-string/jumbo v3, "tele_conf"

    invoke-static {}, Leww;->b()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "Write photo exp"

    invoke-static {v3, v4, v5}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final onRequestStarted(Lcom/alibaba/doraemon/request/Request;)V
    .locals 0
    .param p1, "request"    # Lcom/alibaba/doraemon/request/Request;

    .prologue
    .line 305
    return-void
.end method
