.class Lcom/alibaba/android/dingtalkim/activities/MemberSessionActivity$1;
.super Ljava/lang/Object;
.source "MemberSessionActivity.java"

# interfaces
.implements Lcom/alibaba/android/dingtalkim/base/IMInterface$ConversationFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/dingtalkim/activities/MemberSessionActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/android/dingtalkim/activities/MemberSessionActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalkim/activities/MemberSessionActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalkim/activities/MemberSessionActivity;

    .prologue
    .line 83
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/activities/MemberSessionActivity$1;->this$0:Lcom/alibaba/android/dingtalkim/activities/MemberSessionActivity;

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
    .line 86
    .local p1, "conversations":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/im/Conversation;>;"
    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_1

    .line 87
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_1

    .line 88
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/im/Conversation;

    .line 89
    .local v0, "c":Lcom/alibaba/wukong/im/Conversation;
    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/MemberSessionActivity$1;->this$0:Lcom/alibaba/android/dingtalkim/activities/MemberSessionActivity;

    invoke-static {v2}, Lcom/alibaba/android/dingtalkim/activities/MemberSessionActivity;->a(Lcom/alibaba/android/dingtalkim/activities/MemberSessionActivity;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v0}, Lcom/alibaba/wukong/im/Conversation;->tag()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 90
    invoke-interface {p1, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 87
    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 94
    .end local v0    # "c":Lcom/alibaba/wukong/im/Conversation;
    .end local v1    # "i":I
    :cond_1
    return-void
.end method

.method public filterDisplay(Ljava/util/List;)V
    .locals 6
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

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 98
    .local p1, "conversations":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;>;"
    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_1

    .line 99
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v2, v3, -0x1

    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_1

    .line 100
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;

    .line 101
    .local v1, "dc":Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;
    if-eqz v1, :cond_0

    .line 102
    iget-object v0, v1, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversation:Lcom/alibaba/wukong/im/Conversation;

    .line 103
    .local v0, "c":Lcom/alibaba/wukong/im/Conversation;
    if-eqz v0, :cond_0

    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/activities/MemberSessionActivity$1;->this$0:Lcom/alibaba/android/dingtalkim/activities/MemberSessionActivity;

    invoke-static {v3}, Lcom/alibaba/android/dingtalkim/activities/MemberSessionActivity;->a(Lcom/alibaba/android/dingtalkim/activities/MemberSessionActivity;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v0}, Lcom/alibaba/wukong/im/Conversation;->tag()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 104
    invoke-interface {p1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 99
    .end local v0    # "c":Lcom/alibaba/wukong/im/Conversation;
    :cond_0
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 109
    .end local v1    # "dc":Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;
    .end local v2    # "i":I
    :cond_1
    return-void
.end method
