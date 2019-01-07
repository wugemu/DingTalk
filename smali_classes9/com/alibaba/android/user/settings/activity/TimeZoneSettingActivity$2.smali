.class final Lcom/alibaba/android/user/settings/activity/TimeZoneSettingActivity$2;
.super Ljava/lang/Object;
.source "TimeZoneSettingActivity.java"

# interfaces
.implements Lcom/alibaba/wukong/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/user/settings/activity/TimeZoneSettingActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/alibaba/wukong/Callback",
        "<",
        "Lcom/alibaba/wukong/settings/CloudSetting;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/user/settings/activity/TimeZoneSettingActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/settings/activity/TimeZoneSettingActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/user/settings/activity/TimeZoneSettingActivity;

    .prologue
    .line 104
    iput-object p1, p0, Lcom/alibaba/android/user/settings/activity/TimeZoneSettingActivity$2;->a:Lcom/alibaba/android/user/settings/activity/TimeZoneSettingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "s1"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 112
    iget-object v0, p0, Lcom/alibaba/android/user/settings/activity/TimeZoneSettingActivity$2;->a:Lcom/alibaba/android/user/settings/activity/TimeZoneSettingActivity;

    invoke-virtual {v0}, Lcom/alibaba/android/user/settings/activity/TimeZoneSettingActivity;->dismissLoadingDialog()V

    .line 113
    iget-object v0, p0, Lcom/alibaba/android/user/settings/activity/TimeZoneSettingActivity$2;->a:Lcom/alibaba/android/user/settings/activity/TimeZoneSettingActivity;

    sget v1, Lezg$l;->dt_timezone_cloudsetting_failure_title:I

    invoke-virtual {v0, v1}, Lcom/alibaba/android/user/settings/activity/TimeZoneSettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcms;->a(Ljava/lang/String;)V

    .line 114
    return-void
.end method

.method public final bridge synthetic onProgress(Ljava/lang/Object;I)V
    .locals 0

    .prologue
    .line 104
    return-void
.end method

.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 104
    .line 1107
    iget-object v0, p0, Lcom/alibaba/android/user/settings/activity/TimeZoneSettingActivity$2;->a:Lcom/alibaba/android/user/settings/activity/TimeZoneSettingActivity;

    invoke-virtual {v0}, Lcom/alibaba/android/user/settings/activity/TimeZoneSettingActivity;->dismissLoadingDialog()V

    .line 104
    return-void
.end method
