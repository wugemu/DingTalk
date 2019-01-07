.class abstract Llix;
.super Lliz;
.source "BaseLinkedQueue.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lliz",
        "<TE;>;"
    }
.end annotation

.annotation build Lrx/internal/util/SuppressAnimalSniffer;
.end annotation


# static fields
.field protected static final a:J


# instance fields
.field protected consumerNode:Lrx/internal/util/atomic/LinkedQueueNode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/internal/util/atomic/LinkedQueueNode",
            "<TE;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 57
    const-class v0, Llix;

    const-string/jumbo v1, "consumerNode"

    invoke-static {v0, v1}, Llkb;->a(Ljava/lang/Class;Ljava/lang/String;)J

    move-result-wide v0

    sput-wide v0, Llix;->a:J

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 56
    .local p0, "this":Llix;, "Llix<TE;>;"
    invoke-direct {p0}, Lliz;-><init>()V

    return-void
.end method


# virtual methods
.method protected final a()Lrx/internal/util/atomic/LinkedQueueNode;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lrx/internal/util/atomic/LinkedQueueNode",
            "<TE;>;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 65
    .local p0, "this":Llix;, "Llix<TE;>;"
    sget-object v0, Llkb;->a:Lsun/misc/Unsafe;

    sget-wide v2, Llix;->a:J

    invoke-virtual {v0, p0, v2, v3}, Lsun/misc/Unsafe;->getObjectVolatile(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lrx/internal/util/atomic/LinkedQueueNode;

    return-object v0
.end method

.method protected final a(Lrx/internal/util/atomic/LinkedQueueNode;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/internal/util/atomic/LinkedQueueNode",
            "<TE;>;)V"
        }
    .end annotation

    .prologue
    .line 60
    .local p0, "this":Llix;, "Llix<TE;>;"
    .local p1, "node":Lrx/internal/util/atomic/LinkedQueueNode;, "Lrx/internal/util/atomic/LinkedQueueNode<TE;>;"
    iput-object p1, p0, Llix;->consumerNode:Lrx/internal/util/atomic/LinkedQueueNode;

    .line 61
    return-void
.end method

.method protected final b()Lrx/internal/util/atomic/LinkedQueueNode;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lrx/internal/util/atomic/LinkedQueueNode",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 69
    .local p0, "this":Llix;, "Llix<TE;>;"
    iget-object v0, p0, Llix;->consumerNode:Lrx/internal/util/atomic/LinkedQueueNode;

    return-object v0
.end method
