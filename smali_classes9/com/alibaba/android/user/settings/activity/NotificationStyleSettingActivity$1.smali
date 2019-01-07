.class final Lcom/alibaba/android/user/settings/activity/NotificationStyleSettingActivity$1;
.super Ljava/lang/Object;
.source "NotificationStyleSettingActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/user/settings/activity/NotificationStyleSettingActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/user/settings/activity/NotificationStyleSettingActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/settings/activity/NotificationStyleSettingActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/user/settings/activity/NotificationStyleSettingActivity;

    .prologue
    .line 70
    iput-object p1, p0, Lcom/alibaba/android/user/settings/activity/NotificationStyleSettingActivity$1;->a:Lcom/alibaba/android/user/settings/activity/NotificationStyleSettingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 73
    iget-object v0, p0, Lcom/alibaba/android/user/settings/activity/NotificationStyleSettingActivity$1;->a:Lcom/alibaba/android/user/settings/activity/NotificationStyleSettingActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/settings/activity/NotificationStyleSettingActivity;->a(Lcom/alibaba/android/user/settings/activity/NotificationStyleSettingActivity;)Lfwl$a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 74
    iget-object v0, p0, Lcom/alibaba/android/user/settings/activity/NotificationStyleSettingActivity$1;->a:Lcom/alibaba/android/user/settings/activity/NotificationStyleSettingActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/settings/activity/NotificationStyleSettingActivity;->a(Lcom/alibaba/android/user/settings/activity/NotificationStyleSettingActivity;)Lfwl$a;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/user/settings/activity/NotificationStyleSettingActivity$1;->a:Lcom/alibaba/android/user/settings/activity/NotificationStyleSettingActivity;

    invoke-static {v1}, Lcom/alibaba/android/user/settings/activity/NotificationStyleSettingActivity;->b(Lcom/alibaba/android/user/settings/activity/NotificationStyleSettingActivity;)Landroid/widget/ToggleButton;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ToggleButton;->isChecked()Z

    move-result v1

    invoke-interface {v0, v1}, Lfwl$a;->a(Z)V

    .line 76
    :cond_0
    return-void
.end method
