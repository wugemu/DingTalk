.class final Lapi$4;
.super Ljava/lang/Object;
.source "CalendarActivityPresenter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lapi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lapi;


# direct methods
.method constructor <init>(Lapi;)V
    .locals 0
    .param p1, "this$0"    # Lapi;

    .prologue
    .line 88
    iput-object p1, p0, Lapi$4;->a:Lapi;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    const-wide/32 v4, 0xea60

    .line 91
    invoke-static {}, Lcom/alibaba/android/ding/base/interfaces/DingInterface;->a()Lcom/alibaba/android/ding/base/interfaces/DingInterface;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/android/ding/base/interfaces/DingInterface;->j()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lapi$4;->a:Lapi;

    .line 1051
    iget-object v0, v0, Lapi;->a:Laph$b;

    .line 91
    if-nez v0, :cond_1

    .line 99
    :cond_0
    :goto_0
    return-void

    .line 94
    :cond_1
    iget-object v0, p0, Lapi$4;->a:Lapi;

    .line 2051
    iget-object v0, v0, Lapi;->a:Laph$b;

    .line 94
    invoke-interface {v0}, Laph$b;->l()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lapi$4;->a:Lapi;

    .line 3051
    iget-object v0, v0, Lapi;->i:Larc;

    .line 94
    if-eqz v0, :cond_0

    .line 97
    iget-object v0, p0, Lapi$4;->a:Lapi;

    .line 4051
    iget-object v0, v0, Lapi;->i:Larc;

    .line 97
    invoke-interface {v0}, Larc;->a()V

    .line 98
    invoke-static {}, Lcaa;->a()Lcaa;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    rem-long/2addr v2, v4

    sub-long v2, v4, v2

    invoke-virtual {v0, p0, v2, v3}, Lcaa;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method
