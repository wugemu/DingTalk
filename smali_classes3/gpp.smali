.class public final Lgpp;
.super Ljava/lang/Object;
.source "CSpaceTraceUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lgpp$a;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 127
    return-void
.end method

.method public static a()I
    .locals 4

    .prologue
    .line 116
    invoke-static {}, Lchx;->a()Lchx;

    move-result-object v1

    const-string/jumbo v2, "f_cspace_trace_level_info_disable"

    .line 2083
    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lchx;->a(Ljava/lang/String;Z)Z

    move-result v0

    .line 118
    .local v0, "isLevelInfoDisable":Z
    if-eqz v0, :cond_0

    const/16 v1, 0x14

    :goto_0
    return v1

    :cond_0
    const/16 v1, 0xa

    goto :goto_0
.end method

.method public static varargs a(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;[Ljava/lang/Object;)V
    .locals 1
    .param p0, "module"    # Ljava/lang/String;
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "level"    # I
    .param p3, "msg"    # Ljava/lang/String;
    .param p4, "args"    # [Ljava/lang/Object;

    .prologue
    .line 71
    invoke-static {p2}, Lgpp;->a(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 72
    invoke-static {p0, p1, p3, p4}, Lgpp;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 74
    :cond_0
    return-void
.end method

.method private static varargs a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 7
    .param p0, "module"    # Ljava/lang/String;
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "msg"    # Ljava/lang/String;
    .param p3, "args"    # [Ljava/lang/Object;

    .prologue
    .line 77
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 78
    const/4 v2, 0x0

    .line 1096
    .local v2, "trace":Lcom/alibaba/doraemon/trace/Trace;
    :try_start_0
    const-string/jumbo v4, "TRACE"

    invoke-static {v4}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alibaba/doraemon/trace/Trace;

    .line 1097
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v4

    invoke-virtual {v4}, Lcid;->b()Lchy;

    move-result-object v4

    invoke-virtual {v4}, Lchy;->getCurrentUid()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    .line 1098
    if-eqz v3, :cond_0

    .line 1099
    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v4, v5, v6

    const/4 v4, 0x1

    sget-object v6, Ljava/io/File;->separator:Ljava/lang/String;

    aput-object v6, v5, v4

    const/4 v4, 0x2

    aput-object p0, v5, v4

    invoke-static {v5}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/String;

    invoke-interface {v3, p1, v4, v5}, Lcom/alibaba/doraemon/trace/Trace;->startTrace(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 81
    .end local v2    # "trace":Lcom/alibaba/doraemon/trace/Trace;
    .local v3, "trace":Lcom/alibaba/doraemon/trace/Trace;
    :cond_0
    if-eqz v3, :cond_1

    :try_start_1
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 82
    if-eqz p3, :cond_3

    invoke-static {p2, p3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 83
    .local v1, "format":Ljava/lang/String;
    :goto_0
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v1, v4, v5

    invoke-interface {v3, v4}, Lcom/alibaba/doraemon/trace/Trace;->error([Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 88
    .end local v1    # "format":Ljava/lang/String;
    :cond_1
    if-eqz v3, :cond_2

    .line 89
    invoke-interface {v3}, Lcom/alibaba/doraemon/trace/Trace;->endTrace()V

    .line 93
    .end local v3    # "trace":Lcom/alibaba/doraemon/trace/Trace;
    :cond_2
    :goto_1
    return-void

    .restart local v3    # "trace":Lcom/alibaba/doraemon/trace/Trace;
    :cond_3
    move-object v1, p2

    .line 82
    goto :goto_0

    .line 85
    .end local v3    # "trace":Lcom/alibaba/doraemon/trace/Trace;
    .restart local v2    # "trace":Lcom/alibaba/doraemon/trace/Trace;
    :catch_0
    move-exception v0

    .line 86
    .local v0, "e":Ljava/lang/Exception;
    :goto_2
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 88
    if-eqz v2, :cond_2

    .line 89
    invoke-interface {v2}, Lcom/alibaba/doraemon/trace/Trace;->endTrace()V

    goto :goto_1

    .line 88
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v4

    :goto_3
    if-eqz v2, :cond_4

    .line 89
    invoke-interface {v2}, Lcom/alibaba/doraemon/trace/Trace;->endTrace()V

    :cond_4
    throw v4

    .line 88
    .end local v2    # "trace":Lcom/alibaba/doraemon/trace/Trace;
    .restart local v3    # "trace":Lcom/alibaba/doraemon/trace/Trace;
    :catchall_1
    move-exception v4

    move-object v2, v3

    .end local v3    # "trace":Lcom/alibaba/doraemon/trace/Trace;
    .restart local v2    # "trace":Lcom/alibaba/doraemon/trace/Trace;
    goto :goto_3

    .line 85
    .end local v2    # "trace":Lcom/alibaba/doraemon/trace/Trace;
    .restart local v3    # "trace":Lcom/alibaba/doraemon/trace/Trace;
    :catch_1
    move-exception v0

    move-object v2, v3

    .end local v3    # "trace":Lcom/alibaba/doraemon/trace/Trace;
    .restart local v2    # "trace":Lcom/alibaba/doraemon/trace/Trace;
    goto :goto_2
.end method

.method public static varargs a(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2
    .param p0, "msg"    # Ljava/lang/String;
    .param p1, "args"    # [Ljava/lang/Object;

    .prologue
    .line 37
    const-string/jumbo v0, "cspace_edit"

    const-string/jumbo v1, "cspace_edit"

    invoke-static {v0, v1, p0, p1}, Lgpp;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 38
    return-void
.end method

.method public static a(I)Z
    .locals 1
    .param p0, "levelInfo"    # I

    .prologue
    .line 112
    invoke-static {}, Lgpp;->a()I

    move-result v0

    if-lt p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static varargs b(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2
    .param p0, "msg"    # Ljava/lang/String;
    .param p1, "args"    # [Ljava/lang/Object;

    .prologue
    .line 41
    const-string/jumbo v0, "sync_drive"

    const-string/jumbo v1, "sync_drive"

    invoke-static {v0, v1, p0, p1}, Lgpp;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 42
    return-void
.end method
