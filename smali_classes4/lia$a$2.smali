.class final Llia$a$2;
.super Ljava/lang/Object;
.source "CachedThreadScheduler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Llia$a;-><init>(Ljava/util/concurrent/ThreadFactory;JLjava/util/concurrent/TimeUnit;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Llia$a;


# direct methods
.method constructor <init>(Llia$a;)V
    .locals 0
    .param p1, "this$0"    # Llia$a;

    .prologue
    .line 74
    iput-object p1, p0, Llia$a$2;->a:Llia$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 77
    iget-object v1, p0, Llia$a$2;->a:Llia$a;

    .line 1111
    iget-object v0, v1, Llia$a;->b:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1129
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    .line 1114
    iget-object v0, v1, Llia$a;->b:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Llia$c;

    .line 1248
    iget-wide v6, v0, Llia$c;->a:J

    .line 1115
    cmp-long v5, v6, v2

    if-gtz v5, :cond_1

    .line 1116
    iget-object v5, v1, Llia$a;->b:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v5, v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->remove(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1117
    iget-object v5, v1, Llia$a;->c:Llkx;

    invoke-virtual {v5, v0}, Llkx;->b(Llgz;)V

    goto :goto_0

    .line 78
    :cond_1
    return-void
.end method
