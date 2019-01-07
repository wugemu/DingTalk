.class final Lcom/alibaba/motu/watch/mainRunLoop/MainLooperMonitor$3;
.super Ljava/lang/Object;
.source "MainLooperMonitor.java"

# interfaces
.implements Landroid/util/Printer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/motu/watch/mainRunLoop/MainLooperMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/motu/watch/mainRunLoop/MainLooperMonitor;


# direct methods
.method constructor <init>(Lcom/alibaba/motu/watch/mainRunLoop/MainLooperMonitor;)V
    .locals 0

    .prologue
    .line 55
    iput-object p1, p0, Lcom/alibaba/motu/watch/mainRunLoop/MainLooperMonitor$3;->a:Lcom/alibaba/motu/watch/mainRunLoop/MainLooperMonitor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final println(Ljava/lang/String;)V
    .locals 4
    .param p1, "x"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 58
    const-string/jumbo v0, ">>>>> Dispatching to"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 59
    iget-object v0, p0, Lcom/alibaba/motu/watch/mainRunLoop/MainLooperMonitor$3;->a:Lcom/alibaba/motu/watch/mainRunLoop/MainLooperMonitor;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcom/alibaba/motu/watch/mainRunLoop/MainLooperMonitor;->a(Lcom/alibaba/motu/watch/mainRunLoop/MainLooperMonitor;J)J

    .line 63
    :cond_0
    :goto_0
    return-void

    .line 60
    :cond_1
    const-string/jumbo v0, "<<<<< Finished to"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 61
    iget-object v0, p0, Lcom/alibaba/motu/watch/mainRunLoop/MainLooperMonitor$3;->a:Lcom/alibaba/motu/watch/mainRunLoop/MainLooperMonitor;

    const-wide/16 v2, 0x0

    invoke-static {v0, v2, v3}, Lcom/alibaba/motu/watch/mainRunLoop/MainLooperMonitor;->a(Lcom/alibaba/motu/watch/mainRunLoop/MainLooperMonitor;J)J

    goto :goto_0
.end method
