.class final Lidu$2;
.super Lhzy;
.source "UserRpc.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lidu;->a(Ljava/util/List;Lcom/alibaba/wukong/Callback;)V
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
        "Lcom/alibaba/wukong/idl/user/models/ProfileModel;",
        ">;",
        "Ljava/util/List",
        "<",
        "Lcom/alibaba/wukong/im/user/UserImpl;",
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
    .line 69
    .local p2, "x0":Lcom/alibaba/wukong/Callback;, "Lcom/alibaba/wukong/Callback<Ljava/util/List<Lcom/alibaba/wukong/im/user/UserImpl;>;>;"
    iput-object p1, p0, Lidu$2;->a:Lidu;

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
    .line 69
    check-cast p1, Ljava/util/List;

    .line 1072
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1073
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/idl/user/models/ProfileModel;

    .line 1074
    if-eqz v0, :cond_0

    .line 1075
    invoke-static {v0}, Lcom/alibaba/wukong/im/user/UserImpl;->fromProfileModel(Lcom/alibaba/wukong/idl/user/models/ProfileModel;)Lcom/alibaba/wukong/im/user/UserImpl;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 69
    :cond_1
    return-object v1
.end method
