.class final Lhhd$d;
.super Ljava/lang/Object;
.source "FCPlanExecutor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lhhd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "d"
.end annotation


# instance fields
.field private a:Lhhd$a;

.field private b:Lhhd;


# direct methods
.method public constructor <init>(Lhhd$a;Lhhd;)V
    .locals 0
    .param p1, "callback"    # Lhhd$a;
    .param p2, "executor"    # Lhhd;

    .prologue
    .line 540
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 541
    iput-object p1, p0, Lhhd$d;->a:Lhhd$a;

    .line 542
    iput-object p2, p0, Lhhd$d;->b:Lhhd;

    .line 543
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 547
    const-string/jumbo v0, "FCPlanExecutor"

    const-string/jumbo v1, "TimeoutWatcher run"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lhgz;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 548
    iget-object v0, p0, Lhhd$d;->b:Lhhd;

    if-eqz v0, :cond_0

    .line 549
    iget-object v0, p0, Lhhd$d;->b:Lhhd;

    invoke-virtual {v0}, Lhhd;->b()V

    .line 551
    :cond_0
    iget-object v0, p0, Lhhd$d;->a:Lhhd$a;

    if-eqz v0, :cond_1

    .line 552
    iget-object v0, p0, Lhhd$d;->a:Lhhd$a;

    invoke-interface {v0}, Lhhd$a;->b()V

    .line 554
    :cond_1
    return-void
.end method
