.class Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$10;
.super Landroid/content/BroadcastReceiver;
.source "Contact.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/lightapp/runtime/plugin/biz/Contact;->registerReceiver()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/lightapp/runtime/plugin/biz/Contact;


# direct methods
.method constructor <init>(Lcom/alibaba/lightapp/runtime/plugin/biz/Contact;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/lightapp/runtime/plugin/biz/Contact;

    .prologue
    .line 1017
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$10;->this$0:Lcom/alibaba/lightapp/runtime/plugin/biz/Contact;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 23
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 1021
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    .line 1022
    .local v3, "action":Ljava/lang/String;
    const-string/jumbo v20, "com.workapp.choose.people.from.group.member"

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_1

    .line 1024
    const-string/jumbo v20, "activity_identify"

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 1025
    .local v10, "idenfier":Ljava/lang/String;
    const-string/jumbo v20, "CONTACT_PLUGIN"

    move-object/from16 v0, v20

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_0

    .line 1027
    const-string/jumbo v20, "choose_user_identities"

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v14

    .line 1029
    .local v14, "lists":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;>;"
    if-eqz v14, :cond_0

    .line 1030
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$10;->this$0:Lcom/alibaba/lightapp/runtime/plugin/biz/Contact;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact;->access$1400(Lcom/alibaba/lightapp/runtime/plugin/biz/Contact;)Ljava/util/List;

    move-result-object v20

    invoke-interface/range {v20 .. v20}, Ljava/util/List;->clear()V

    .line 1031
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$10;->this$0:Lcom/alibaba/lightapp/runtime/plugin/biz/Contact;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact;->access$1400(Lcom/alibaba/lightapp/runtime/plugin/biz/Contact;)Ljava/util/List;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-interface {v0, v14}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1032
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$10;->this$0:Lcom/alibaba/lightapp/runtime/plugin/biz/Contact;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$10;->this$0:Lcom/alibaba/lightapp/runtime/plugin/biz/Contact;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact;->access$1400(Lcom/alibaba/lightapp/runtime/plugin/biz/Contact;)Ljava/util/List;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact;->access$1500(Lcom/alibaba/lightapp/runtime/plugin/biz/Contact;Ljava/util/List;)V

    .line 1209
    .end local v10    # "idenfier":Ljava/lang/String;
    .end local v14    # "lists":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;>;"
    :cond_0
    :goto_0
    return-void

    .line 1037
    :cond_1
    const-string/jumbo v20, "com.workapp.choose.people.from.contact"

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_d

    .line 1038
    const-string/jumbo v20, "activity_identify"

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 1039
    .local v11, "identifier":Ljava/lang/String;
    const-string/jumbo v20, "org_request_from_source_type"

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 1040
    .local v19, "source":Ljava/lang/String;
    const-string/jumbo v20, "ComplexChoose"

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_3

    .line 1041
    const-string/jumbo v20, "choose_user_identities"

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v14

    .line 1043
    .restart local v14    # "lists":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;>;"
    const-string/jumbo v20, "choose_department_array"

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v6

    .line 1045
    .local v6, "deptList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;>;"
    if-nez v14, :cond_2

    if-eqz v6, :cond_0

    .line 1046
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$10;->this$0:Lcom/alibaba/lightapp/runtime/plugin/biz/Contact;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-static {v0, v14, v6}, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact;->access$1600(Lcom/alibaba/lightapp/runtime/plugin/biz/Contact;Ljava/util/List;Ljava/util/List;)V

    goto :goto_0

    .line 1048
    .end local v6    # "deptList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;>;"
    .end local v14    # "lists":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;>;"
    :cond_3
    const-string/jumbo v20, "choose"

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_4

    .line 1049
    const-string/jumbo v20, "choose_user_identities"

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v14

    .line 1051
    .restart local v14    # "lists":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;>;"
    if-eqz v14, :cond_0

    .line 1052
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$10;->this$0:Lcom/alibaba/lightapp/runtime/plugin/biz/Contact;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact;->access$1400(Lcom/alibaba/lightapp/runtime/plugin/biz/Contact;)Ljava/util/List;

    move-result-object v20

    invoke-interface/range {v20 .. v20}, Ljava/util/List;->clear()V

    .line 1053
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$10;->this$0:Lcom/alibaba/lightapp/runtime/plugin/biz/Contact;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact;->access$1400(Lcom/alibaba/lightapp/runtime/plugin/biz/Contact;)Ljava/util/List;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-interface {v0, v14}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1055
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$10;->this$0:Lcom/alibaba/lightapp/runtime/plugin/biz/Contact;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$10;->this$0:Lcom/alibaba/lightapp/runtime/plugin/biz/Contact;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact;->access$1400(Lcom/alibaba/lightapp/runtime/plugin/biz/Contact;)Ljava/util/List;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact;->access$1500(Lcom/alibaba/lightapp/runtime/plugin/biz/Contact;Ljava/util/List;)V

    goto/16 :goto_0

    .line 1057
    .end local v14    # "lists":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;>;"
    :cond_4
    const-string/jumbo v20, "source_choose_contact"

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_6

    .line 1059
    const-string/jumbo v20, "memory_file_descriptor"

    const/16 v21, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v8

    .line 1060
    .local v8, "fd":I
    if-lez v8, :cond_5

    .line 1061
    const-string/jumbo v20, "memory_file_size"

    const/16 v21, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v18

    .line 1062
    .local v18, "size":I
    move/from16 v0, v18

    invoke-static {v8, v0}, Lcnf;->a(II)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/util/List;

    .line 1067
    .end local v18    # "size":I
    .local v17, "profiles":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;>;"
    :goto_1
    const-string/jumbo v20, "choose_department_array"

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v6

    .line 1070
    .restart local v6    # "deptList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$10;->this$0:Lcom/alibaba/lightapp/runtime/plugin/biz/Contact;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v17

    invoke-static {v0, v1, v6}, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact;->access$1700(Lcom/alibaba/lightapp/runtime/plugin/biz/Contact;Ljava/util/List;Ljava/util/List;)V

    goto/16 :goto_0

    .line 1064
    .end local v6    # "deptList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;>;"
    .end local v17    # "profiles":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;>;"
    :cond_5
    const-string/jumbo v20, "choose_user_identities"

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v17

    .restart local v17    # "profiles":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;>;"
    goto :goto_1

    .line 1071
    .end local v8    # "fd":I
    .end local v17    # "profiles":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;>;"
    :cond_6
    const-string/jumbo v20, "externalComplexPicke"

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_9

    .line 1072
    const-string/jumbo v20, "choose_user_identities"

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v17

    .line 1075
    .restart local v17    # "profiles":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;>;"
    invoke-interface/range {v17 .. v17}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v20

    :cond_7
    :goto_2
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->hasNext()Z

    move-result v21

    if-eqz v21, :cond_8

    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    .line 1076
    .local v16, "profile":Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;
    if-eqz v16, :cond_7

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->orgUserName:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v21

    if-nez v21, :cond_7

    .line 1077
    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->orgUserName:Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v16

    iput-object v0, v1, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->nick:Ljava/lang/String;

    goto :goto_2

    .line 1080
    .end local v16    # "profile":Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$10;->this$0:Lcom/alibaba/lightapp/runtime/plugin/biz/Contact;

    move-object/from16 v20, v0

    const/16 v21, 0x1

    move-object/from16 v0, v20

    move-object/from16 v1, v17

    move/from16 v2, v21

    invoke-static {v0, v1, v2}, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact;->access$1800(Lcom/alibaba/lightapp/runtime/plugin/biz/Contact;Ljava/util/List;Z)V

    goto/16 :goto_0

    .line 1081
    .end local v17    # "profiles":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;>;"
    :cond_9
    const-string/jumbo v20, "CONTACT_PLUGIN"

    move-object/from16 v0, v20

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_a

    .line 1083
    const-string/jumbo v20, "choose_user_identities"

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v14

    .line 1085
    .restart local v14    # "lists":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;>;"
    if-eqz v14, :cond_0

    .line 1086
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$10;->this$0:Lcom/alibaba/lightapp/runtime/plugin/biz/Contact;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact;->access$1400(Lcom/alibaba/lightapp/runtime/plugin/biz/Contact;)Ljava/util/List;

    move-result-object v20

    invoke-interface/range {v20 .. v20}, Ljava/util/List;->clear()V

    .line 1087
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$10;->this$0:Lcom/alibaba/lightapp/runtime/plugin/biz/Contact;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact;->access$1400(Lcom/alibaba/lightapp/runtime/plugin/biz/Contact;)Ljava/util/List;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-interface {v0, v14}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1088
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$10;->this$0:Lcom/alibaba/lightapp/runtime/plugin/biz/Contact;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$10;->this$0:Lcom/alibaba/lightapp/runtime/plugin/biz/Contact;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact;->access$1400(Lcom/alibaba/lightapp/runtime/plugin/biz/Contact;)Ljava/util/List;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact;->access$1500(Lcom/alibaba/lightapp/runtime/plugin/biz/Contact;Ljava/util/List;)V

    goto/16 :goto_0

    .line 1090
    .end local v14    # "lists":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;>;"
    :cond_a
    const-string/jumbo v20, "source_set_rule"

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_b

    .line 1091
    const-string/jumbo v20, "choose_user_identities"

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v17

    .line 1093
    .restart local v17    # "profiles":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;>;"
    const-string/jumbo v20, "choose_department_array"

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v6

    .line 1096
    .restart local v6    # "deptList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$10;->this$0:Lcom/alibaba/lightapp/runtime/plugin/biz/Contact;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v17

    invoke-static {v0, v1, v6}, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact;->access$1900(Lcom/alibaba/lightapp/runtime/plugin/biz/Contact;Ljava/util/List;Ljava/util/List;)V

    goto/16 :goto_0

    .line 1097
    .end local v6    # "deptList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;>;"
    .end local v17    # "profiles":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;>;"
    :cond_b
    const-string/jumbo v20, "source_choose_dept"

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_c

    .line 1098
    const-string/jumbo v20, "choose_user_identities"

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v17

    .line 1100
    .restart local v17    # "profiles":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;>;"
    const-string/jumbo v20, "choose_department_array"

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v6

    .line 1103
    .restart local v6    # "deptList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$10;->this$0:Lcom/alibaba/lightapp/runtime/plugin/biz/Contact;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v17

    invoke-static {v0, v1, v6}, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact;->access$2000(Lcom/alibaba/lightapp/runtime/plugin/biz/Contact;Ljava/util/List;Ljava/util/List;)V

    goto/16 :goto_0

    .line 1104
    .end local v6    # "deptList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;>;"
    .end local v17    # "profiles":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;>;"
    :cond_c
    const-string/jumbo v20, "source_choose_mobile_contacts"

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_0

    .line 1105
    const-string/jumbo v20, "choose_user_identities"

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v17

    .line 1107
    .restart local v17    # "profiles":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$10;->this$0:Lcom/alibaba/lightapp/runtime/plugin/biz/Contact;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v17

    invoke-static {v0, v1}, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact;->access$2100(Lcom/alibaba/lightapp/runtime/plugin/biz/Contact;Ljava/util/List;)V

    goto/16 :goto_0

    .line 1110
    .end local v11    # "identifier":Ljava/lang/String;
    .end local v17    # "profiles":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;>;"
    .end local v19    # "source":Ljava/lang/String;
    :cond_d
    const-string/jumbo v20, "com.workapp.choose.people.from.new.contact"

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_15

    .line 1111
    const-string/jumbo v20, "org_request_from_source_type"

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 1112
    .restart local v19    # "source":Ljava/lang/String;
    const-string/jumbo v20, "ComplexChoose"

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_11

    .line 1113
    const-string/jumbo v20, "choose_user_identities"

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v14

    .line 1115
    .restart local v14    # "lists":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;>;"
    const-string/jumbo v20, "choose_department_array"

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v6

    .line 1117
    .restart local v6    # "deptList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;>;"
    if-eqz v14, :cond_e

    .line 1118
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$10;->this$0:Lcom/alibaba/lightapp/runtime/plugin/biz/Contact;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact;->access$1400(Lcom/alibaba/lightapp/runtime/plugin/biz/Contact;)Ljava/util/List;

    move-result-object v20

    invoke-interface/range {v20 .. v20}, Ljava/util/List;->clear()V

    .line 1119
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$10;->this$0:Lcom/alibaba/lightapp/runtime/plugin/biz/Contact;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact;->access$1400(Lcom/alibaba/lightapp/runtime/plugin/biz/Contact;)Ljava/util/List;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-interface {v0, v14}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1121
    :cond_e
    if-eqz v6, :cond_f

    .line 1122
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$10;->this$0:Lcom/alibaba/lightapp/runtime/plugin/biz/Contact;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact;->access$2200(Lcom/alibaba/lightapp/runtime/plugin/biz/Contact;)Ljava/util/List;

    move-result-object v20

    invoke-interface/range {v20 .. v20}, Ljava/util/List;->clear()V

    .line 1123
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$10;->this$0:Lcom/alibaba/lightapp/runtime/plugin/biz/Contact;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact;->access$2200(Lcom/alibaba/lightapp/runtime/plugin/biz/Contact;)Ljava/util/List;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-interface {v0, v6}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1125
    :cond_f
    if-nez v14, :cond_10

    if-eqz v6, :cond_0

    .line 1126
    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$10;->this$0:Lcom/alibaba/lightapp/runtime/plugin/biz/Contact;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$10;->this$0:Lcom/alibaba/lightapp/runtime/plugin/biz/Contact;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact;->access$1400(Lcom/alibaba/lightapp/runtime/plugin/biz/Contact;)Ljava/util/List;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$10;->this$0:Lcom/alibaba/lightapp/runtime/plugin/biz/Contact;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact;->access$2200(Lcom/alibaba/lightapp/runtime/plugin/biz/Contact;)Ljava/util/List;

    move-result-object v22

    invoke-static/range {v20 .. v22}, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact;->access$1600(Lcom/alibaba/lightapp/runtime/plugin/biz/Contact;Ljava/util/List;Ljava/util/List;)V

    goto/16 :goto_0

    .line 1128
    .end local v6    # "deptList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;>;"
    .end local v14    # "lists":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;>;"
    :cond_11
    const-string/jumbo v20, "choose"

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_12

    .line 1129
    const-string/jumbo v20, "choose_user_identities"

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v14

    .line 1131
    .restart local v14    # "lists":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;>;"
    if-eqz v14, :cond_0

    .line 1132
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$10;->this$0:Lcom/alibaba/lightapp/runtime/plugin/biz/Contact;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact;->access$1400(Lcom/alibaba/lightapp/runtime/plugin/biz/Contact;)Ljava/util/List;

    move-result-object v20

    invoke-interface/range {v20 .. v20}, Ljava/util/List;->clear()V

    .line 1133
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$10;->this$0:Lcom/alibaba/lightapp/runtime/plugin/biz/Contact;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact;->access$1400(Lcom/alibaba/lightapp/runtime/plugin/biz/Contact;)Ljava/util/List;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-interface {v0, v14}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1135
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$10;->this$0:Lcom/alibaba/lightapp/runtime/plugin/biz/Contact;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$10;->this$0:Lcom/alibaba/lightapp/runtime/plugin/biz/Contact;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact;->access$1400(Lcom/alibaba/lightapp/runtime/plugin/biz/Contact;)Ljava/util/List;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact;->access$1500(Lcom/alibaba/lightapp/runtime/plugin/biz/Contact;Ljava/util/List;)V

    goto/16 :goto_0

    .line 1137
    .end local v14    # "lists":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;>;"
    :cond_12
    const-string/jumbo v20, "chooseFollower"

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_13

    .line 1138
    const-string/jumbo v20, "choose_user_identities"

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v13

    .line 1140
    .local v13, "list":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;>;"
    if-eqz v13, :cond_0

    .line 1141
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$10;->this$0:Lcom/alibaba/lightapp/runtime/plugin/biz/Contact;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-static {v0, v13}, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact;->access$2300(Lcom/alibaba/lightapp/runtime/plugin/biz/Contact;Ljava/util/List;)V

    goto/16 :goto_0

    .line 1143
    .end local v13    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;>;"
    :cond_13
    const-string/jumbo v20, "source_choose_contact"

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_14

    .line 1144
    const-string/jumbo v20, "choose_user_identities"

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v17

    .line 1146
    .restart local v17    # "profiles":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;>;"
    const-string/jumbo v20, "choose_department_array"

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v6

    .line 1149
    .restart local v6    # "deptList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$10;->this$0:Lcom/alibaba/lightapp/runtime/plugin/biz/Contact;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v17

    invoke-static {v0, v1, v6}, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact;->access$1700(Lcom/alibaba/lightapp/runtime/plugin/biz/Contact;Ljava/util/List;Ljava/util/List;)V

    goto/16 :goto_0

    .line 1150
    .end local v6    # "deptList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;>;"
    .end local v17    # "profiles":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;>;"
    :cond_14
    const-string/jumbo v20, "source_set_rule"

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_0

    .line 1151
    const-string/jumbo v20, "choose_user_identities"

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v17

    .line 1153
    .restart local v17    # "profiles":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;>;"
    const-string/jumbo v20, "choose_department_array"

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v6

    .line 1156
    .restart local v6    # "deptList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$10;->this$0:Lcom/alibaba/lightapp/runtime/plugin/biz/Contact;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v17

    invoke-static {v0, v1, v6}, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact;->access$1900(Lcom/alibaba/lightapp/runtime/plugin/biz/Contact;Ljava/util/List;Ljava/util/List;)V

    goto/16 :goto_0

    .line 1160
    .end local v6    # "deptList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;>;"
    .end local v17    # "profiles":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;>;"
    .end local v19    # "source":Ljava/lang/String;
    :cond_15
    const-string/jumbo v20, "com.workapp.create.group.Action"

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_16

    .line 1161
    const-string/jumbo v20, "conversation_id"

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1162
    .local v4, "cid":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$10;->this$0:Lcom/alibaba/lightapp/runtime/plugin/biz/Contact;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-static {v0, v4}, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact;->access$2400(Lcom/alibaba/lightapp/runtime/plugin/biz/Contact;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1164
    .end local v4    # "cid":Ljava/lang/String;
    :cond_16
    const-string/jumbo v20, "com.workapp.choose.customer.from.mycustomer"

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_17

    .line 1165
    const-string/jumbo v20, "org_request_from_source_type"

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 1166
    .restart local v19    # "source":Ljava/lang/String;
    const-string/jumbo v20, "source_choose_customer"

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_0

    .line 1167
    const-string/jumbo v20, "key_select_customer_ret_json"

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 1168
    .local v12, "jsonData":Ljava/lang/String;
    const-string/jumbo v20, "key_select_customer_ret_object"

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v5

    check-cast v5, Lcom/alibaba/android/dingtalk/userbase/model/CrmCustomerObject;

    .line 1169
    .local v5, "customer":Lcom/alibaba/android/dingtalk/userbase/model/CrmCustomerObject;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$10;->this$0:Lcom/alibaba/lightapp/runtime/plugin/biz/Contact;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-static {v0, v12, v5}, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact;->access$2500(Lcom/alibaba/lightapp/runtime/plugin/biz/Contact;Ljava/lang/String;Lcom/alibaba/android/dingtalk/userbase/model/CrmCustomerObject;)V

    goto/16 :goto_0

    .line 1172
    .end local v5    # "customer":Lcom/alibaba/android/dingtalk/userbase/model/CrmCustomerObject;
    .end local v12    # "jsonData":Ljava/lang/String;
    .end local v19    # "source":Ljava/lang/String;
    :cond_17
    const-string/jumbo v20, "com.workapp.org.external.update"

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-nez v20, :cond_18

    const-string/jumbo v20, "com.workapp.org.external.added"

    .line 1173
    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_19

    .line 1174
    :cond_18
    const-string/jumbo v20, "activity_identify"

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 1175
    .local v9, "flag":Ljava/lang/String;
    const-string/jumbo v20, "CONTACT_PLUGIN"

    move-object/from16 v0, v20

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_0

    .line 1176
    const-string/jumbo v20, "employee_info"

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v15

    check-cast v15, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    .line 1177
    .local v15, "o":Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$10;->this$0:Lcom/alibaba/lightapp/runtime/plugin/biz/Contact;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-static {v0, v15}, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact;->access$2600(Lcom/alibaba/lightapp/runtime/plugin/biz/Contact;Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;)V

    goto/16 :goto_0

    .line 1180
    .end local v9    # "flag":Ljava/lang/String;
    .end local v15    # "o":Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;
    :cond_19
    const-string/jumbo v20, "com.workapp.org.external.delete"

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_1a

    .line 1181
    const-string/jumbo v20, "activity_identify"

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 1182
    .restart local v9    # "flag":Ljava/lang/String;
    const-string/jumbo v20, "CONTACT_PLUGIN"

    move-object/from16 v0, v20

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_0

    .line 1183
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$10;->this$0:Lcom/alibaba/lightapp/runtime/plugin/biz/Contact;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-static/range {v20 .. v21}, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact;->access$2600(Lcom/alibaba/lightapp/runtime/plugin/biz/Contact;Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;)V

    goto/16 :goto_0

    .line 1186
    .end local v9    # "flag":Ljava/lang/String;
    :cond_1a
    const-string/jumbo v20, "com.workapp.org.employee.add"

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_1b

    .line 1187
    const-string/jumbo v20, "activity_identify"

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 1188
    .restart local v9    # "flag":Ljava/lang/String;
    const-string/jumbo v20, "identity_from_jsapi_contact_add_user_form"

    move-object/from16 v0, v20

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_0

    .line 1189
    const-string/jumbo v20, "employee_info"

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v7

    check-cast v7, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;

    .line 1190
    .local v7, "employeeObject":Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$10;->this$0:Lcom/alibaba/lightapp/runtime/plugin/biz/Contact;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-static {v0, v7}, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact;->access$2700(Lcom/alibaba/lightapp/runtime/plugin/biz/Contact;Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;)V

    goto/16 :goto_0

    .line 1192
    .end local v7    # "employeeObject":Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;
    .end local v9    # "flag":Ljava/lang/String;
    :cond_1b
    const-string/jumbo v20, "action_selected_contacts_result"

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_1d

    .line 1193
    const-string/jumbo v20, "org_request_from_source_type"

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 1194
    .restart local v19    # "source":Ljava/lang/String;
    const-string/jumbo v20, "source_choose_contact"

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_1c

    .line 1195
    const-string/jumbo v20, "choose_user_identities"

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v17

    .line 1196
    .restart local v17    # "profiles":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;>;"
    const-string/jumbo v20, "choose_department_array"

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v6

    .line 1198
    .restart local v6    # "deptList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$10;->this$0:Lcom/alibaba/lightapp/runtime/plugin/biz/Contact;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v17

    invoke-static {v0, v1, v6}, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact;->access$2800(Lcom/alibaba/lightapp/runtime/plugin/biz/Contact;Ljava/util/List;Ljava/util/List;)V

    goto/16 :goto_0

    .line 1199
    .end local v6    # "deptList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;>;"
    .end local v17    # "profiles":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;>;"
    :cond_1c
    const-string/jumbo v20, "source_choose_dept"

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_0

    .line 1200
    const-string/jumbo v20, "choose_user_identities"

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v17

    .line 1201
    .restart local v17    # "profiles":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;>;"
    const-string/jumbo v20, "choose_department_array"

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v6

    .line 1203
    .restart local v6    # "deptList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$10;->this$0:Lcom/alibaba/lightapp/runtime/plugin/biz/Contact;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v17

    invoke-static {v0, v1, v6}, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact;->access$2900(Lcom/alibaba/lightapp/runtime/plugin/biz/Contact;Ljava/util/List;Ljava/util/List;)V

    goto/16 :goto_0

    .line 1205
    .end local v6    # "deptList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;>;"
    .end local v17    # "profiles":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;>;"
    .end local v19    # "source":Ljava/lang/String;
    :cond_1d
    const-string/jumbo v20, "action_job_title_selected"

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_0

    .line 1206
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$10;->this$0:Lcom/alibaba/lightapp/runtime/plugin/biz/Contact;

    move-object/from16 v20, v0

    const-string/jumbo v21, "intent_key_job_title_code"

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    const-string/jumbo v22, "intent_key_job_title_name"

    .line 1207
    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    .line 1206
    invoke-static/range {v20 .. v22}, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact;->access$3000(Lcom/alibaba/lightapp/runtime/plugin/biz/Contact;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method
