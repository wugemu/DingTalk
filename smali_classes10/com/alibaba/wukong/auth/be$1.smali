.class Lcom/alibaba/wukong/auth/be$1;
.super Lhzy;
.source "SyncRpc.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/wukong/auth/be;->a(Lcom/alibaba/wukong/auth/az;Lcom/alibaba/wukong/Callback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lhzy",
        "<",
        "Lcom/alibaba/wukong/auth/ag;",
        "Lcom/alibaba/wukong/auth/ag;",
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
    .line 29
    .local p2, "listener":Lcom/alibaba/wukong/Callback;, "Lcom/alibaba/wukong/Callback<Lcom/alibaba/wukong/auth/ag;>;"
    iput-object p1, p0, Lcom/alibaba/wukong/auth/be$1;->bx:Lcom/alibaba/wukong/auth/be;

    invoke-direct {p0, p2}, Lhzy;-><init>(Lcom/alibaba/wukong/Callback;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/alibaba/wukong/auth/ag;)Lcom/alibaba/wukong/auth/ag;
    .locals 0
    .param p1, "rpcDo"    # Lcom/alibaba/wukong/auth/ag;

    .prologue
    .line 32
    return-object p1
.end method

.method public synthetic convertDo(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 29
    check-cast p1, Lcom/alibaba/wukong/auth/ag;

    invoke-virtual {p0, p1}, Lcom/alibaba/wukong/auth/be$1;->a(Lcom/alibaba/wukong/auth/ag;)Lcom/alibaba/wukong/auth/ag;

    move-result-object v0

    return-object v0
.end method
