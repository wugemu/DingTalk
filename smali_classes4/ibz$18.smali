.class final Libz$18;
.super Lhzy;
.source "MessageRpc.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Libz;->b(Ljava/util/List;Ljava/lang/String;Lcom/alibaba/wukong/Callback;)V
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
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Libz;


# direct methods
.method constructor <init>(Libz;Lcom/alibaba/wukong/Callback;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Libz;

    .prologue
    .line 380
    .local p2, "x0":Lcom/alibaba/wukong/Callback;, "Lcom/alibaba/wukong/Callback<Ljava/util/List<Lcom/alibaba/wukong/im/message/MessageImpl;>;>;"
    iput-object p1, p0, Libz$18;->b:Libz;

    iput-object p3, p0, Libz$18;->a:Ljava/lang/String;

    invoke-direct {p0, p2}, Lhzy;-><init>(Lcom/alibaba/wukong/Callback;)V

    return-void
.end method


# virtual methods
.method public final synthetic convertDo(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 380
    check-cast p1, Ljava/util/List;

    .line 1384
    if-nez p1, :cond_0

    .line 1385
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 1388
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1389
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/idl/im/models/MessageModel;

    .line 1390
    invoke-static {}, Liaq;->a()Liaq;

    invoke-static {}, Liaq;->n()J

    move-result-wide v4

    .line 1391
    invoke-static {}, Lcom/alibaba/wukong/im/context/IMModule;->getInstance()Lcom/alibaba/wukong/im/context/IMModule;

    move-result-object v3

    invoke-virtual {v3}, Lcom/alibaba/wukong/im/context/IMModule;->getConversationCache()Liar;

    move-result-object v3

    iget-object v6, p0, Libz$18;->a:Ljava/lang/String;

    invoke-virtual {v3, v6}, Liar;->d(Ljava/lang/String;)Lcom/alibaba/wukong/im/conversation/ConversationImpl;

    move-result-object v3

    .line 1390
    invoke-static {v0, v4, v5, v3}, Libt;->a(Lcom/alibaba/wukong/idl/im/models/MessageModel;JLcom/alibaba/wukong/im/conversation/ConversationImpl;)Lcom/alibaba/wukong/im/message/MessageImpl;

    move-result-object v0

    .line 1392
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    move-object v0, v1

    .line 380
    goto :goto_0
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 399
    invoke-super {p0, p1, p2}, Lhzy;->onException(Ljava/lang/String;Ljava/lang/String;)V

    .line 400
    invoke-virtual {p0}, Libz$18;->getUrl()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, ""

    invoke-static {v0, p1, v1}, Lhzs;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 401
    return-void
.end method