.class public Lcom/taobao/weex/tracing/WXTracing$TraceEvent;
.super Ljava/lang/Object;
.source "WXTracing.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taobao/weex/tracing/WXTracing;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TraceEvent"
.end annotation


# instance fields
.field public classname:Ljava/lang/String;

.field public duration:D

.field public extParams:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public firstScreenFinish:Z

.field public fname:Ljava/lang/String;

.field public iid:Ljava/lang/String;

.field public isSegment:Z

.field public name:Ljava/lang/String;

.field public parentId:I

.field public parentRef:Ljava/lang/String;

.field public parseJsonTime:D

.field public payload:Ljava/lang/String;

.field public ph:Ljava/lang/String;

.field public ref:Ljava/lang/String;

.field public subEvents:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/taobao/weex/tracing/WXTracing$TraceEvent;",
            ">;"
        }
    .end annotation
.end field

.field private submitted:Z

.field public tname:Ljava/lang/String;

.field public traceId:I

.field public ts:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    const/4 v0, -0x1

    iput v0, p0, Lcom/taobao/weex/tracing/WXTracing$TraceEvent;->parentId:I

    .line 81
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/taobao/weex/tracing/WXTracing$TraceEvent;->ts:J

    .line 82
    invoke-static {}, Lcom/taobao/weex/tracing/WXTracing;->nextId()I

    move-result v0

    iput v0, p0, Lcom/taobao/weex/tracing/WXTracing$TraceEvent;->traceId:I

    .line 83
    invoke-static {}, Lcom/taobao/weex/tracing/WXTracing;->currentThreadName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/taobao/weex/tracing/WXTracing$TraceEvent;->tname:Ljava/lang/String;

    .line 84
    return-void
.end method


# virtual methods
.method public submit()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 87
    iget-boolean v0, p0, Lcom/taobao/weex/tracing/WXTracing$TraceEvent;->submitted:Z

    if-nez v0, :cond_0

    .line 88
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/taobao/weex/tracing/WXTracing$TraceEvent;->submitted:Z

    .line 89
    invoke-static {p0}, Lcom/taobao/weex/tracing/WXTracing;->submit(Lcom/taobao/weex/tracing/WXTracing$TraceEvent;)V

    .line 93
    :goto_0
    return-void

    .line 91
    :cond_0
    const-string/jumbo v0, "WXTracing"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Event "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/taobao/weex/tracing/WXTracing$TraceEvent;->traceId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " has been submitted."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/taobao/weex/utils/WXLogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
