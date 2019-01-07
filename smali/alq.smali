.class public final Lalq;
.super Ljava/lang/Object;
.source "SelfMonitorHandle.java"

# interfaces
.implements Lalp;


# static fields
.field private static a:Lalq;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    new-instance v0, Lalq;

    invoke-direct {v0}, Lalq;-><init>()V

    sput-object v0, Lalq;->a:Lalq;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lalq;
    .locals 1

    .prologue
    .line 23
    sget-object v0, Lalq;->a:Lalq;

    return-object v0
.end method


# virtual methods
.method public final a(Laln;)V
    .locals 6
    .param p1, "event"    # Laln;

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 85
    iget-object v0, p1, Laln;->n:Lcom/alibaba/appmonitor/event/EventType;

    sget-object v1, Lcom/alibaba/appmonitor/event/EventType;->COUNTER:Lcom/alibaba/appmonitor/event/EventType;

    if-ne v0, v1, :cond_1

    .line 86
    const-string/jumbo v0, "AppMonitor"

    iget-object v1, p1, Laln;->m:Ljava/lang/String;

    iget-object v2, p1, Laln;->o:Ljava/lang/String;

    iget-object v3, p1, Laln;->p:Ljava/lang/Double;

    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    invoke-static {v0, v1, v2, v4, v5}, Lfyg$b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;D)V

    .line 90
    :cond_0
    :goto_0
    return-void

    .line 87
    :cond_1
    iget-object v0, p1, Laln;->n:Lcom/alibaba/appmonitor/event/EventType;

    sget-object v1, Lcom/alibaba/appmonitor/event/EventType;->STAT:Lcom/alibaba/appmonitor/event/EventType;

    if-ne v0, v1, :cond_0

    .line 88
    const-string/jumbo v0, "AppMonitor"

    iget-object v1, p1, Laln;->m:Ljava/lang/String;

    iget-object v2, p1, Laln;->q:Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    iget-object v3, p1, Laln;->r:Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    invoke-static {v0, v1, v2, v3}, Lfyg$c;->a(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;)V

    goto :goto_0
.end method
