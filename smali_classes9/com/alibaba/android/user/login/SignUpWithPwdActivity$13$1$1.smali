.class final Lcom/alibaba/android/user/login/SignUpWithPwdActivity$13$1$1;
.super Ljava/lang/Object;
.source "SignUpWithPwdActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/user/login/SignUpWithPwdActivity$13$1;->onException(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/user/login/SignUpWithPwdActivity$13$1;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/login/SignUpWithPwdActivity$13$1;)V
    .locals 0
    .param p1, "this$2"    # Lcom/alibaba/android/user/login/SignUpWithPwdActivity$13$1;

    .prologue
    .line 1005
    iput-object p1, p0, Lcom/alibaba/android/user/login/SignUpWithPwdActivity$13$1$1;->a:Lcom/alibaba/android/user/login/SignUpWithPwdActivity$13$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 1009
    const-string/jumbo v1, "STATISTICS"

    invoke-static {v1}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/statistics/Statistics;

    .line 1010
    .local v0, "statistics":Lcom/alibaba/doraemon/statistics/Statistics;
    const-string/jumbo v1, "login"

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/statistics/Statistics;->removeOffLineDurationStatistics(Ljava/lang/String;)V

    .line 1011
    const-string/jumbo v1, "DD"

    const-string/jumbo v2, "login"

    const-string/jumbo v3, "totalTime"

    invoke-interface {v0, v1, v2, v3}, Lcom/alibaba/doraemon/statistics/Statistics;->endDurationStatistics(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1013
    iget-object v1, p0, Lcom/alibaba/android/user/login/SignUpWithPwdActivity$13$1$1;->a:Lcom/alibaba/android/user/login/SignUpWithPwdActivity$13$1;

    iget-object v1, v1, Lcom/alibaba/android/user/login/SignUpWithPwdActivity$13$1;->a:Lcom/alibaba/android/user/login/SignUpWithPwdActivity$13;

    iget-object v1, v1, Lcom/alibaba/android/user/login/SignUpWithPwdActivity$13;->f:Lcom/alibaba/android/user/login/SignUpWithPwdActivity;

    invoke-static {v1}, Lcom/alibaba/android/user/login/SignUpWithPwdActivity;->w(Lcom/alibaba/android/user/login/SignUpWithPwdActivity;)V

    .line 1014
    return-void
.end method
