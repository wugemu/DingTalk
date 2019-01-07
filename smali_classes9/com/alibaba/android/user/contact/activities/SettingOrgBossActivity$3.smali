.class final Lcom/alibaba/android/user/contact/activities/SettingOrgBossActivity$3;
.super Ljava/lang/Object;
.source "SettingOrgBossActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/user/contact/activities/SettingOrgBossActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Lcom/alibaba/android/user/contact/activities/SettingOrgBossActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/contact/activities/SettingOrgBossActivity;Ljava/util/List;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/user/contact/activities/SettingOrgBossActivity;

    .prologue
    .line 256
    iput-object p1, p0, Lcom/alibaba/android/user/contact/activities/SettingOrgBossActivity$3;->b:Lcom/alibaba/android/user/contact/activities/SettingOrgBossActivity;

    iput-object p2, p0, Lcom/alibaba/android/user/contact/activities/SettingOrgBossActivity$3;->a:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 259
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 260
    .local v1, "uids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    iget-object v2, p0, Lcom/alibaba/android/user/contact/activities/SettingOrgBossActivity$3;->a:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;

    .line 261
    .local v0, "employeeObject":Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;
    if-eqz v0, :cond_0

    .line 262
    iget-wide v4, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;->uid:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 265
    .end local v0    # "employeeObject":Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;
    :cond_1
    iget-object v2, p0, Lcom/alibaba/android/user/contact/activities/SettingOrgBossActivity$3;->b:Lcom/alibaba/android/user/contact/activities/SettingOrgBossActivity;

    invoke-static {v2, v1}, Lcom/alibaba/android/user/contact/activities/SettingOrgBossActivity;->a(Lcom/alibaba/android/user/contact/activities/SettingOrgBossActivity;Ljava/util/List;)V

    .line 266
    return-void
.end method
