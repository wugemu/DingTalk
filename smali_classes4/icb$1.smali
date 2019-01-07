.class public final Licb$1;
.super Lcom/alibaba/wukong/sync/SyncListener;
.source "MessageViewTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Licb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/alibaba/wukong/sync/SyncListener",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Licb;


# direct methods
.method public constructor <init>(Licb;[Ljava/lang/reflect/Type;)V
    .locals 0
    .param p1, "this$0"    # Licb;
    .param p2, "x0"    # [Ljava/lang/reflect/Type;

    .prologue
    .line 46
    iput-object p1, p0, Licb$1;->a:Licb;

    invoke-direct {p0, p2}, Lcom/alibaba/wukong/sync/SyncListener;-><init>([Ljava/lang/reflect/Type;)V

    return-void
.end method


# virtual methods
.method public final onResult(Lcom/alibaba/wukong/sync/SyncResult;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/wukong/sync/SyncResult",
            "<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 51
    .local p1, "result":Lcom/alibaba/wukong/sync/SyncResult;, "Lcom/alibaba/wukong/sync/SyncResult<Ljava/lang/Void;>;"
    iget-boolean v0, p1, Lcom/alibaba/wukong/sync/SyncResult;->mSuccess:Z

    if-eqz v0, :cond_0

    .line 52
    invoke-static {}, Liaq;->a()Liaq;

    move-result-object v0

    invoke-virtual {v0}, Liaq;->i()Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Licb$1$1;

    invoke-direct {v1, p0, p1}, Licb$1$1;-><init>(Licb$1;Lcom/alibaba/wukong/sync/SyncResult;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 68
    :cond_0
    return-void
.end method
