.class public final Lhmv;
.super Ljava/lang/Object;
.source "MiniLogger.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static varargs a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 7
    .param p0, "module"    # Ljava/lang/String;
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "msgs"    # [Ljava/lang/Object;

    .prologue
    const/4 v4, 0x0

    .line 115
    :try_start_0
    invoke-static {}, Lcom/alibaba/doraemon/performance/DDStringBuilderProxy;->getDDStringBuilder()Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v2

    .line 116
    .local v2, "sb":Lcom/alibaba/doraemon/performance/DDStringBuilder;
    const-string/jumbo v5, "tag="

    invoke-virtual {v2, v5}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 117
    invoke-virtual {v2, p1}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 118
    const-string/jumbo v5, " "

    invoke-virtual {v2, v5}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 119
    array-length v5, p2

    :goto_0
    if-ge v4, v5, :cond_0

    aget-object v0, p2, v4

    .line 120
    .local v0, "msg":Ljava/lang/Object;
    invoke-virtual {v2, v0}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/Object;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 121
    const-string/jumbo v6, " "

    invoke-virtual {v2, v6}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 119
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 123
    .end local v0    # "msg":Ljava/lang/Object;
    :cond_0
    invoke-virtual {v2}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 124
    .local v1, "s":Ljava/lang/String;
    invoke-static {p0, p1, v1}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string/jumbo v6, "module="

    aput-object v6, v4, v5

    const/4 v5, 0x1

    aput-object p0, v4, v5

    const/4 v5, 0x2

    const-string/jumbo v6, ", "

    aput-object v6, v4, v5

    const/4 v5, 0x3

    aput-object v1, v4, v5

    invoke-static {v4}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 131
    .end local v1    # "s":Ljava/lang/String;
    .end local v2    # "sb":Lcom/alibaba/doraemon/performance/DDStringBuilder;
    :goto_1
    return-void

    .line 128
    :catch_0
    move-exception v3

    .line 129
    .local v3, "t":Ljava/lang/Throwable;
    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1
.end method

.method public static a(Ljava/lang/String;Ljava/util/Map;)V
    .locals 3
    .param p0, "errDesc"    # Ljava/lang/String;
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

    .prologue
    .line 139
    .local p1, "extraMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {}, Lcom/alibaba/doraemon/Doraemon;->getRunningMode()I

    move-result v1

    sget v2, Lcom/alibaba/doraemon/Doraemon;->MODE_DEBUG:I

    if-eq v1, v2, :cond_0

    .line 140
    new-instance v0, Lhzu;

    invoke-direct {v0}, Lhzu;-><init>()V

    .line 141
    .local v0, "wkAlarm":Lhzu;
    const-string/jumbo v1, "MINI"

    iput-object v1, v0, Lhzu;->a:Ljava/lang/String;

    .line 142
    const/16 v1, 0x836

    iput v1, v0, Lhzu;->c:I

    .line 143
    iput-object p0, v0, Lhzu;->d:Ljava/lang/String;

    .line 144
    iput-object p1, v0, Lhzu;->b:Ljava/util/Map;

    .line 145
    const-class v1, Lhzr;

    invoke-static {v1}, Lcom/alibaba/wukong/im/IMEngine;->getIMService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lhzr;

    invoke-virtual {v1, v0}, Lhzr;->a(Lhzu;)V

    .line 147
    .end local v0    # "wkAlarm":Lhzu;
    :cond_0
    return-void
.end method

.method public static varargs a(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msgs"    # [Ljava/lang/Object;

    .prologue
    .line 71
    const-string/jumbo v0, "mini_app"

    invoke-static {v0, p0, p1}, Lhmv;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 73
    return-void
.end method

.method public static varargs b(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msgs"    # [Ljava/lang/Object;

    .prologue
    .line 82
    const-string/jumbo v0, "mini_task"

    invoke-static {v0, p0, p1}, Lhmv;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 84
    return-void
.end method

.method public static varargs c(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msgs"    # [Ljava/lang/Object;

    .prologue
    .line 93
    const-string/jumbo v0, "mini_data"

    invoke-static {v0, p0, p1}, Lhmv;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 94
    return-void
.end method

.method public static varargs d(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msgs"    # [Ljava/lang/Object;

    .prologue
    .line 98
    const-string/jumbo v0, "mini_api"

    invoke-static {v0, p0, p1}, Lhmv;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 99
    return-void
.end method

.method public static varargs e(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msgs"    # [Ljava/lang/Object;

    .prologue
    .line 103
    const-string/jumbo v0, "mini_debug"

    invoke-static {v0, p0, p1}, Lhmv;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 105
    return-void
.end method
