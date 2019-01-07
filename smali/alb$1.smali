.class final Lalb$1;
.super Ljava/lang/Object;
.source "SessionTimeAndIndexMgr.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lalb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lalb;


# direct methods
.method constructor <init>(Lalb;)V
    .locals 0

    .prologue
    .line 30
    iput-object p1, p0, Lalb$1;->a:Lalb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    const/4 v1, 0x0

    .line 33
    iget-object v0, p0, Lalb$1;->a:Lalb;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lalb;->a(Lalb;J)J

    .line 34
    iget-object v0, p0, Lalb$1;->a:Lalb;

    invoke-static {v0}, Lalb;->a(Lalb;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 35
    iget-object v0, p0, Lalb$1;->a:Lalb;

    invoke-static {v0}, Lalb;->b(Lalb;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 36
    return-void
.end method
