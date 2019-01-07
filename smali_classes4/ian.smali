.class public final Lian;
.super Ljava/lang/Object;
.source "CategoryRpc.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(JLjava/util/List;Lcom/alibaba/wukong/Callback;)V
    .locals 5
    .param p1, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/alibaba/wukong/Callback",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/wukong/im/conversation/ConversationImpl;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 225
    .local p3, "cids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p4, "callback":Lcom/alibaba/wukong/Callback;, "Lcom/alibaba/wukong/Callback<Ljava/util/List<Lcom/alibaba/wukong/im/conversation/ConversationImpl;>;>;"
    const-wide/16 v2, 0x0

    cmp-long v1, p1, v2

    if-gtz v1, :cond_1

    .line 226
    if-eqz p4, :cond_0

    .line 227
    const-string/jumbo v1, "101002"

    const-string/jumbo v2, "PARAMETER_ERR categoryId must > 0"

    invoke-interface {p4, v1, v2}, Lcom/alibaba/wukong/Callback;->onException(Ljava/lang/String;Ljava/lang/String;)V

    .line 257
    :cond_0
    :goto_0
    return-void

    .line 231
    :cond_1
    new-instance v0, Lian$8;

    invoke-direct {v0, p0, p4}, Lian$8;-><init>(Lian;Lcom/alibaba/wukong/Callback;)V

    .line 255
    .local v0, "handler":Lhzy;, "Lhzy<Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/ConversationModel;>;Ljava/util/List<Lcom/alibaba/wukong/im/conversation/ConversationImpl;>;>;"
    const-string/jumbo v1, "CategoryRpc"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "[RPC] listConversationsByCategory: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1018
    const-string/jumbo v3, "im"

    invoke-static {v1, v2, v3}, Lhzt;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 256
    const-class v1, Lcom/alibaba/wukong/idl/im/client/IDLCategoryService;

    invoke-static {v1}, Liyx;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/wukong/idl/im/client/IDLCategoryService;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v1, v2, p3, v0}, Lcom/alibaba/wukong/idl/im/client/IDLCategoryService;->listConversationsByCategory(Ljava/lang/Long;Ljava/util/List;Liyv;)V

    goto :goto_0
.end method
