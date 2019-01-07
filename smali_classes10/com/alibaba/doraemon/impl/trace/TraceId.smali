.class public Lcom/alibaba/doraemon/impl/trace/TraceId;
.super Ljava/lang/Object;
.source "TraceId.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "TraceId"

.field private static sSequenceId:Ljava/lang/Integer;

.field public static final sTraceId:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected static sTraceIdRefs:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/alibaba/doraemon/impl/trace/TraceIdReference;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lcom/alibaba/doraemon/impl/trace/TraceId;->sTraceId:Ljava/lang/ThreadLocal;

    .line 21
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/alibaba/doraemon/impl/trace/TraceId;->sTraceIdRefs:Ljava/util/Map;

    .line 22
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/alibaba/doraemon/impl/trace/TraceId;->sSequenceId:Ljava/lang/Integer;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static generateTraceId(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "header"    # Ljava/lang/String;

    .prologue
    .line 55
    sget-object v2, Lcom/alibaba/doraemon/impl/trace/TraceId;->sSequenceId:Ljava/lang/Integer;

    monitor-enter v2

    .line 57
    :try_start_0
    sget-object v1, Lcom/alibaba/doraemon/impl/trace/TraceId;->sSequenceId:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/16 v3, 0xf04

    if-lt v1, v3, :cond_0

    .line 58
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sput-object v1, Lcom/alibaba/doraemon/impl/trace/TraceId;->sSequenceId:Ljava/lang/Integer;

    .line 60
    :cond_0
    sget-object v1, Lcom/alibaba/doraemon/impl/trace/TraceId;->sSequenceId:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sput-object v1, Lcom/alibaba/doraemon/impl/trace/TraceId;->sSequenceId:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 61
    .local v0, "id":I
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 62
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/alibaba/doraemon/utils/Base62;->encode(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    int-to-long v2, v0

    invoke-static {v2, v3}, Lcom/alibaba/doraemon/utils/Base62;->encode(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 61
    .end local v0    # "id":I
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public static getThreadTraceId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 67
    sget-object v0, Lcom/alibaba/doraemon/impl/trace/TraceId;->sTraceId:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public static declared-synchronized getTraceIdRef(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/doraemon/impl/trace/TraceIdReference;
    .locals 5
    .param p0, "traceid"    # Ljava/lang/String;
    .param p1, "traceidHeader"    # Ljava/lang/String;

    .prologue
    .line 25
    const-class v3, Lcom/alibaba/doraemon/impl/trace/TraceId;

    monitor-enter v3

    :try_start_0
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 26
    sget-object v2, Lcom/alibaba/doraemon/impl/trace/TraceId;->sTraceId:Ljava/lang/ThreadLocal;

    invoke-virtual {v2}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object p0

    .end local p0    # "traceid":Ljava/lang/String;
    check-cast p0, Ljava/lang/String;

    .line 27
    .restart local p0    # "traceid":Ljava/lang/String;
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 28
    invoke-static {p1}, Lcom/alibaba/doraemon/impl/trace/TraceId;->generateTraceId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 30
    invoke-static {p0}, Lcom/alibaba/doraemon/impl/trace/TraceId;->setThreadTraceId(Ljava/lang/String;)V

    .line 31
    new-instance v0, Lcom/alibaba/doraemon/impl/trace/TraceIdReference;

    invoke-direct {v0, p0}, Lcom/alibaba/doraemon/impl/trace/TraceIdReference;-><init>(Ljava/lang/String;)V

    .line 32
    .local v0, "traceIdRef":Lcom/alibaba/doraemon/impl/trace/TraceIdReference;
    sget-object v2, Lcom/alibaba/doraemon/impl/trace/TraceId;->sTraceIdRefs:Ljava/util/Map;

    invoke-interface {v2, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v1, v0

    .line 49
    .end local v0    # "traceIdRef":Lcom/alibaba/doraemon/impl/trace/TraceIdReference;
    .local v1, "traceIdRef":Ljava/lang/Object;
    :goto_0
    monitor-exit v3

    return-object v1

    .line 35
    .end local v1    # "traceIdRef":Ljava/lang/Object;
    :cond_0
    :try_start_1
    sget-object v2, Lcom/alibaba/doraemon/impl/trace/TraceId;->sTraceIdRefs:Ljava/util/Map;

    invoke-interface {v2, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/impl/trace/TraceIdReference;

    .line 36
    .restart local v0    # "traceIdRef":Lcom/alibaba/doraemon/impl/trace/TraceIdReference;
    if-nez v0, :cond_1

    .line 37
    const-string/jumbo v2, "TraceId"

    const-string/jumbo v4, "an thread has traceid,but cache loss it"

    invoke-static {v2, v4}, Lcom/alibaba/doraemon/DoraemonLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    new-instance v0, Lcom/alibaba/doraemon/impl/trace/TraceIdReference;

    .end local v0    # "traceIdRef":Lcom/alibaba/doraemon/impl/trace/TraceIdReference;
    invoke-direct {v0, p0}, Lcom/alibaba/doraemon/impl/trace/TraceIdReference;-><init>(Ljava/lang/String;)V

    .line 39
    .restart local v0    # "traceIdRef":Lcom/alibaba/doraemon/impl/trace/TraceIdReference;
    sget-object v2, Lcom/alibaba/doraemon/impl/trace/TraceId;->sTraceIdRefs:Ljava/util/Map;

    invoke-interface {v2, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    move-object v1, v0

    .line 41
    .restart local v1    # "traceIdRef":Ljava/lang/Object;
    goto :goto_0

    .line 44
    .end local v0    # "traceIdRef":Lcom/alibaba/doraemon/impl/trace/TraceIdReference;
    .end local v1    # "traceIdRef":Ljava/lang/Object;
    :cond_2
    sget-object v2, Lcom/alibaba/doraemon/impl/trace/TraceId;->sTraceIdRefs:Ljava/util/Map;

    invoke-interface {v2, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/impl/trace/TraceIdReference;

    .line 45
    .restart local v0    # "traceIdRef":Lcom/alibaba/doraemon/impl/trace/TraceIdReference;
    if-nez v0, :cond_3

    .line 46
    new-instance v0, Lcom/alibaba/doraemon/impl/trace/TraceIdReference;

    .end local v0    # "traceIdRef":Lcom/alibaba/doraemon/impl/trace/TraceIdReference;
    invoke-direct {v0, p0}, Lcom/alibaba/doraemon/impl/trace/TraceIdReference;-><init>(Ljava/lang/String;)V

    .line 47
    .restart local v0    # "traceIdRef":Lcom/alibaba/doraemon/impl/trace/TraceIdReference;
    sget-object v2, Lcom/alibaba/doraemon/impl/trace/TraceId;->sTraceIdRefs:Ljava/util/Map;

    invoke-interface {v2, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_3
    move-object v1, v0

    .line 49
    .restart local v1    # "traceIdRef":Ljava/lang/Object;
    goto :goto_0

    .line 25
    .end local v0    # "traceIdRef":Lcom/alibaba/doraemon/impl/trace/TraceIdReference;
    .end local v1    # "traceIdRef":Ljava/lang/Object;
    .end local p0    # "traceid":Ljava/lang/String;
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method public static setThreadTraceId(Ljava/lang/String;)V
    .locals 1
    .param p0, "traceId"    # Ljava/lang/String;

    .prologue
    .line 71
    sget-object v0, Lcom/alibaba/doraemon/impl/trace/TraceId;->sTraceId:Ljava/lang/ThreadLocal;

    invoke-virtual {v0, p0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 72
    return-void
.end method
