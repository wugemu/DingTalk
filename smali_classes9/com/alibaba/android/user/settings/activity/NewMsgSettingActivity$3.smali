.class final Lcom/alibaba/android/user/settings/activity/NewMsgSettingActivity$3;
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
    .line 180
    iput-object p1, p0, Lcom/alibaba/android/user/settings/activity/NewMsgSettingActivity$3;->a:Lcom/alibaba/android/user/settings/activity/NewMsgSettingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 7
    .param p1, "compoundButton"    # Landroid/widget/CompoundButton;
    .param p2, "checked"    # Z

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/16 v6, 0x8

    const/4 v5, 0x0

    .line 183
    invoke-static {}, Lcmt;->a()Lcmt;

    move-result-object v1

    const-string/jumbo v2, "wk_xpn"

    const-string/jumbo v3, "fcm_zh_open"

    if-eqz p2, :cond_0

    const-string/jumbo v0, "1"

    :goto_0
    sget-object v4, Lcom/alibaba/wukong/settings/CloudSetting$EffectScopeType;->ALL:Lcom/alibaba/wukong/settings/CloudSetting$EffectScopeType;

    invoke-virtual {v1, v2, v3, v0, v4}, Lcmt;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/wukong/settings/CloudSetting$EffectScopeType;)V

    .line 184
    if-eqz p2, :cond_1

    .line 185
    invoke-static {}, Lcom/alibaba/laiwang/alive/AliveManager;->getInstance()Lcom/alibaba/laiwang/alive/AliveManager;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v5, v1, v2

    const/4 v2, 0x1

    aput-object v5, v1, v2

    invoke-virtual {v0, v6, v5, v1}, Lcom/alibaba/laiwang/alive/AliveManager;->registerXpn(ILcom/alibaba/laiwang/xpn/XpnMessageReceiver;[Ljava/lang/String;)V

    .line 189
    :goto_1
    return-void

    .line 183
    :cond_0
    const-string/jumbo v0, "0"

    goto :goto_0

    .line 187
    :cond_1
    invoke-static {}, Lcom/alibaba/laiwang/alive/AliveManager;->getInstance()Lcom/alibaba/laiwang/alive/AliveManager;

    move-result-object v0

    invoke-virtual {v0, v6}, Lcom/alibaba/laiwang/alive/AliveManager;->disableXpn(I)V

    goto :goto_1
.end method
