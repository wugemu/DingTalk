.class final Lcom/alibaba/dingtalk/cspace/widget/SpaceShareSuccessDialog$1;
.super Ljava/lang/Object;
.source "SpaceShareSuccessDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/dingtalk/cspace/widget/SpaceShareSuccessDialog;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/dingtalk/cspace/widget/SpaceShareSuccessDialog;


# direct methods
.method constructor <init>(Lcom/alibaba/dingtalk/cspace/widget/SpaceShareSuccessDialog;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/dingtalk/cspace/widget/SpaceShareSuccessDialog;

    .prologue
    .line 70
    iput-object p1, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceShareSuccessDialog$1;->a:Lcom/alibaba/dingtalk/cspace/widget/SpaceShareSuccessDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 73
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceShareSuccessDialog$1;->a:Lcom/alibaba/dingtalk/cspace/widget/SpaceShareSuccessDialog;

    invoke-virtual {v0}, Lcom/alibaba/dingtalk/cspace/widget/SpaceShareSuccessDialog;->dismiss()V

    .line 74
    const-string/jumbo v0, "NAVIGATOR"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/navigator/Navigator;

    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceShareSuccessDialog$1;->a:Lcom/alibaba/dingtalk/cspace/widget/SpaceShareSuccessDialog;

    .line 75
    invoke-virtual {v1}, Lcom/alibaba/dingtalk/cspace/widget/SpaceShareSuccessDialog;->getOwnerActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/navigator/Navigator;->from(Landroid/content/Context;)Lcom/alibaba/doraemon/navigator/Navigator;

    move-result-object v0

    const-string/jumbo v1, "https://qr.dingtalk.com/ding/home.html"

    new-instance v2, Lcom/alibaba/dingtalk/cspace/widget/SpaceShareSuccessDialog$1$1;

    invoke-direct {v2, p0}, Lcom/alibaba/dingtalk/cspace/widget/SpaceShareSuccessDialog$1$1;-><init>(Lcom/alibaba/dingtalk/cspace/widget/SpaceShareSuccessDialog$1;)V

    .line 76
    invoke-interface {v0, v1, v2}, Lcom/alibaba/doraemon/navigator/Navigator;->to(Ljava/lang/String;Lcom/alibaba/doraemon/navigator/IntentRewriter;)V

    .line 87
    return-void
.end method
