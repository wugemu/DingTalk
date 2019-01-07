.class final Lcom/alibaba/android/user/profile/v2/UserProfileMoreActivity$4;
.super Landroid/content/BroadcastReceiver;
.source "UserProfileMoreActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/user/profile/v2/UserProfileMoreActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/user/profile/v2/UserProfileMoreActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/profile/v2/UserProfileMoreActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/user/profile/v2/UserProfileMoreActivity;

    .prologue
    .line 749
    iput-object p1, p0, Lcom/alibaba/android/user/profile/v2/UserProfileMoreActivity$4;->a:Lcom/alibaba/android/user/profile/v2/UserProfileMoreActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 12
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v11

    invoke-static {v11}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 753
    iget-object v6, p0, Lcom/alibaba/android/user/profile/v2/UserProfileMoreActivity$4;->a:Lcom/alibaba/android/user/profile/v2/UserProfileMoreActivity;

    invoke-virtual {v6}, Lcom/alibaba/android/user/profile/v2/UserProfileMoreActivity;->isDestroyed()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 839
    :cond_0
    :goto_0
    return-void

    .line 757
    :cond_1
    const-string/jumbo v6, "com.workapp.alias_change"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 758
    const-string/jumbo v6, "user_alias"

    invoke-virtual {p2, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 759
    .local v0, "alias":Ljava/lang/String;
    iget-object v6, p0, Lcom/alibaba/android/user/profile/v2/UserProfileMoreActivity$4;->a:Lcom/alibaba/android/user/profile/v2/UserProfileMoreActivity;

    invoke-static {v6}, Lcom/alibaba/android/user/profile/v2/UserProfileMoreActivity;->i(Lcom/alibaba/android/user/profile/v2/UserProfileMoreActivity;)Lcom/alibaba/android/dingtalkbase/uidic/cells/C1T1TextCell;

    move-result-object v6

    invoke-virtual {v6, v0}, Lcom/alibaba/android/dingtalkbase/uidic/cells/C1T1TextCell;->setContent(Ljava/lang/String;)V

    goto :goto_0

    .line 760
    .end local v0    # "alias":Ljava/lang/String;
    :cond_2
    const-string/jumbo v6, "com.workapp.org.external.delete"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 762
    invoke-static {}, Lcom/alibaba/android/user/profile/v2/UserProfileMoreActivity;->a()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "activity_identify"

    invoke-virtual {p2, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 766
    const-string/jumbo v6, "employee_info"

    .line 767
    invoke-virtual {p2, v6}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v3

    check-cast v3, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    .line 768
    .local v3, "orgObject":Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;
    if-eqz v3, :cond_0

    iget-object v6, p0, Lcom/alibaba/android/user/profile/v2/UserProfileMoreActivity$4;->a:Lcom/alibaba/android/user/profile/v2/UserProfileMoreActivity;

    invoke-static {v6}, Lcom/alibaba/android/user/profile/v2/UserProfileMoreActivity;->j(Lcom/alibaba/android/user/profile/v2/UserProfileMoreActivity;)Ljava/util/List;

    move-result-object v6

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/alibaba/android/user/profile/v2/UserProfileMoreActivity$4;->a:Lcom/alibaba/android/user/profile/v2/UserProfileMoreActivity;

    invoke-static {v6}, Lcom/alibaba/android/user/profile/v2/UserProfileMoreActivity;->j(Lcom/alibaba/android/user/profile/v2/UserProfileMoreActivity;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_0

    .line 771
    iget-object v6, p0, Lcom/alibaba/android/user/profile/v2/UserProfileMoreActivity$4;->a:Lcom/alibaba/android/user/profile/v2/UserProfileMoreActivity;

    invoke-static {v6}, Lcom/alibaba/android/user/profile/v2/UserProfileMoreActivity;->j(Lcom/alibaba/android/user/profile/v2/UserProfileMoreActivity;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_3
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    .line 772
    .local v2, "object":Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;
    iget-wide v8, v2, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->uid:J

    iget-wide v10, v3, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->uid:J

    cmp-long v7, v8, v10

    if-nez v7, :cond_3

    .line 773
    iget-object v6, p0, Lcom/alibaba/android/user/profile/v2/UserProfileMoreActivity$4;->a:Lcom/alibaba/android/user/profile/v2/UserProfileMoreActivity;

    invoke-virtual {v6}, Lcom/alibaba/android/user/profile/v2/UserProfileMoreActivity;->finish()V

    goto/16 :goto_0

    .line 777
    .end local v2    # "object":Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;
    .end local v3    # "orgObject":Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;
    :cond_4
    const-string/jumbo v6, "com.workapp.org.external.update"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 779
    invoke-static {}, Lcom/alibaba/android/user/profile/v2/UserProfileMoreActivity;->a()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "activity_identify"

    invoke-virtual {p2, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 783
    const-string/jumbo v6, "employee_info"

    .line 784
    invoke-virtual {p2, v6}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v3

    check-cast v3, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    .line 785
    .restart local v3    # "orgObject":Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;
    if-eqz v3, :cond_0

    iget-object v6, p0, Lcom/alibaba/android/user/profile/v2/UserProfileMoreActivity$4;->a:Lcom/alibaba/android/user/profile/v2/UserProfileMoreActivity;

    invoke-static {v6}, Lcom/alibaba/android/user/profile/v2/UserProfileMoreActivity;->j(Lcom/alibaba/android/user/profile/v2/UserProfileMoreActivity;)Ljava/util/List;

    move-result-object v6

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/alibaba/android/user/profile/v2/UserProfileMoreActivity$4;->a:Lcom/alibaba/android/user/profile/v2/UserProfileMoreActivity;

    invoke-static {v6}, Lcom/alibaba/android/user/profile/v2/UserProfileMoreActivity;->j(Lcom/alibaba/android/user/profile/v2/UserProfileMoreActivity;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_0

    .line 788
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    iget-object v6, p0, Lcom/alibaba/android/user/profile/v2/UserProfileMoreActivity$4;->a:Lcom/alibaba/android/user/profile/v2/UserProfileMoreActivity;

    invoke-static {v6}, Lcom/alibaba/android/user/profile/v2/UserProfileMoreActivity;->j(Lcom/alibaba/android/user/profile/v2/UserProfileMoreActivity;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ge v1, v6, :cond_0

    .line 789
    iget-object v6, p0, Lcom/alibaba/android/user/profile/v2/UserProfileMoreActivity$4;->a:Lcom/alibaba/android/user/profile/v2/UserProfileMoreActivity;

    invoke-static {v6}, Lcom/alibaba/android/user/profile/v2/UserProfileMoreActivity;->j(Lcom/alibaba/android/user/profile/v2/UserProfileMoreActivity;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    .line 790
    .restart local v2    # "object":Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;
    iget-wide v6, v2, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->uid:J

    iget-wide v8, v3, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->uid:J

    cmp-long v6, v6, v8

    if-nez v6, :cond_5

    .line 791
    iget-object v6, p0, Lcom/alibaba/android/user/profile/v2/UserProfileMoreActivity$4;->a:Lcom/alibaba/android/user/profile/v2/UserProfileMoreActivity;

    invoke-static {v6}, Lcom/alibaba/android/user/profile/v2/UserProfileMoreActivity;->j(Lcom/alibaba/android/user/profile/v2/UserProfileMoreActivity;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v1, v3}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 788
    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 795
    .end local v1    # "i":I
    .end local v2    # "object":Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;
    .end local v3    # "orgObject":Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;
    :cond_6
    const-string/jumbo v6, "com.workapp.org.employee.add"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_a

    .line 796
    const-string/jumbo v6, "employee_info"

    .line 797
    invoke-virtual {p2, v6}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v3

    check-cast v3, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    .line 799
    .restart local v3    # "orgObject":Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;
    if-eqz v3, :cond_0

    .line 802
    iget-object v6, p0, Lcom/alibaba/android/user/profile/v2/UserProfileMoreActivity$4;->a:Lcom/alibaba/android/user/profile/v2/UserProfileMoreActivity;

    invoke-static {v6}, Lcom/alibaba/android/user/profile/v2/UserProfileMoreActivity;->k(Lcom/alibaba/android/user/profile/v2/UserProfileMoreActivity;)Ljava/util/List;

    move-result-object v6

    if-nez v6, :cond_7

    .line 803
    iget-object v6, p0, Lcom/alibaba/android/user/profile/v2/UserProfileMoreActivity$4;->a:Lcom/alibaba/android/user/profile/v2/UserProfileMoreActivity;

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v6, v7}, Lcom/alibaba/android/user/profile/v2/UserProfileMoreActivity;->a(Lcom/alibaba/android/user/profile/v2/UserProfileMoreActivity;Ljava/util/List;)Ljava/util/List;

    .line 805
    :cond_7
    iget-object v6, p0, Lcom/alibaba/android/user/profile/v2/UserProfileMoreActivity$4;->a:Lcom/alibaba/android/user/profile/v2/UserProfileMoreActivity;

    invoke-static {v6}, Lcom/alibaba/android/user/profile/v2/UserProfileMoreActivity;->k(Lcom/alibaba/android/user/profile/v2/UserProfileMoreActivity;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 806
    iget-object v6, p0, Lcom/alibaba/android/user/profile/v2/UserProfileMoreActivity$4;->a:Lcom/alibaba/android/user/profile/v2/UserProfileMoreActivity;

    invoke-static {v6}, Lcom/alibaba/android/user/profile/v2/UserProfileMoreActivity;->l(Lcom/alibaba/android/user/profile/v2/UserProfileMoreActivity;)Ljava/util/Map;

    move-result-object v6

    iget-wide v8, v3, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgId:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 807
    iget-object v6, p0, Lcom/alibaba/android/user/profile/v2/UserProfileMoreActivity$4;->a:Lcom/alibaba/android/user/profile/v2/UserProfileMoreActivity;

    invoke-static {v6}, Lcom/alibaba/android/user/profile/v2/UserProfileMoreActivity;->m(Lcom/alibaba/android/user/profile/v2/UserProfileMoreActivity;)Ljava/util/Map;

    move-result-object v6

    iget-wide v8, v3, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgId:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    iget-object v8, v3, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgName:Ljava/lang/String;

    invoke-interface {v6, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 809
    :cond_8
    iget-object v6, p0, Lcom/alibaba/android/user/profile/v2/UserProfileMoreActivity$4;->a:Lcom/alibaba/android/user/profile/v2/UserProfileMoreActivity;

    invoke-static {v6}, Lcom/alibaba/android/user/profile/v2/UserProfileMoreActivity;->n(Lcom/alibaba/android/user/profile/v2/UserProfileMoreActivity;)Ljava/util/Map;

    move-result-object v6

    iget-wide v8, v3, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgId:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 810
    iget-object v6, p0, Lcom/alibaba/android/user/profile/v2/UserProfileMoreActivity$4;->a:Lcom/alibaba/android/user/profile/v2/UserProfileMoreActivity;

    invoke-static {v6}, Lcom/alibaba/android/user/profile/v2/UserProfileMoreActivity;->o(Lcom/alibaba/android/user/profile/v2/UserProfileMoreActivity;)Ljava/util/Map;

    move-result-object v6

    iget-wide v8, v3, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgId:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    iget-object v8, v3, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgName:Ljava/lang/String;

    invoke-interface {v6, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 813
    :cond_9
    iget-object v6, p0, Lcom/alibaba/android/user/profile/v2/UserProfileMoreActivity$4;->a:Lcom/alibaba/android/user/profile/v2/UserProfileMoreActivity;

    invoke-static {v6}, Lcom/alibaba/android/user/profile/v2/UserProfileMoreActivity;->p(Lcom/alibaba/android/user/profile/v2/UserProfileMoreActivity;)V

    goto/16 :goto_0

    .line 814
    .end local v3    # "orgObject":Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;
    :cond_a
    const-string/jumbo v6, "com.workapp.org.external.added"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_d

    .line 815
    const-string/jumbo v6, "employee_info"

    .line 816
    invoke-virtual {p2, v6}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v3

    check-cast v3, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    .line 818
    .restart local v3    # "orgObject":Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;
    if-eqz v3, :cond_0

    .line 821
    iget-object v6, p0, Lcom/alibaba/android/user/profile/v2/UserProfileMoreActivity$4;->a:Lcom/alibaba/android/user/profile/v2/UserProfileMoreActivity;

    const/4 v7, 0x1

    invoke-static {v6, v7}, Lcom/alibaba/android/user/profile/v2/UserProfileMoreActivity;->c(Lcom/alibaba/android/user/profile/v2/UserProfileMoreActivity;Z)Z

    .line 822
    iget-object v6, p0, Lcom/alibaba/android/user/profile/v2/UserProfileMoreActivity$4;->a:Lcom/alibaba/android/user/profile/v2/UserProfileMoreActivity;

    invoke-static {v6}, Lcom/alibaba/android/user/profile/v2/UserProfileMoreActivity;->j(Lcom/alibaba/android/user/profile/v2/UserProfileMoreActivity;)Ljava/util/List;

    move-result-object v6

    if-nez v6, :cond_b

    .line 823
    iget-object v6, p0, Lcom/alibaba/android/user/profile/v2/UserProfileMoreActivity$4;->a:Lcom/alibaba/android/user/profile/v2/UserProfileMoreActivity;

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v6, v7}, Lcom/alibaba/android/user/profile/v2/UserProfileMoreActivity;->b(Lcom/alibaba/android/user/profile/v2/UserProfileMoreActivity;Ljava/util/List;)Ljava/util/List;

    .line 825
    :cond_b
    iget-object v6, p0, Lcom/alibaba/android/user/profile/v2/UserProfileMoreActivity$4;->a:Lcom/alibaba/android/user/profile/v2/UserProfileMoreActivity;

    invoke-static {v6}, Lcom/alibaba/android/user/profile/v2/UserProfileMoreActivity;->j(Lcom/alibaba/android/user/profile/v2/UserProfileMoreActivity;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 826
    iget-object v6, p0, Lcom/alibaba/android/user/profile/v2/UserProfileMoreActivity$4;->a:Lcom/alibaba/android/user/profile/v2/UserProfileMoreActivity;

    invoke-static {v6}, Lcom/alibaba/android/user/profile/v2/UserProfileMoreActivity;->q(Lcom/alibaba/android/user/profile/v2/UserProfileMoreActivity;)Ljava/util/Map;

    move-result-object v6

    iget-wide v8, v3, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgId:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    iget-object v8, v3, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgName:Ljava/lang/String;

    invoke-interface {v6, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 827
    iget-object v6, v3, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->permission:Lcom/alibaba/android/dingtalk/userbase/model/OrgEmpPermissionObject;

    if-eqz v6, :cond_c

    iget-object v6, v3, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->permission:Lcom/alibaba/android/dingtalk/userbase/model/OrgEmpPermissionObject;

    iget-boolean v6, v6, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmpPermissionObject;->canEdit:Z

    if-eqz v6, :cond_c

    .line 828
    iget-object v6, p0, Lcom/alibaba/android/user/profile/v2/UserProfileMoreActivity$4;->a:Lcom/alibaba/android/user/profile/v2/UserProfileMoreActivity;

    invoke-static {v6}, Lcom/alibaba/android/user/profile/v2/UserProfileMoreActivity;->r(Lcom/alibaba/android/user/profile/v2/UserProfileMoreActivity;)Ljava/util/Map;

    move-result-object v6

    iget-wide v8, v3, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgId:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    iget-object v8, v3, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgName:Ljava/lang/String;

    invoke-interface {v6, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 831
    :cond_c
    iget-object v6, p0, Lcom/alibaba/android/user/profile/v2/UserProfileMoreActivity$4;->a:Lcom/alibaba/android/user/profile/v2/UserProfileMoreActivity;

    invoke-static {v6}, Lcom/alibaba/android/user/profile/v2/UserProfileMoreActivity;->p(Lcom/alibaba/android/user/profile/v2/UserProfileMoreActivity;)V

    goto/16 :goto_0

    .line 832
    .end local v3    # "orgObject":Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;
    :cond_d
    const-string/jumbo v6, "action_friend_request_status_changed"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 833
    const-string/jumbo v6, "user_id"

    const-wide/16 v8, 0x0

    invoke-virtual {p2, v6, v8, v9}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v4

    .line 834
    .local v4, "uid":J
    iget-object v6, p0, Lcom/alibaba/android/user/profile/v2/UserProfileMoreActivity$4;->a:Lcom/alibaba/android/user/profile/v2/UserProfileMoreActivity;

    invoke-static {v6}, Lcom/alibaba/android/user/profile/v2/UserProfileMoreActivity;->s(Lcom/alibaba/android/user/profile/v2/UserProfileMoreActivity;)J

    move-result-wide v6

    cmp-long v6, v4, v6

    if-nez v6, :cond_0

    .line 835
    iget-object v6, p0, Lcom/alibaba/android/user/profile/v2/UserProfileMoreActivity$4;->a:Lcom/alibaba/android/user/profile/v2/UserProfileMoreActivity;

    const-string/jumbo v7, "friend_request_status"

    const/4 v8, 0x0

    invoke-virtual {p2, v7, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v7

    invoke-static {v7}, Lcom/alibaba/android/dingtalk/userbase/model/FriendRequestObject$FriendRequestStatus;->fromValue(I)Lcom/alibaba/android/dingtalk/userbase/model/FriendRequestObject$FriendRequestStatus;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/alibaba/android/user/profile/v2/UserProfileMoreActivity;->a(Lcom/alibaba/android/user/profile/v2/UserProfileMoreActivity;Lcom/alibaba/android/dingtalk/userbase/model/FriendRequestObject$FriendRequestStatus;)Lcom/alibaba/android/dingtalk/userbase/model/FriendRequestObject$FriendRequestStatus;

    .line 836
    iget-object v6, p0, Lcom/alibaba/android/user/profile/v2/UserProfileMoreActivity$4;->a:Lcom/alibaba/android/user/profile/v2/UserProfileMoreActivity;

    invoke-static {v6}, Lcom/alibaba/android/user/profile/v2/UserProfileMoreActivity;->b(Lcom/alibaba/android/user/profile/v2/UserProfileMoreActivity;)V

    goto/16 :goto_0
.end method
