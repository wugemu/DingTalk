.class final Lcom/alibaba/android/user/settings/activity/DeviceSettingActivity$8;
.super Ljava/lang/Object;
.source "DeviceSettingActivity.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/user/settings/activity/DeviceSettingActivity;->a(Z)V
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
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lcom/alibaba/android/user/settings/activity/DeviceSettingActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/settings/activity/DeviceSettingActivity;Z)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/user/settings/activity/DeviceSettingActivity;

    .prologue
    .line 157
    iput-object p1, p0, Lcom/alibaba/android/user/settings/activity/DeviceSettingActivity$8;->b:Lcom/alibaba/android/user/settings/activity/DeviceSettingActivity;

    iput-boolean p2, p0, Lcom/alibaba/android/user/settings/activity/DeviceSettingActivity$8;->a:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 157
    .line 1160
    iget-object v0, p0, Lcom/alibaba/android/user/settings/activity/DeviceSettingActivity$8;->b:Lcom/alibaba/android/user/settings/activity/DeviceSettingActivity;

    invoke-virtual {v0}, Lcom/alibaba/android/user/settings/activity/DeviceSettingActivity;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1161
    iget-object v0, p0, Lcom/alibaba/android/user/settings/activity/DeviceSettingActivity$8;->b:Lcom/alibaba/android/user/settings/activity/DeviceSettingActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/settings/activity/DeviceSettingActivity;->c(Lcom/alibaba/android/user/settings/activity/DeviceSettingActivity;)Landroid/widget/ToggleButton;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setEnabled(Z)V

    .line 1164
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/user/settings/activity/DeviceSettingActivity$8;->b:Lcom/alibaba/android/user/settings/activity/DeviceSettingActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/settings/activity/DeviceSettingActivity;->a(Lcom/alibaba/android/user/settings/activity/DeviceSettingActivity;)Lfws;

    move-result-object v0

    if-nez v0, :cond_1

    .line 1165
    iget-object v0, p0, Lcom/alibaba/android/user/settings/activity/DeviceSettingActivity$8;->b:Lcom/alibaba/android/user/settings/activity/DeviceSettingActivity;

    new-instance v1, Lfws;

    iget-boolean v2, p0, Lcom/alibaba/android/user/settings/activity/DeviceSettingActivity$8;->a:Z

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {v1, v2, v3}, Lfws;-><init>(ZLjava/util/List;)V

    invoke-static {v0, v1}, Lcom/alibaba/android/user/settings/activity/DeviceSettingActivity;->a(Lcom/alibaba/android/user/settings/activity/DeviceSettingActivity;Lfws;)Lfws;

    .line 1168
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/user/settings/activity/DeviceSettingActivity$8;->b:Lcom/alibaba/android/user/settings/activity/DeviceSettingActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/settings/activity/DeviceSettingActivity;->a(Lcom/alibaba/android/user/settings/activity/DeviceSettingActivity;)Lfws;

    move-result-object v0

    iget-boolean v1, p0, Lcom/alibaba/android/user/settings/activity/DeviceSettingActivity$8;->a:Z

    iput-boolean v1, v0, Lfws;->a:Z

    .line 1169
    invoke-static {}, Lfwr;->a()Lfwr;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/user/settings/activity/DeviceSettingActivity$8;->b:Lcom/alibaba/android/user/settings/activity/DeviceSettingActivity;

    invoke-static {v1}, Lcom/alibaba/android/user/settings/activity/DeviceSettingActivity;->a(Lcom/alibaba/android/user/settings/activity/DeviceSettingActivity;)Lfws;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfwr;->a(Lfws;)V

    .line 157
    return-void
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v0, 0x1

    .line 179
    iget-object v1, p0, Lcom/alibaba/android/user/settings/activity/DeviceSettingActivity$8;->b:Lcom/alibaba/android/user/settings/activity/DeviceSettingActivity;

    invoke-virtual {v1}, Lcom/alibaba/android/user/settings/activity/DeviceSettingActivity;->isDestroyed()Z

    move-result v1

    if-nez v1, :cond_0

    .line 180
    iget-object v1, p0, Lcom/alibaba/android/user/settings/activity/DeviceSettingActivity$8;->b:Lcom/alibaba/android/user/settings/activity/DeviceSettingActivity;

    invoke-static {v1}, Lcom/alibaba/android/user/settings/activity/DeviceSettingActivity;->c(Lcom/alibaba/android/user/settings/activity/DeviceSettingActivity;)Landroid/widget/ToggleButton;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/ToggleButton;->setEnabled(Z)V

    .line 181
    iget-object v1, p0, Lcom/alibaba/android/user/settings/activity/DeviceSettingActivity$8;->b:Lcom/alibaba/android/user/settings/activity/DeviceSettingActivity;

    invoke-static {v1}, Lcom/alibaba/android/user/settings/activity/DeviceSettingActivity;->c(Lcom/alibaba/android/user/settings/activity/DeviceSettingActivity;)Landroid/widget/ToggleButton;

    move-result-object v1

    iget-boolean v2, p0, Lcom/alibaba/android/user/settings/activity/DeviceSettingActivity$8;->a:Z

    if-nez v2, :cond_1

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 183
    invoke-static {p1, p2}, Lcms;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    :cond_0
    return-void

    .line 181
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "id"    # Ljava/lang/Object;
    .param p2, "progress"    # I

    .prologue
    .line 175
    return-void
.end method
