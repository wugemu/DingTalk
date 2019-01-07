.class final Lcom/alibaba/android/dingtalkim/session/SessionPresenter$4;
.super Landroid/content/BroadcastReceiver;
.source "SessionPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/dingtalkim/session/SessionPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalkim/session/SessionPresenter;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalkim/session/SessionPresenter;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalkim/session/SessionPresenter;

    .prologue
    .line 835
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/session/SessionPresenter$4;->a:Lcom/alibaba/android/dingtalkim/session/SessionPresenter;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 16
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v15

    invoke-static {v15}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 838
    if-eqz p2, :cond_0

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/alibaba/android/dingtalkim/session/SessionPresenter$4;->a:Lcom/alibaba/android/dingtalkim/session/SessionPresenter;

    .line 3116
    iget-object v11, v11, Lcom/alibaba/android/dingtalkim/session/SessionPresenter;->a:Ldyy$b;

    .line 838
    invoke-interface {v11}, Ldyy$b;->d()Z

    move-result v11

    if-eqz v11, :cond_0

    .line 839
    const-string/jumbo v11, "com.workapp.CONVERSATION_NOTICE_CHANGED"

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 840
    const-string/jumbo v11, "cid"

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 841
    .local v2, "cid":Ljava/lang/String;
    const-string/jumbo v11, "is_single_chat"

    const/4 v12, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v11, v12}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v6

    .line 842
    .local v6, "isSingleChat":Z
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/alibaba/android/dingtalkim/session/SessionPresenter$4;->a:Lcom/alibaba/android/dingtalkim/session/SessionPresenter;

    .line 4156
    if-eqz v6, :cond_1

    .line 4157
    iget-object v12, v11, Lcom/alibaba/android/dingtalkim/session/SessionPresenter;->g:Ljava/util/ArrayList;

    if-eqz v12, :cond_0

    .line 4161
    invoke-static {}, Lcom/alibaba/android/dingtalkim/session/SessionPresenter;->k()Lcom/alibaba/doraemon/threadpool/Thread;

    move-result-object v12

    new-instance v13, Lcom/alibaba/android/dingtalkim/session/SessionPresenter$18;

    invoke-direct {v13, v11, v2}, Lcom/alibaba/android/dingtalkim/session/SessionPresenter$18;-><init>(Lcom/alibaba/android/dingtalkim/session/SessionPresenter;Ljava/lang/String;)V

    invoke-interface {v12, v13}, Lcom/alibaba/doraemon/threadpool/Thread;->start(Ljava/lang/Runnable;)V

    .line 912
    .end local v2    # "cid":Ljava/lang/String;
    .end local v6    # "isSingleChat":Z
    :cond_0
    :goto_0
    return-void

    .line 4189
    .restart local v2    # "cid":Ljava/lang/String;
    .restart local v6    # "isSingleChat":Z
    :cond_1
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_0

    .line 4190
    iget-object v12, v11, Lcom/alibaba/android/dingtalkim/session/SessionPresenter;->c:Landroid/os/Handler;

    new-instance v13, Lcom/alibaba/android/dingtalkim/session/SessionPresenter$19;

    invoke-direct {v13, v11, v2}, Lcom/alibaba/android/dingtalkim/session/SessionPresenter$19;-><init>(Lcom/alibaba/android/dingtalkim/session/SessionPresenter;Ljava/lang/String;)V

    invoke-virtual {v12, v13}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 843
    .end local v2    # "cid":Ljava/lang/String;
    .end local v6    # "isSingleChat":Z
    :cond_2
    const-string/jumbo v11, "com.workapp.CONVERSATION_ENTERPRISE_CHANGED"

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 844
    const-string/jumbo v11, "cid"

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 845
    .restart local v2    # "cid":Ljava/lang/String;
    const-string/jumbo v11, "is_enterprise_group"

    const/4 v12, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v11, v12}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    .line 847
    .local v4, "isEnterprise":Z
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_0

    .line 848
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/alibaba/android/dingtalkim/session/SessionPresenter$4;->a:Lcom/alibaba/android/dingtalkim/session/SessionPresenter;

    .line 5116
    iget-object v11, v11, Lcom/alibaba/android/dingtalkim/session/SessionPresenter;->c:Landroid/os/Handler;

    .line 848
    new-instance v12, Lcom/alibaba/android/dingtalkim/session/SessionPresenter$4$1;

    move-object/from16 v0, p0

    invoke-direct {v12, v0, v2, v4}, Lcom/alibaba/android/dingtalkim/session/SessionPresenter$4$1;-><init>(Lcom/alibaba/android/dingtalkim/session/SessionPresenter$4;Ljava/lang/String;Z)V

    invoke-virtual {v11, v12}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 855
    .end local v2    # "cid":Ljava/lang/String;
    .end local v4    # "isEnterprise":Z
    :cond_3
    const-string/jumbo v11, "com.workapp.new.user.lifestyle.guide"

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_4

    .line 856
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/alibaba/android/dingtalkim/session/SessionPresenter$4;->a:Lcom/alibaba/android/dingtalkim/session/SessionPresenter;

    .line 6116
    iget-object v11, v11, Lcom/alibaba/android/dingtalkim/session/SessionPresenter;->a:Ldyy$b;

    .line 856
    invoke-interface {v11}, Ldyy$b;->e()V

    goto :goto_0

    .line 857
    :cond_4
    const-string/jumbo v11, "com.workapp.org_employee_change"

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_5

    .line 858
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/alibaba/android/dingtalkim/session/SessionPresenter$4;->a:Lcom/alibaba/android/dingtalkim/session/SessionPresenter;

    .line 7116
    iget-object v11, v11, Lcom/alibaba/android/dingtalkim/session/SessionPresenter;->a:Ldyy$b;

    .line 858
    invoke-interface {v11}, Ldyy$b;->a()V

    goto :goto_0

    .line 859
    :cond_5
    const-string/jumbo v11, "com.workapp.org.sync"

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_6

    .line 860
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/alibaba/android/dingtalkim/session/SessionPresenter$4;->a:Lcom/alibaba/android/dingtalkim/session/SessionPresenter;

    .line 8116
    iget-object v11, v11, Lcom/alibaba/android/dingtalkim/session/SessionPresenter;->a:Ldyy$b;

    .line 860
    invoke-interface {v11}, Ldyy$b;->a()V

    goto/16 :goto_0

    .line 861
    :cond_6
    const-string/jumbo v11, "action_decrypt_last_msg_of_conversation"

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_7

    const-string/jumbo v11, "action_decrypt_msg_in_conversation"

    .line 862
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_d

    .line 863
    :cond_7
    const-string/jumbo v11, "org_id"

    const-wide/16 v12, 0x0

    move-object/from16 v0, p2

    invoke-static {v0, v11, v12, v13}, Lcoy;->a(Landroid/content/Intent;Ljava/lang/String;J)J

    move-result-wide v8

    .line 864
    .local v8, "orgId":J
    const-string/jumbo v11, "corp_id"

    move-object/from16 v0, p2

    invoke-static {v0, v11}, Lcoy;->a(Landroid/content/Intent;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 865
    .local v3, "corpId":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/alibaba/android/dingtalkim/session/SessionPresenter$4;->a:Lcom/alibaba/android/dingtalkim/session/SessionPresenter;

    .line 9116
    iget-object v12, v11, Lcom/alibaba/android/dingtalkim/session/SessionPresenter;->g:Ljava/util/ArrayList;

    .line 10048
    const/4 v11, 0x0

    .line 10049
    if-eqz v12, :cond_8

    const-wide/16 v14, 0x0

    cmp-long v13, v8, v14

    if-gtz v13, :cond_9

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_9

    .line 10050
    :cond_8
    const/4 v10, 0x0

    .line 866
    .local v10, "successNum":I
    :goto_1
    if-lez v10, :cond_0

    .line 867
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/alibaba/android/dingtalkim/session/SessionPresenter$4;->a:Lcom/alibaba/android/dingtalkim/session/SessionPresenter;

    .line 10116
    iget-object v11, v11, Lcom/alibaba/android/dingtalkim/session/SessionPresenter;->a:Ldyy$b;

    .line 867
    invoke-interface {v11}, Ldyy$b;->a()V

    goto/16 :goto_0

    .line 10052
    .end local v10    # "successNum":I
    :cond_9
    invoke-virtual {v12}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v13

    move v12, v11

    :cond_a
    :goto_2
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_c

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;

    .line 10053
    if-eqz v11, :cond_a

    iget-object v14, v11, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversation:Lcom/alibaba/wukong/im/Conversation;

    if-eqz v14, :cond_a

    iget-object v14, v11, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversation:Lcom/alibaba/wukong/im/Conversation;

    .line 10055
    invoke-interface {v14}, Lcom/alibaba/wukong/im/Conversation;->latestMessage()Lcom/alibaba/wukong/im/Message;

    move-result-object v14

    if-eqz v14, :cond_a

    .line 10058
    iget-object v14, v11, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversation:Lcom/alibaba/wukong/im/Conversation;

    invoke-static {v14}, Ldjl;->r(Lcom/alibaba/wukong/im/Conversation;)J

    move-result-wide v14

    cmp-long v14, v8, v14

    if-eqz v14, :cond_b

    iget-object v14, v11, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversation:Lcom/alibaba/wukong/im/Conversation;

    .line 10059
    invoke-static {v14}, Ldjl;->s(Lcom/alibaba/wukong/im/Conversation;)Ljava/lang/String;

    move-result-object v14

    invoke-static {v3, v14}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v14

    if-eqz v14, :cond_18

    .line 10060
    :cond_b
    iget-object v11, v11, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversation:Lcom/alibaba/wukong/im/Conversation;

    invoke-interface {v11}, Lcom/alibaba/wukong/im/Conversation;->latestMessage()Lcom/alibaba/wukong/im/Message;

    move-result-object v11

    .line 10061
    invoke-interface {v11}, Lcom/alibaba/wukong/im/Message;->messageType()Lcom/alibaba/wukong/im/Message$MessageType;

    move-result-object v14

    sget-object v15, Lcom/alibaba/wukong/im/Message$MessageType;->ENCRYPT:Lcom/alibaba/wukong/im/Message$MessageType;

    if-ne v14, v15, :cond_18

    .line 10062
    invoke-interface {v11}, Lcom/alibaba/wukong/im/Message;->isDecrypted()Z

    move-result v14

    if-nez v14, :cond_18

    invoke-interface {v11}, Lcom/alibaba/wukong/im/Message;->tryToDecryptSync()Z

    move-result v14

    if-eqz v14, :cond_18

    .line 10063
    check-cast v11, Lcom/alibaba/android/dingtalkim/base/model/DingtalkMessage;

    invoke-virtual {v11}, Lcom/alibaba/android/dingtalkim/base/model/DingtalkMessage;->updateDisplayType()V

    .line 10064
    add-int/lit8 v12, v12, 0x1

    move v11, v12

    :goto_3
    move v12, v11

    .line 10067
    goto :goto_2

    :cond_c
    move v10, v12

    .line 10068
    goto :goto_1

    .line 869
    .end local v3    # "corpId":Ljava/lang/String;
    .end local v8    # "orgId":J
    :cond_d
    const-string/jumbo v11, "action_at_me_open_change"

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_e

    .line 870
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/alibaba/android/dingtalkim/session/SessionPresenter$4;->a:Lcom/alibaba/android/dingtalkim/session/SessionPresenter;

    .line 11116
    iget-object v11, v11, Lcom/alibaba/android/dingtalkim/session/SessionPresenter;->a:Ldyy$b;

    .line 870
    invoke-interface {v11}, Ldyy$b;->k()V

    goto/16 :goto_0

    .line 871
    :cond_e
    const-string/jumbo v11, "action_push_task_change"

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_10

    .line 872
    const-string/jumbo v11, "key_push_task_dispatch_object"

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v7

    check-cast v7, Lcom/alibaba/android/dingtalkim/session/header/model/PushTaskHeaderObject;

    .line 873
    .local v7, "obj":Lcom/alibaba/android/dingtalkim/session/header/model/PushTaskHeaderObject;
    if-eqz v7, :cond_0

    .line 877
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/alibaba/android/dingtalkim/session/SessionPresenter$4;->a:Lcom/alibaba/android/dingtalkim/session/SessionPresenter;

    .line 12116
    iget-object v11, v11, Lcom/alibaba/android/dingtalkim/session/SessionPresenter;->a:Ldyy$b;

    .line 877
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/alibaba/android/dingtalkim/session/SessionPresenter$4;->a:Lcom/alibaba/android/dingtalkim/session/SessionPresenter;

    .line 13116
    iget-object v12, v12, Lcom/alibaba/android/dingtalkim/session/SessionPresenter;->g:Ljava/util/ArrayList;

    .line 877
    invoke-static {v12}, Ldza;->a(Ljava/util/List;)I

    move-result v12

    invoke-interface {v11, v12}, Ldyy$b;->a(I)V

    .line 878
    iget-wide v12, v7, Lcom/alibaba/android/dingtalkim/session/header/model/PushTaskHeaderObject;->expiredTime:J

    const-wide/16 v14, 0x0

    cmp-long v11, v12, v14

    if-lez v11, :cond_f

    .line 879
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/alibaba/android/dingtalkim/session/SessionPresenter$4;->a:Lcom/alibaba/android/dingtalkim/session/SessionPresenter;

    .line 14116
    iget-object v11, v11, Lcom/alibaba/android/dingtalkim/session/SessionPresenter;->a:Ldyy$b;

    .line 879
    invoke-interface {v11, v7}, Ldyy$b;->a(Lcom/alibaba/android/dingtalkim/session/header/model/PushTaskHeaderObject;)V

    goto/16 :goto_0

    .line 881
    :cond_f
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/alibaba/android/dingtalkim/session/SessionPresenter$4;->a:Lcom/alibaba/android/dingtalkim/session/SessionPresenter;

    .line 15116
    iget-object v11, v11, Lcom/alibaba/android/dingtalkim/session/SessionPresenter;->a:Ldyy$b;

    .line 881
    invoke-interface {v11}, Ldyy$b;->l()V

    goto/16 :goto_0

    .line 883
    .end local v7    # "obj":Lcom/alibaba/android/dingtalkim/session/header/model/PushTaskHeaderObject;
    :cond_10
    const-string/jumbo v11, "action_push_task_list_change"

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_12

    .line 884
    const-string/jumbo v11, "key_push_task_list_object"

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v7

    check-cast v7, Lcom/alibaba/android/dingtalkim/session/header/model/CommonTaskListObject;

    .line 885
    .local v7, "obj":Lcom/alibaba/android/dingtalkim/session/header/model/CommonTaskListObject;
    if-eqz v7, :cond_0

    .line 889
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/alibaba/android/dingtalkim/session/SessionPresenter$4;->a:Lcom/alibaba/android/dingtalkim/session/SessionPresenter;

    .line 16116
    iget-object v11, v11, Lcom/alibaba/android/dingtalkim/session/SessionPresenter;->a:Ldyy$b;

    .line 889
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/alibaba/android/dingtalkim/session/SessionPresenter$4;->a:Lcom/alibaba/android/dingtalkim/session/SessionPresenter;

    .line 17116
    iget-object v12, v12, Lcom/alibaba/android/dingtalkim/session/SessionPresenter;->g:Ljava/util/ArrayList;

    .line 889
    invoke-static {v12}, Ldza;->a(Ljava/util/List;)I

    move-result v12

    invoke-interface {v11, v12}, Ldyy$b;->a(I)V

    .line 890
    iget-wide v12, v7, Lcom/alibaba/android/dingtalkim/session/header/model/CommonTaskListObject;->expiredTime:J

    const-wide/16 v14, 0x0

    cmp-long v11, v12, v14

    if-lez v11, :cond_11

    .line 891
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/alibaba/android/dingtalkim/session/SessionPresenter$4;->a:Lcom/alibaba/android/dingtalkim/session/SessionPresenter;

    .line 18116
    iget-object v11, v11, Lcom/alibaba/android/dingtalkim/session/SessionPresenter;->a:Ldyy$b;

    .line 891
    invoke-interface {v11, v7}, Ldyy$b;->a(Lcom/alibaba/android/dingtalkim/session/header/model/CommonTaskListObject;)V

    goto/16 :goto_0

    .line 893
    :cond_11
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/alibaba/android/dingtalkim/session/SessionPresenter$4;->a:Lcom/alibaba/android/dingtalkim/session/SessionPresenter;

    .line 19116
    iget-object v11, v11, Lcom/alibaba/android/dingtalkim/session/SessionPresenter;->a:Ldyy$b;

    .line 893
    invoke-interface {v11}, Ldyy$b;->m()V

    goto/16 :goto_0

    .line 895
    .end local v7    # "obj":Lcom/alibaba/android/dingtalkim/session/header/model/CommonTaskListObject;
    :cond_12
    const-string/jumbo v11, "action_search_query_hint_changed"

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_13

    const-string/jumbo v11, "action_settings_entry_update"

    .line 896
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_14

    .line 897
    :cond_13
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/alibaba/android/dingtalkim/session/SessionPresenter$4;->a:Lcom/alibaba/android/dingtalkim/session/SessionPresenter;

    .line 20116
    iget-object v11, v11, Lcom/alibaba/android/dingtalkim/session/SessionPresenter;->a:Ldyy$b;

    .line 897
    invoke-interface {v11}, Ldyy$b;->a()V

    goto/16 :goto_0

    .line 898
    :cond_14
    const-string/jumbo v11, "action_hide_notification_setting_tip"

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_15

    .line 899
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/alibaba/android/dingtalkim/session/SessionPresenter$4;->a:Lcom/alibaba/android/dingtalkim/session/SessionPresenter;

    .line 21116
    iget-object v11, v11, Lcom/alibaba/android/dingtalkim/session/SessionPresenter;->a:Ldyy$b;

    .line 899
    invoke-interface {v11}, Ldyy$b;->q()V

    goto/16 :goto_0

    .line 900
    :cond_15
    const-string/jumbo v11, "action_hide_contact_match_guide"

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_16

    .line 901
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/alibaba/android/dingtalkim/session/SessionPresenter$4;->a:Lcom/alibaba/android/dingtalkim/session/SessionPresenter;

    .line 22116
    iget-object v11, v11, Lcom/alibaba/android/dingtalkim/session/SessionPresenter;->a:Ldyy$b;

    .line 901
    invoke-interface {v11}, Ldyy$b;->r()V

    goto/16 :goto_0

    .line 902
    :cond_16
    const-string/jumbo v11, "action_key_space_sync_drive_guide_change"

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 903
    const-string/jumbo v11, "intent_key_is_hide"

    const/4 v12, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v11, v12}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v5

    .line 904
    .local v5, "isHideSpaceSyncDriveGuide":Z
    if-eqz v5, :cond_17

    .line 905
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/alibaba/android/dingtalkim/session/SessionPresenter$4;->a:Lcom/alibaba/android/dingtalkim/session/SessionPresenter;

    .line 23116
    iget-object v11, v11, Lcom/alibaba/android/dingtalkim/session/SessionPresenter;->a:Ldyy$b;

    .line 905
    invoke-interface {v11}, Ldyy$b;->t()V

    goto/16 :goto_0

    .line 909
    :cond_17
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/alibaba/android/dingtalkim/session/SessionPresenter$4;->a:Lcom/alibaba/android/dingtalkim/session/SessionPresenter;

    .line 24116
    iget-object v11, v11, Lcom/alibaba/android/dingtalkim/session/SessionPresenter;->a:Ldyy$b;

    .line 909
    invoke-interface {v11}, Ldyy$b;->s()V

    goto/16 :goto_0

    .end local v5    # "isHideSpaceSyncDriveGuide":Z
    .restart local v3    # "corpId":Ljava/lang/String;
    .restart local v8    # "orgId":J
    :cond_18
    move v11, v12

    goto/16 :goto_3
.end method
