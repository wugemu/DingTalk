.class final Lcom/alibaba/android/user/settings/activity/TimeZoneSettingActivity$1$1$1;
.super Ljava/lang/Object;
.source "TimeZoneSettingActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/user/settings/activity/TimeZoneSettingActivity$1$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/user/settings/activity/TimeZoneSettingActivity$1$1;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/settings/activity/TimeZoneSettingActivity$1$1;)V
    .locals 0
    .param p1, "this$2"    # Lcom/alibaba/android/user/settings/activity/TimeZoneSettingActivity$1$1;

    .prologue
    .line 63
    iput-object p1, p0, Lcom/alibaba/android/user/settings/activity/TimeZoneSettingActivity$1$1$1;->a:Lcom/alibaba/android/user/settings/activity/TimeZoneSettingActivity$1$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 66
    iget-object v0, p0, Lcom/alibaba/android/user/settings/activity/TimeZoneSettingActivity$1$1$1;->a:Lcom/alibaba/android/user/settings/activity/TimeZoneSettingActivity$1$1;

    iget-object v0, v0, Lcom/alibaba/android/user/settings/activity/TimeZoneSettingActivity$1$1;->b:Lcom/alibaba/android/user/settings/activity/TimeZoneSettingActivity$1;

    iget-object v0, v0, Lcom/alibaba/android/user/settings/activity/TimeZoneSettingActivity$1;->a:Lcom/alibaba/android/user/settings/activity/TimeZoneSettingActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/settings/activity/TimeZoneSettingActivity;->a(Lcom/alibaba/android/user/settings/activity/TimeZoneSettingActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-static {}, Lfwx;->b()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lfwx;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 67
    iget-object v0, p0, Lcom/alibaba/android/user/settings/activity/TimeZoneSettingActivity$1$1$1;->a:Lcom/alibaba/android/user/settings/activity/TimeZoneSettingActivity$1$1;

    iget-object v0, v0, Lcom/alibaba/android/user/settings/activity/TimeZoneSettingActivity$1$1;->b:Lcom/alibaba/android/user/settings/activity/TimeZoneSettingActivity$1;

    iget-object v0, v0, Lcom/alibaba/android/user/settings/activity/TimeZoneSettingActivity$1;->a:Lcom/alibaba/android/user/settings/activity/TimeZoneSettingActivity;

    invoke-virtual {v0}, Lcom/alibaba/android/user/settings/activity/TimeZoneSettingActivity;->dismissLoadingDialog()V

    .line 68
    return-void
.end method
