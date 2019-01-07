.class final Lcom/alibaba/android/user/contact/activities/SettingOrgBossActivity$2;
.super Landroid/content/BroadcastReceiver;
.source "SettingOrgBossActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/user/contact/activities/SettingOrgBossActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/user/contact/activities/SettingOrgBossActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/contact/activities/SettingOrgBossActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/user/contact/activities/SettingOrgBossActivity;

    .prologue
    .line 195
    iput-object p1, p0, Lcom/alibaba/android/user/contact/activities/SettingOrgBossActivity$2;->a:Lcom/alibaba/android/user/contact/activities/SettingOrgBossActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v10

    invoke-static {v10}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v3, 0x0

    .line 199
    iget-object v1, p0, Lcom/alibaba/android/user/contact/activities/SettingOrgBossActivity$2;->a:Lcom/alibaba/android/user/contact/activities/SettingOrgBossActivity;

    invoke-virtual {v1}, Lcom/alibaba/android/user/contact/activities/SettingOrgBossActivity;->isDestroyed()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 247
    :cond_0
    :goto_0
    return-void

    .line 203
    :cond_1
    const-string/jumbo v1, "com.workapp.choose.people.from.contact"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 205
    const-string/jumbo v1, "IDENTIFIY_SETTING_BOSS"

    const-string/jumbo v2, "activity_identify"

    .line 206
    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 210
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string/jumbo v2, "choose_user_identities"

    .line 211
    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 212
    .local v0, "identityObjectList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;>;"
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 215
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    .line 216
    .local v7, "userIdentityObject":Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;
    if-eqz v7, :cond_0

    .line 219
    iget-object v1, p0, Lcom/alibaba/android/user/contact/activities/SettingOrgBossActivity$2;->a:Lcom/alibaba/android/user/contact/activities/SettingOrgBossActivity;

    invoke-static {v1}, Lcom/alibaba/android/user/contact/activities/SettingOrgBossActivity;->f(Lcom/alibaba/android/user/contact/activities/SettingOrgBossActivity;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 220
    invoke-static {}, Lfak;->a()Lezt;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/android/user/contact/activities/SettingOrgBossActivity$2;->a:Lcom/alibaba/android/user/contact/activities/SettingOrgBossActivity;

    invoke-static {v2}, Lcom/alibaba/android/user/contact/activities/SettingOrgBossActivity;->g(Lcom/alibaba/android/user/contact/activities/SettingOrgBossActivity;)J

    move-result-wide v2

    iget-wide v4, v7, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->uid:J

    const-string/jumbo v6, "EVENTBUTLER"

    .line 221
    invoke-static {v6}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/alibaba/doraemon/eventbus/EventButler;

    new-instance v8, Lcom/alibaba/android/user/contact/activities/SettingOrgBossActivity$2$1;

    invoke-direct {v8, p0, v7}, Lcom/alibaba/android/user/contact/activities/SettingOrgBossActivity$2$1;-><init>(Lcom/alibaba/android/user/contact/activities/SettingOrgBossActivity$2;Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;)V

    const-class v9, Lcma;

    iget-object v10, p0, Lcom/alibaba/android/user/contact/activities/SettingOrgBossActivity$2;->a:Lcom/alibaba/android/user/contact/activities/SettingOrgBossActivity;

    invoke-interface {v6, v8, v9, v10}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcma;

    .line 220
    invoke-interface/range {v1 .. v6}, Lezt;->b(JJLcma;)V

    goto :goto_0

    .line 244
    .end local v0    # "identityObjectList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;>;"
    .end local v7    # "userIdentityObject":Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;
    :cond_2
    const-string/jumbo v1, "com.workapp.SETTING_ORG_BOSS_REMOVE"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 245
    iget-object v1, p0, Lcom/alibaba/android/user/contact/activities/SettingOrgBossActivity$2;->a:Lcom/alibaba/android/user/contact/activities/SettingOrgBossActivity;

    invoke-virtual {v1}, Lcom/alibaba/android/user/contact/activities/SettingOrgBossActivity;->b()V

    goto :goto_0
.end method
