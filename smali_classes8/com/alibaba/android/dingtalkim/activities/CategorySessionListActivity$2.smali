.class Lcom/alibaba/android/dingtalkim/activities/CategorySessionListActivity$2;
.super Ljava/lang/Object;
.source "CategorySessionListActivity.java"

# interfaces
.implements Lcom/alibaba/android/dingtalkim/base/IMInterface$ConversationFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/dingtalkim/activities/CategorySessionListActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/android/dingtalkim/activities/CategorySessionListActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalkim/activities/CategorySessionListActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalkim/activities/CategorySessionListActivity;

    .prologue
    .line 118
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/activities/CategorySessionListActivity$2;->this$0:Lcom/alibaba/android/dingtalkim/activities/CategorySessionListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public filter(Ljava/util/List;)V
    .locals 3
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

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 121
    .local p1, "conversations":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/im/Conversation;>;"
    if-eqz p1, :cond_2

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_2

    .line 122
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_1

    .line 123
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/im/Conversation;

    .line 124
    .local v0, "c":Lcom/alibaba/wukong/im/Conversation;
    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/CategorySessionListActivity$2;->this$0:Lcom/alibaba/android/dingtalkim/activities/CategorySessionListActivity;

    invoke-static {v2, v0}, Lcom/alibaba/android/dingtalkim/activities/CategorySessionListActivity;->a(Lcom/alibaba/android/dingtalkim/activities/CategorySessionListActivity;Lcom/alibaba/wukong/im/Conversation;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 125
    invoke-interface {p1, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 122
    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 128
    .end local v0    # "c":Lcom/alibaba/wukong/im/Conversation;
    :cond_1
    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/CategorySessionListActivity$2;->this$0:Lcom/alibaba/android/dingtalkim/activities/CategorySessionListActivity;

    invoke-static {v2}, Lcom/alibaba/android/dingtalkim/activities/CategorySessionListActivity;->c(Lcom/alibaba/android/dingtalkim/activities/CategorySessionListActivity;)Lcom/alibaba/android/dingtalkim/base/IMInterface$ConversationFilter;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 129
    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/CategorySessionListActivity$2;->this$0:Lcom/alibaba/android/dingtalkim/activities/CategorySessionListActivity;

    invoke-static {v2}, Lcom/alibaba/android/dingtalkim/activities/CategorySessionListActivity;->c(Lcom/alibaba/android/dingtalkim/activities/CategorySessionListActivity;)Lcom/alibaba/android/dingtalkim/base/IMInterface$ConversationFilter;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/alibaba/android/dingtalkim/base/IMInterface$ConversationFilter;->filter(Ljava/util/List;)V

    .line 132
    .end local v1    # "i":I
    :cond_2
    return-void
.end method

.method public filterDisplay(Ljava/util/List;)V
    .locals 4
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

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 136
    .local p1, "conversations":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;>;"
    if-eqz p1, :cond_2

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_2

    .line 137
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v2, v3, -0x1

    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_1

    .line 138
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;

    .line 139
    .local v1, "dc":Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;
    iget-object v0, v1, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversation:Lcom/alibaba/wukong/im/Conversation;

    .line 140
    .local v0, "c":Lcom/alibaba/wukong/im/Conversation;
    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/activities/CategorySessionListActivity$2;->this$0:Lcom/alibaba/android/dingtalkim/activities/CategorySessionListActivity;

    invoke-static {v3, v0}, Lcom/alibaba/android/dingtalkim/activities/CategorySessionListActivity;->a(Lcom/alibaba/android/dingtalkim/activities/CategorySessionListActivity;Lcom/alibaba/wukong/im/Conversation;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 141
    invoke-interface {p1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 137
    :cond_0
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 144
    .end local v0    # "c":Lcom/alibaba/wukong/im/Conversation;
    .end local v1    # "dc":Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;
    :cond_1
    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/activities/CategorySessionListActivity$2;->this$0:Lcom/alibaba/android/dingtalkim/activities/CategorySessionListActivity;

    invoke-static {v3}, Lcom/alibaba/android/dingtalkim/activities/CategorySessionListActivity;->c(Lcom/alibaba/android/dingtalkim/activities/CategorySessionListActivity;)Lcom/alibaba/android/dingtalkim/base/IMInterface$ConversationFilter;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 145
    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/activities/CategorySessionListActivity$2;->this$0:Lcom/alibaba/android/dingtalkim/activities/CategorySessionListActivity;

    invoke-static {v3}, Lcom/alibaba/android/dingtalkim/activities/CategorySessionListActivity;->c(Lcom/alibaba/android/dingtalkim/activities/CategorySessionListActivity;)Lcom/alibaba/android/dingtalkim/base/IMInterface$ConversationFilter;

    move-result-object v3

    invoke-interface {v3, p1}, Lcom/alibaba/android/dingtalkim/base/IMInterface$ConversationFilter;->filterDisplay(Ljava/util/List;)V

    .line 148
    .end local v2    # "i":I
    :cond_2
    return-void
.end method
