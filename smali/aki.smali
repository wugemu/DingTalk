.class public final Laki;
.super Lakf;
.source "UTSampleConfBiz.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Laki$a;,
        Laki$b;
    }
.end annotation


# static fields
.field private static b:Laki;


# instance fields
.field private a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Laki$a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    const/4 v0, 0x0

    sput-object v0, Laki;->b:Laki;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 30
    invoke-direct {p0}, Lakf;-><init>()V

    .line 19
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Laki;->a:Ljava/util/Map;

    .line 32
    return-void
.end method

.method public static a()Laki;
    .locals 1

    .prologue
    .line 24
    sget-object v0, Laki;->b:Laki;

    if-nez v0, :cond_0

    .line 25
    new-instance v0, Laki;

    invoke-direct {v0}, Laki;-><init>()V

    sput-object v0, Laki;->b:Laki;

    .line 27
    :cond_0
    sget-object v0, Laki;->b:Laki;

    return-object v0
.end method

.method private b(ILjava/lang/String;)Laki$b;
    .locals 5
    .param p1, "aEventID"    # I
    .param p2, "aArg1"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    const/4 v4, 0x0

    .line 114
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 115
    .local v0, "lEventIDStr":Ljava/lang/String;
    new-instance v2, Laki$b;

    invoke-direct {v2, v4}, Laki$b;-><init>(B)V

    .line 116
    .local v2, "lResult":Laki$b;
    iget-object v3, p0, Laki;->a:Ljava/util/Map;

    invoke-interface {v3, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 117
    iget-object v3, p0, Laki;->a:Ljava/util/Map;

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laki$a;

    .line 6165
    .local v1, "lItem":Laki$a;
    const/4 v3, 0x1

    iput-boolean v3, v2, Laki$b;->b:Z

    .line 6185
    invoke-virtual {v1, p2}, Laki$a;->a(Ljava/lang/String;)Z

    move-result v3

    .line 7157
    iput-boolean v3, v2, Laki$b;->a:Z

    .line 123
    .end local v1    # "lItem":Laki$a;
    :goto_0
    return-object v2

    .line 8157
    :cond_0
    iput-boolean v4, v2, Laki$b;->a:Z

    goto :goto_0
.end method


# virtual methods
.method public final declared-synchronized a(Ljava/lang/String;Ljava/util/Map;)V
    .locals 5
    .param p1, "aGroupname"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 133
    .local p2, "aConfContent":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    monitor-enter p0

    :try_start_0
    iget-object v4, p0, Laki;->a:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->clear()V

    .line 134
    invoke-interface {p2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 135
    .local v1, "lKeys":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 136
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 137
    .local v0, "lKey":Ljava/lang/String;
    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 138
    .local v3, "lValue":Ljava/lang/String;
    if-eqz v3, :cond_0

    .line 139
    invoke-static {v3}, Laki$a;->b(Ljava/lang/String;)Laki$a;

    move-result-object v2

    .line 140
    .local v2, "lUTSampleItem":Laki$a;
    if-eqz v2, :cond_0

    .line 141
    iget-object v4, p0, Laki;->a:Ljava/util/Map;

    invoke-interface {v4, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 133
    .end local v0    # "lKey":Ljava/lang/String;
    .end local v1    # "lKeys":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v2    # "lUTSampleItem":Laki$a;
    .end local v3    # "lValue":Ljava/lang/String;
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4

    .line 145
    .restart local v1    # "lKeys":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_1
    monitor-exit p0

    return-void
.end method

.method public final declared-synchronized a(ILjava/lang/String;)Z
    .locals 4
    .param p1, "eventId"    # I
    .param p2, "arg1"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 56
    monitor-enter p0

    :try_start_0
    invoke-static {}, Lajw;->a()Lajw;

    move-result-object v3

    invoke-virtual {v3}, Lajw;->g()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_1

    .line 109
    :cond_0
    :goto_0
    monitor-exit p0

    return v1

    .line 60
    :cond_1
    :try_start_1
    iget-object v3, p0, Laki;->a:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v3

    if-eqz v3, :cond_0

    .line 64
    invoke-direct {p0, p1, p2}, Laki;->b(ILjava/lang/String;)Laki$b;

    move-result-object v0

    .line 1161
    .local v0, "lResult":Laki$b;
    iget-boolean v3, v0, Laki$b;->a:Z

    .line 65
    if-nez v3, :cond_0

    .line 1169
    iget-boolean v3, v0, Laki$b;->b:Z

    .line 68
    if-eqz v3, :cond_2

    move v1, v2

    .line 69
    goto :goto_0

    .line 73
    :cond_2
    rem-int/lit8 v3, p1, 0xa

    sub-int v3, p1, v3

    invoke-direct {p0, v3, p2}, Laki;->b(ILjava/lang/String;)Laki$b;

    move-result-object v0

    .line 2161
    iget-boolean v3, v0, Laki$b;->a:Z

    .line 74
    if-nez v3, :cond_0

    .line 2169
    iget-boolean v3, v0, Laki$b;->b:Z

    .line 77
    if-eqz v3, :cond_3

    move v1, v2

    .line 78
    goto :goto_0

    .line 82
    :cond_3
    rem-int/lit8 v3, p1, 0x64

    sub-int v3, p1, v3

    invoke-direct {p0, v3, p2}, Laki;->b(ILjava/lang/String;)Laki$b;

    move-result-object v0

    .line 3161
    iget-boolean v3, v0, Laki$b;->a:Z

    .line 83
    if-nez v3, :cond_0

    .line 3169
    iget-boolean v3, v0, Laki$b;->b:Z

    .line 86
    if-eqz v3, :cond_4

    move v1, v2

    .line 87
    goto :goto_0

    .line 91
    :cond_4
    rem-int/lit16 v3, p1, 0x3e8

    sub-int v3, p1, v3

    invoke-direct {p0, v3, p2}, Laki;->b(ILjava/lang/String;)Laki$b;

    move-result-object v0

    .line 4161
    iget-boolean v3, v0, Laki$b;->a:Z

    .line 92
    if-nez v3, :cond_0

    .line 4169
    iget-boolean v3, v0, Laki$b;->b:Z

    .line 95
    if-eqz v3, :cond_5

    move v1, v2

    .line 96
    goto :goto_0

    .line 100
    :cond_5
    const/4 v3, -0x1

    invoke-direct {p0, v3, p2}, Laki;->b(ILjava/lang/String;)Laki$b;

    move-result-object v0

    .line 5161
    iget-boolean v3, v0, Laki$b;->a:Z

    .line 101
    if-nez v3, :cond_0

    .line 5169
    iget-boolean v1, v0, Laki$b;->b:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 104
    if-eqz v1, :cond_6

    move v1, v2

    .line 105
    goto :goto_0

    :cond_6
    move v1, v2

    .line 109
    goto :goto_0

    .line 56
    .end local v0    # "lResult":Laki$b;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public final declared-synchronized a(Ljava/util/Map;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .local p1, "aLogMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v4, 0x0

    .line 46
    monitor-enter p0

    :try_start_0
    sget-object v3, Lcom/alibaba/analytics/core/model/LogField;->EVENTID:Lcom/alibaba/analytics/core/model/LogField;

    invoke-virtual {v3}, Lcom/alibaba/analytics/core/model/LogField;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 47
    .local v2, "eventId":I
    sget-object v3, Lcom/alibaba/analytics/core/model/LogField;->ARG1:Lcom/alibaba/analytics/core/model/LogField;

    invoke-virtual {v3}, Lcom/alibaba/analytics/core/model/LogField;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 48
    .local v0, "arg1":Ljava/lang/String;
    invoke-virtual {p0, v2, v0}, Laki;->a(ILjava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    .line 51
    .end local v0    # "arg1":Ljava/lang/String;
    .end local v2    # "eventId":I
    :goto_0
    monitor-exit p0

    return v3

    .line 49
    :catch_0
    move-exception v1

    .line 50
    .local v1, "e":Ljava/lang/Exception;
    :try_start_1
    const-string/jumbo v3, "UTSampleConfBiz"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v3, v1, v5}, Lamu;->b(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v3, v4

    .line 51
    goto :goto_0

    .line 46
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method public final b()[Ljava/lang/String;
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 149
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "ut_sample"

    aput-object v2, v0, v1

    return-object v0
.end method
