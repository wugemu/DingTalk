.class final Lcom/alibaba/android/user/contact/activities/Add2GroupActivity$5$1;
.super Ljava/lang/Object;
.source "Add2GroupActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/user/contact/activities/Add2GroupActivity$5;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Lcom/alibaba/android/user/contact/activities/Add2GroupActivity$5;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/contact/activities/Add2GroupActivity$5;Ljava/util/List;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/android/user/contact/activities/Add2GroupActivity$5;

    .prologue
    .line 236
    iput-object p1, p0, Lcom/alibaba/android/user/contact/activities/Add2GroupActivity$5$1;->b:Lcom/alibaba/android/user/contact/activities/Add2GroupActivity$5;

    iput-object p2, p0, Lcom/alibaba/android/user/contact/activities/Add2GroupActivity$5$1;->a:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 10

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 239
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 242
    .local v3, "tmpData":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;>;"
    :try_start_0
    iget-object v4, p0, Lcom/alibaba/android/user/contact/activities/Add2GroupActivity$5$1;->a:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/im/Conversation;

    .line 243
    .local v0, "conversationObject":Lcom/alibaba/wukong/im/Conversation;
    invoke-interface {v0}, Lcom/alibaba/wukong/im/Conversation;->type()I

    move-result v5

    const/4 v6, 0x2

    if-ne v5, v6, :cond_0

    .line 244
    sget-object v5, Lcom/alibaba/wukong/im/Conversation$ConversationStatus;->NORMAL:Lcom/alibaba/wukong/im/Conversation$ConversationStatus;

    invoke-interface {v0}, Lcom/alibaba/wukong/im/Conversation;->status()Lcom/alibaba/wukong/im/Conversation$ConversationStatus;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/alibaba/wukong/im/Conversation$ConversationStatus;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    sget-object v5, Lcom/alibaba/wukong/im/Conversation$ConversationStatus;->HIDE:Lcom/alibaba/wukong/im/Conversation$ConversationStatus;

    .line 245
    invoke-interface {v0}, Lcom/alibaba/wukong/im/Conversation;->status()Lcom/alibaba/wukong/im/Conversation$ConversationStatus;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/alibaba/wukong/im/Conversation$ConversationStatus;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 249
    :cond_1
    invoke-interface {v0}, Lcom/alibaba/wukong/im/Conversation;->tag()J

    move-result-wide v6

    const-wide/16 v8, 0x7

    cmp-long v5, v6, v8

    if-eqz v5, :cond_0

    .line 253
    invoke-interface {v0}, Lcom/alibaba/wukong/im/Conversation;->isParent()Z

    move-result v5

    if-nez v5, :cond_0

    .line 256
    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->castToDisplay(Lcom/alibaba/wukong/im/Conversation;)Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;

    move-result-object v1

    .line 257
    .local v1, "displayConversationObject":Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;
    if-eqz v1, :cond_0

    .line 258
    invoke-interface {v0}, Lcom/alibaba/wukong/im/Conversation;->title()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v1, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->title:Ljava/lang/String;

    .line 259
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    iput-object v5, v1, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversationMap:Ljava/util/Map;

    .line 260
    iget-object v5, v1, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversationMap:Ljava/util/Map;

    const-string/jumbo v6, "memberCount"

    invoke-interface {v0}, Lcom/alibaba/wukong/im/Conversation;->totalMembers()I

    move-result v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v5, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 261
    iget-object v5, v1, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversationMap:Ljava/util/Map;

    const-string/jumbo v6, "tag"

    invoke-interface {v0}, Lcom/alibaba/wukong/im/Conversation;->tag()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v5, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 262
    iget-object v5, v1, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversationMap:Ljava/util/Map;

    const-string/jumbo v6, "cid"

    invoke-interface {v0}, Lcom/alibaba/wukong/im/Conversation;->conversationId()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v5, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 264
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 268
    .end local v0    # "conversationObject":Lcom/alibaba/wukong/im/Conversation;
    .end local v1    # "displayConversationObject":Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;
    :catch_0
    move-exception v2

    .line 269
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 271
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_2
    iget-object v4, p0, Lcom/alibaba/android/user/contact/activities/Add2GroupActivity$5$1;->b:Lcom/alibaba/android/user/contact/activities/Add2GroupActivity$5;

    iget-object v4, v4, Lcom/alibaba/android/user/contact/activities/Add2GroupActivity$5;->a:Lcom/alibaba/android/user/contact/activities/Add2GroupActivity;

    new-instance v5, Lcom/alibaba/android/user/contact/activities/Add2GroupActivity$5$1$1;

    invoke-direct {v5, p0, v3}, Lcom/alibaba/android/user/contact/activities/Add2GroupActivity$5$1$1;-><init>(Lcom/alibaba/android/user/contact/activities/Add2GroupActivity$5$1;Ljava/util/ArrayList;)V

    invoke-virtual {v4, v5}, Lcom/alibaba/android/user/contact/activities/Add2GroupActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 293
    return-void
.end method
