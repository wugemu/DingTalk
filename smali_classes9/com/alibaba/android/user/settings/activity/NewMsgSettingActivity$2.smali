.class final Lcom/alibaba/android/user/settings/activity/NewMsgSettingActivity$2;
.super Ljava/lang/Object;
.source "NewMsgSettingActivity.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/user/settings/activity/NewMsgSettingActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/user/settings/activity/NewMsgSettingActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/settings/activity/NewMsgSettingActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/user/settings/activity/NewMsgSettingActivity;

    .prologue
    .line 120
    iput-object p1, p0, Lcom/alibaba/android/user/settings/activity/NewMsgSettingActivity$2;->a:Lcom/alibaba/android/user/settings/activity/NewMsgSettingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 6
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 123
    iget-object v0, p0, Lcom/alibaba/android/user/settings/activity/NewMsgSettingActivity$2;->a:Lcom/alibaba/android/user/settings/activity/NewMsgSettingActivity;

    invoke-virtual {v0}, Lcom/alibaba/android/user/settings/activity/NewMsgSettingActivity;->showLoadingDialog()V

    .line 124
    invoke-static {}, Lfwn;->i()Lfwn;

    new-instance v0, Lcom/alibaba/android/user/settings/activity/NewMsgSettingActivity$2$1;

    invoke-direct {v0, p0}, Lcom/alibaba/android/user/settings/activity/NewMsgSettingActivity$2$1;-><init>(Lcom/alibaba/android/user/settings/activity/NewMsgSettingActivity$2;)V

    const-class v1, Lcom/alibaba/wukong/Callback;

    iget-object v2, p0, Lcom/alibaba/android/user/settings/activity/NewMsgSettingActivity$2;->a:Lcom/alibaba/android/user/settings/activity/NewMsgSettingActivity;

    invoke-static {v0, v1, v2}, Lcmx;->a(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/alibaba/wukong/Callback;

    .line 1112
    const-class v0, Lcom/alibaba/wukong/settings/CloudSettingService;

    invoke-static {v0}, Lcom/alibaba/wukong/im/IMEngine;->getIMService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/settings/CloudSettingService;

    const-string/jumbo v1, "wk_xpn"

    const-string/jumbo v2, "show_detail"

    if-eqz p2, :cond_0

    const-string/jumbo v3, "1"

    :goto_0
    sget-object v4, Lcom/alibaba/wukong/settings/CloudSetting$EffectScopeType;->ALL:Lcom/alibaba/wukong/settings/CloudSetting$EffectScopeType;

    invoke-interface/range {v0 .. v5}, Lcom/alibaba/wukong/settings/CloudSettingService;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/wukong/settings/CloudSetting$EffectScopeType;Lcom/alibaba/wukong/Callback;)V

    .line 140
    return-void

    .line 1112
    :cond_0
    const-string/jumbo v3, "0"

    goto :goto_0
.end method
