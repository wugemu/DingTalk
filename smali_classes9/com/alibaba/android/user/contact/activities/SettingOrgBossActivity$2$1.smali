.class final Lcom/alibaba/android/user/contact/activities/SettingOrgBossActivity$2$1;
.super Ljava/lang/Object;
.source "SettingOrgBossActivity.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/user/contact/activities/SettingOrgBossActivity$2;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
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
        "Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

.field final synthetic b:Lcom/alibaba/android/user/contact/activities/SettingOrgBossActivity$2;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/contact/activities/SettingOrgBossActivity$2;Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/android/user/contact/activities/SettingOrgBossActivity$2;

    .prologue
    .line 221
    iput-object p1, p0, Lcom/alibaba/android/user/contact/activities/SettingOrgBossActivity$2$1;->b:Lcom/alibaba/android/user/contact/activities/SettingOrgBossActivity$2;

    iput-object p2, p0, Lcom/alibaba/android/user/contact/activities/SettingOrgBossActivity$2$1;->a:Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 221
    check-cast p1, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;

    .line 1224
    if-eqz p1, :cond_2

    .line 1225
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/SettingOrgBossActivity$2$1;->b:Lcom/alibaba/android/user/contact/activities/SettingOrgBossActivity$2;

    iget-object v0, v0, Lcom/alibaba/android/user/contact/activities/SettingOrgBossActivity$2;->a:Lcom/alibaba/android/user/contact/activities/SettingOrgBossActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/contact/activities/SettingOrgBossActivity;->h(Lcom/alibaba/android/user/contact/activities/SettingOrgBossActivity;)V

    .line 1226
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/SettingOrgBossActivity$2$1;->b:Lcom/alibaba/android/user/contact/activities/SettingOrgBossActivity$2;

    iget-object v0, v0, Lcom/alibaba/android/user/contact/activities/SettingOrgBossActivity$2;->a:Lcom/alibaba/android/user/contact/activities/SettingOrgBossActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/contact/activities/SettingOrgBossActivity;->i(Lcom/alibaba/android/user/contact/activities/SettingOrgBossActivity;)Lfgv;

    move-result-object v0

    .line 2080
    iget-object v1, v0, Lfge;->a:Ljava/util/List;

    if-nez v1, :cond_0

    .line 2081
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lfge;->a:Ljava/util/List;

    .line 2083
    :cond_0
    iget-object v1, v0, Lfge;->a:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v1, v2, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 2084
    invoke-virtual {v0}, Lfge;->notifyDataSetChanged()V

    .line 1227
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/SettingOrgBossActivity$2$1;->b:Lcom/alibaba/android/user/contact/activities/SettingOrgBossActivity$2;

    iget-object v0, v0, Lcom/alibaba/android/user/contact/activities/SettingOrgBossActivity$2;->a:Lcom/alibaba/android/user/contact/activities/SettingOrgBossActivity;

    invoke-virtual {v0}, Lcom/alibaba/android/user/contact/activities/SettingOrgBossActivity;->b()V

    .line 1228
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/SettingOrgBossActivity$2$1;->b:Lcom/alibaba/android/user/contact/activities/SettingOrgBossActivity$2;

    iget-object v0, v0, Lcom/alibaba/android/user/contact/activities/SettingOrgBossActivity$2;->a:Lcom/alibaba/android/user/contact/activities/SettingOrgBossActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/contact/activities/SettingOrgBossActivity;->i(Lcom/alibaba/android/user/contact/activities/SettingOrgBossActivity;)Lfgv;

    move-result-object v0

    iget-wide v2, p1, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;->uid:J

    iget-object v1, p0, Lcom/alibaba/android/user/contact/activities/SettingOrgBossActivity$2$1;->a:Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    invoke-static {v1}, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->toUserProfileObject(Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;)Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    move-result-object v1

    .line 2143
    iget-object v4, v0, Lfgv;->c:Ljava/util/Map;

    if-nez v4, :cond_1

    .line 2144
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    iput-object v4, v0, Lfgv;->c:Ljava/util/Map;

    .line 2146
    :cond_1
    iget-object v0, v0, Lfgv;->c:Ljava/util/Map;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1230
    :cond_2
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/SettingOrgBossActivity$2$1;->b:Lcom/alibaba/android/user/contact/activities/SettingOrgBossActivity$2;

    iget-object v0, v0, Lcom/alibaba/android/user/contact/activities/SettingOrgBossActivity$2;->a:Lcom/alibaba/android/user/contact/activities/SettingOrgBossActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/contact/activities/SettingOrgBossActivity;->f(Lcom/alibaba/android/user/contact/activities/SettingOrgBossActivity;)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 221
    return-void
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 240
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/SettingOrgBossActivity$2$1;->b:Lcom/alibaba/android/user/contact/activities/SettingOrgBossActivity$2;

    iget-object v0, v0, Lcom/alibaba/android/user/contact/activities/SettingOrgBossActivity$2;->a:Lcom/alibaba/android/user/contact/activities/SettingOrgBossActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/contact/activities/SettingOrgBossActivity;->f(Lcom/alibaba/android/user/contact/activities/SettingOrgBossActivity;)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 241
    invoke-static {p1, p2}, Lcms;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 242
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "id"    # Ljava/lang/Object;
    .param p2, "progress"    # I

    .prologue
    .line 236
    return-void
.end method
