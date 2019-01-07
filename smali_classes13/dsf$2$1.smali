.class final Ldsf$2$1;
.super Ljava/lang/Object;
.source "VideoPlayManager.java"

# interfaces
.implements Lcom/alibaba/doraemon/request/ResponseReceiver;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ldsf$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ldsf$2;


# direct methods
.method constructor <init>(Ldsf$2;)V
    .locals 0
    .param p1, "this$1"    # Ldsf$2;

    .prologue
    .line 232
    iput-object p1, p0, Ldsf$2$1;->a:Ldsf$2;

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
    .line 263
    return-void
.end method

.method public final onRequestFinsh(Lcom/alibaba/doraemon/request/Request;Lcom/alibaba/doraemon/request/Response;)V
    .locals 10
    .param p1, "request"    # Lcom/alibaba/doraemon/request/Request;
    .param p2, "response"    # Lcom/alibaba/doraemon/request/Response;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v3, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 235
    if-eqz p2, :cond_0

    invoke-interface {p2}, Lcom/alibaba/doraemon/request/Response;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 236
    iget-object v0, p0, Ldsf$2$1;->a:Ldsf$2;

    iget-object v1, v0, Ldsf$2;->h:Ldsf;

    iget-object v0, p0, Ldsf$2$1;->a:Ldsf$2;

    iget-object v2, v0, Ldsf$2;->b:Landroid/content/Context;

    iget-object v0, p0, Ldsf$2$1;->a:Ldsf$2;

    iget-object v3, v0, Ldsf$2;->a:Ljava/lang/String;

    iget-object v0, p0, Ldsf$2$1;->a:Ldsf$2;

    iget-wide v4, v0, Ldsf$2;->c:J

    iget-object v0, p0, Ldsf$2$1;->a:Ldsf$2;

    iget-wide v6, v0, Ldsf$2;->d:J

    iget-object v0, p0, Ldsf$2$1;->a:Ldsf$2;

    iget-object v9, v0, Ldsf$2;->e:Ldsf$a;

    move-object v8, p2

    invoke-static/range {v1 .. v9}, Ldsf;->a(Ldsf;Landroid/content/Context;Ljava/lang/String;JJLcom/alibaba/doraemon/request/Response;Ldsf$a;)V

    .line 253
    :goto_0
    return-void

    .line 238
    :cond_0
    iget-object v0, p0, Ldsf$2$1;->a:Ldsf$2;

    iget-object v0, v0, Ldsf$2;->e:Ldsf$a;

    if-eqz v0, :cond_1

    .line 239
    iget-object v0, p0, Ldsf$2$1;->a:Ldsf$2;

    iget-object v0, v0, Ldsf$2;->h:Ldsf;

    invoke-static {v0}, Ldsf;->a(Ldsf;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Ldsf$2$1$1;

    invoke-direct {v1, p0, p2}, Ldsf$2$1$1;-><init>(Ldsf$2$1;Lcom/alibaba/doraemon/request/Response;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 251
    :cond_1
    const-string/jumbo v1, "im"

    const-string/jumbo v2, "video"

    if-eqz p2, :cond_2

    new-array v0, v3, [Ljava/lang/String;

    iget-object v3, p0, Ldsf$2$1;->a:Ldsf$2;

    iget-object v3, v3, Ldsf$2;->a:Ljava/lang/String;

    aput-object v3, v0, v4

    invoke-interface {p2}, Lcom/alibaba/doraemon/request/Response;->getErrorDescription()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v5

    invoke-static {v0}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-static {v1, v2, v0}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    new-array v0, v3, [Ljava/lang/String;

    iget-object v3, p0, Ldsf$2$1;->a:Ldsf$2;

    iget-object v3, v3, Ldsf$2;->a:Ljava/lang/String;

    aput-object v3, v0, v4

    const-string/jumbo v3, "response is null!"

    aput-object v3, v0, v5

    invoke-static {v0}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method public final onRequestStarted(Lcom/alibaba/doraemon/request/Request;)V
    .locals 0
    .param p1, "request"    # Lcom/alibaba/doraemon/request/Request;

    .prologue
    .line 258
    return-void
.end method
