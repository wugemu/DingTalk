.class Lcom/alibaba/android/dingtalkim/activities/MemberSessionOAActivity$1;
.super Ljava/lang/Object;
.source "MemberSessionOAActivity.java"

# interfaces
.implements Lcom/alibaba/android/dingtalkim/base/IMInterface$ConversationFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/dingtalkim/activities/MemberSessionOAActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/android/dingtalkim/activities/MemberSessionOAActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalkim/activities/MemberSessionOAActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalkim/activities/MemberSessionOAActivity;

    .prologue
    .line 57
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/activities/MemberSessionOAActivity$1;->this$0:Lcom/alibaba/android/dingtalkim/activities/MemberSessionOAActivity;

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
    .line 60
    .local p1, "conversations":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/im/Conversation;>;"
    if-eqz p1, :cond_2

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_2

    .line 61
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 62
    .local v1, "it":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 63
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/im/Conversation;

    .line 64
    .local v0, "c":Lcom/alibaba/wukong/im/Conversation;
    if-eqz v0, :cond_0

    .line 65
    invoke-interface {v0}, Lcom/alibaba/wukong/im/Conversation;->type()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 68
    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/MemberSessionOAActivity$1;->this$0:Lcom/alibaba/android/dingtalkim/activities/MemberSessionOAActivity;

    invoke-static {v2}, Lcom/alibaba/android/dingtalkim/activities/MemberSessionOAActivity;->a(Lcom/alibaba/android/dingtalkim/activities/MemberSessionOAActivity;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v0}, Lcom/alibaba/wukong/im/Conversation;->tag()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Lcom/alibaba/wukong/im/Conversation;->unreadMessageCount()I

    move-result v2

    if-gtz v2, :cond_0

    .line 69
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 75
    .end local v0    # "c":Lcom/alibaba/wukong/im/Conversation;
    .end local v1    # "it":Ljava/util/Iterator;
    :cond_2
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
    .line 79
    .local p1, "conversations":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;>;"
    if-eqz p1, :cond_2

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_2

    .line 80
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 81
    .local v2, "it":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 82
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;

    .line 83
    .local v1, "dc":Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;
    if-eqz v1, :cond_0

    .line 84
    iget-object v0, v1, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversation:Lcom/alibaba/wukong/im/Conversation;

    .line 85
    .local v0, "c":Lcom/alibaba/wukong/im/Conversation;
    invoke-interface {v0}, Lcom/alibaba/wukong/im/Conversation;->type()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    .line 88
    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/activities/MemberSessionOAActivity$1;->this$0:Lcom/alibaba/android/dingtalkim/activities/MemberSessionOAActivity;

    invoke-static {v3}, Lcom/alibaba/android/dingtalkim/activities/MemberSessionOAActivity;->a(Lcom/alibaba/android/dingtalkim/activities/MemberSessionOAActivity;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v0}, Lcom/alibaba/wukong/im/Conversation;->tag()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Lcom/alibaba/wukong/im/Conversation;->unreadMessageCount()I

    move-result v3

    if-gtz v3, :cond_0

    .line 89
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 95
    .end local v0    # "c":Lcom/alibaba/wukong/im/Conversation;
    .end local v1    # "dc":Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;
    .end local v2    # "it":Ljava/util/Iterator;
    :cond_2
    return-void
.end method
