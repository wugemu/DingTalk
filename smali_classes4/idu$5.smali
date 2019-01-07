.class final Lidu$5;
.super Lhzy;
.source "UserRpc.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lidu;
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
        "Lcom/alibaba/wukong/idl/user/models/AliasModel;",
        ">;",
        "Ljava/util/List",
        "<",
        "Lcom/alibaba/wukong/im/User;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lidu;


# direct methods
.method constructor <init>(Lidu;Lcom/alibaba/wukong/Callback;)V
    .locals 0
    .param p1, "this$0"    # Lidu;

    .prologue
    .line 227
    .local p2, "x0":Lcom/alibaba/wukong/Callback;, "Lcom/alibaba/wukong/Callback<Ljava/util/List<Lcom/alibaba/wukong/im/User;>;>;"
    iput-object p1, p0, Lidu$5;->a:Lidu;

    invoke-direct {p0, p2}, Lhzy;-><init>(Lcom/alibaba/wukong/Callback;)V

    return-void
.end method


# virtual methods
.method public final synthetic convertDo(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 227
    check-cast p1, Ljava/util/List;

    .line 1230
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1231
    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 1234
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 1235
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/idl/user/models/AliasModel;

    .line 1236
    if-eqz v0, :cond_2

    .line 1239
    invoke-static {v0}, Lcom/alibaba/wukong/im/user/UserImpl;->fromAliasModel(Lcom/alibaba/wukong/idl/user/models/AliasModel;)Lcom/alibaba/wukong/im/user/UserImpl;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    move-object v0, v1

    .line 227
    goto :goto_0
.end method
