.class final Lgvz$1$1;
.super Ljava/lang/Object;
.source "ShareInnerDownloadManager.java"

# interfaces
.implements Lcom/alibaba/doraemon/request/ResponseReceiver;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lgvz$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lgvz$1;


# direct methods
.method constructor <init>(Lgvz$1;)V
    .locals 0
    .param p1, "this$1"    # Lgvz$1;

    .prologue
    .line 78
    iput-object p1, p0, Lgvz$1$1;->a:Lgvz$1;

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
    .line 102
    return-void
.end method

.method public final onRequestFinsh(Lcom/alibaba/doraemon/request/Request;Lcom/alibaba/doraemon/request/Response;)V
    .locals 8
    .param p1, "request"    # Lcom/alibaba/doraemon/request/Request;
    .param p2, "response"    # Lcom/alibaba/doraemon/request/Response;

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 81
    if-eqz p2, :cond_0

    invoke-interface {p2}, Lcom/alibaba/doraemon/request/Response;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 82
    iget-object v0, p0, Lgvz$1$1;->a:Lgvz$1;

    iget-object v0, v0, Lgvz$1;->d:Lgvz;

    iget-object v1, p0, Lgvz$1$1;->a:Lgvz$1;

    iget-object v1, v1, Lgvz$1;->b:Landroid/content/Context;

    iget-object v2, p0, Lgvz$1$1;->a:Lgvz$1;

    iget-object v2, v2, Lgvz$1;->a:Ljava/lang/String;

    iget-object v3, p0, Lgvz$1$1;->a:Lgvz$1;

    iget-object v3, v3, Lgvz$1;->c:Lcma;

    invoke-static {v0, v1, v2, p2, v3}, Lgvz;->a(Lgvz;Landroid/content/Context;Ljava/lang/String;Lcom/alibaba/doraemon/request/Response;Lcma;)V

    .line 92
    :goto_0
    return-void

    .line 84
    :cond_0
    if-eqz p2, :cond_1

    .line 85
    iget-object v0, p0, Lgvz$1$1;->a:Lgvz$1;

    iget-object v0, v0, Lgvz$1;->d:Lgvz;

    const-string/jumbo v1, "500"

    iget-object v2, p0, Lgvz$1$1;->a:Lgvz$1;

    iget-object v2, v2, Lgvz$1;->c:Lcma;

    invoke-static {v0, v1, v3, v2}, Lgvz;->a(Lgvz;Ljava/lang/String;Ljava/lang/String;Lcma;)V

    .line 86
    const-string/jumbo v0, "share"

    new-array v1, v7, [Ljava/lang/String;

    const-string/jumbo v2, "[ShareInnerDownloadManager]"

    aput-object v2, v1, v4

    const-string/jumbo v2, " download outterImage error:"

    aput-object v2, v1, v5

    invoke-interface {p2}, Lcom/alibaba/doraemon/request/Response;->getErrorDescription()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v6

    invoke-static {v1}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v3, v1}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 88
    :cond_1
    iget-object v0, p0, Lgvz$1$1;->a:Lgvz$1;

    iget-object v0, v0, Lgvz$1;->d:Lgvz;

    const-string/jumbo v1, "40008"

    iget-object v2, p0, Lgvz$1$1;->a:Lgvz$1;

    iget-object v2, v2, Lgvz$1;->c:Lcma;

    invoke-static {v0, v1, v3, v2}, Lgvz;->a(Lgvz;Ljava/lang/String;Ljava/lang/String;Lcma;)V

    .line 89
    const-string/jumbo v0, "share"

    new-array v1, v7, [Ljava/lang/String;

    const-string/jumbo v2, "[ShareInnerDownloadManager]"

    aput-object v2, v1, v4

    const-string/jumbo v2, " download outterImage error:"

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
    .line 97
    return-void
.end method
