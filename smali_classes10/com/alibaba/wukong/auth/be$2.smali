.class Lcom/alibaba/wukong/auth/be$2;
.super Lhzy;
.source "SyncRpc.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/wukong/auth/be;->b(Lcom/alibaba/wukong/auth/az;Lcom/alibaba/wukong/Callback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lhzy",
        "<",
        "Lcom/alibaba/wukong/auth/ae;",
        "Lcom/alibaba/wukong/auth/az;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic bx:Lcom/alibaba/wukong/auth/be;


# direct methods
.method constructor <init>(Lcom/alibaba/wukong/auth/be;Lcom/alibaba/wukong/Callback;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/wukong/auth/be;

    .prologue
    .line 48
    .local p2, "listener":Lcom/alibaba/wukong/Callback;, "Lcom/alibaba/wukong/Callback<Lcom/alibaba/wukong/auth/az;>;"
    iput-object p1, p0, Lcom/alibaba/wukong/auth/be$2;->bx:Lcom/alibaba/wukong/auth/be;

    invoke-direct {p0, p2}, Lhzy;-><init>(Lcom/alibaba/wukong/Callback;)V

    return-void
.end method


# virtual methods
.method public b(Lcom/alibaba/wukong/auth/ae;)Lcom/alibaba/wukong/auth/az;
    .locals 1
    .param p1, "rpcDo"    # Lcom/alibaba/wukong/auth/ae;

    .prologue
    .line 51
    invoke-static {p1}, Lcom/alibaba/wukong/auth/az;->a(Lcom/alibaba/wukong/auth/ae;)Lcom/alibaba/wukong/auth/az;

    move-result-object v0

    return-object v0
.end method

.method public synthetic convertDo(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 48
    check-cast p1, Lcom/alibaba/wukong/auth/ae;

    invoke-virtual {p0, p1}, Lcom/alibaba/wukong/auth/be$2;->b(Lcom/alibaba/wukong/auth/ae;)Lcom/alibaba/wukong/auth/az;

    move-result-object v0

    return-object v0
.end method
