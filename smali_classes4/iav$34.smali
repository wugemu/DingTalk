.class public final Liav$34;
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
        "Lcom/alibaba/wukong/idl/im/models/ConversationModel;",
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
    .line 1272
    .local p2, "x0":Lcom/alibaba/wukong/Callback;, "Lcom/alibaba/wukong/Callback<Ljava/util/List<Lcom/alibaba/wukong/im/conversation/ConversationImpl;>;>;"
    iput-object p1, p0, Liav$34;->a:Liav;

    invoke-direct {p0, p2}, Lhzy;-><init>(Lcom/alibaba/wukong/Callback;)V

    return-void
.end method


# virtual methods
.method public final synthetic convertDo(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 1272
    check-cast p1, Ljava/util/List;

    .line 2276
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 2277
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/idl/im/models/ConversationModel;

    .line 2278
    invoke-static {}, Liaq;->a()Liaq;

    invoke-static {}, Liaq;->n()J

    move-result-wide v4

    invoke-static {v0, v4, v5}, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->fromConversationModel(Lcom/alibaba/wukong/idl/im/models/ConversationModel;J)Lcom/alibaba/wukong/im/conversation/ConversationImpl;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1272
    :cond_0
    return-object v1
.end method
