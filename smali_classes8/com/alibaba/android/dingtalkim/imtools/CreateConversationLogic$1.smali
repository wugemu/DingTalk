.class final Lcom/alibaba/android/dingtalkim/imtools/CreateConversationLogic$1;
.super Ljava/lang/Object;
.source "CreateConversationLogic.java"

# interfaces
.implements Ldca;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/dingtalkim/imtools/CreateConversationLogic;->doLogic(Landroid/app/Activity;[Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/app/Activity;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/alibaba/android/dingtalkim/imtools/CreateConversationLogic;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalkim/imtools/CreateConversationLogic;Landroid/app/Activity;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalkim/imtools/CreateConversationLogic;

    .prologue
    .line 40
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/imtools/CreateConversationLogic$1;->c:Lcom/alibaba/android/dingtalkim/imtools/CreateConversationLogic;

    iput-object p2, p0, Lcom/alibaba/android/dingtalkim/imtools/CreateConversationLogic$1;->a:Landroid/app/Activity;

    iput-object p3, p0, Lcom/alibaba/android/dingtalkim/imtools/CreateConversationLogic$1;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 102
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/imtools/CreateConversationLogic$1;->a:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 103
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 3
    .param p1, "cid"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 93
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 94
    invoke-static {}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->a()Lcom/alibaba/android/dingtalkim/base/IMInterface;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/imtools/CreateConversationLogic$1;->a:Landroid/app/Activity;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->a(Landroid/app/Activity;Ljava/lang/String;Z)V

    .line 96
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/imtools/CreateConversationLogic$1;->a:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 98
    return-void
.end method

.method public final a(Ljava/util/List;)V
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 43
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;>;"
    if-eqz p1, :cond_0

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 44
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/android/dingtalkim/imtools/CreateConversationLogic$1;->a:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->finish()V

    .line 88
    .end local p1    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;>;"
    :goto_0
    return-void

    .line 47
    .restart local p1    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;>;"
    :cond_1
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_3

    .line 48
    const/4 v2, 0x0

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_2

    .line 49
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/android/dingtalkim/imtools/CreateConversationLogic$1;->a:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 52
    :cond_2
    const/4 v2, 0x0

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    iget-wide v12, v2, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->uid:J

    .line 53
    .local v12, "uid":J
    const/4 v2, 0x0

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    .line 54
    .local v10, "model":Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;
    iget-object v4, v10, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->displayName:Ljava/lang/String;

    .line 55
    .local v4, "nick":Ljava/lang/String;
    iget-object v9, v10, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->mediaId:Ljava/lang/String;

    .line 57
    .local v9, "mediaId":Ljava/lang/String;
    new-instance v14, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    invoke-direct {v14}, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;-><init>()V

    .line 58
    .local v14, "userProfileObject":Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;
    iput-wide v12, v14, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->uid:J

    .line 59
    iput-object v4, v14, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->nick:Ljava/lang/String;

    .line 60
    iput-object v9, v14, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->avatarMediaId:Ljava/lang/String;

    .line 61
    new-instance v15, Ljava/util/ArrayList;

    const/4 v2, 0x1

    invoke-direct {v15, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 62
    .local v15, "userProfileObjectList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;>;"
    invoke-interface {v15, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 63
    invoke-static {}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->a()Lcom/alibaba/android/dingtalkim/base/IMInterface;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v15, v3}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->a(Ljava/util/List;Z)Ljava/lang/String;

    move-result-object v5

    .line 64
    .local v5, "icon":Ljava/lang/String;
    const-class v2, Lcom/alibaba/wukong/im/ConversationService;

    invoke-static {v2}, Lcom/alibaba/wukong/im/IMEngine;->getIMService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/wukong/im/ConversationService;

    new-instance v3, Lcom/alibaba/android/dingtalkim/imtools/CreateConversationLogic$1$1;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/alibaba/android/dingtalkim/imtools/CreateConversationLogic$1$1;-><init>(Lcom/alibaba/android/dingtalkim/imtools/CreateConversationLogic$1;)V

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Long;

    const/16 v16, 0x0

    .line 80
    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v17

    aput-object v17, v8, v16

    .line 64
    invoke-interface/range {v2 .. v8}, Lcom/alibaba/wukong/im/ConversationService;->createConversation(Lcom/alibaba/wukong/Callback;Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/wukong/im/Message;I[Ljava/lang/Long;)V

    .line 87
    .end local v4    # "nick":Ljava/lang/String;
    .end local v5    # "icon":Ljava/lang/String;
    .end local v9    # "mediaId":Ljava/lang/String;
    .end local v10    # "model":Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;
    .end local v12    # "uid":J
    .end local v14    # "userProfileObject":Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;
    .end local v15    # "userProfileObjectList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;>;"
    .end local p1    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;>;"
    :goto_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/android/dingtalkim/imtools/CreateConversationLogic$1;->a:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 82
    .restart local p1    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;>;"
    :cond_3
    new-instance v11, Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/android/dingtalkim/imtools/CreateConversationLogic$1;->a:Landroid/app/Activity;

    const-class v3, Lcom/alibaba/android/dingtalkim/activities/ConfirmCreatingConversationActivity;

    invoke-direct {v11, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 83
    .local v11, "newIntent":Landroid/content/Intent;
    const-string/jumbo v2, "im_navigator_from"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alibaba/android/dingtalkim/imtools/CreateConversationLogic$1;->b:Ljava/lang/String;

    invoke-virtual {v11, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 84
    const-string/jumbo v2, "intent_key_mem_list"

    check-cast p1, Ljava/util/ArrayList;

    .end local p1    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;>;"
    move-object/from16 v0, p1

    invoke-virtual {v11, v2, v0}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 85
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/android/dingtalkim/imtools/CreateConversationLogic$1;->a:Landroid/app/Activity;

    invoke-virtual {v2, v11}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_1
.end method
