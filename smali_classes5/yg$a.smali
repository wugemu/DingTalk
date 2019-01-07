.class final Lyg$a;
.super Ljava/util/TimerTask;
.source "ThreadMoniter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lyg;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field a:J

.field private b:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Ljava/lang/Thread;",
            ">;"
        }
    .end annotation
.end field

.field private c:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lyg;",
            ">;"
        }
    .end annotation
.end field

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lyg;Ljava/lang/Thread;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "mointer"    # Lyg;
    .param p2, "thread"    # Ljava/lang/Thread;
    .param p3, "key"    # Ljava/lang/String;
    .param p4, "monitorName"    # Ljava/lang/String;

    .prologue
    .line 115
    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    .line 116
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lyg$a;->b:Ljava/lang/ref/WeakReference;

    .line 117
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lyg$a;->c:Ljava/lang/ref/WeakReference;

    .line 118
    iput-object p3, p0, Lyg$a;->d:Ljava/lang/String;

    .line 119
    iput-object p4, p0, Lyg$a;->e:Ljava/lang/String;

    .line 120
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 15

    invoke-static {}, Lcom/pnf/dex2jar5;->a()Z

    move-result v14

    invoke-static {v14}, Lcom/pnf/dex2jar5;->b(I)V

    .prologue
    const/4 v14, 0x3

    const/4 v13, 0x2

    const/4 v12, 0x1

    const/4 v8, 0x0

    .line 128
    iget-object v9, p0, Lyg$a;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v9}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Thread;

    .line 129
    .local v6, "thread":Ljava/lang/Thread;
    if-nez v6, :cond_0

    .line 130
    const-string/jumbo v8, "ThreadMoniter"

    const-string/jumbo v9, "thread is null"

    invoke-static {v8, v9}, Lyx;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    :goto_0
    return-void

    .line 134
    :cond_0
    iget-object v9, p0, Lyg$a;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {v9}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lyg;

    .line 135
    .local v7, "threadMointer":Lyg;
    if-nez v7, :cond_1

    .line 136
    const-string/jumbo v8, "ThreadMoniter"

    const-string/jumbo v9, "threadMointer is null"

    invoke-static {v8, v9}, Lyx;->a(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 140
    :cond_1
    invoke-static {v7}, Lyg;->a(Lyg;)Ljava/util/Map;

    move-result-object v9

    invoke-interface {v9, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 141
    .local v2, "key":Ljava/lang/String;
    iget-object v9, p0, Lyg$a;->d:Ljava/lang/String;

    invoke-static {v2, v9}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_2

    .line 142
    const-string/jumbo v9, "ThreadMoniter"

    const/4 v10, 0x4

    new-array v10, v10, [Ljava/lang/String;

    const-string/jumbo v11, "task is not origin task, key: "

    aput-object v11, v10, v8

    aput-object v2, v10, v12

    const-string/jumbo v8, ", threadKey: "

    aput-object v8, v10, v13

    iget-object v8, p0, Lyg$a;->d:Ljava/lang/String;

    aput-object v8, v10, v14

    invoke-static {v10}, Lzc;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v9, v8}, Lyx;->a(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 146
    :cond_2
    invoke-virtual {v6}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v5

    .line 147
    .local v5, "stackArray":[Ljava/lang/StackTraceElement;
    if-eqz v5, :cond_5

    array-length v9, v5

    if-lez v9, :cond_5

    .line 148
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 149
    .local v4, "sb":Ljava/lang/StringBuilder;
    new-array v9, v14, [Ljava/lang/String;

    const-string/jumbo v10, "current thread execute timeout: "

    aput-object v10, v9, v8

    iget-wide v10, p0, Lyg$a;->a:J

    invoke-static {v10, v11}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v9, v12

    const-string/jumbo v10, ", stack\n"

    aput-object v10, v9, v13

    invoke-static {v9}, Lzc;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 150
    array-length v9, v5

    :goto_1
    if-ge v8, v9, :cond_4

    aget-object v1, v5, v8

    .line 151
    .local v1, "element":Ljava/lang/StackTraceElement;
    if-eqz v1, :cond_3

    .line 154
    invoke-virtual {v1}, Ljava/lang/StackTraceElement;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "\n"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 150
    :cond_3
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 157
    .end local v1    # "element":Ljava/lang/StackTraceElement;
    :cond_4
    const-string/jumbo v8, "task_excute_time_limit"

    const-string/jumbo v9, "1"

    .line 158
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    .line 157
    invoke-static {v8, v9, v10, v11}, Lyo;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 162
    .local v0, "dimenMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v8, "Task"

    iget-object v9, p0, Lyg$a;->e:Ljava/lang/String;

    invoke-virtual {v0, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 163
    const-string/jumbo v8, "callStack"

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 164
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 165
    .local v3, "measureMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Double;>;"
    const-string/jumbo v8, "timeoutCnt"

    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    invoke-static {v10, v11}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v9

    invoke-virtual {v3, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 166
    sget-object v8, Lcom/alibaba/alimei/framework/perf/MonitorPriority;->High:Lcom/alibaba/alimei/framework/perf/MonitorPriority;

    const-string/jumbo v9, "CMail"

    const-string/jumbo v10, "task_excute_time_limit"

    invoke-static {v8, v9, v10, v0, v3}, Lyn;->a(Lcom/alibaba/alimei/framework/perf/MonitorPriority;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)V

    .line 169
    const-string/jumbo v8, "ThreadMoniter"

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lyx;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    .end local v0    # "dimenMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v3    # "measureMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Double;>;"
    .end local v4    # "sb":Ljava/lang/StringBuilder;
    :goto_2
    invoke-virtual {v7}, Lyg;->a()V

    goto/16 :goto_0

    .line 171
    :cond_5
    const-string/jumbo v8, "ThreadMoniter"

    const-string/jumbo v9, "getStackTrace fail for stackArray is null"

    invoke-static {v8, v9}, Lyx;->a(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method
