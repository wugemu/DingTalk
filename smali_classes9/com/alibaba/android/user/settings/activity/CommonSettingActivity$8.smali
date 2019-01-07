.class final Lcom/alibaba/android/user/settings/activity/CommonSettingActivity$8;
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
    .line 246
    iput-object p1, p0, Lcom/alibaba/android/user/settings/activity/CommonSettingActivity$8;->a:Lcom/alibaba/android/user/settings/activity/CommonSettingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 249
    invoke-static {}, Lfnz;->a()Lfnz;

    iget-object v0, p0, Lcom/alibaba/android/user/settings/activity/CommonSettingActivity$8;->a:Lcom/alibaba/android/user/settings/activity/CommonSettingActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/settings/activity/CommonSettingActivity;->f(Lcom/alibaba/android/user/settings/activity/CommonSettingActivity;)Landroid/widget/ToggleButton;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ToggleButton;->isChecked()Z

    move-result v0

    invoke-static {v0}, Lfnz;->a(Z)V

    .line 250
    return-void
.end method
