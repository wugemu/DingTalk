.class final Lcom/alibaba/android/user/settings/activity/FeedbackActivity$3;
.super Ljava/lang/Object;
.source "FeedbackActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/user/settings/activity/FeedbackActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/user/settings/activity/FeedbackActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/settings/activity/FeedbackActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/user/settings/activity/FeedbackActivity;

    .prologue
    .line 156
    iput-object p1, p0, Lcom/alibaba/android/user/settings/activity/FeedbackActivity$3;->a:Lcom/alibaba/android/user/settings/activity/FeedbackActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v1, 0x3

    .line 159
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 160
    .local v0, "bundle":Landroid/os/Bundle;
    const-string/jumbo v2, "album_choose_num"

    iget-object v3, p0, Lcom/alibaba/android/user/settings/activity/FeedbackActivity$3;->a:Lcom/alibaba/android/user/settings/activity/FeedbackActivity;

    invoke-static {v3}, Lcom/alibaba/android/user/settings/activity/FeedbackActivity;->a(Lcom/alibaba/android/user/settings/activity/FeedbackActivity;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v3, v1, :cond_0

    iget-object v1, p0, Lcom/alibaba/android/user/settings/activity/FeedbackActivity$3;->a:Lcom/alibaba/android/user/settings/activity/FeedbackActivity;

    invoke-static {v1}, Lcom/alibaba/android/user/settings/activity/FeedbackActivity;->a(Lcom/alibaba/android/user/settings/activity/FeedbackActivity;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    rsub-int/lit8 v1, v1, 0x3

    :cond_0
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 161
    const-string/jumbo v1, "completed_back_to_target_action"

    invoke-static {}, Lcom/alibaba/android/user/settings/activity/FeedbackActivity;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    invoke-static {}, Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;->k()Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/android/user/settings/activity/FeedbackActivity$3;->a:Lcom/alibaba/android/user/settings/activity/FeedbackActivity;

    iget-object v3, p0, Lcom/alibaba/android/user/settings/activity/FeedbackActivity$3;->a:Lcom/alibaba/android/user/settings/activity/FeedbackActivity;

    invoke-virtual {v3}, Lcom/alibaba/android/user/settings/activity/FeedbackActivity;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3, v0}, Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;->a(Landroid/app/Activity;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 163
    return-void
.end method
