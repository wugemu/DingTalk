.class final Liav$11;
.super Lhzy;
.source "ConversationRpc.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Liav;->a(ILcom/alibaba/wukong/Callback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lhzy",
        "<",
        "Lcom/alibaba/wukong/idl/im/models/ConversationExtModel;",
        "Ljava/util/List",
        "<",
        "Lcom/alibaba/wukong/im/conversation/ConversationImpl;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Liav;


# direct methods
.method constructor <init>(Liav;Lcom/alibaba/wukong/Callback;)V
    .locals 0
    .param p1, "this$0"    # Liav;

    .prologue
    .line 122
    .local p2, "x0":Lcom/alibaba/wukong/Callback;, "Lcom/alibaba/wukong/Callback<Ljava/util/List<Lcom/alibaba/wukong/im/conversation/ConversationImpl;>;>;"
    iput-object p1, p0, Liav$11;->a:Liav;

    invoke-direct {p0, p2}, Lhzy;-><init>(Lcom/alibaba/wukong/Callback;)V

    return-void
.end method

.method private static a(Lcom/alibaba/wukong/idl/im/models/ConversationExtModel;)Ljava/util/List;
    .locals 8
    .param p0, "rpcDo"    # Lcom/alibaba/wukong/idl/im/models/ConversationExtModel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/wukong/idl/im/models/ConversationExtModel;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/wukong/im/conversation/ConversationImpl;",
            ">;"
        }
    .end annotation

    .prologue
    .line 126
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 127
    .local v3, "conversations":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/im/conversation/ConversationImpl;>;"
    if-eqz p0, :cond_3

    .line 128
    const-string/jumbo v5, "[TAG] ConvRpc"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "[RPC] listNewestExt hasMore :"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/alibaba/wukong/idl/im/models/ConversationExtModel;->hasMore:Ljava/lang/Boolean;

    invoke-static {v7}, Ligb;->a(Ljava/lang/Boolean;)Z

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1018
    const-string/jumbo v7, "im"

    invoke-static {v5, v6, v7}, Lhzt;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    iget-object v5, p0, Lcom/alibaba/wukong/idl/im/models/ConversationExtModel;->conversations:Ljava/util/List;

    if-eqz v5, :cond_0

    .line 130
    iget-object v5, p0, Lcom/alibaba/wukong/idl/im/models/ConversationExtModel;->conversations:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/alibaba/wukong/idl/im/models/ConversationModel;

    .line 131
    .local v4, "model":Lcom/alibaba/wukong/idl/im/models/ConversationModel;
    invoke-static {}, Liaq;->a()Liaq;

    invoke-static {}, Liaq;->n()J

    move-result-wide v6

    invoke-static {v4, v6, v7}, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->fromConversationModel(Lcom/alibaba/wukong/idl/im/models/ConversationModel;J)Lcom/alibaba/wukong/im/conversation/ConversationImpl;

    move-result-object v6

    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 135
    .end local v4    # "model":Lcom/alibaba/wukong/idl/im/models/ConversationModel;
    :cond_0
    iget-object v5, p0, Lcom/alibaba/wukong/idl/im/models/ConversationExtModel;->categories:Ljava/util/List;

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/alibaba/wukong/idl/im/models/ConversationExtModel;->categories:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_4

    .line 136
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 137
    .local v2, "categoryObjects":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/im/category/CategoryObject;>;"
    iget-object v5, p0, Lcom/alibaba/wukong/idl/im/models/ConversationExtModel;->categories:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_1
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/idl/im/models/CategoryModel;

    .line 138
    .local v0, "categoryModel":Lcom/alibaba/wukong/idl/im/models/CategoryModel;
    invoke-static {v0}, Lcom/alibaba/wukong/im/category/CategoryObject;->fromIDL(Lcom/alibaba/wukong/idl/im/models/CategoryModel;)Lcom/alibaba/wukong/im/category/CategoryObject;

    move-result-object v1

    .line 139
    .local v1, "categoryObject":Lcom/alibaba/wukong/im/category/CategoryObject;
    if-eqz v1, :cond_1

    .line 140
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 143
    .end local v0    # "categoryModel":Lcom/alibaba/wukong/idl/im/models/CategoryModel;
    .end local v1    # "categoryObject":Lcom/alibaba/wukong/im/category/CategoryObject;
    :cond_2
    const-string/jumbo v5, "[TAG] ConvRpc"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "[RPC] listNewestExt category size "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 2018
    const-string/jumbo v7, "im"

    invoke-static {v5, v6, v7}, Lhzt;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    invoke-static {}, Lcom/alibaba/wukong/im/context/IMModule;->getInstance()Lcom/alibaba/wukong/im/context/IMModule;

    move-result-object v5

    invoke-virtual {v5}, Lcom/alibaba/wukong/im/context/IMModule;->getCategoryCache()Liaj;

    move-result-object v5

    invoke-virtual {v5, v2}, Liaj;->a(Ljava/util/List;)Z

    .line 149
    .end local v2    # "categoryObjects":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/im/category/CategoryObject;>;"
    :cond_3
    :goto_2
    return-object v3

    .line 146
    :cond_4
    const-string/jumbo v5, "[TAG] ConvRpc"

    const-string/jumbo v6, "[RPC] listNewestExt category null"

    .line 3018
    const-string/jumbo v7, "im"

    invoke-static {v5, v6, v7}, Lhzt;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2
.end method


# virtual methods
.method public final synthetic convertDo(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 122
    check-cast p1, Lcom/alibaba/wukong/idl/im/models/ConversationExtModel;

    invoke-static {p1}, Liav$11;->a(Lcom/alibaba/wukong/idl/im/models/ConversationExtModel;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 153
    invoke-super {p0, p1, p2}, Lhzy;->onException(Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    invoke-virtual {p0}, Liav$11;->getUrl()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, ""

    invoke-static {v0, p1, v1}, Lhzs;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    return-void
.end method
