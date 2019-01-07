.class Lcom/alibaba/wukong/auth/g$2$1;
.super Ljava/lang/Object;
.source "DefaultAuthProvider.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/wukong/auth/g$2;->on(Lcom/laiwang/protocol/core/Response;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic C:Lcom/alibaba/wukong/auth/g$2;


# direct methods
.method constructor <init>(Lcom/alibaba/wukong/auth/g$2;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/wukong/auth/g$2;

    .prologue
    .line 579
    iput-object p1, p0, Lcom/alibaba/wukong/auth/g$2$1;->C:Lcom/alibaba/wukong/auth/g$2;

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
    .line 582
    iget-object v0, p0, Lcom/alibaba/wukong/auth/g$2$1;->C:Lcom/alibaba/wukong/auth/g$2;

    iget-object v0, v0, Lcom/alibaba/wukong/auth/g$2;->val$callback:Lcom/alibaba/wukong/Callback;

    sget-object v1, Lcom/laiwang/protocol/core/Constants$Status;->UNKNOWN:Lcom/laiwang/protocol/core/Constants$Status;

    iget v1, v1, Lcom/laiwang/protocol/core/Constants$Status;->code:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "unknown"

    invoke-interface {v0, v1, v2}, Lcom/alibaba/wukong/Callback;->onException(Ljava/lang/String;Ljava/lang/String;)V

    .line 583
    return-void
.end method
