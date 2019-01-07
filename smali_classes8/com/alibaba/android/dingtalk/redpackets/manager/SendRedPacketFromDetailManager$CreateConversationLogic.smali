.class public Lcom/alibaba/android/dingtalk/redpackets/manager/SendRedPacketFromDetailManager$CreateConversationLogic;
.super Ljava/lang/Object;
.source "SendRedPacketFromDetailManager.java"

# interfaces
.implements Lcom/alibaba/android/dingtalkbase/utils/ActivityLogicInjecter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/dingtalk/redpackets/manager/SendRedPacketFromDetailManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CreateConversationLogic"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public doLogic(Landroid/app/Activity;[Ljava/lang/Object;)V
    .locals 20
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "objects"    # [Ljava/lang/Object;

    .prologue
    .line 95
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    move-object/from16 v0, p2

    array-length v2, v0

    if-gtz v2, :cond_1

    .line 139
    :cond_0
    :goto_0
    return-void

    .line 98
    :cond_1
    const/4 v2, 0x0

    aget-object v2, p2, v2

    instance-of v2, v2, Landroid/content/Intent;

    if-eqz v2, :cond_0

    .line 101
    const/4 v2, 0x0

    aget-object v10, p2, v2

    check-cast v10, Landroid/content/Intent;

    .line 102
    .local v10, "intent":Landroid/content/Intent;
    const-string/jumbo v2, "choose_user_identities"

    invoke-virtual {v10, v2}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v13

    .line 103
    .local v13, "userIdentityObjectList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;>;"
    if-eqz v13, :cond_0

    .line 104
    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2

    .line 105
    const/4 v2, 0x0

    invoke-interface {v13, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    iget-wide v14, v2, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->uid:J

    .line 106
    .local v14, "uid":J
    const/4 v2, 0x0

    invoke-interface {v13, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    .line 107
    .local v12, "model":Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;
    iget-object v4, v12, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->displayName:Ljava/lang/String;

    .line 108
    .local v4, "nick":Ljava/lang/String;
    iget-object v11, v12, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->mediaId:Ljava/lang/String;

    .line 109
    .local v11, "mediaId":Ljava/lang/String;
    new-instance v16, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    invoke-direct/range {v16 .. v16}, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;-><init>()V

    .line 110
    .local v16, "userProfileObject":Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;
    move-object/from16 v0, v16

    iput-wide v14, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->uid:J

    .line 111
    move-object/from16 v0, v16

    iput-object v4, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->nick:Ljava/lang/String;

    .line 112
    move-object/from16 v0, v16

    iput-object v11, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->avatarMediaId:Ljava/lang/String;

    .line 113
    new-instance v17, Ljava/util/ArrayList;

    const/4 v2, 0x1

    move-object/from16 v0, v17

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 114
    .local v17, "userProfileObjectList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;>;"
    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 115
    invoke-static {}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->a()Lcom/alibaba/android/dingtalkim/base/IMInterface;

    move-result-object v2

    const/4 v3, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v2, v0, v3}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->a(Ljava/util/List;Z)Ljava/lang/String;

    move-result-object v5

    .line 116
    .local v5, "icon":Ljava/lang/String;
    const-class v2, Lcom/alibaba/wukong/im/ConversationService;

    invoke-static {v2}, Lcom/alibaba/wukong/im/IMEngine;->getIMService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/wukong/im/ConversationService;

    new-instance v3, Lcom/alibaba/android/dingtalk/redpackets/manager/SendRedPacketFromDetailManager$CreateConversationLogic$1;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v3, v0, v1}, Lcom/alibaba/android/dingtalk/redpackets/manager/SendRedPacketFromDetailManager$CreateConversationLogic$1;-><init>(Lcom/alibaba/android/dingtalk/redpackets/manager/SendRedPacketFromDetailManager$CreateConversationLogic;Landroid/app/Activity;)V

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Long;

    const/16 v18, 0x0

    .line 131
    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v19

    aput-object v19, v8, v18

    .line 116
    invoke-interface/range {v2 .. v8}, Lcom/alibaba/wukong/im/ConversationService;->createConversation(Lcom/alibaba/wukong/Callback;Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/wukong/im/Message;I[Ljava/lang/Long;)V

    goto :goto_0

    .line 133
    .end local v4    # "nick":Ljava/lang/String;
    .end local v5    # "icon":Ljava/lang/String;
    .end local v11    # "mediaId":Ljava/lang/String;
    .end local v12    # "model":Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;
    .end local v14    # "uid":J
    .end local v16    # "userProfileObject":Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;
    .end local v17    # "userProfileObjectList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;>;"
    :cond_2
    new-instance v9, Landroid/os/Bundle;

    invoke-direct {v9}, Landroid/os/Bundle;-><init>()V

    .line 134
    .local v9, "bundle":Landroid/os/Bundle;
    const-string/jumbo v2, "intent_on_conversation_create"

    new-instance v3, Lcom/alibaba/android/dingtalk/redpackets/manager/SendRedPacketFromDetailManager$OnCreateConversationLogic;

    invoke-direct {v3}, Lcom/alibaba/android/dingtalk/redpackets/manager/SendRedPacketFromDetailManager$OnCreateConversationLogic;-><init>()V

    invoke-virtual {v9, v2, v3}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 135
    invoke-static {}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->a()Lcom/alibaba/android/dingtalkim/base/IMInterface;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v2, v0, v13, v9}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->a(Landroid/app/Activity;Ljava/util/List;Landroid/os/Bundle;)V

    .line 136
    invoke-virtual/range {p1 .. p1}, Landroid/app/Activity;->finish()V

    goto/16 :goto_0
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 143
    return-void
.end method
