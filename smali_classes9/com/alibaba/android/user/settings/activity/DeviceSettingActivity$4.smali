.class final Lcom/alibaba/android/user/settings/activity/DeviceSettingActivity$4;
.super Ljava/lang/Object;
.source "DeviceSettingActivity.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/user/settings/activity/DeviceSettingActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcma",
        "<",
        "Lfws;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/user/settings/activity/DeviceSettingActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/settings/activity/DeviceSettingActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/user/settings/activity/DeviceSettingActivity;

    .prologue
    .line 84
    iput-object p1, p0, Lcom/alibaba/android/user/settings/activity/DeviceSettingActivity$4;->a:Lcom/alibaba/android/user/settings/activity/DeviceSettingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 84
    check-cast p1, Lfws;

    .line 1088
    iget-object v0, p0, Lcom/alibaba/android/user/settings/activity/DeviceSettingActivity$4;->a:Lcom/alibaba/android/user/settings/activity/DeviceSettingActivity;

    invoke-static {v0, p1}, Lcom/alibaba/android/user/settings/activity/DeviceSettingActivity;->a(Lcom/alibaba/android/user/settings/activity/DeviceSettingActivity;Lfws;)Lfws;

    .line 1089
    invoke-static {}, Lfwr;->a()Lfwr;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/user/settings/activity/DeviceSettingActivity$4;->a:Lcom/alibaba/android/user/settings/activity/DeviceSettingActivity;

    invoke-static {v1}, Lcom/alibaba/android/user/settings/activity/DeviceSettingActivity;->a(Lcom/alibaba/android/user/settings/activity/DeviceSettingActivity;)Lfws;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfwr;->a(Lfws;)V

    .line 1091
    iget-object v0, p0, Lcom/alibaba/android/user/settings/activity/DeviceSettingActivity$4;->a:Lcom/alibaba/android/user/settings/activity/DeviceSettingActivity;

    invoke-virtual {v0}, Lcom/alibaba/android/user/settings/activity/DeviceSettingActivity;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1092
    iget-object v0, p0, Lcom/alibaba/android/user/settings/activity/DeviceSettingActivity$4;->a:Lcom/alibaba/android/user/settings/activity/DeviceSettingActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/settings/activity/DeviceSettingActivity;->b(Lcom/alibaba/android/user/settings/activity/DeviceSettingActivity;)V

    .line 84
    :cond_0
    return-void
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    .prologue
    .line 103
    iget-object v0, p0, Lcom/alibaba/android/user/settings/activity/DeviceSettingActivity$4;->a:Lcom/alibaba/android/user/settings/activity/DeviceSettingActivity;

    invoke-virtual {v0}, Lcom/alibaba/android/user/settings/activity/DeviceSettingActivity;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 104
    invoke-static {p2}, Lcms;->a(Ljava/lang/String;)V

    .line 106
    :cond_0
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "id"    # Ljava/lang/Object;
    .param p2, "progress"    # I

    .prologue
    .line 99
    return-void
.end method
