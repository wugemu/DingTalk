.class final Lcom/alibaba/android/user/settings/activity/SilenceModeSettingActivity$2;
.super Ljava/lang/Object;
.source "SilenceModeSettingActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/user/settings/activity/SilenceModeSettingActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/user/settings/activity/SilenceModeSettingActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/settings/activity/SilenceModeSettingActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/user/settings/activity/SilenceModeSettingActivity;

    .prologue
    .line 97
    iput-object p1, p0, Lcom/alibaba/android/user/settings/activity/SilenceModeSettingActivity$2;->a:Lcom/alibaba/android/user/settings/activity/SilenceModeSettingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 9
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 100
    invoke-static {}, Lcmp;->a()Lcmp;

    move-result-object v2

    invoke-virtual {v2}, Lcmp;->b()Z

    move-result v0

    .line 101
    .local v0, "currentMode":Z
    invoke-static {}, Lcmp;->a()Lcmp;

    move-result-object v2

    invoke-virtual {v2}, Lcmp;->c()[J

    move-result-object v1

    .line 102
    .local v1, "currentTimeRange":[J
    invoke-static {}, Lcmp;->a()Lcmp;

    if-nez v0, :cond_0

    move v2, v3

    .line 1042
    :goto_0
    invoke-static {}, Lcmt;->a()Lcmt;

    move-result-object v5

    const-string/jumbo v6, "user_settings"

    const-string/jumbo v7, "silence_mode"

    .line 1112
    if-eqz v2, :cond_1

    .line 1113
    const-string/jumbo v2, "1"

    .line 1042
    :goto_1
    sget-object v8, Lcom/alibaba/wukong/settings/CloudSetting$EffectScopeType;->ALL:Lcom/alibaba/wukong/settings/CloudSetting$EffectScopeType;

    invoke-virtual {v5, v6, v7, v2, v8}, Lcmt;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/wukong/settings/CloudSetting$EffectScopeType;)V

    .line 103
    invoke-static {}, Lcmp;->a()Lcmp;

    move-result-object v2

    aget-wide v4, v1, v4

    aget-wide v6, v1, v3

    invoke-virtual {v2, v4, v5, v6, v7}, Lcmp;->a(JJ)V

    .line 104
    return-void

    :cond_0
    move v2, v4

    .line 102
    goto :goto_0

    .line 1115
    :cond_1
    const-string/jumbo v2, "0"

    goto :goto_1
.end method
