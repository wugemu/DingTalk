.class final Llic$a;
.super Llgv$a;
.source "ImmediateScheduler.java"

# interfaces
.implements Llgz;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Llic;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "a"
.end annotation


# instance fields
.field final a:Llkw;

.field final synthetic b:Llic;


# direct methods
.method constructor <init>(Llic;)V
    .locals 1
    .param p1, "this$0"    # Llic;

    .prologue
    .line 45
    iput-object p1, p0, Llic$a;->b:Llic;

    invoke-direct {p0}, Llgv$a;-><init>()V

    .line 43
    new-instance v0, Llkw;

    invoke-direct {v0}, Llkw;-><init>()V

    iput-object v0, p0, Llic$a;->a:Llkw;

    .line 46
    return-void
.end method


# virtual methods
.method public final a(Llhf;)Llgz;
    .locals 1
    .param p1, "action"    # Llhf;

    .prologue
    .line 58
    invoke-interface {p1}, Llhf;->call()V

    .line 59
    invoke-static {}, Llkz;->b()Llgz;

    move-result-object v0

    return-object v0
.end method

.method public final a(Llhf;JLjava/util/concurrent/TimeUnit;)Llgz;
    .locals 6
    .param p1, "action"    # Llhf;
    .param p2, "delayTime"    # J
    .param p4, "unit"    # Ljava/util/concurrent/TimeUnit;

    .prologue
    .line 1130
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 51
    invoke-virtual {p4, p2, p3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v4

    add-long v0, v2, v4

    .line 53
    .local v0, "execTime":J
    new-instance v2, Llig;

    invoke-direct {v2, p1, p0, v0, v1}, Llig;-><init>(Llhf;Llgv$a;J)V

    invoke-virtual {p0, v2}, Llic$a;->a(Llhf;)Llgz;

    move-result-object v2

    return-object v2
.end method

.method public final isUnsubscribed()Z
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Llic$a;->a:Llkw;

    invoke-virtual {v0}, Llkw;->isUnsubscribed()Z

    move-result v0

    return v0
.end method

.method public final unsubscribe()V
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Llic$a;->a:Llkw;

    invoke-virtual {v0}, Llkw;->unsubscribe()V

    .line 65
    return-void
.end method
