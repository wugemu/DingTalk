.class final Lcom/alibaba/android/user/settings/activity/NewSettingActivity$3;
.super Landroid/content/BroadcastReceiver;
.source "NewSettingActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/user/settings/activity/NewSettingActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/user/settings/activity/NewSettingActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/settings/activity/NewSettingActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/user/settings/activity/NewSettingActivity;

    .prologue
    .line 463
    iput-object p1, p0, Lcom/alibaba/android/user/settings/activity/NewSettingActivity$3;->a:Lcom/alibaba/android/user/settings/activity/NewSettingActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 466
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 467
    .local v0, "action":Ljava/lang/String;
    const-string/jumbo v1, "action_user_password_changed"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 468
    iget-object v1, p0, Lcom/alibaba/android/user/settings/activity/NewSettingActivity$3;->a:Lcom/alibaba/android/user/settings/activity/NewSettingActivity;

    invoke-static {v1}, Lcom/alibaba/android/user/settings/activity/NewSettingActivity;->f(Lcom/alibaba/android/user/settings/activity/NewSettingActivity;)V

    .line 470
    :cond_0
    return-void
.end method
