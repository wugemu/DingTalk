.class final Lfzu$47;
.super Lgqq;
.source "SpaceNavigator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfzu;->a(Landroid/content/Context;Lcom/alibaba/dingtalk/cspacebase/space/EditOnlineCollaboratorArgs;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/alibaba/dingtalk/cspacebase/space/EditOnlineCollaboratorArgs;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/alibaba/dingtalk/cspacebase/space/EditOnlineCollaboratorArgs;)V
    .locals 0

    .prologue
    .line 3431
    iput-object p1, p0, Lfzu$47;->a:Landroid/content/Context;

    iput-object p2, p0, Lfzu$47;->b:Lcom/alibaba/dingtalk/cspacebase/space/EditOnlineCollaboratorArgs;

    invoke-direct {p0}, Lgqq;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Void;)V
    .locals 4
    .param p1, "data"    # Ljava/lang/Void;

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 3434
    invoke-super {p0, p1}, Lgqq;->a(Ljava/lang/Void;)V

    .line 3435
    const-string/jumbo v0, "NAVIGATOR"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/navigator/Navigator;

    iget-object v1, p0, Lfzu$47;->a:Landroid/content/Context;

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/navigator/Navigator;->from(Landroid/content/Context;)Lcom/alibaba/doraemon/navigator/Navigator;

    move-result-object v0

    const-string/jumbo v1, "https://qr.dingtalk.com/space/edit/collaborator.html"

    .line 3436
    invoke-static {}, Lfzu;->b()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lfzu$47$1;

    invoke-direct {v3, p0}, Lfzu$47$1;-><init>(Lfzu$47;)V

    invoke-interface {v0, v1, v2, v3}, Lcom/alibaba/doraemon/navigator/Navigator;->to(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/doraemon/navigator/IntentRewriter;)Z

    .line 3444
    return-void
.end method

.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 3431
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lfzu$47;->a(Ljava/lang/Void;)V

    return-void
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    .prologue
    .line 3453
    invoke-super {p0, p1, p2}, Lgqq;->onException(Ljava/lang/String;Ljava/lang/String;)V

    .line 3454
    invoke-static {p1, p2}, Lcms;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 3455
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "id"    # Ljava/lang/Object;
    .param p2, "progress"    # I

    .prologue
    .line 3448
    invoke-super {p0, p1, p2}, Lgqq;->onProgress(Ljava/lang/Object;I)V

    .line 3449
    return-void
.end method
