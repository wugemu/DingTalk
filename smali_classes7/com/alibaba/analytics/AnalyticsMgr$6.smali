.class final Lcom/alibaba/analytics/AnalyticsMgr$6;
.super Ljava/lang/Object;
.source "AnalyticsMgr.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/analytics/AnalyticsMgr;->n()Ljava/lang/Runnable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 278
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v4, 0x0

    .line 281
    const-string/jumbo v2, "call Remote init start..."

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lamu;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 283
    :try_start_0
    sget-object v2, Lcom/alibaba/analytics/AnalyticsMgr;->a:Lajt;

    invoke-interface {v2}, Lajt;->a()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 293
    :goto_0
    const-string/jumbo v2, "call Remote init end"

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lamu;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 294
    return-void

    .line 284
    :catch_0
    move-exception v0

    .line 285
    .local v0, "e":Ljava/lang/Throwable;
    const-string/jumbo v2, "initut error"

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v2, v0, v3}, Lamu;->b(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 286
    invoke-static {}, Lcom/alibaba/analytics/AnalyticsMgr;->f()V

    .line 288
    :try_start_1
    sget-object v2, Lcom/alibaba/analytics/AnalyticsMgr;->a:Lajt;

    invoke-interface {v2}, Lajt;->a()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 289
    :catch_1
    move-exception v1

    .line 290
    .local v1, "e2":Ljava/lang/Throwable;
    const-string/jumbo v2, "initut error"

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v2, v1, v3}, Lamu;->b(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto :goto_0
.end method
