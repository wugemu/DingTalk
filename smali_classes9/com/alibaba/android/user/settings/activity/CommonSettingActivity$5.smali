.class final Lcom/alibaba/android/user/settings/activity/CommonSettingActivity$5;
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
.field final synthetic a:Landroid/widget/ToggleButton;

.field final synthetic b:Lcom/alibaba/android/user/settings/activity/CommonSettingActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/settings/activity/CommonSettingActivity;Landroid/widget/ToggleButton;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/user/settings/activity/CommonSettingActivity;

    .prologue
    .line 205
    iput-object p1, p0, Lcom/alibaba/android/user/settings/activity/CommonSettingActivity$5;->b:Lcom/alibaba/android/user/settings/activity/CommonSettingActivity;

    iput-object p2, p0, Lcom/alibaba/android/user/settings/activity/CommonSettingActivity$5;->a:Landroid/widget/ToggleButton;

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
    .line 208
    const-string/jumbo v0, "pref_key_use_default_theme"

    iget-object v1, p0, Lcom/alibaba/android/user/settings/activity/CommonSettingActivity$5;->a:Landroid/widget/ToggleButton;

    invoke-virtual {v1}, Landroid/widget/ToggleButton;->isChecked()Z

    move-result v1

    invoke-static {v0, v1}, Lcpk;->b(Ljava/lang/String;Z)V

    .line 209
    return-void
.end method
