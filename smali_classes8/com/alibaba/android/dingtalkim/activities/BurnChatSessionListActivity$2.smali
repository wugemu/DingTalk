.class Lcom/alibaba/android/dingtalkim/activities/BurnChatSessionListActivity$2;
.super Ljava/lang/Object;
.source "BurnChatSessionListActivity.java"

# interfaces
.implements Lcom/alibaba/android/dingtalkim/base/IMInterface$ConversationFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/dingtalkim/activities/BurnChatSessionListActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/android/dingtalkim/activities/BurnChatSessionListActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalkim/activities/BurnChatSessionListActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalkim/activities/BurnChatSessionListActivity;

    .prologue
    .line 96
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/activities/BurnChatSessionListActivity$2;->this$0:Lcom/alibaba/android/dingtalkim/activities/BurnChatSessionListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public filter(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/wukong/im/Conversation;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 99
    .local p1, "conversations":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/im/Conversation;>;"
    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_1

    .line 100
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_1

    .line 101
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/im/Conversation;

    .line 102
    .local v0, "c":Lcom/alibaba/wukong/im/Conversation;
    invoke-interface {v0}, Lcom/alibaba/wukong/im/Conversation;->tag()J

    move-result-wide v2

    const-wide/16 v4, 0x4

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    .line 103
    invoke-interface {p1, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 100
    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 107
    .end local v0    # "c":Lcom/alibaba/wukong/im/Conversation;
    .end local v1    # "i":I
    :cond_1
    return-void
.end method

.method public filterDisplay(Ljava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 111
    .local p1, "conversations":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;>;"
    if-eqz p1, :cond_2

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_2

    .line 112
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v2, v3, -0x1

    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_2

    .line 113
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;

    .line 114
    .local v1, "dc":Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;
    iget-object v0, v1, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversation:Lcom/alibaba/wukong/im/Conversation;

    .line 115
    .local v0, "c":Lcom/alibaba/wukong/im/Conversation;
    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/alibaba/wukong/im/Conversation;->tag()J

    move-result-wide v4

    const-wide/16 v6, 0x4

    cmp-long v3, v4, v6

    if-eqz v3, :cond_1

    .line 116
    :cond_0
    invoke-interface {p1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 112
    :cond_1
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 120
    .end local v0    # "c":Lcom/alibaba/wukong/im/Conversation;
    .end local v1    # "dc":Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;
    .end local v2    # "i":I
    :cond_2
    return-void
.end method
