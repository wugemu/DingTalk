.class Lcom/alibaba/wukong/auth/g$2$2;
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
    .line 589
    iput-object p1, p0, Lcom/alibaba/wukong/auth/g$2$2;->C:Lcom/alibaba/wukong/auth/g$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 592
    iget-object v0, p0, Lcom/alibaba/wukong/auth/g$2$2;->C:Lcom/alibaba/wukong/auth/g$2;

    iget-object v0, v0, Lcom/alibaba/wukong/auth/g$2;->val$callback:Lcom/alibaba/wukong/Callback;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/alibaba/wukong/Callback;->onSuccess(Ljava/lang/Object;)V

    .line 593
    return-void
.end method
