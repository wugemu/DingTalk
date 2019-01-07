.class Lcom/alibaba/wukong/auth/ar$1;
.super Lhzy;
.source "CloudSettingRpc.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/wukong/auth/ar;->a(Lcom/alibaba/wukong/auth/x;Lcom/alibaba/wukong/Callback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lhzy",
        "<",
        "Ljava/lang/Long;",
        "Lcom/alibaba/wukong/auth/ap;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic aW:Lcom/alibaba/wukong/auth/x;

.field final synthetic aX:Lcom/alibaba/wukong/auth/ar;


# direct methods
.method constructor <init>(Lcom/alibaba/wukong/auth/ar;Lcom/alibaba/wukong/Callback;Lcom/alibaba/wukong/auth/x;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/wukong/auth/ar;

    .prologue
    .line 29
    .local p2, "listener":Lcom/alibaba/wukong/Callback;, "Lcom/alibaba/wukong/Callback<Lcom/alibaba/wukong/auth/ap;>;"
    iput-object p1, p0, Lcom/alibaba/wukong/auth/ar$1;->aX:Lcom/alibaba/wukong/auth/ar;

    iput-object p3, p0, Lcom/alibaba/wukong/auth/ar$1;->aW:Lcom/alibaba/wukong/auth/x;

    invoke-direct {p0, p2}, Lhzy;-><init>(Lcom/alibaba/wukong/Callback;)V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Long;)Lcom/alibaba/wukong/auth/ap;
    .locals 4
    .param p1, "rpcDo"    # Ljava/lang/Long;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 32
    iget-object v1, p0, Lcom/alibaba/wukong/auth/ar$1;->aW:Lcom/alibaba/wukong/auth/x;

    invoke-static {v1}, Lcom/alibaba/wukong/auth/ap;->a(Lcom/alibaba/wukong/auth/x;)Lcom/alibaba/wukong/auth/ap;

    move-result-object v0

    .line 33
    .local v0, "setting":Lcom/alibaba/wukong/auth/ap;
    if-eqz v0, :cond_0

    .line 34
    invoke-static {p1}, Ligb;->a(Ljava/lang/Long;)J

    move-result-wide v2

    iput-wide v2, v0, Lcom/alibaba/wukong/auth/ap;->aU:J

    .line 36
    :cond_0
    return-object v0
.end method

.method public synthetic convertDo(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 29
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p0, p1}, Lcom/alibaba/wukong/auth/ar$1;->a(Ljava/lang/Long;)Lcom/alibaba/wukong/auth/ap;

    move-result-object v0

    return-object v0
.end method
