.class final Libz$13;
.super Lhzy;
.source "MessageRpc.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Libz;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lhzy",
        "<",
        "Ljava/util/List",
        "<",
        "Lcom/alibaba/wukong/idl/im/models/MessageModel;",
        ">;",
        "Ljava/util/List",
        "<",
        "Lcom/alibaba/wukong/im/message/MessageImpl;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Libz;


# direct methods
.method constructor <init>(Libz;Lcom/alibaba/wukong/Callback;J)V
    .locals 2
    .param p1, "this$0"    # Libz;
    .param p3, "x1"    # J

    .prologue
    .line 873
    .local p2, "x0":Lcom/alibaba/wukong/Callback;, "Lcom/alibaba/wukong/Callback<Ljava/util/List<Lcom/alibaba/wukong/im/message/MessageImpl;>;>;"
    iput-object p1, p0, Libz$13;->a:Libz;

    const-wide/16 v0, 0x1388

    invoke-direct {p0, p2, v0, v1}, Lhzy;-><init>(Lcom/alibaba/wukong/Callback;J)V

    return-void
.end method


# virtual methods
.method public final synthetic convertDo(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 873
    check-cast p1, Ljava/util/List;

    .line 1876
    invoke-virtual {p0}, Libz$13;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lhzs;->b(Ljava/lang/String;)V

    .line 1877
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1878
    if-eqz p1, :cond_4

    .line 1879
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/idl/im/models/MessageModel;

    .line 1880
    if-eqz v0, :cond_0

    .line 1883
    const/4 v1, 0x0

    .line 1884
    iget-object v4, v0, Lcom/alibaba/wukong/idl/im/models/MessageModel;->baseMessage:Lcom/alibaba/wukong/idl/im/models/BaseMessageModel;

    if-eqz v4, :cond_1

    iget-object v4, v0, Lcom/alibaba/wukong/idl/im/models/MessageModel;->baseMessage:Lcom/alibaba/wukong/idl/im/models/BaseMessageModel;

    iget-object v4, v4, Lcom/alibaba/wukong/idl/im/models/BaseMessageModel;->conversationId:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 1886
    iget-object v1, v0, Lcom/alibaba/wukong/idl/im/models/MessageModel;->baseMessage:Lcom/alibaba/wukong/idl/im/models/BaseMessageModel;

    iget-object v1, v1, Lcom/alibaba/wukong/idl/im/models/BaseMessageModel;->conversationId:Ljava/lang/String;

    .line 1887
    invoke-static {}, Lcom/alibaba/wukong/im/context/IMModule;->getInstance()Lcom/alibaba/wukong/im/context/IMModule;

    move-result-object v4

    invoke-virtual {v4}, Lcom/alibaba/wukong/im/context/IMModule;->getConversationCache()Liar;

    move-result-object v4

    invoke-virtual {v4, v1}, Liar;->d(Ljava/lang/String;)Lcom/alibaba/wukong/im/conversation/ConversationImpl;

    move-result-object v1

    .line 1889
    :cond_1
    invoke-static {}, Liaq;->a()Liaq;

    invoke-static {}, Liaq;->n()J

    move-result-wide v4

    invoke-static {v0, v4, v5, v1}, Libt;->a(Lcom/alibaba/wukong/idl/im/models/MessageModel;JLcom/alibaba/wukong/im/conversation/ConversationImpl;)Lcom/alibaba/wukong/im/message/MessageImpl;

    move-result-object v4

    .line 1890
    iget-object v5, v4, Lcom/alibaba/wukong/im/message/MessageImpl;->mConversation:Lcom/alibaba/wukong/im/conversation/ConversationImpl;

    if-nez v5, :cond_3

    iget-object v5, v0, Lcom/alibaba/wukong/idl/im/models/MessageModel;->baseMessage:Lcom/alibaba/wukong/idl/im/models/BaseMessageModel;

    if-eqz v5, :cond_3

    .line 1891
    if-nez v1, :cond_2

    .line 1892
    new-instance v1, Lcom/alibaba/wukong/im/conversation/ConversationImpl;

    invoke-direct {v1}, Lcom/alibaba/wukong/im/conversation/ConversationImpl;-><init>()V

    .line 1893
    iget-object v0, v0, Lcom/alibaba/wukong/idl/im/models/MessageModel;->baseMessage:Lcom/alibaba/wukong/idl/im/models/BaseMessageModel;

    iget-object v0, v0, Lcom/alibaba/wukong/idl/im/models/BaseMessageModel;->conversationId:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->setCid(Ljava/lang/String;)V

    .line 1895
    :cond_2
    iput-object v1, v4, Lcom/alibaba/wukong/im/message/MessageImpl;->mConversation:Lcom/alibaba/wukong/im/conversation/ConversationImpl;

    .line 1897
    :cond_3
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 873
    :cond_4
    return-object v2
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 904
    invoke-super {p0, p1, p2}, Lhzy;->onException(Ljava/lang/String;Ljava/lang/String;)V

    .line 905
    invoke-virtual {p0}, Libz$13;->getUrl()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, ""

    invoke-static {v0, p1, v1}, Lhzs;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 906
    return-void
.end method
