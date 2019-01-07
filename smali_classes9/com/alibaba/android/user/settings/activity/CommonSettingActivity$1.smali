.class final Lcom/alibaba/android/user/settings/activity/CommonSettingActivity$1;
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
    .line 137
    iput-object p1, p0, Lcom/alibaba/android/user/settings/activity/CommonSettingActivity$1;->a:Lcom/alibaba/android/user/settings/activity/CommonSettingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 140
    iget-object v1, p0, Lcom/alibaba/android/user/settings/activity/CommonSettingActivity$1;->a:Lcom/alibaba/android/user/settings/activity/CommonSettingActivity;

    const-string/jumbo v4, "im_input_one_line_mode"

    invoke-static {v1, v4}, Lcpk;->d(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    .line 141
    .local v0, "isOneLine":Z
    iget-object v4, p0, Lcom/alibaba/android/user/settings/activity/CommonSettingActivity$1;->a:Lcom/alibaba/android/user/settings/activity/CommonSettingActivity;

    const-string/jumbo v5, "im_input_one_line_mode"

    if-nez v0, :cond_0

    move v1, v2

    :goto_0
    invoke-static {v4, v5, v1}, Lcpk;->a(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 142
    iget-object v1, p0, Lcom/alibaba/android/user/settings/activity/CommonSettingActivity$1;->a:Lcom/alibaba/android/user/settings/activity/CommonSettingActivity;

    invoke-static {v1}, Lcom/alibaba/android/user/settings/activity/CommonSettingActivity;->a(Lcom/alibaba/android/user/settings/activity/CommonSettingActivity;)Landroid/widget/ToggleButton;

    move-result-object v1

    if-nez v0, :cond_1

    :goto_1
    invoke-virtual {v1, v2}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 143
    return-void

    :cond_0
    move v1, v3

    .line 141
    goto :goto_0

    :cond_1
    move v2, v3

    .line 142
    goto :goto_1
.end method
