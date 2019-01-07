.class final Lbss$1;
.super Landroid/content/BroadcastReceiver;
.source "AlphaBaseBindPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbss;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lbss;


# direct methods
.method constructor <init>(Lbss;)V
    .locals 0
    .param p1, "this$0"    # Lbss;

    .prologue
    .line 62
    iput-object p1, p0, Lbss$1;->a:Lbss;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 20
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 65
    if-nez p2, :cond_1

    .line 122
    :cond_0
    :goto_0
    return-void

    .line 69
    :cond_1
    :try_start_0
    const-string/jumbo v15, "com.workapp.choose.people.from.contact"

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_0

    .line 70
    const-string/jumbo v15, "org_request_from_source_type"

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 71
    .local v14, "source":Ljava/lang/String;
    const-string/jumbo v15, "source_choose_contact"

    invoke-virtual {v15, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_0

    .line 73
    const-string/jumbo v15, "memory_file_descriptor"

    const/16 v16, 0x0

    move-object/from16 v0, p2

    move/from16 v1, v16

    invoke-virtual {v0, v15, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    .line 74
    .local v6, "fd":I
    if-lez v6, :cond_7

    .line 75
    const-string/jumbo v15, "memory_file_size"

    const/16 v16, 0x0

    move-object/from16 v0, p2

    move/from16 v1, v16

    invoke-virtual {v0, v15, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v13

    .line 76
    .local v13, "size":I
    invoke-static {v6, v13}, Lcnf;->a(II)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/List;

    .line 81
    .end local v13    # "size":I
    .local v10, "profiles":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;>;"
    :goto_1
    const-string/jumbo v15, "choose_department_array"

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v4

    .line 83
    .local v4, "depts":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;>;"
    move-object/from16 v0, p0

    iget-object v15, v0, Lbss$1;->a:Lbss;

    iget-object v15, v15, Lbss;->b:Lbsw$b;

    invoke-interface {v15}, Lbsw$b;->a()Lcom/alibaba/android/dingtalk/guard/ui/activity/GroupData;

    move-result-object v7

    .line 84
    .local v7, "groupData":Lcom/alibaba/android/dingtalk/guard/ui/activity/GroupData;
    if-eqz v7, :cond_0

    .line 85
    new-instance v11, Lbls;

    invoke-direct {v11}, Lbls;-><init>()V

    .line 86
    .local v11, "result":Lbls;
    if-eqz v10, :cond_2

    invoke-interface {v10}, Ljava/util/List;->isEmpty()Z

    move-result v15

    if-eqz v15, :cond_3

    :cond_2
    if-eqz v4, :cond_8

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v15

    if-nez v15, :cond_8

    .line 87
    :cond_3
    iput-object v10, v11, Lbls;->a:Ljava/util/List;

    .line 88
    iput-object v4, v11, Lbls;->b:Ljava/util/List;

    .line 96
    :goto_2
    move-object/from16 v0, p0

    iget-object v15, v0, Lbss$1;->a:Lbss;

    iget-object v15, v15, Lbss;->b:Lbsw$b;

    iget-wide v0, v7, Lcom/alibaba/android/dingtalk/guard/ui/activity/GroupData;->orgId:J

    move-wide/from16 v16, v0

    move-wide/from16 v0, v16

    invoke-interface {v15, v0, v1, v11}, Lbsw$b;->a(JLbls;)V

    .line 97
    move-object/from16 v0, p0

    iget-object v15, v0, Lbss$1;->a:Lbss;

    invoke-virtual {v15}, Lbss;->v()V

    .line 98
    const/4 v8, 0x0

    .line 99
    .local v8, "isShowHiddenDepartsAlertDialog":Z
    move-object/from16 v0, p0

    iget-object v15, v0, Lbss$1;->a:Lbss;

    iget-object v15, v15, Lbss;->b:Lbsw$b;

    iget-wide v0, v7, Lcom/alibaba/android/dingtalk/guard/ui/activity/GroupData;->orgId:J

    move-wide/from16 v16, v0

    invoke-interface/range {v15 .. v17}, Lbsw$b;->b(J)Lcom/alibaba/android/dingtalk/alpha/bean/OrgApBindConfig;

    move-result-object v2

    .line 100
    .local v2, "config":Lcom/alibaba/android/dingtalk/alpha/bean/OrgApBindConfig;
    const/4 v9, 0x0

    .line 101
    .local v9, "isWholeDepartment":Z
    if-eqz v4, :cond_5

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v15

    if-nez v15, :cond_5

    .line 102
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :cond_4
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_5

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;

    .line 103
    .local v3, "department":Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;
    if-eqz v3, :cond_4

    iget-wide v0, v3, Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;->deptId:J

    move-wide/from16 v16, v0

    const-wide/16 v18, -0x1

    cmp-long v16, v16, v18

    if-nez v16, :cond_4

    .line 104
    const/4 v9, 0x1

    .line 109
    .end local v3    # "department":Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;
    :cond_5
    if-eqz v2, :cond_6

    iget-boolean v15, v2, Lcom/alibaba/android/dingtalk/alpha/bean/OrgApBindConfig;->a:Z

    if-nez v15, :cond_6

    iget-boolean v15, v2, Lcom/alibaba/android/dingtalk/alpha/bean/OrgApBindConfig;->e:Z

    if-eqz v15, :cond_6

    if-nez v9, :cond_6

    .line 110
    const/4 v8, 0x1

    .line 112
    :cond_6
    if-eqz v8, :cond_0

    .line 113
    move-object/from16 v0, p0

    iget-object v15, v0, Lbss$1;->a:Lbss;

    invoke-static {v15}, Lbss;->a(Lbss;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 118
    .end local v2    # "config":Lcom/alibaba/android/dingtalk/alpha/bean/OrgApBindConfig;
    .end local v4    # "depts":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;>;"
    .end local v6    # "fd":I
    .end local v7    # "groupData":Lcom/alibaba/android/dingtalk/guard/ui/activity/GroupData;
    .end local v8    # "isShowHiddenDepartsAlertDialog":Z
    .end local v9    # "isWholeDepartment":Z
    .end local v10    # "profiles":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;>;"
    .end local v11    # "result":Lbls;
    .end local v14    # "source":Ljava/lang/String;
    :catch_0
    move-exception v5

    .line 119
    .local v5, "e":Ljava/lang/Exception;
    const-string/jumbo v15, "AlphaBaseBindPresenter"

    const/16 v16, 0x2

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    const-string/jumbo v18, "select contact exp :"

    aput-object v18, v16, v17

    const/16 v17, 0x1

    invoke-virtual {v5}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v18

    aput-object v18, v16, v17

    invoke-static/range {v16 .. v16}, Lcom/alibaba/doraemon/utils/CommonUtils;->getAppendString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Lblu;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 78
    .end local v5    # "e":Ljava/lang/Exception;
    .restart local v6    # "fd":I
    .restart local v14    # "source":Ljava/lang/String;
    :cond_7
    :try_start_1
    const-string/jumbo v15, "choose_user_identities"

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v10

    .restart local v10    # "profiles":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;>;"
    goto/16 :goto_1

    .line 90
    .restart local v4    # "depts":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;>;"
    .restart local v7    # "groupData":Lcom/alibaba/android/dingtalk/guard/ui/activity/GroupData;
    .restart local v11    # "result":Lbls;
    :cond_8
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    iput-object v15, v11, Lbls;->a:Ljava/util/List;

    .line 91
    new-instance v12, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    invoke-direct {v12}, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;-><init>()V

    .line 92
    .local v12, "self":Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;
    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v15

    invoke-virtual {v15}, Lccr;->c()J

    move-result-wide v16

    move-wide/from16 v0, v16

    iput-wide v0, v12, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->uid:J

    .line 93
    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v15

    invoke-virtual {v15}, Lccr;->d()Ljava/lang/String;

    move-result-object v15

    iput-object v15, v12, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->nick:Ljava/lang/String;

    .line 94
    iget-object v15, v11, Lbls;->a:Ljava/util/List;

    invoke-interface {v15, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_2
.end method
