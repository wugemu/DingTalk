.class Lcom/alibaba/wukong/auth/bg$1$1;
.super Ljava/lang/Object;
.source "UploaderFileTask.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/wukong/auth/bg$1;->onSuccess(Lcom/laiwang/protocol/upload/UploadResult;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic bF:Lifx;

.field final synthetic bG:Lcom/alibaba/wukong/auth/bg$1;


# direct methods
.method constructor <init>(Lcom/alibaba/wukong/auth/bg$1;Lifx;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/wukong/auth/bg$1;

    .prologue
    .line 69
    iput-object p1, p0, Lcom/alibaba/wukong/auth/bg$1$1;->bG:Lcom/alibaba/wukong/auth/bg$1;

    iput-object p2, p0, Lcom/alibaba/wukong/auth/bg$1$1;->bF:Lifx;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 74
    iget-object v1, p0, Lcom/alibaba/wukong/auth/bg$1$1;->bG:Lcom/alibaba/wukong/auth/bg$1;

    iget-object v1, v1, Lcom/alibaba/wukong/auth/bg$1;->bE:Lcom/alibaba/wukong/auth/bg;

    iget-object v1, v1, Lcom/alibaba/wukong/auth/bg;->bL:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lifv;

    .line 75
    .local v0, "listener":Lifv;, "Lifv<Lifx;>;"
    if-eqz v0, :cond_0

    .line 76
    iget-object v2, p0, Lcom/alibaba/wukong/auth/bg$1$1;->bF:Lifx;

    invoke-interface {v0, v2}, Lifv;->onSuccess(Ljava/lang/Object;)V

    goto :goto_0

    .line 79
    .end local v0    # "listener":Lifv;, "Lifv<Lifx;>;"
    :cond_1
    iget-object v1, p0, Lcom/alibaba/wukong/auth/bg$1$1;->bG:Lcom/alibaba/wukong/auth/bg$1;

    iget-object v1, v1, Lcom/alibaba/wukong/auth/bg$1;->bE:Lcom/alibaba/wukong/auth/bg;

    iget-object v1, v1, Lcom/alibaba/wukong/auth/bg;->bL:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->clear()V

    .line 80
    return-void
.end method
