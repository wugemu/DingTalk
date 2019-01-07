.class Lcom/alibaba/wukong/auth/g$2;
.super Ljava/lang/Object;
.source "DefaultAuthProvider.java"

# interfaces
.implements Lcom/laiwang/protocol/android/Reply;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/wukong/auth/g;->b(Lcom/alibaba/wukong/Callback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/laiwang/protocol/android/Reply",
        "<",
        "Lcom/laiwang/protocol/core/Response;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic B:Lcom/alibaba/wukong/auth/g;

.field final synthetic val$callback:Lcom/alibaba/wukong/Callback;


# direct methods
.method constructor <init>(Lcom/alibaba/wukong/auth/g;Lcom/alibaba/wukong/Callback;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/wukong/auth/g;

    .prologue
    .line 571
    iput-object p1, p0, Lcom/alibaba/wukong/auth/g$2;->B:Lcom/alibaba/wukong/auth/g;

    iput-object p2, p0, Lcom/alibaba/wukong/auth/g$2;->val$callback:Lcom/alibaba/wukong/Callback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public on(Lcom/laiwang/protocol/core/Response;)V
    .locals 2
    .param p1, "response"    # Lcom/laiwang/protocol/core/Response;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 574
    iget-object v0, p0, Lcom/alibaba/wukong/auth/g$2;->val$callback:Lcom/alibaba/wukong/Callback;

    if-nez v0, :cond_0

    .line 603
    :goto_0
    return-void

    .line 578
    :cond_0
    if-nez p1, :cond_1

    .line 579
    new-instance v0, Lcom/alibaba/wukong/auth/g$2$1;

    invoke-direct {v0, p0}, Lcom/alibaba/wukong/auth/g$2$1;-><init>(Lcom/alibaba/wukong/auth/g$2;)V

    invoke-static {v0}, Lcom/alibaba/wukong/CallbackUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 588
    :cond_1
    invoke-virtual {p1}, Lcom/laiwang/protocol/core/Response;->status()Lcom/laiwang/protocol/core/Constants$Status;

    move-result-object v0

    sget-object v1, Lcom/laiwang/protocol/core/Constants$Status;->OK:Lcom/laiwang/protocol/core/Constants$Status;

    if-ne v0, v1, :cond_2

    .line 589
    new-instance v0, Lcom/alibaba/wukong/auth/g$2$2;

    invoke-direct {v0, p0}, Lcom/alibaba/wukong/auth/g$2$2;-><init>(Lcom/alibaba/wukong/auth/g$2;)V

    invoke-static {v0}, Lcom/alibaba/wukong/CallbackUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 596
    :cond_2
    new-instance v0, Lcom/alibaba/wukong/auth/g$2$3;

    invoke-direct {v0, p0, p1}, Lcom/alibaba/wukong/auth/g$2$3;-><init>(Lcom/alibaba/wukong/auth/g$2;Lcom/laiwang/protocol/core/Response;)V

    invoke-static {v0}, Lcom/alibaba/wukong/CallbackUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public bridge synthetic on(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 571
    check-cast p1, Lcom/laiwang/protocol/core/Response;

    invoke-virtual {p0, p1}, Lcom/alibaba/wukong/auth/g$2;->on(Lcom/laiwang/protocol/core/Response;)V

    return-void
.end method
