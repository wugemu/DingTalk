.class public final Llid;
.super Llgv;
.source "NewThreadScheduler.java"


# instance fields
.field private final a:Ljava/util/concurrent/ThreadFactory;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/ThreadFactory;)V
    .locals 0
    .param p1, "threadFactory"    # Ljava/util/concurrent/ThreadFactory;

    .prologue
    .line 27
    invoke-direct {p0}, Llgv;-><init>()V

    .line 28
    iput-object p1, p0, Llid;->a:Ljava/util/concurrent/ThreadFactory;

    .line 29
    return-void
.end method


# virtual methods
.method public final a()Llgv$a;
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 33
    new-instance v0, Llie;

    iget-object v1, p0, Llid;->a:Ljava/util/concurrent/ThreadFactory;

    invoke-direct {v0, v1}, Llie;-><init>(Ljava/util/concurrent/ThreadFactory;)V

    return-object v0
.end method
