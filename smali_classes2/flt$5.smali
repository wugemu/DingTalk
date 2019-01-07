.class final Lflt$5;
.super Landroid/content/BroadcastReceiver;
.source "FriendRequestDataManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lflt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lflt;


# direct methods
.method constructor <init>(Lflt;)V
    .locals 0
    .param p1, "this$0"    # Lflt;

    .prologue
    .line 958
    iput-object p1, p0, Lflt$5;->a:Lflt;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 20
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 961
    move-object/from16 v0, p0

    iget-object v0, v0, Lflt$5;->a:Lflt;

    move-object/from16 v16, v0

    .line 1060
    move-object/from16 v0, v16

    iget-object v0, v0, Lflt;->o:Lcom/alibaba/android/user/contact/activities/FriendAndGroupRequestActivity;

    move-object/from16 v16, v0

    .line 961
    invoke-virtual/range {v16 .. v16}, Lcom/alibaba/android/user/contact/activities/FriendAndGroupRequestActivity;->isDestroyed()Z

    move-result v16

    if-eqz v16, :cond_1

    .line 1043
    :cond_0
    :goto_0
    return-void

    .line 964
    :cond_1
    const-string/jumbo v16, "com.workapp.friend_request_change"

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_2

    .line 965
    const-string/jumbo v16, "friend_request_position"

    const/16 v17, -0x1

    move-object/from16 v0, p2

    move-object/from16 v1, v16

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    .line 966
    .local v6, "friendRequestPosition":I
    const-string/jumbo v16, "friend_request_status"

    const/16 v17, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v16

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v13

    .line 967
    .local v13, "status":I
    if-ltz v6, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lflt$5;->a:Lflt;

    move-object/from16 v16, v0

    .line 2060
    move-object/from16 v0, v16

    iget-object v0, v0, Lflt;->l:Ljava/util/List;

    move-object/from16 v16, v0

    .line 967
    invoke-interface/range {v16 .. v16}, Ljava/util/List;->size()I

    move-result v16

    move/from16 v0, v16

    if-ge v6, v0, :cond_0

    .line 968
    move-object/from16 v0, p0

    iget-object v0, v0, Lflt$5;->a:Lflt;

    move-object/from16 v16, v0

    .line 3060
    move-object/from16 v0, v16

    iget-object v0, v0, Lflt;->l:Ljava/util/List;

    move-object/from16 v16, v0

    .line 968
    move-object/from16 v0, v16

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lfgm;

    .line 969
    .local v9, "item":Lfgm;
    if-eqz v9, :cond_0

    iget-object v0, v9, Lfgm;->e:Lcom/alibaba/android/dingtalk/userbase/model/NewRequestObject;

    move-object/from16 v16, v0

    if-eqz v16, :cond_0

    .line 970
    iget-object v0, v9, Lfgm;->e:Lcom/alibaba/android/dingtalk/userbase/model/NewRequestObject;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iput v13, v0, Lcom/alibaba/android/dingtalk/userbase/model/NewRequestObject;->status:I

    .line 971
    move-object/from16 v0, p0

    iget-object v0, v0, Lflt$5;->a:Lflt;

    move-object/from16 v16, v0

    .line 4060
    move-object/from16 v0, v16

    iget-object v0, v0, Lflt;->o:Lcom/alibaba/android/user/contact/activities/FriendAndGroupRequestActivity;

    move-object/from16 v16, v0

    .line 971
    invoke-virtual/range {v16 .. v16}, Lcom/alibaba/android/user/contact/activities/FriendAndGroupRequestActivity;->g()V

    goto :goto_0

    .line 974
    .end local v6    # "friendRequestPosition":I
    .end local v9    # "item":Lfgm;
    .end local v13    # "status":I
    :cond_2
    const-string/jumbo v16, "action_friend_request_status_changed"

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_7

    .line 975
    const-string/jumbo v16, "user_id"

    const-wide/16 v18, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v16

    move-wide/from16 v2, v18

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v14

    .line 976
    .local v14, "uid":J
    const-string/jumbo v16, "friend_request_status"

    const/16 v17, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v16

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v13

    .line 977
    .restart local v13    # "status":I
    const/4 v4, 0x0

    .line 978
    .local v4, "changed":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lflt$5;->a:Lflt;

    move-object/from16 v16, v0

    .line 5060
    move-object/from16 v0, v16

    iget-object v0, v0, Lflt;->l:Ljava/util/List;

    move-object/from16 v16, v0

    .line 978
    invoke-interface/range {v16 .. v16}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v16

    :cond_3
    :goto_1
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_4

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lfgm;

    .line 979
    .restart local v9    # "item":Lfgm;
    if-eqz v9, :cond_3

    iget-object v0, v9, Lfgm;->e:Lcom/alibaba/android/dingtalk/userbase/model/NewRequestObject;

    move-object/from16 v17, v0

    if-eqz v17, :cond_3

    iget-object v0, v9, Lfgm;->e:Lcom/alibaba/android/dingtalk/userbase/model/NewRequestObject;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-wide v0, v0, Lcom/alibaba/android/dingtalk/userbase/model/NewRequestObject;->id:J

    move-wide/from16 v18, v0

    cmp-long v17, v18, v14

    if-nez v17, :cond_3

    .line 980
    iget-object v0, v9, Lfgm;->e:Lcom/alibaba/android/dingtalk/userbase/model/NewRequestObject;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iput v13, v0, Lcom/alibaba/android/dingtalk/userbase/model/NewRequestObject;->status:I

    .line 981
    const/4 v4, 0x1

    goto :goto_1

    .line 984
    .end local v9    # "item":Lfgm;
    :cond_4
    if-eqz v4, :cond_5

    .line 985
    move-object/from16 v0, p0

    iget-object v0, v0, Lflt$5;->a:Lflt;

    move-object/from16 v16, v0

    .line 6060
    move-object/from16 v0, v16

    iget-object v0, v0, Lflt;->o:Lcom/alibaba/android/user/contact/activities/FriendAndGroupRequestActivity;

    move-object/from16 v16, v0

    .line 985
    invoke-virtual/range {v16 .. v16}, Lcom/alibaba/android/user/contact/activities/FriendAndGroupRequestActivity;->g()V

    .line 987
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lflt$5;->a:Lflt;

    move-object/from16 v16, v0

    .line 7060
    move-object/from16 v0, v16

    iget-object v0, v0, Lflt;->d:Ljava/util/List;

    move-object/from16 v16, v0

    .line 987
    if-eqz v16, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lflt$5;->a:Lflt;

    move-object/from16 v16, v0

    .line 8060
    move-object/from16 v0, v16

    iget-object v0, v0, Lflt;->d:Ljava/util/List;

    move-object/from16 v16, v0

    .line 987
    invoke-interface/range {v16 .. v16}, Ljava/util/List;->size()I

    move-result v16

    if-lez v16, :cond_0

    .line 988
    move-object/from16 v0, p0

    iget-object v0, v0, Lflt$5;->a:Lflt;

    move-object/from16 v16, v0

    .line 9060
    move-object/from16 v0, v16

    iget-object v0, v0, Lflt;->d:Ljava/util/List;

    move-object/from16 v16, v0

    .line 988
    invoke-interface/range {v16 .. v16}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v16

    :cond_6
    :goto_2
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_0

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/alibaba/android/dingtalk/userbase/model/NewRequestObject;

    .line 989
    .local v5, "friendRequestObject":Lcom/alibaba/android/dingtalk/userbase/model/NewRequestObject;
    if-eqz v5, :cond_6

    iget-wide v0, v5, Lcom/alibaba/android/dingtalk/userbase/model/NewRequestObject;->id:J

    move-wide/from16 v18, v0

    cmp-long v17, v18, v14

    if-nez v17, :cond_6

    .line 990
    iput v13, v5, Lcom/alibaba/android/dingtalk/userbase/model/NewRequestObject;->status:I

    goto :goto_2

    .line 994
    .end local v4    # "changed":Z
    .end local v5    # "friendRequestObject":Lcom/alibaba/android/dingtalk/userbase/model/NewRequestObject;
    .end local v13    # "status":I
    .end local v14    # "uid":J
    :cond_7
    const-string/jumbo v16, "action_friend_request_deleted"

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_c

    .line 995
    const-string/jumbo v16, "user_id"

    move-object/from16 v0, p2

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v8

    .line 996
    .local v8, "ids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v8, :cond_0

    invoke-virtual {v8}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v16

    if-nez v16, :cond_0

    .line 999
    const-string/jumbo v16, "user_id"

    const-wide/16 v18, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v16

    move-wide/from16 v2, v18

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v14

    .line 1000
    .restart local v14    # "uid":J
    move-object/from16 v0, p0

    iget-object v0, v0, Lflt$5;->a:Lflt;

    move-object/from16 v16, v0

    .line 10060
    move-object/from16 v0, v16

    iget-object v0, v0, Lflt;->c:Ljava/util/List;

    move-object/from16 v16, v0

    .line 1000
    if-eqz v16, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Lflt$5;->a:Lflt;

    move-object/from16 v16, v0

    .line 11060
    move-object/from16 v0, v16

    iget-object v0, v0, Lflt;->c:Ljava/util/List;

    move-object/from16 v16, v0

    .line 1000
    invoke-interface/range {v16 .. v16}, Ljava/util/List;->size()I

    move-result v16

    if-lez v16, :cond_a

    .line 1001
    move-object/from16 v0, p0

    iget-object v0, v0, Lflt$5;->a:Lflt;

    move-object/from16 v16, v0

    .line 12060
    move-object/from16 v0, v16

    iget-object v0, v0, Lflt;->c:Ljava/util/List;

    move-object/from16 v16, v0

    .line 1001
    invoke-interface/range {v16 .. v16}, Ljava/util/List;->size()I

    move-result v16

    add-int/lit8 v7, v16, -0x1

    .local v7, "i":I
    :goto_3
    if-ltz v7, :cond_9

    .line 1002
    move-object/from16 v0, p0

    iget-object v0, v0, Lflt$5;->a:Lflt;

    move-object/from16 v16, v0

    .line 13060
    move-object/from16 v0, v16

    iget-object v0, v0, Lflt;->c:Ljava/util/List;

    move-object/from16 v16, v0

    .line 1002
    move-object/from16 v0, v16

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/alibaba/android/dingtalk/userbase/model/NewRequestObject;

    .line 1003
    .local v12, "requestObject":Lcom/alibaba/android/dingtalk/userbase/model/NewRequestObject;
    if-eqz v12, :cond_8

    iget-wide v0, v12, Lcom/alibaba/android/dingtalk/userbase/model/NewRequestObject;->id:J

    move-wide/from16 v16, v0

    invoke-static/range {v16 .. v17}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_8

    .line 1004
    move-object/from16 v0, p0

    iget-object v0, v0, Lflt$5;->a:Lflt;

    move-object/from16 v16, v0

    .line 14060
    move-object/from16 v0, v16

    iget-object v0, v0, Lflt;->c:Ljava/util/List;

    move-object/from16 v16, v0

    .line 1004
    move-object/from16 v0, v16

    invoke-interface {v0, v7}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 1001
    :cond_8
    add-int/lit8 v7, v7, -0x1

    goto :goto_3

    .line 1007
    .end local v12    # "requestObject":Lcom/alibaba/android/dingtalk/userbase/model/NewRequestObject;
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lflt$5;->a:Lflt;

    move-object/from16 v16, v0

    .line 15060
    invoke-virtual/range {v16 .. v16}, Lflt;->a()V

    .line 1009
    .end local v7    # "i":I
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lflt$5;->a:Lflt;

    move-object/from16 v16, v0

    .line 16060
    move-object/from16 v0, v16

    iget-object v0, v0, Lflt;->d:Ljava/util/List;

    move-object/from16 v16, v0

    .line 1009
    if-eqz v16, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lflt$5;->a:Lflt;

    move-object/from16 v16, v0

    .line 17060
    move-object/from16 v0, v16

    iget-object v0, v0, Lflt;->d:Ljava/util/List;

    move-object/from16 v16, v0

    .line 1009
    invoke-interface/range {v16 .. v16}, Ljava/util/List;->size()I

    move-result v16

    if-lez v16, :cond_0

    .line 1010
    const/4 v7, 0x0

    .restart local v7    # "i":I
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lflt$5;->a:Lflt;

    move-object/from16 v16, v0

    .line 18060
    move-object/from16 v0, v16

    iget-object v0, v0, Lflt;->d:Ljava/util/List;

    move-object/from16 v16, v0

    .line 1010
    invoke-interface/range {v16 .. v16}, Ljava/util/List;->size()I

    move-result v16

    move/from16 v0, v16

    if-ge v7, v0, :cond_0

    .line 1011
    move-object/from16 v0, p0

    iget-object v0, v0, Lflt$5;->a:Lflt;

    move-object/from16 v16, v0

    .line 19060
    move-object/from16 v0, v16

    iget-object v0, v0, Lflt;->d:Ljava/util/List;

    move-object/from16 v16, v0

    .line 1011
    move-object/from16 v0, v16

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/alibaba/android/dingtalk/userbase/model/NewRequestObject;

    .line 1012
    .restart local v12    # "requestObject":Lcom/alibaba/android/dingtalk/userbase/model/NewRequestObject;
    if-eqz v12, :cond_b

    iget-wide v0, v12, Lcom/alibaba/android/dingtalk/userbase/model/NewRequestObject;->id:J

    move-wide/from16 v16, v0

    cmp-long v16, v16, v14

    if-nez v16, :cond_b

    .line 1013
    move-object/from16 v0, p0

    iget-object v0, v0, Lflt$5;->a:Lflt;

    move-object/from16 v16, v0

    .line 20060
    move-object/from16 v0, v16

    iget-object v0, v0, Lflt;->d:Ljava/util/List;

    move-object/from16 v16, v0

    .line 1013
    move-object/from16 v0, v16

    invoke-interface {v0, v7}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_0

    .line 1010
    :cond_b
    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    .line 1018
    .end local v7    # "i":I
    .end local v8    # "ids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v12    # "requestObject":Lcom/alibaba/android/dingtalk/userbase/model/NewRequestObject;
    .end local v14    # "uid":J
    :cond_c
    const-string/jumbo v16, "com.workapp.org_apply_change"

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_d

    .line 1019
    const-string/jumbo v16, "list_view_position"

    const/16 v17, -0x1

    move-object/from16 v0, p2

    move-object/from16 v1, v16

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v11

    .line 1020
    .local v11, "position":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lflt$5;->a:Lflt;

    move-object/from16 v16, v0

    .line 21060
    move-object/from16 v0, v16

    iget-object v0, v0, Lflt;->j:Ljava/util/List;

    move-object/from16 v16, v0

    .line 1020
    if-eqz v16, :cond_0

    if-ltz v11, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lflt$5;->a:Lflt;

    move-object/from16 v16, v0

    .line 22060
    move-object/from16 v0, v16

    iget-object v0, v0, Lflt;->j:Ljava/util/List;

    move-object/from16 v16, v0

    .line 1020
    invoke-interface/range {v16 .. v16}, Ljava/util/List;->size()I

    move-result v16

    move/from16 v0, v16

    if-le v0, v11, :cond_0

    .line 1021
    const-string/jumbo v16, "org_apply_status"

    const/16 v17, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v16

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v13

    .line 1022
    .restart local v13    # "status":I
    if-eqz v13, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lflt$5;->a:Lflt;

    move-object/from16 v16, v0

    .line 23060
    move-object/from16 v0, v16

    iget-object v0, v0, Lflt;->j:Ljava/util/List;

    move-object/from16 v16, v0

    .line 1022
    move-object/from16 v0, v16

    invoke-interface {v0, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    if-eqz v16, :cond_0

    .line 1023
    move-object/from16 v0, p0

    iget-object v0, v0, Lflt$5;->a:Lflt;

    move-object/from16 v16, v0

    .line 24060
    move-object/from16 v0, v16

    iget-object v0, v0, Lflt;->j:Ljava/util/List;

    move-object/from16 v16, v0

    .line 1023
    move-object/from16 v0, v16

    invoke-interface {v0, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/alibaba/android/dingtalk/userbase/model/NewRequestObject;

    .line 1024
    .local v10, "object":Lcom/alibaba/android/dingtalk/userbase/model/NewRequestObject;
    iput v13, v10, Lcom/alibaba/android/dingtalk/userbase/model/NewRequestObject;->status:I

    .line 1025
    move-object/from16 v0, p0

    iget-object v0, v0, Lflt$5;->a:Lflt;

    move-object/from16 v16, v0

    .line 25060
    invoke-virtual/range {v16 .. v16}, Lflt;->a()V

    goto/16 :goto_0

    .line 1028
    .end local v10    # "object":Lcom/alibaba/android/dingtalk/userbase/model/NewRequestObject;
    .end local v11    # "position":I
    .end local v13    # "status":I
    :cond_d
    const-string/jumbo v16, "action_group_apply_removed"

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_0

    .line 1029
    const-string/jumbo v16, "user_id"

    move-object/from16 v0, p2

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v8

    .line 1030
    .restart local v8    # "ids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v8, :cond_0

    invoke-virtual {v8}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v16

    if-nez v16, :cond_0

    .line 1033
    move-object/from16 v0, p0

    iget-object v0, v0, Lflt$5;->a:Lflt;

    move-object/from16 v16, v0

    .line 26060
    move-object/from16 v0, v16

    iget-object v0, v0, Lflt;->j:Ljava/util/List;

    move-object/from16 v16, v0

    .line 1033
    if-eqz v16, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lflt$5;->a:Lflt;

    move-object/from16 v16, v0

    .line 27060
    move-object/from16 v0, v16

    iget-object v0, v0, Lflt;->j:Ljava/util/List;

    move-object/from16 v16, v0

    .line 1033
    invoke-interface/range {v16 .. v16}, Ljava/util/List;->size()I

    move-result v16

    if-lez v16, :cond_0

    .line 1034
    move-object/from16 v0, p0

    iget-object v0, v0, Lflt$5;->a:Lflt;

    move-object/from16 v16, v0

    .line 28060
    move-object/from16 v0, v16

    iget-object v0, v0, Lflt;->j:Ljava/util/List;

    move-object/from16 v16, v0

    .line 1034
    invoke-interface/range {v16 .. v16}, Ljava/util/List;->size()I

    move-result v16

    add-int/lit8 v7, v16, -0x1

    .restart local v7    # "i":I
    :goto_5
    if-ltz v7, :cond_f

    .line 1035
    move-object/from16 v0, p0

    iget-object v0, v0, Lflt$5;->a:Lflt;

    move-object/from16 v16, v0

    .line 29060
    move-object/from16 v0, v16

    iget-object v0, v0, Lflt;->j:Ljava/util/List;

    move-object/from16 v16, v0

    .line 1035
    move-object/from16 v0, v16

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/alibaba/android/dingtalk/userbase/model/NewRequestObject;

    .line 1036
    .restart local v12    # "requestObject":Lcom/alibaba/android/dingtalk/userbase/model/NewRequestObject;
    if-eqz v12, :cond_e

    iget-wide v0, v12, Lcom/alibaba/android/dingtalk/userbase/model/NewRequestObject;->id:J

    move-wide/from16 v16, v0

    invoke-static/range {v16 .. v17}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_e

    .line 1037
    move-object/from16 v0, p0

    iget-object v0, v0, Lflt$5;->a:Lflt;

    move-object/from16 v16, v0

    .line 30060
    move-object/from16 v0, v16

    iget-object v0, v0, Lflt;->j:Ljava/util/List;

    move-object/from16 v16, v0

    .line 1037
    move-object/from16 v0, v16

    invoke-interface {v0, v7}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 1034
    :cond_e
    add-int/lit8 v7, v7, -0x1

    goto :goto_5

    .line 1040
    .end local v12    # "requestObject":Lcom/alibaba/android/dingtalk/userbase/model/NewRequestObject;
    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lflt$5;->a:Lflt;

    move-object/from16 v16, v0

    .line 31060
    invoke-virtual/range {v16 .. v16}, Lflt;->a()V

    goto/16 :goto_0
.end method
