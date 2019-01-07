.class final Lcom/alibaba/android/dingtalkim/activities/SimilarGroupActivity$2;
.super Ljava/lang/Object;
.source "SimilarGroupActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/dingtalkim/activities/SimilarGroupActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Lcom/alibaba/android/dingtalkim/activities/SimilarGroupActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalkim/activities/SimilarGroupActivity;Ljava/util/List;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalkim/activities/SimilarGroupActivity;

    .prologue
    .line 141
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/activities/SimilarGroupActivity$2;->b:Lcom/alibaba/android/dingtalkim/activities/SimilarGroupActivity;

    iput-object p2, p0, Lcom/alibaba/android/dingtalkim/activities/SimilarGroupActivity$2;->a:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 148
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 149
    .local v3, "tmpData":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;>;"
    iget-object v4, p0, Lcom/alibaba/android/dingtalkim/activities/SimilarGroupActivity$2;->a:Ljava/util/List;

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

    .line 150
    .local v0, "conversationObject":Lcom/alibaba/wukong/im/Conversation;
    if-eqz v0, :cond_0

    .line 153
    invoke-interface {v0}, Lcom/alibaba/wukong/im/Conversation;->latestMessage()Lcom/alibaba/wukong/im/Message;

    move-result-object v2

    .line 154
    .local v2, "lastMessage":Lcom/alibaba/wukong/im/Message;
    if-eqz v2, :cond_1

    invoke-interface {v2}, Lcom/alibaba/wukong/im/Message;->isDecrypted()Z

    move-result v5

    if-nez v5, :cond_1

    .line 156
    const/4 v5, 0x1

    invoke-interface {v2, v5}, Lcom/alibaba/wukong/im/Message;->tryToDecryptSync(Z)Z

    .line 158
    :cond_1
    const/4 v5, 0x0

    invoke-static {v0, v5}, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->castToDisplay(Lcom/alibaba/wukong/im/Conversation;Z)Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;

    move-result-object v1

    .line 159
    .local v1, "displayConversationObject":Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;
    if-eqz v1, :cond_0

    .line 160
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 163
    .end local v0    # "conversationObject":Lcom/alibaba/wukong/im/Conversation;
    .end local v1    # "displayConversationObject":Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;
    .end local v2    # "lastMessage":Lcom/alibaba/wukong/im/Message;
    :cond_2
    iget-object v4, p0, Lcom/alibaba/android/dingtalkim/activities/SimilarGroupActivity$2;->b:Lcom/alibaba/android/dingtalkim/activities/SimilarGroupActivity;

    invoke-static {v4}, Lcom/alibaba/android/dingtalkim/activities/SimilarGroupActivity;->e(Lcom/alibaba/android/dingtalkim/activities/SimilarGroupActivity;)Landroid/os/Handler;

    move-result-object v4

    new-instance v5, Lcom/alibaba/android/dingtalkim/activities/SimilarGroupActivity$2$1;

    invoke-direct {v5, p0, v3}, Lcom/alibaba/android/dingtalkim/activities/SimilarGroupActivity$2$1;-><init>(Lcom/alibaba/android/dingtalkim/activities/SimilarGroupActivity$2;Ljava/util/ArrayList;)V

    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 175
    return-void
.end method
