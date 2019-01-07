.class final Lcom/alibaba/android/dingtalkim/activities/CategoryNoDisturbSettingActivity$1;
.super Ljava/lang/Object;
.source "CategoryNoDisturbSettingActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/dingtalkim/activities/CategoryNoDisturbSettingActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalkim/activities/CategoryNoDisturbSettingActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalkim/activities/CategoryNoDisturbSettingActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalkim/activities/CategoryNoDisturbSettingActivity;

    .prologue
    .line 44
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/activities/CategoryNoDisturbSettingActivity$1;->a:Lcom/alibaba/android/dingtalkim/activities/CategoryNoDisturbSettingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 47
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/CategoryNoDisturbSettingActivity$1;->a:Lcom/alibaba/android/dingtalkim/activities/CategoryNoDisturbSettingActivity;

    invoke-static {v1}, Lcom/alibaba/android/dingtalkim/activities/CategoryNoDisturbSettingActivity;->a(Lcom/alibaba/android/dingtalkim/activities/CategoryNoDisturbSettingActivity;)V

    .line 48
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/CategoryNoDisturbSettingActivity$1;->a:Lcom/alibaba/android/dingtalkim/activities/CategoryNoDisturbSettingActivity;

    invoke-static {v1}, Lcom/alibaba/android/dingtalkim/activities/CategoryNoDisturbSettingActivity;->b(Lcom/alibaba/android/dingtalkim/activities/CategoryNoDisturbSettingActivity;)Landroid/widget/ToggleButton;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ToggleButton;->setEnabled(Z)V

    .line 49
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/CategoryNoDisturbSettingActivity$1;->a:Lcom/alibaba/android/dingtalkim/activities/CategoryNoDisturbSettingActivity;

    invoke-static {v1}, Lcom/alibaba/android/dingtalkim/activities/CategoryNoDisturbSettingActivity;->b(Lcom/alibaba/android/dingtalkim/activities/CategoryNoDisturbSettingActivity;)Landroid/widget/ToggleButton;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ToggleButton;->isChecked()Z

    move-result v1

    .line 1132
    if-eqz v1, :cond_0

    const-string/jumbo v1, "1"

    .line 1133
    :goto_0
    invoke-static {}, Lcmt;->a()Lcmt;

    move-result-object v2

    const-string/jumbo v3, "user_settings"

    const-string/jumbo v4, "im_not_disturb_only_at_msgs"

    sget-object v5, Lcom/alibaba/wukong/settings/CloudSetting$EffectScopeType;->ALL:Lcom/alibaba/wukong/settings/CloudSetting$EffectScopeType;

    invoke-virtual {v2, v3, v4, v1, v5}, Lcmt;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/wukong/settings/CloudSetting$EffectScopeType;)V

    .line 50
    const-string/jumbo v1, "EVENTBUTLER"

    invoke-static {v1}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/eventbus/EventButler;

    .line 52
    .local v0, "eventButler":Lcom/alibaba/doraemon/eventbus/EventButler;
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/CategoryNoDisturbSettingActivity$1;->a:Lcom/alibaba/android/dingtalkim/activities/CategoryNoDisturbSettingActivity;

    invoke-static {v1}, Lcom/alibaba/android/dingtalkim/activities/CategoryNoDisturbSettingActivity;->b(Lcom/alibaba/android/dingtalkim/activities/CategoryNoDisturbSettingActivity;)Landroid/widget/ToggleButton;

    move-result-object v2

    new-instance v1, Lcom/alibaba/android/dingtalkim/activities/CategoryNoDisturbSettingActivity$1$1;

    invoke-direct {v1, p0}, Lcom/alibaba/android/dingtalkim/activities/CategoryNoDisturbSettingActivity$1$1;-><init>(Lcom/alibaba/android/dingtalkim/activities/CategoryNoDisturbSettingActivity$1;)V

    const-class v3, Ljava/lang/Runnable;

    iget-object v4, p0, Lcom/alibaba/android/dingtalkim/activities/CategoryNoDisturbSettingActivity$1;->a:Lcom/alibaba/android/dingtalkim/activities/CategoryNoDisturbSettingActivity;

    invoke-interface {v0, v1, v3, v4}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Runnable;

    const-wide/16 v4, 0xc8

    invoke-virtual {v2, v1, v4, v5}, Landroid/widget/ToggleButton;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 58
    return-void

    .line 1132
    .end local v0    # "eventButler":Lcom/alibaba/doraemon/eventbus/EventButler;
    :cond_0
    const-string/jumbo v1, "0"

    goto :goto_0
.end method
