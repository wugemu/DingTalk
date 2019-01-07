.class Lcom/alibaba/bee/impl/DebugTools$DBDebugInfo;
.super Ljava/lang/Object;
.source "DebugTools.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/bee/impl/DebugTools;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "DBDebugInfo"
.end annotation


# instance fields
.field runnables:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 130
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 131
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object v0, p0, Lcom/alibaba/bee/impl/DebugTools$DBDebugInfo;->runnables:Ljava/util/concurrent/BlockingQueue;

    return-void
.end method

.method synthetic constructor <init>(Lcom/alibaba/bee/impl/DebugTools$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/alibaba/bee/impl/DebugTools$1;

    .prologue
    .line 130
    invoke-direct {p0}, Lcom/alibaba/bee/impl/DebugTools$DBDebugInfo;-><init>()V

    return-void
.end method
