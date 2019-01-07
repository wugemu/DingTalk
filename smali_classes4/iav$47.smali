.class public final Liav$47;
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
        "Lcom/alibaba/wukong/idl/im/models/UserBanModel;",
        ">;",
        "Ljava/util/List",
        "<",
        "Lcom/alibaba/wukong/im/UserBanObject;",
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
    .line 1538
    .local p2, "x0":Lcom/alibaba/wukong/Callback;, "Lcom/alibaba/wukong/Callback<Ljava/util/List<Lcom/alibaba/wukong/im/UserBanObject;>;>;"
    iput-object p1, p0, Liav$47;->a:Liav;

    invoke-direct {p0, p2}, Lhzy;-><init>(Lcom/alibaba/wukong/Callback;)V

    return-void
.end method


# virtual methods
.method public final synthetic convertDo(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 1538
    check-cast p1, Ljava/util/List;

    .line 2541
    if-eqz p1, :cond_2

    .line 2542
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 2543
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/idl/im/models/UserBanModel;

    .line 2544
    if-eqz v0, :cond_0

    .line 2545
    new-instance v3, Lcom/alibaba/wukong/im/UserBanObject;

    invoke-direct {v3, v0}, Lcom/alibaba/wukong/im/UserBanObject;-><init>(Lcom/alibaba/wukong/idl/im/models/UserBanModel;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    move-object v0, v1

    .line 2548
    :goto_1
    return-object v0

    .line 2550
    :cond_2
    const/4 v0, 0x0

    .line 1538
    goto :goto_1
.end method
