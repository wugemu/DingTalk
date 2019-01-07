.class final Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$18$1;
.super Ljava/lang/Object;
.source "HomeActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$18;->a(Lcjo$b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

.field final synthetic b:Lcjo$b;

.field final synthetic c:Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$18;


# direct methods
.method constructor <init>(Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$18;Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;Lcjo$b;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$18;

    .prologue
    .line 1465
    iput-object p1, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$18$1;->c:Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$18;

    iput-object p2, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$18$1;->a:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

    iput-object p3, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$18$1;->b:Lcjo$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 12

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v11

    invoke-static {v11}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 1469
    iget-object v4, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$18$1;->a:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$18$1;->a:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

    iget-object v4, v4, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->orgEmployees:Ljava/util/List;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$18$1;->a:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

    iget-object v4, v4, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->orgEmployees:Ljava/util/List;

    .line 1470
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-gtz v4, :cond_1

    .line 1506
    :cond_0
    :goto_0
    return-void

    .line 1474
    :cond_1
    iget-object v4, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$18$1;->b:Lcjo$b;

    iget-object v3, v4, Lcjo$b;->a:Ljava/lang/Object;

    check-cast v3, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    .line 1475
    .local v3, "userProfileObject":Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;
    iget-object v4, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$18$1;->a:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

    iget-object v4, v4, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->orgEmployees:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    .line 1476
    .local v1, "orgEmployeeExtensionObject":Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;
    if-eqz v1, :cond_2

    iget-object v5, v1, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->nodeItemObjectList:Ljava/util/List;

    if-eqz v5, :cond_2

    iget-object v5, v1, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->nodeItemObjectList:Ljava/util/List;

    .line 1477
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_2

    .line 1480
    iget-object v5, v1, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->nodeItemObjectList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;

    .line 1481
    .local v2, "orgNodeItemObject":Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;
    if-eqz v2, :cond_4

    iget-object v6, v2, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;->userProfileObject:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    if-eqz v6, :cond_4

    iget-object v6, v2, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;->userProfileObject:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    iget-wide v6, v6, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->uid:J

    iget-wide v8, v3, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->uid:J

    cmp-long v6, v6, v8

    if-nez v6, :cond_4

    .line 1483
    iget-object v4, v2, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;->userProfileObject:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    iget-object v5, v3, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->alias:Ljava/lang/String;

    iput-object v5, v4, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->alias:Ljava/lang/String;

    .line 1484
    iget-object v4, v2, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;->userProfileObject:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    iget-object v5, v3, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->aliasPinyin:Ljava/lang/String;

    iput-object v5, v4, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->aliasPinyin:Ljava/lang/String;

    .line 1485
    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v4

    iget-object v5, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$18$1;->a:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

    invoke-virtual {v4, v5}, Lccr;->a(Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;)V

    .line 1486
    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v4

    iget-object v5, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$18$1;->a:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

    iget-object v6, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$18$1;->a:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

    iget-wide v6, v6, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->uid:J

    invoke-virtual {v4, v5, v6, v7}, Lccr;->a(Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;J)V

    .line 1487
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v4

    invoke-virtual {v4}, Lcid;->c()Landroid/app/Application;

    move-result-object v4

    invoke-static {v4}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v4

    new-instance v5, Landroid/content/Intent;

    const-string/jumbo v6, "com.workapp.org_employee_change"

    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Ldq;->a(Landroid/content/Intent;)Z

    goto/16 :goto_0

    .line 1490
    :cond_4
    if-eqz v2, :cond_3

    iget-object v6, v2, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;->masterNodeList:Ljava/util/List;

    if-eqz v6, :cond_3

    .line 1491
    iget-object v6, v2, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;->masterNodeList:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_5
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;

    .line 1492
    .local v0, "masterNode":Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;
    if-eqz v0, :cond_5

    iget-object v7, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;->userProfileObject:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    if-eqz v7, :cond_5

    iget-object v7, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;->userProfileObject:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    iget-wide v8, v7, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->uid:J

    iget-wide v10, v3, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->uid:J

    cmp-long v7, v8, v10

    if-nez v7, :cond_5

    .line 1494
    iget-object v4, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;->userProfileObject:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    iget-object v5, v3, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->alias:Ljava/lang/String;

    iput-object v5, v4, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->alias:Ljava/lang/String;

    .line 1495
    iget-object v4, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;->userProfileObject:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    iget-object v5, v3, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->aliasPinyin:Ljava/lang/String;

    iput-object v5, v4, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->aliasPinyin:Ljava/lang/String;

    .line 1496
    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v4

    iget-object v5, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$18$1;->a:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

    invoke-virtual {v4, v5}, Lccr;->a(Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;)V

    .line 1497
    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v4

    iget-object v5, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$18$1;->a:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

    iget-object v6, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$18$1;->a:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

    iget-wide v6, v6, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->uid:J

    invoke-virtual {v4, v5, v6, v7}, Lccr;->a(Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;J)V

    .line 1498
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v4

    invoke-virtual {v4}, Lcid;->c()Landroid/app/Application;

    move-result-object v4

    invoke-static {v4}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v4

    new-instance v5, Landroid/content/Intent;

    const-string/jumbo v6, "com.workapp.org_employee_change"

    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Ldq;->a(Landroid/content/Intent;)Z

    goto/16 :goto_0
.end method
