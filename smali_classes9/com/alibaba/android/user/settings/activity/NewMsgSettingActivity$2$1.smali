.class final Lcom/alibaba/android/user/settings/activity/NewMsgSettingActivity$2$1;
.super Ljava/lang/Object;
.source "NewMsgSettingActivity.java"

# interfaces
.implements Lcom/alibaba/wukong/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/user/settings/activity/NewMsgSettingActivity$2;->onCheckedChanged(Landroid/widget/CompoundButton;Z)V
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
.field final synthetic a:Lcom/alibaba/android/user/settings/activity/NewMsgSettingActivity$2;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/settings/activity/NewMsgSettingActivity$2;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/android/user/settings/activity/NewMsgSettingActivity$2;

    .prologue
    .line 124
    iput-object p1, p0, Lcom/alibaba/android/user/settings/activity/NewMsgSettingActivity$2$1;->a:Lcom/alibaba/android/user/settings/activity/NewMsgSettingActivity$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "s1"    # Ljava/lang/String;

    .prologue
    .line 132
    iget-object v0, p0, Lcom/alibaba/android/user/settings/activity/NewMsgSettingActivity$2$1;->a:Lcom/alibaba/android/user/settings/activity/NewMsgSettingActivity$2;

    iget-object v0, v0, Lcom/alibaba/android/user/settings/activity/NewMsgSettingActivity$2;->a:Lcom/alibaba/android/user/settings/activity/NewMsgSettingActivity;

    invoke-virtual {v0}, Lcom/alibaba/android/user/settings/activity/NewMsgSettingActivity;->dismissLoadingDialog()V

    .line 133
    invoke-static {p1, p2}, Lcms;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    return-void
.end method

.method public final bridge synthetic onProgress(Ljava/lang/Object;I)V
    .locals 0

    .prologue
    .line 124
    return-void
.end method

.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 124
    .line 1127
    iget-object v0, p0, Lcom/alibaba/android/user/settings/activity/NewMsgSettingActivity$2$1;->a:Lcom/alibaba/android/user/settings/activity/NewMsgSettingActivity$2;

    iget-object v0, v0, Lcom/alibaba/android/user/settings/activity/NewMsgSettingActivity$2;->a:Lcom/alibaba/android/user/settings/activity/NewMsgSettingActivity;

    invoke-virtual {v0}, Lcom/alibaba/android/user/settings/activity/NewMsgSettingActivity;->dismissLoadingDialog()V

    .line 124
    return-void
.end method
