.class public final Lcpv;
.super Ljava/lang/Object;
.source "TraceUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcpv$a;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    return-void
.end method

.method public static a(Ljava/lang/String;)Lcom/alibaba/doraemon/trace/Trace;
    .locals 6
    .param p0, "tag"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 61
    const-string/jumbo v2, "TRACE"

    invoke-static {v2}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/trace/Trace;

    .line 62
    .local v0, "trace":Lcom/alibaba/doraemon/trace/Trace;
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v2

    invoke-virtual {v2}, Lcid;->b()Lchy;

    move-result-object v2

    invoke-virtual {v2}, Lchy;->getCurrentUid()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    .line 64
    .local v1, "uid":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 65
    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    aput-object v1, v2, v5

    const/4 v3, 0x1

    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string/jumbo v4, "default"

    aput-object v4, v2, v3

    invoke-static {v2}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-array v3, v5, [Ljava/lang/String;

    invoke-interface {v0, p0, v2, v3}, Lcom/alibaba/doraemon/trace/Trace;->startTrace(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 68
    :cond_0
    return-object v0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/doraemon/trace/Trace;
    .locals 7
    .param p0, "module"    # Ljava/lang/String;
    .param p1, "tag"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    .line 78
    const-string/jumbo v3, "TRACE"

    invoke-static {v3}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/doraemon/trace/Trace;

    .line 81
    .local v1, "trace":Lcom/alibaba/doraemon/trace/Trace;
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v3

    invoke-virtual {v3}, Lcid;->b()Lchy;

    move-result-object v0

    .line 83
    .local v0, "ddContext":Lchy;
    const-string/jumbo v2, "0"

    .line 84
    .local v2, "uid":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 85
    invoke-virtual {v0}, Lchy;->getCurrentUid()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    .line 88
    :cond_0
    if-eqz v1, :cond_1

    .line 89
    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/String;

    aput-object v2, v3, v6

    const/4 v4, 0x1

    sget-object v5, Ljava/io/File;->separator:Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x2

    aput-object p0, v3, v4

    invoke-static {v3}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    new-array v4, v6, [Ljava/lang/String;

    invoke-interface {v1, p1, v3, v4}, Lcom/alibaba/doraemon/trace/Trace;->startTrace(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 92
    :cond_1
    return-object v1
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p0, "module"    # Ljava/lang/String;
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "description"    # Ljava/lang/String;

    .prologue
    .line 125
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 154
    :cond_0
    :goto_0
    return-void

    .line 128
    :cond_1
    const/4 v0, 0x0

    .line 130
    .local v0, "trace":Lcom/alibaba/doraemon/trace/Trace;
    :try_start_0
    invoke-static {p0, p1}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/doraemon/trace/Trace;

    move-result-object v0

    .line 131
    if-eqz v0, :cond_2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 132
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/trace/Trace;->error([Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 135
    :cond_2
    if-eqz v0, :cond_3

    .line 136
    invoke-interface {v0}, Lcom/alibaba/doraemon/trace/Trace;->endTrace()V

    .line 141
    :cond_3
    invoke-static {}, Lcpv;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 143
    const/4 v0, 0x0

    .line 144
    :try_start_1
    invoke-static {p0, p1}, Lcpv;->c(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/doraemon/trace/Trace;

    move-result-object v0

    .line 145
    if-eqz v0, :cond_4

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 146
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/trace/Trace;->error([Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 149
    :cond_4
    if-eqz v0, :cond_0

    .line 150
    invoke-interface {v0}, Lcom/alibaba/doraemon/trace/Trace;->endTrace()V

    goto :goto_0

    .line 135
    :catchall_0
    move-exception v1

    if-eqz v0, :cond_5

    .line 136
    invoke-interface {v0}, Lcom/alibaba/doraemon/trace/Trace;->endTrace()V

    :cond_5
    throw v1

    .line 149
    :catchall_1
    move-exception v1

    if-eqz v0, :cond_6

    .line 150
    invoke-interface {v0}, Lcom/alibaba/doraemon/trace/Trace;->endTrace()V

    :cond_6
    throw v1
.end method

.method private static a()Z
    .locals 3

    .prologue
    .line 50
    invoke-static {}, Lcmk;->a()Lcmk;

    move-result-object v1

    const-class v2, Lcpv$a;

    invoke-virtual {v1, v2}, Lcmk;->a(Ljava/lang/Class;)Lcmj;

    move-result-object v0

    check-cast v0, Lcpv$a;

    .line 51
    .local v0, "traceState":Lcpv$a;
    if-eqz v0, :cond_0

    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method public static b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "description"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 163
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 191
    :cond_0
    :goto_0
    return-void

    .line 166
    :cond_1
    const/4 v0, 0x0

    .line 168
    .local v0, "trace":Lcom/alibaba/doraemon/trace/Trace;
    :try_start_0
    invoke-static {p0, p0}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/doraemon/trace/Trace;

    move-result-object v0

    .line 169
    if-eqz v0, :cond_2

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 170
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/trace/Trace;->error([Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 173
    :cond_2
    if-eqz v0, :cond_3

    .line 174
    invoke-interface {v0}, Lcom/alibaba/doraemon/trace/Trace;->endTrace()V

    .line 178
    :cond_3
    invoke-static {}, Lcpv;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 180
    const/4 v0, 0x0

    .line 181
    :try_start_1
    invoke-static {p0, p0}, Lcpv;->c(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/doraemon/trace/Trace;

    move-result-object v0

    .line 182
    if-eqz v0, :cond_4

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 183
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/trace/Trace;->error([Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 186
    :cond_4
    if-eqz v0, :cond_0

    .line 187
    invoke-interface {v0}, Lcom/alibaba/doraemon/trace/Trace;->endTrace()V

    goto :goto_0

    .line 173
    :catchall_0
    move-exception v1

    if-eqz v0, :cond_5

    .line 174
    invoke-interface {v0}, Lcom/alibaba/doraemon/trace/Trace;->endTrace()V

    :cond_5
    throw v1

    .line 186
    :catchall_1
    move-exception v1

    if-eqz v0, :cond_6

    .line 187
    invoke-interface {v0}, Lcom/alibaba/doraemon/trace/Trace;->endTrace()V

    :cond_6
    throw v1
.end method

.method private static c(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/doraemon/trace/Trace;
    .locals 7
    .param p0, "module"    # Ljava/lang/String;
    .param p1, "tag"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    .line 96
    invoke-static {}, Lcpv;->a()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 98
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v3

    invoke-virtual {v3}, Lcid;->b()Lchy;

    move-result-object v0

    .line 101
    .local v0, "ddContext":Lchy;
    const-string/jumbo v2, "0"

    .line 102
    .local v2, "uid":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 103
    invoke-virtual {v0}, Lchy;->getCurrentUid()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    .line 105
    :cond_0
    const-string/jumbo v3, "TRACE2"

    invoke-static {v3}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/doraemon/trace/Trace;

    .line 106
    .local v1, "trace2":Lcom/alibaba/doraemon/trace/Trace;
    if-eqz v1, :cond_1

    .line 107
    if-eqz p0, :cond_2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "_new_trace"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 108
    :goto_0
    if-eqz p1, :cond_3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "_new_trace"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 109
    :goto_1
    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/String;

    aput-object v2, v3, v6

    const/4 v4, 0x1

    sget-object v5, Ljava/io/File;->separator:Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x2

    aput-object p0, v3, v4

    invoke-static {v3}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    new-array v4, v6, [Ljava/lang/String;

    invoke-interface {v1, p1, v3, v4}, Lcom/alibaba/doraemon/trace/Trace;->startTrace(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 114
    .end local v0    # "ddContext":Lchy;
    .end local v1    # "trace2":Lcom/alibaba/doraemon/trace/Trace;
    .end local v2    # "uid":Ljava/lang/String;
    :cond_1
    :goto_2
    return-object v1

    .line 107
    .restart local v0    # "ddContext":Lchy;
    .restart local v1    # "trace2":Lcom/alibaba/doraemon/trace/Trace;
    .restart local v2    # "uid":Ljava/lang/String;
    :cond_2
    const-string/jumbo p0, "new_trace"

    goto :goto_0

    .line 108
    :cond_3
    const-string/jumbo p1, "new_trace"

    goto :goto_1

    .line 114
    .end local v0    # "ddContext":Lchy;
    .end local v1    # "trace2":Lcom/alibaba/doraemon/trace/Trace;
    .end local v2    # "uid":Ljava/lang/String;
    :cond_4
    const/4 v1, 0x0

    goto :goto_2
.end method
