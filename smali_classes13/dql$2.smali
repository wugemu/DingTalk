.class final Ldql$2;
.super Lcom/alibaba/wukong/im/ConversationChangeListener;
.source "BurnChatEnterManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldql;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ldql;


# direct methods
.method constructor <init>(Ldql;)V
    .locals 0
    .param p1, "this$0"    # Ldql;

    .prologue
    .line 81
    iput-object p1, p0, Ldql$2;->a:Ldql;

    invoke-direct {p0}, Lcom/alibaba/wukong/im/ConversationChangeListener;-><init>()V

    return-void
.end method


# virtual methods
.method public final onUnreadCountChanged(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/wukong/im/Conversation;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 84
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/im/Conversation;>;"
    if-eqz p1, :cond_1

    .line 85
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/im/Conversation;

    .line 86
    .local v0, "c":Lcom/alibaba/wukong/im/Conversation;
    invoke-interface {v0}, Lcom/alibaba/wukong/im/Conversation;->conversationId()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Lcom/alibaba/wukong/im/Conversation;->conversationId()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Ldql$2;->a:Ldql;

    .line 1021
    iget-object v3, v3, Ldql;->a:Ljava/lang/String;

    .line 86
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 87
    iget-object v2, p0, Ldql$2;->a:Ldql;

    invoke-interface {v0}, Lcom/alibaba/wukong/im/Conversation;->unreadMessageCount()I

    move-result v3

    .line 2021
    iput v3, v2, Ldql;->b:I

    .line 88
    iget-object v2, p0, Ldql$2;->a:Ldql;

    .line 3021
    invoke-virtual {v2}, Ldql;->a()V

    goto :goto_0

    .line 92
    .end local v0    # "c":Lcom/alibaba/wukong/im/Conversation;
    :cond_1
    return-void
.end method
