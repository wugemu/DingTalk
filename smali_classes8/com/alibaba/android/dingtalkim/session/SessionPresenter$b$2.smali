.class final Lcom/alibaba/android/dingtalkim/session/SessionPresenter$b$2;
.super Ljava/lang/Object;
.source "SessionPresenter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/dingtalkim/session/SessionPresenter$b;->onLocalExtrasChanged(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Lcom/alibaba/android/dingtalkim/session/SessionPresenter$b;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalkim/session/SessionPresenter$b;Ljava/util/List;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/android/dingtalkim/session/SessionPresenter$b;

    .prologue
    .line 2559
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/session/SessionPresenter$b$2;->b:Lcom/alibaba/android/dingtalkim/session/SessionPresenter$b;

    iput-object p2, p0, Lcom/alibaba/android/dingtalkim/session/SessionPresenter$b$2;->a:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 10

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 2562
    new-instance v1, Ljava/util/ArrayList;

    iget-object v6, p0, Lcom/alibaba/android/dingtalkim/session/SessionPresenter$b$2;->a:Ljava/util/List;

    invoke-direct {v1, v6}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 2563
    .local v1, "conversationsCopy":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/im/Conversation;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_0
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/im/Conversation;

    .line 2564
    .local v0, "conversation":Lcom/alibaba/wukong/im/Conversation;
    const/4 v6, 0x0

    invoke-static {v0, v6}, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->castToDisplay(Lcom/alibaba/wukong/im/Conversation;Z)Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;

    move-result-object v2

    .line 2566
    .local v2, "displayConversationObject":Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;
    iget-object v6, p0, Lcom/alibaba/android/dingtalkim/session/SessionPresenter$b$2;->b:Lcom/alibaba/android/dingtalkim/session/SessionPresenter$b;

    iget-object v6, v6, Lcom/alibaba/android/dingtalkim/session/SessionPresenter$b;->a:Lcom/alibaba/android/dingtalkim/session/SessionPresenter;

    iget-object v8, p0, Lcom/alibaba/android/dingtalkim/session/SessionPresenter$b$2;->b:Lcom/alibaba/android/dingtalkim/session/SessionPresenter$b;

    iget-object v8, v8, Lcom/alibaba/android/dingtalkim/session/SessionPresenter$b;->a:Lcom/alibaba/android/dingtalkim/session/SessionPresenter;

    .line 3116
    iget-boolean v8, v8, Lcom/alibaba/android/dingtalkim/session/SessionPresenter;->i:Z

    .line 2566
    invoke-virtual {v6, v2, v8}, Lcom/alibaba/android/dingtalkim/session/SessionPresenter;->a(Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;Z)V

    .line 2568
    invoke-interface {v0}, Lcom/alibaba/wukong/im/Conversation;->type()I

    move-result v6

    const/4 v8, 0x1

    if-ne v6, v8, :cond_1

    .line 2569
    iget-object v6, p0, Lcom/alibaba/android/dingtalkim/session/SessionPresenter$b$2;->b:Lcom/alibaba/android/dingtalkim/session/SessionPresenter$b;

    iget-object v6, v6, Lcom/alibaba/android/dingtalkim/session/SessionPresenter$b;->a:Lcom/alibaba/android/dingtalkim/session/SessionPresenter;

    .line 4116
    iget-object v6, v6, Lcom/alibaba/android/dingtalkim/session/SessionPresenter;->n:Ljava/util/HashMap;

    .line 2569
    invoke-interface {v0}, Lcom/alibaba/wukong/im/Conversation;->conversationId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/alibaba/android/dingtalkim/session/SessionPresenter$b$2;->b:Lcom/alibaba/android/dingtalkim/session/SessionPresenter$b;

    iget-object v6, v6, Lcom/alibaba/android/dingtalkim/session/SessionPresenter$b;->a:Lcom/alibaba/android/dingtalkim/session/SessionPresenter;

    .line 5116
    iget-object v6, v6, Lcom/alibaba/android/dingtalkim/session/SessionPresenter;->n:Ljava/util/HashMap;

    .line 2569
    invoke-interface {v0}, Lcom/alibaba/wukong/im/Conversation;->conversationId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;

    iget-object v6, v6, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mediaIdList:Ljava/util/ArrayList;

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/alibaba/android/dingtalkim/session/SessionPresenter$b$2;->b:Lcom/alibaba/android/dingtalkim/session/SessionPresenter$b;

    iget-object v6, v6, Lcom/alibaba/android/dingtalkim/session/SessionPresenter$b;->a:Lcom/alibaba/android/dingtalkim/session/SessionPresenter;

    .line 6116
    iget-object v6, v6, Lcom/alibaba/android/dingtalkim/session/SessionPresenter;->n:Ljava/util/HashMap;

    .line 2569
    invoke-interface {v0}, Lcom/alibaba/wukong/im/Conversation;->conversationId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;

    iget-object v6, v6, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mediaIdList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_2

    .line 2570
    iget-object v6, p0, Lcom/alibaba/android/dingtalkim/session/SessionPresenter$b$2;->b:Lcom/alibaba/android/dingtalkim/session/SessionPresenter$b;

    iget-object v6, v6, Lcom/alibaba/android/dingtalkim/session/SessionPresenter$b;->a:Lcom/alibaba/android/dingtalkim/session/SessionPresenter;

    .line 7116
    iget-object v6, v6, Lcom/alibaba/android/dingtalkim/session/SessionPresenter;->n:Ljava/util/HashMap;

    .line 2570
    invoke-interface {v0}, Lcom/alibaba/wukong/im/Conversation;->conversationId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;

    iget-object v6, v6, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mediaIdList:Ljava/util/ArrayList;

    iput-object v6, v2, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mediaIdList:Ljava/util/ArrayList;

    .line 2582
    :cond_1
    :goto_1
    iget-object v6, p0, Lcom/alibaba/android/dingtalkim/session/SessionPresenter$b$2;->b:Lcom/alibaba/android/dingtalkim/session/SessionPresenter$b;

    iget-object v6, v6, Lcom/alibaba/android/dingtalkim/session/SessionPresenter$b;->a:Lcom/alibaba/android/dingtalkim/session/SessionPresenter;

    .line 10116
    iget-object v6, v6, Lcom/alibaba/android/dingtalkim/session/SessionPresenter;->n:Ljava/util/HashMap;

    .line 2582
    invoke-interface {v0}, Lcom/alibaba/wukong/im/Conversation;->conversationId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2583
    iget-object v6, p0, Lcom/alibaba/android/dingtalkim/session/SessionPresenter$b$2;->b:Lcom/alibaba/android/dingtalkim/session/SessionPresenter$b;

    iget-object v6, v6, Lcom/alibaba/android/dingtalkim/session/SessionPresenter$b;->a:Lcom/alibaba/android/dingtalkim/session/SessionPresenter;

    .line 11116
    iget-object v6, v6, Lcom/alibaba/android/dingtalkim/session/SessionPresenter;->g:Ljava/util/ArrayList;

    .line 2583
    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v4

    .line 2584
    .local v4, "index":I
    if-ltz v4, :cond_0

    .line 2586
    :try_start_0
    iget-object v6, p0, Lcom/alibaba/android/dingtalkim/session/SessionPresenter$b$2;->b:Lcom/alibaba/android/dingtalkim/session/SessionPresenter$b;

    iget-object v6, v6, Lcom/alibaba/android/dingtalkim/session/SessionPresenter$b;->a:Lcom/alibaba/android/dingtalkim/session/SessionPresenter;

    .line 12116
    iget-object v6, v6, Lcom/alibaba/android/dingtalkim/session/SessionPresenter;->g:Ljava/util/ArrayList;

    .line 2586
    invoke-virtual {v6, v4, v2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 2587
    :catch_0
    move-exception v3

    .line 2588
    .local v3, "e":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    .line 2572
    .end local v3    # "e":Ljava/lang/Exception;
    .end local v4    # "index":I
    :cond_2
    const/4 v5, 0x0

    .line 2573
    .local v5, "userProfileObject":Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;
    iget-object v6, p0, Lcom/alibaba/android/dingtalkim/session/SessionPresenter$b$2;->b:Lcom/alibaba/android/dingtalkim/session/SessionPresenter$b;

    iget-object v6, v6, Lcom/alibaba/android/dingtalkim/session/SessionPresenter$b;->a:Lcom/alibaba/android/dingtalkim/session/SessionPresenter;

    .line 8116
    iget-object v6, v6, Lcom/alibaba/android/dingtalkim/session/SessionPresenter;->q:Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    .line 2573
    if-eqz v6, :cond_3

    .line 2574
    iget-object v6, p0, Lcom/alibaba/android/dingtalkim/session/SessionPresenter$b$2;->b:Lcom/alibaba/android/dingtalkim/session/SessionPresenter$b;

    iget-object v6, v6, Lcom/alibaba/android/dingtalkim/session/SessionPresenter$b;->a:Lcom/alibaba/android/dingtalkim/session/SessionPresenter;

    .line 9116
    iget-object v6, v6, Lcom/alibaba/android/dingtalkim/session/SessionPresenter;->q:Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    .line 2574
    iget-object v8, v2, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversation:Lcom/alibaba/wukong/im/Conversation;

    invoke-interface {v8}, Lcom/alibaba/wukong/im/Conversation;->conversationId()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ldjl;->a(Ljava/lang/String;)J

    move-result-wide v8

    invoke-virtual {v6, v8, v9}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->d(J)Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    move-result-object v5

    .line 2576
    :cond_3
    if-eqz v5, :cond_1

    .line 2577
    invoke-static {v2, v5}, Ldza;->a(Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;)V

    goto :goto_1

    .line 2594
    .end local v0    # "conversation":Lcom/alibaba/wukong/im/Conversation;
    .end local v2    # "displayConversationObject":Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;
    .end local v5    # "userProfileObject":Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;
    :cond_4
    iget-object v6, p0, Lcom/alibaba/android/dingtalkim/session/SessionPresenter$b$2;->b:Lcom/alibaba/android/dingtalkim/session/SessionPresenter$b;

    iget-object v6, v6, Lcom/alibaba/android/dingtalkim/session/SessionPresenter$b;->a:Lcom/alibaba/android/dingtalkim/session/SessionPresenter;

    .line 13116
    iget-object v6, v6, Lcom/alibaba/android/dingtalkim/session/SessionPresenter;->c:Landroid/os/Handler;

    .line 2594
    new-instance v7, Lcom/alibaba/android/dingtalkim/session/SessionPresenter$b$2$1;

    invoke-direct {v7, p0}, Lcom/alibaba/android/dingtalkim/session/SessionPresenter$b$2$1;-><init>(Lcom/alibaba/android/dingtalkim/session/SessionPresenter$b$2;)V

    invoke-virtual {v6, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2600
    return-void
.end method
