.class final Lhhd$b;
.super Ljava/lang/Object;
.source "FCPlanExecutor.java"

# interfaces
.implements Lhhd$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lhhd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "b"
.end annotation


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private b:Lhhd$a;

.field private c:Lhhd$d;

.field private volatile d:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 562
    const-wide/16 v0, 0x7530

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lhhd$b;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lhhd$a;Lhhd;)V
    .locals 1
    .param p1, "callback"    # Lhhd$a;
    .param p2, "executor"    # Lhhd;

    .prologue
    .line 569
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 567
    const/4 v0, 0x0

    iput-boolean v0, p0, Lhhd$b;->d:Z

    .line 570
    iput-object p1, p0, Lhhd$b;->b:Lhhd$a;

    .line 571
    new-instance v0, Lhhd$d;

    invoke-direct {v0, p0, p2}, Lhhd$d;-><init>(Lhhd$a;Lhhd;)V

    iput-object v0, p0, Lhhd$b;->c:Lhhd$d;

    .line 572
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .prologue
    .line 586
    invoke-virtual {p0}, Lhhd$b;->e()V

    .line 587
    iget-object v0, p0, Lhhd$b;->b:Lhhd$a;

    if-eqz v0, :cond_0

    .line 588
    iget-object v0, p0, Lhhd$b;->b:Lhhd$a;

    invoke-interface {v0}, Lhhd$a;->a()V

    .line 590
    :cond_0
    return-void
.end method

.method public final b()V
    .locals 1

    .prologue
    .line 594
    invoke-virtual {p0}, Lhhd$b;->e()V

    .line 595
    iget-object v0, p0, Lhhd$b;->b:Lhhd$a;

    if-eqz v0, :cond_0

    .line 596
    iget-object v0, p0, Lhhd$b;->b:Lhhd$a;

    invoke-interface {v0}, Lhhd$a;->b()V

    .line 598
    :cond_0
    return-void
.end method

.method public final c()V
    .locals 1

    .prologue
    .line 602
    invoke-virtual {p0}, Lhhd$b;->e()V

    .line 603
    iget-object v0, p0, Lhhd$b;->b:Lhhd$a;

    if-eqz v0, :cond_0

    .line 604
    iget-object v0, p0, Lhhd$b;->b:Lhhd$a;

    invoke-interface {v0}, Lhhd$a;->c()V

    .line 606
    :cond_0
    return-void
.end method

.method public final d()V
    .locals 7

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    const/4 v6, 0x1

    .line 575
    iget-boolean v1, p0, Lhhd$b;->d:Z

    if-eqz v1, :cond_0

    .line 582
    :goto_0
    return-void

    .line 578
    :cond_0
    iput-boolean v6, p0, Lhhd$b;->d:Z

    .line 579
    invoke-static {}, Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;->k()Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;

    move-result-object v1

    const-string/jumbo v2, "general"

    const-string/jumbo v3, "dt_oa_attend_checkin_error_timeout"

    sget-object v4, Lhhd$b;->a:Ljava/lang/String;

    invoke-virtual {v1, v2, v3, v4}, Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 580
    .local v0, "timeout":Ljava/lang/String;
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v1

    iget-object v2, p0, Lhhd$b;->c:Lhhd$d;

    const-wide/16 v4, 0x7530

    invoke-static {v0, v4, v5}, Lcoc;->a(Ljava/lang/String;J)J

    move-result-wide v4

    invoke-virtual {v1, v2, v4, v5}, Lhcv;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 581
    const-string/jumbo v1, "FCPlanExecutor"

    const-string/jumbo v2, "CheckinCallbackWatcher start"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string/jumbo v5, "timeout"

    aput-object v5, v3, v4

    aput-object v0, v3, v6

    invoke-static {v1, v2, v3}, Lhgz;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public final e()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    const/4 v2, 0x0

    .line 609
    iget-boolean v0, p0, Lhhd$b;->d:Z

    if-nez v0, :cond_0

    .line 615
    :goto_0
    return-void

    .line 612
    :cond_0
    iput-boolean v2, p0, Lhhd$b;->d:Z

    .line 613
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v0

    iget-object v1, p0, Lhhd$b;->c:Lhhd$d;

    invoke-virtual {v0, v1}, Lhcv;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 614
    const-string/jumbo v0, "FCPlanExecutor"

    const-string/jumbo v1, "CheckinCallbackWatcher stop"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lhgz;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method
