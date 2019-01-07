.class public final Lyn;
.super Ljava/lang/Object;
.source "PerfWriter.java"


# static fields
.field private static final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lyn;->a:Ljava/util/Map;

    .line 27
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    return-void
.end method

.method public static a(Lcom/alibaba/alimei/framework/perf/MonitorPriority;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p0, "priority"    # Lcom/alibaba/alimei/framework/perf/MonitorPriority;
    .param p1, "module"    # Ljava/lang/String;
    .param p2, "monitorPoint"    # Ljava/lang/String;

    .prologue
    .line 82
    invoke-static {}, Lxn;->k()Lxt;

    move-result-object v0

    .line 83
    .local v0, "config":Lxt;
    if-eqz v0, :cond_0

    .line 3104
    iget-object v1, v0, Lxt;->a:Lyk;

    .line 85
    .local v1, "logger":Lyk;
    if-eqz v1, :cond_0

    .line 86
    invoke-interface {v1, p0, p1, p2}, Lyk;->a(Lcom/alibaba/alimei/framework/perf/MonitorPriority;Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    .end local v1    # "logger":Lyk;
    :cond_0
    return-void
.end method

.method public static a(Lcom/alibaba/alimei/framework/perf/MonitorPriority;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p0, "priority"    # Lcom/alibaba/alimei/framework/perf/MonitorPriority;
    .param p1, "module"    # Ljava/lang/String;
    .param p2, "monitorPoint"    # Ljava/lang/String;
    .param p3, "subMonitorPoint"    # Ljava/lang/String;

    .prologue
    .line 129
    invoke-static {}, Lxn;->k()Lxt;

    move-result-object v0

    .line 130
    .local v0, "config":Lxt;
    if-eqz v0, :cond_0

    .line 6104
    iget-object v1, v0, Lxt;->a:Lyk;

    .line 132
    .local v1, "logger":Lyk;
    if-eqz v1, :cond_0

    .line 133
    invoke-interface {v1, p1, p2, p3}, Lyk;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    .end local v1    # "logger":Lyk;
    :cond_0
    return-void
.end method

.method public static a(Lcom/alibaba/alimei/framework/perf/MonitorPriority;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;D)V
    .locals 7
    .param p0, "priority"    # Lcom/alibaba/alimei/framework/perf/MonitorPriority;
    .param p1, "module"    # Ljava/lang/String;
    .param p2, "monitorPoint"    # Ljava/lang/String;
    .param p3, "arg"    # Ljava/lang/String;
    .param p4, "count"    # D

    .prologue
    .line 246
    invoke-static {}, Lxn;->k()Lxt;

    move-result-object v6

    .line 247
    .local v6, "config":Lxt;
    if-eqz v6, :cond_0

    .line 11104
    iget-object v0, v6, Lxt;->a:Lyk;

    .line 249
    .local v0, "logger":Lyk;
    if-eqz v0, :cond_0

    .line 250
    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-interface/range {v0 .. v5}, Lyk;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;D)V

    .line 253
    .end local v0    # "logger":Lyk;
    :cond_0
    return-void
.end method

.method public static a(Lcom/alibaba/alimei/framework/perf/MonitorPriority;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p0, "priority"    # Lcom/alibaba/alimei/framework/perf/MonitorPriority;
    .param p1, "module"    # Ljava/lang/String;
    .param p2, "monitorPoint"    # Ljava/lang/String;
    .param p3, "errorCode"    # Ljava/lang/String;
    .param p4, "errorMsg"    # Ljava/lang/String;

    .prologue
    .line 181
    const-string/jumbo v5, ""

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-static/range {v0 .. v5}, Lyn;->a(Lcom/alibaba/alimei/framework/perf/MonitorPriority;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 182
    return-void
.end method

.method public static a(Lcom/alibaba/alimei/framework/perf/MonitorPriority;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p0, "priority"    # Lcom/alibaba/alimei/framework/perf/MonitorPriority;
    .param p1, "module"    # Ljava/lang/String;
    .param p2, "monitorPoint"    # Ljava/lang/String;
    .param p3, "errorCode"    # Ljava/lang/String;
    .param p4, "errorMsg"    # Ljava/lang/String;
    .param p5, "arg"    # Ljava/lang/String;

    .prologue
    .line 195
    invoke-static {}, Lxn;->k()Lxt;

    move-result-object v6

    .line 196
    .local v6, "config":Lxt;
    if-eqz v6, :cond_0

    .line 8104
    iget-object v0, v6, Lxt;->a:Lyk;

    .line 198
    .local v0, "logger":Lyk;
    if-eqz v0, :cond_0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    .line 199
    invoke-interface/range {v0 .. v5}, Lyk;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 202
    .end local v0    # "logger":Lyk;
    :cond_0
    return-void
.end method

.method public static a(Lcom/alibaba/alimei/framework/perf/MonitorPriority;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)V
    .locals 2
    .param p0, "priority"    # Lcom/alibaba/alimei/framework/perf/MonitorPriority;
    .param p1, "module"    # Ljava/lang/String;
    .param p2, "monitorPoint"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/alimei/framework/perf/MonitorPriority;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Double;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 229
    .local p3, "dimensionMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .local p4, "measureMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Double;>;"
    invoke-static {}, Lxn;->k()Lxt;

    move-result-object v0

    .line 230
    .local v0, "config":Lxt;
    if-eqz v0, :cond_0

    .line 10104
    iget-object v1, v0, Lxt;->a:Lyk;

    .line 232
    .local v1, "logger":Lyk;
    if-eqz v1, :cond_0

    .line 233
    invoke-interface {v1, p1, p2, p3, p4}, Lyk;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)V

    .line 236
    .end local v1    # "logger":Lyk;
    :cond_0
    return-void
.end method

.method public static varargs a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 6
    .param p0, "module"    # Ljava/lang/String;
    .param p1, "monitorPoint"    # Ljava/lang/String;
    .param p2, "dimension"    # Ljava/lang/String;
    .param p3, "measures"    # [Ljava/lang/String;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 37
    invoke-static {}, Lxn;->k()Lxt;

    move-result-object v0

    .line 38
    .local v0, "config":Lxt;
    if-eqz v0, :cond_0

    .line 1104
    iget-object v2, v0, Lxt;->a:Lyk;

    .line 40
    .local v2, "logger":Lyk;
    if-eqz v2, :cond_0

    .line 42
    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/String;

    aput-object p0, v5, v4

    aput-object p1, v5, v3

    invoke-static {v5}, Lzc;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 43
    .local v1, "key":Ljava/lang/String;
    sget-object v5, Lyn;->a:Ljava/util/Map;

    invoke-interface {v5, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 44
    .local v3, "shouldCache":Z
    :goto_0
    if-eqz v3, :cond_0

    .line 45
    sget-object v4, Lyn;->a:Ljava/util/Map;

    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v4, p1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    invoke-interface {v2, p0, p1, p2, p3}, Lyk;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 50
    .end local v1    # "key":Ljava/lang/String;
    .end local v2    # "logger":Lyk;
    .end local v3    # "shouldCache":Z
    :cond_0
    return-void

    .restart local v1    # "key":Ljava/lang/String;
    .restart local v2    # "logger":Lyk;
    :cond_1
    move v3, v4

    .line 43
    goto :goto_0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V
    .locals 6
    .param p0, "module"    # Ljava/lang/String;
    .param p1, "monitorPoint"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, "dimensions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p3, "measures":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 61
    invoke-static {}, Lxn;->k()Lxt;

    move-result-object v0

    .line 62
    .local v0, "config":Lxt;
    if-eqz v0, :cond_0

    .line 2104
    iget-object v2, v0, Lxt;->a:Lyk;

    .line 64
    .local v2, "logger":Lyk;
    if-eqz v2, :cond_0

    .line 66
    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/String;

    aput-object p0, v5, v4

    aput-object p1, v5, v3

    invoke-static {v5}, Lzc;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 67
    .local v1, "key":Ljava/lang/String;
    sget-object v5, Lyn;->a:Ljava/util/Map;

    invoke-interface {v5, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 68
    .local v3, "shouldCache":Z
    :goto_0
    if-eqz v3, :cond_0

    .line 69
    sget-object v4, Lyn;->a:Ljava/util/Map;

    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v4, p1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    invoke-interface {v2, p0, p1, p2, p3}, Lyk;->registerMonitorPointDynamic(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V

    .line 74
    .end local v1    # "key":Ljava/lang/String;
    .end local v2    # "logger":Lyk;
    .end local v3    # "shouldCache":Z
    :cond_0
    return-void

    .restart local v1    # "key":Ljava/lang/String;
    .restart local v2    # "logger":Lyk;
    :cond_1
    move v3, v4

    .line 67
    goto :goto_0
.end method

.method public static b(Lcom/alibaba/alimei/framework/perf/MonitorPriority;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p0, "priority"    # Lcom/alibaba/alimei/framework/perf/MonitorPriority;
    .param p1, "module"    # Ljava/lang/String;
    .param p2, "monitorPoint"    # Ljava/lang/String;

    .prologue
    .line 97
    invoke-static {}, Lxn;->k()Lxt;

    move-result-object v0

    .line 98
    .local v0, "config":Lxt;
    if-eqz v0, :cond_0

    .line 4104
    iget-object v1, v0, Lxt;->a:Lyk;

    .line 100
    .local v1, "logger":Lyk;
    if-eqz v1, :cond_0

    .line 101
    invoke-interface {v1, p0, p1, p2}, Lyk;->b(Lcom/alibaba/alimei/framework/perf/MonitorPriority;Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    .end local v1    # "logger":Lyk;
    :cond_0
    return-void
.end method

.method public static b(Lcom/alibaba/alimei/framework/perf/MonitorPriority;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p0, "priority"    # Lcom/alibaba/alimei/framework/perf/MonitorPriority;
    .param p1, "module"    # Ljava/lang/String;
    .param p2, "monitorPoint"    # Ljava/lang/String;
    .param p3, "subMonitorPoint"    # Ljava/lang/String;

    .prologue
    .line 146
    invoke-static {}, Lxn;->k()Lxt;

    move-result-object v0

    .line 147
    .local v0, "config":Lxt;
    if-eqz v0, :cond_0

    .line 7104
    iget-object v1, v0, Lxt;->a:Lyk;

    .line 149
    .local v1, "logger":Lyk;
    if-eqz v1, :cond_0

    .line 150
    invoke-interface {v1, p1, p2, p3}, Lyk;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    .end local v1    # "logger":Lyk;
    :cond_0
    return-void
.end method

.method public static c(Lcom/alibaba/alimei/framework/perf/MonitorPriority;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p0, "priority"    # Lcom/alibaba/alimei/framework/perf/MonitorPriority;
    .param p1, "module"    # Ljava/lang/String;
    .param p2, "monitorPoint"    # Ljava/lang/String;

    .prologue
    .line 112
    invoke-static {}, Lxn;->k()Lxt;

    move-result-object v0

    .line 113
    .local v0, "config":Lxt;
    if-eqz v0, :cond_0

    .line 5104
    iget-object v1, v0, Lxt;->a:Lyk;

    .line 115
    .local v1, "logger":Lyk;
    if-eqz v1, :cond_0

    .line 116
    invoke-interface {v1, p0, p1, p2}, Lyk;->c(Lcom/alibaba/alimei/framework/perf/MonitorPriority;Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    .end local v1    # "logger":Lyk;
    :cond_0
    return-void
.end method

.method public static c(Lcom/alibaba/alimei/framework/perf/MonitorPriority;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p0, "priority"    # Lcom/alibaba/alimei/framework/perf/MonitorPriority;
    .param p1, "module"    # Ljava/lang/String;
    .param p2, "monitorPoint"    # Ljava/lang/String;
    .param p3, "arg"    # Ljava/lang/String;

    .prologue
    .line 211
    invoke-static {}, Lxn;->k()Lxt;

    move-result-object v0

    .line 212
    .local v0, "config":Lxt;
    if-eqz v0, :cond_0

    .line 9104
    iget-object v1, v0, Lxt;->a:Lyk;

    .line 214
    .local v1, "logger":Lyk;
    if-eqz v1, :cond_0

    .line 215
    invoke-interface {v1, p1, p2, p3}, Lyk;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 218
    .end local v1    # "logger":Lyk;
    :cond_0
    return-void
.end method
