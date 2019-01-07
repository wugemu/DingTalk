.class public final Liav$51;
.super Lhzy;
.source "ConversationRpc.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Liav;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lhzy",
        "<",
        "Ljava/util/List",
        "<",
        "Lcom/alibaba/wukong/idl/im/models/EntryConversationModel;",
        ">;",
        "Ljava/util/List",
        "<",
        "Lcom/alibaba/wukong/im/conversation/ConversationImpl;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Liav;


# direct methods
.method public constructor <init>(Liav;Lcom/alibaba/wukong/Callback;)V
    .locals 0
    .param p1, "this$0"    # Liav;

    .prologue
    .line 1636
    .local p2, "x0":Lcom/alibaba/wukong/Callback;, "Lcom/alibaba/wukong/Callback<Ljava/util/List<Lcom/alibaba/wukong/im/conversation/ConversationImpl;>;>;"
    iput-object p1, p0, Liav$51;->a:Liav;

    invoke-direct {p0, p2}, Lhzy;-><init>(Lcom/alibaba/wukong/Callback;)V

    return-void
.end method

.method private static a(Ljava/util/List;)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/wukong/idl/im/models/EntryConversationModel;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/wukong/im/conversation/ConversationImpl;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1639
    .local p0, "entryConversationModels":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/EntryConversationModel;>;"
    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1640
    :cond_0
    const-string/jumbo v3, "[TAG] ConvRpc"

    const-string/jumbo v4, "[RPC] ConversationRPC getEntranceConversations result is empty"

    .line 2018
    const-string/jumbo v5, "im"

    invoke-static {v3, v4, v5}, Lhzt;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1641
    const/4 v1, 0x0

    .line 1655
    :cond_1
    return-object v1

    .line 1643
    :cond_2
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 1645
    .local v1, "conversationList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/im/conversation/ConversationImpl;>;"
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_3
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/wukong/idl/im/models/EntryConversationModel;

    .line 1646
    .local v2, "entryConversationModel":Lcom/alibaba/wukong/idl/im/models/EntryConversationModel;
    if-eqz v2, :cond_3

    .line 1649
    iget-object v4, v2, Lcom/alibaba/wukong/idl/im/models/EntryConversationModel;->baseConversationModel:Lcom/alibaba/wukong/idl/im/models/BaseConversationModel;

    .line 1650
    invoke-static {}, Liaq;->a()Liaq;

    invoke-static {}, Liaq;->n()J

    move-result-wide v6

    iget-object v5, v2, Lcom/alibaba/wukong/idl/im/models/EntryConversationModel;->entrancePropertyModel:Lcom/alibaba/wukong/idl/im/models/EntranceConversationPropertyModel;

    .line 1649
    invoke-static {v4, v6, v7, v5}, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->fromBaseConversationModel(Lcom/alibaba/wukong/idl/im/models/BaseConversationModel;JLcom/alibaba/wukong/idl/im/models/EntranceConversationPropertyModel;)Lcom/alibaba/wukong/im/conversation/ConversationImpl;

    move-result-object v0

    .line 1651
    .local v0, "conversationImpl":Lcom/alibaba/wukong/im/conversation/ConversationImpl;
    if-eqz v0, :cond_3

    .line 1652
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method


# virtual methods
.method public final synthetic convertDo(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1636
    check-cast p1, Ljava/util/List;

    invoke-static {p1}, Liav$51;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
