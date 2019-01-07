.class final Lcom/alibaba/android/user/settings/activity/NewMsgSettingActivity$1$1;
.super Ljava/lang/Object;
.source "NewMsgSettingActivity.java"

# interfaces
.implements Lcom/alibaba/wukong/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/user/settings/activity/NewMsgSettingActivity$1;->onCheckedChanged(Landroid/widget/CompoundButton;Z)V
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
.field final synthetic a:Lcom/alibaba/android/user/settings/activity/NewMsgSettingActivity$1;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/settings/activity/NewMsgSettingActivity$1;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/android/user/settings/activity/NewMsgSettingActivity$1;

    .prologue
    .line 90
    iput-object p1, p0, Lcom/alibaba/android/user/settings/activity/NewMsgSettingActivity$1$1;->a:Lcom/alibaba/android/user/settings/activity/NewMsgSettingActivity$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "s1"    # Ljava/lang/String;

    .prologue
    .line 98
    iget-object v0, p0, Lcom/alibaba/android/user/settings/activity/NewMsgSettingActivity$1$1;->a:Lcom/alibaba/android/user/settings/activity/NewMsgSettingActivity$1;

    iget-object v0, v0, Lcom/alibaba/android/user/settings/activity/NewMsgSettingActivity$1;->a:Lcom/alibaba/android/user/settings/activity/NewMsgSettingActivity;

    invoke-virtual {v0}, Lcom/alibaba/android/user/settings/activity/NewMsgSettingActivity;->dismissLoadingDialog()V

    .line 99
    invoke-static {p1, p2}, Lcms;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    return-void
.end method

.method public final bridge synthetic onProgress(Ljava/lang/Object;I)V
    .locals 0

    .prologue
    .line 90
    return-void
.end method

.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 90
    .line 1093
    iget-object v0, p0, Lcom/alibaba/android/user/settings/activity/NewMsgSettingActivity$1$1;->a:Lcom/alibaba/android/user/settings/activity/NewMsgSettingActivity$1;

    iget-object v0, v0, Lcom/alibaba/android/user/settings/activity/NewMsgSettingActivity$1;->a:Lcom/alibaba/android/user/settings/activity/NewMsgSettingActivity;

    invoke-virtual {v0}, Lcom/alibaba/android/user/settings/activity/NewMsgSettingActivity;->dismissLoadingDialog()V

    .line 90
    return-void
.end method
