.class final Leaq$1$1;
.super Ljava/lang/Object;
.source "GroupRingDownload.java"

# interfaces
.implements Lcom/alibaba/doraemon/request/ResponseReceiver;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Leaq$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Leaq$1;


# direct methods
.method constructor <init>(Leaq$1;)V
    .locals 0
    .param p1, "this$1"    # Leaq$1;

    .prologue
    .line 100
    iput-object p1, p0, Leaq$1$1;->a:Leaq$1;

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
    .line 124
    return-void
.end method

.method public final onRequestFinsh(Lcom/alibaba/doraemon/request/Request;Lcom/alibaba/doraemon/request/Response;)V
    .locals 8
    .param p1, "request"    # Lcom/alibaba/doraemon/request/Request;
    .param p2, "response"    # Lcom/alibaba/doraemon/request/Response;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 103
    if-eqz p2, :cond_0

    invoke-interface {p2}, Lcom/alibaba/doraemon/request/Response;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 104
    iget-object v0, p0, Leaq$1$1;->a:Leaq$1;

    iget-object v0, v0, Leaq$1;->d:Leaq;

    iget-object v1, p0, Leaq$1$1;->a:Leaq$1;

    iget-object v1, v1, Leaq$1;->a:Landroid/content/Context;

    iget-object v2, p0, Leaq$1$1;->a:Leaq$1;

    iget-object v2, v2, Leaq$1;->b:Ljava/lang/String;

    iget-object v3, p0, Leaq$1$1;->a:Leaq$1;

    iget-object v3, v3, Leaq$1;->c:Lcma;

    invoke-static {v0, v1, v2, p2, v3}, Leaq;->a(Leaq;Landroid/content/Context;Ljava/lang/String;Lcom/alibaba/doraemon/request/Response;Lcma;)V

    .line 114
    :goto_0
    return-void

    .line 106
    :cond_0
    if-eqz p2, :cond_1

    .line 107
    iget-object v0, p0, Leaq$1$1;->a:Leaq$1;

    iget-object v0, v0, Leaq$1;->d:Leaq;

    const-string/jumbo v1, "500"

    iget-object v2, p0, Leaq$1$1;->a:Leaq$1;

    iget-object v2, v2, Leaq$1;->c:Lcma;

    invoke-static {v0, v1, v3, v2}, Leaq;->a(Leaq;Ljava/lang/String;Ljava/lang/String;Lcma;)V

    .line 108
    const-string/jumbo v0, "im"

    new-array v1, v7, [Ljava/lang/String;

    const-string/jumbo v2, "[GroupRingDownload]"

    aput-object v2, v1, v4

    const-string/jumbo v2, " download audio error:"

    aput-object v2, v1, v5

    invoke-interface {p2}, Lcom/alibaba/doraemon/request/Response;->getErrorDescription()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v6

    invoke-static {v1}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v3, v1}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 110
    :cond_1
    iget-object v0, p0, Leaq$1$1;->a:Leaq$1;

    iget-object v0, v0, Leaq$1;->d:Leaq;

    const-string/jumbo v1, "400"

    iget-object v2, p0, Leaq$1$1;->a:Leaq$1;

    iget-object v2, v2, Leaq$1;->c:Lcma;

    invoke-static {v0, v1, v3, v2}, Leaq;->a(Leaq;Ljava/lang/String;Ljava/lang/String;Lcma;)V

    .line 111
    const-string/jumbo v0, "im"

    new-array v1, v7, [Ljava/lang/String;

    const-string/jumbo v2, "[GroupRingDownload]"

    aput-object v2, v1, v4

    const-string/jumbo v2, " download audio error:"

    aput-object v2, v1, v5

    const-string/jumbo v2, "response is null!"

    aput-object v2, v1, v6

    invoke-static {v1}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v3, v1}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final onRequestStarted(Lcom/alibaba/doraemon/request/Request;)V
    .locals 0
    .param p1, "request"    # Lcom/alibaba/doraemon/request/Request;

    .prologue
    .line 119
    return-void
.end method
