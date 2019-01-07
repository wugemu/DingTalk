.class final Lcom/alibaba/android/user/settings/activity/CommonSettingActivity$2;
.super Ljava/lang/Object;
.source "CommonSettingActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/user/settings/activity/CommonSettingActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/user/settings/activity/CommonSettingActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/settings/activity/CommonSettingActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/user/settings/activity/CommonSettingActivity;

    .prologue
    .line 151
    iput-object p1, p0, Lcom/alibaba/android/user/settings/activity/CommonSettingActivity$2;->a:Lcom/alibaba/android/user/settings/activity/CommonSettingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "view"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 154
    iget-object v1, p0, Lcom/alibaba/android/user/settings/activity/CommonSettingActivity$2;->a:Lcom/alibaba/android/user/settings/activity/CommonSettingActivity;

    invoke-static {v1}, Lcpa;->a(Landroid/content/Context;)Z

    move-result v0

    .line 155
    .local v0, "isLandMode":Z
    iget-object v4, p0, Lcom/alibaba/android/user/settings/activity/CommonSettingActivity$2;->a:Lcom/alibaba/android/user/settings/activity/CommonSettingActivity;

    if-nez v0, :cond_0

    move v1, v2

    :goto_0
    invoke-static {v4, v1}, Lcpa;->a(Landroid/content/Context;Z)V

    .line 156
    iget-object v1, p0, Lcom/alibaba/android/user/settings/activity/CommonSettingActivity$2;->a:Lcom/alibaba/android/user/settings/activity/CommonSettingActivity;

    invoke-static {v1}, Lcom/alibaba/android/user/settings/activity/CommonSettingActivity;->b(Lcom/alibaba/android/user/settings/activity/CommonSettingActivity;)Landroid/widget/ToggleButton;

    move-result-object v1

    if-nez v0, :cond_1

    :goto_1
    invoke-virtual {v1, v2}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 157
    iget-object v1, p0, Lcom/alibaba/android/user/settings/activity/CommonSettingActivity$2;->a:Lcom/alibaba/android/user/settings/activity/CommonSettingActivity;

    invoke-static {v1}, Lcpa;->a(Landroid/app/Activity;)V

    .line 158
    return-void

    :cond_0
    move v1, v3

    .line 155
    goto :goto_0

    :cond_1
    move v2, v3

    .line 156
    goto :goto_1
.end method
