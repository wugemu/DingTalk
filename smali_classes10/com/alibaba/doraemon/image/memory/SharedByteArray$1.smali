.class Lcom/alibaba/doraemon/image/memory/SharedByteArray$1;
.super Ljava/lang/Object;
.source "SharedByteArray.java"

# interfaces
.implements Lcom/alibaba/doraemon/image/memory/references/ResourceReleaser;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/doraemon/image/memory/SharedByteArray;-><init>(Lcom/alibaba/doraemon/image/memory/MemoryTrimmableRegistry;Lcom/alibaba/doraemon/image/memory/PoolParams;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/alibaba/doraemon/image/memory/references/ResourceReleaser",
        "<[B>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/doraemon/image/memory/SharedByteArray;


# direct methods
.method constructor <init>(Lcom/alibaba/doraemon/image/memory/SharedByteArray;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/doraemon/image/memory/SharedByteArray;

    .prologue
    .line 63
    iput-object p1, p0, Lcom/alibaba/doraemon/image/memory/SharedByteArray$1;->this$0:Lcom/alibaba/doraemon/image/memory/SharedByteArray;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic release(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 63
    check-cast p1, [B

    invoke-virtual {p0, p1}, Lcom/alibaba/doraemon/image/memory/SharedByteArray$1;->release([B)V

    return-void
.end method

.method public release([B)V
    .locals 1
    .param p1, "unused"    # [B

    .prologue
    .line 66
    iget-object v0, p0, Lcom/alibaba/doraemon/image/memory/SharedByteArray$1;->this$0:Lcom/alibaba/doraemon/image/memory/SharedByteArray;

    iget-object v0, v0, Lcom/alibaba/doraemon/image/memory/SharedByteArray;->mSemaphore:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V

    .line 67
    return-void
.end method
