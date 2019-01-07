.class final Lcom/alibaba/android/user/settings/activity/NotificationStyleSettingActivity$3;
.super Ljava/lang/Object;
.source "NotificationStyleSettingActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


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
    .line 88
    iput-object p1, p0, Lcom/alibaba/android/user/settings/activity/NotificationStyleSettingActivity$3;->a:Lcom/alibaba/android/user/settings/activity/NotificationStyleSettingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 91
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    invoke-virtual {p1, p3}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/notification/Sound;

    .line 92
    .local v0, "sound":Lcom/alibaba/android/dingtalkbase/notification/Sound;
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/alibaba/android/user/settings/activity/NotificationStyleSettingActivity$3;->a:Lcom/alibaba/android/user/settings/activity/NotificationStyleSettingActivity;

    invoke-static {v1}, Lcom/alibaba/android/user/settings/activity/NotificationStyleSettingActivity;->a(Lcom/alibaba/android/user/settings/activity/NotificationStyleSettingActivity;)Lfwl$a;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 93
    iget-object v1, p0, Lcom/alibaba/android/user/settings/activity/NotificationStyleSettingActivity$3;->a:Lcom/alibaba/android/user/settings/activity/NotificationStyleSettingActivity;

    invoke-static {v1}, Lcom/alibaba/android/user/settings/activity/NotificationStyleSettingActivity;->a(Lcom/alibaba/android/user/settings/activity/NotificationStyleSettingActivity;)Lfwl$a;

    move-result-object v1

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/notification/Sound;->getValue()I

    move-result v2

    invoke-interface {v1, v2}, Lfwl$a;->a(I)V

    .line 94
    iget-object v1, p0, Lcom/alibaba/android/user/settings/activity/NotificationStyleSettingActivity$3;->a:Lcom/alibaba/android/user/settings/activity/NotificationStyleSettingActivity;

    invoke-static {v1}, Lcom/alibaba/android/user/settings/activity/NotificationStyleSettingActivity;->a(Lcom/alibaba/android/user/settings/activity/NotificationStyleSettingActivity;)Lfwl$a;

    move-result-object v1

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/notification/Sound;->getRawId()I

    move-result v2

    invoke-interface {v1, v2}, Lfwl$a;->b(I)V

    .line 96
    :cond_0
    return-void
.end method
