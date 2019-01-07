.class final Lcom/alibaba/android/user/login/ConfirmProfileActivity$1$1;
.super Ljava/lang/Object;
.source "ConfirmProfileActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/user/login/ConfirmProfileActivity$1;->onAnimationEnd(Landroid/animation/Animator;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/user/login/ConfirmProfileActivity$1;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/login/ConfirmProfileActivity$1;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/android/user/login/ConfirmProfileActivity$1;

    .prologue
    .line 119
    iput-object p1, p0, Lcom/alibaba/android/user/login/ConfirmProfileActivity$1$1;->a:Lcom/alibaba/android/user/login/ConfirmProfileActivity$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 122
    const-string/jumbo v0, "NAVIGATOR"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/navigator/Navigator;

    iget-object v1, p0, Lcom/alibaba/android/user/login/ConfirmProfileActivity$1$1;->a:Lcom/alibaba/android/user/login/ConfirmProfileActivity$1;

    iget-object v1, v1, Lcom/alibaba/android/user/login/ConfirmProfileActivity$1;->a:Lcom/alibaba/android/user/login/ConfirmProfileActivity;

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/navigator/Navigator;->from(Landroid/content/Context;)Lcom/alibaba/doraemon/navigator/Navigator;

    move-result-object v0

    const-string/jumbo v1, "https://qr.dingtalk.com/login.html"

    new-instance v2, Lcom/alibaba/android/user/login/ConfirmProfileActivity$1$1$1;

    invoke-direct {v2, p0}, Lcom/alibaba/android/user/login/ConfirmProfileActivity$1$1$1;-><init>(Lcom/alibaba/android/user/login/ConfirmProfileActivity$1$1;)V

    .line 123
    invoke-interface {v0, v1, v2}, Lcom/alibaba/doraemon/navigator/Navigator;->to(Ljava/lang/String;Lcom/alibaba/doraemon/navigator/IntentRewriter;)V

    .line 133
    iget-object v0, p0, Lcom/alibaba/android/user/login/ConfirmProfileActivity$1$1;->a:Lcom/alibaba/android/user/login/ConfirmProfileActivity$1;

    iget-object v0, v0, Lcom/alibaba/android/user/login/ConfirmProfileActivity$1;->a:Lcom/alibaba/android/user/login/ConfirmProfileActivity;

    invoke-virtual {v0}, Lcom/alibaba/android/user/login/ConfirmProfileActivity;->finish()V

    .line 134
    return-void
.end method
