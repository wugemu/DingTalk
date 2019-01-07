.class public final Lavy;
.super Ljava/lang/Object;
.source "CalendarTraceUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;)Lavx;
    .locals 6
    .param p0, "tag"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 43
    const-string/jumbo v2, "TRACE"

    invoke-static {v2}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/trace/Trace;

    .line 44
    .local v0, "trace":Lcom/alibaba/doraemon/trace/Trace;
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v2

    invoke-virtual {v2}, Lcid;->b()Lchy;

    move-result-object v2

    invoke-virtual {v2}, Lchy;->getCurrentUid()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    .line 45
    .local v1, "uid":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 46
    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    aput-object v1, v2, v5

    const/4 v3, 0x1

    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string/jumbo v4, "calendar"

    aput-object v4, v2, v3

    invoke-static {v2}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-array v3, v5, [Ljava/lang/String;

    invoke-interface {v0, p0, v2, v3}, Lcom/alibaba/doraemon/trace/Trace;->startTrace(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 48
    :cond_0
    new-instance v2, Lavx;

    invoke-direct {v2, v0}, Lavx;-><init>(Lcom/alibaba/doraemon/trace/Trace;)V

    return-object v2
.end method

.method public static a(Lavx;)V
    .locals 1
    .param p0, "trace"    # Lavx;

    .prologue
    .line 52
    if-eqz p0, :cond_0

    .line 1069
    iget-object v0, p0, Lavx;->a:Lcom/alibaba/doraemon/trace/Trace;

    if-eqz v0, :cond_0

    .line 1070
    iget-object v0, p0, Lavx;->a:Lcom/alibaba/doraemon/trace/Trace;

    invoke-interface {v0}, Lcom/alibaba/doraemon/trace/Trace;->endTrace()V

    .line 55
    :cond_0
    return-void
.end method

.method public static varargs a([Ljava/lang/String;)V
    .locals 8
    .param p0, "descriptions"    # [Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 58
    array-length v5, p0

    if-nez v5, :cond_0

    .line 77
    :goto_0
    return-void

    .line 62
    :cond_0
    invoke-static {}, Lcom/alibaba/doraemon/performance/DDStringBuilderProxy;->getDDStringBuilder()Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v2

    .line 63
    .local v2, "stringBuilder":Lcom/alibaba/doraemon/performance/DDStringBuilder;
    array-length v5, p0

    :goto_1
    if-ge v4, v5, :cond_1

    aget-object v1, p0, v4

    .line 64
    .local v1, "str":Ljava/lang/String;
    invoke-virtual {v2, v1}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 63
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 66
    .end local v1    # "str":Ljava/lang/String;
    :cond_1
    invoke-virtual {v2}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 69
    .local v0, "desc":Ljava/lang/String;
    const/4 v3, 0x0

    .line 2039
    .local v3, "trace":Lavx;
    :try_start_0
    const-string/jumbo v4, ""

    invoke-static {v4}, Lavy;->a(Ljava/lang/String;)Lavx;

    move-result-object v3

    .line 72
    if-eqz v3, :cond_3

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 73
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    .line 2043
    invoke-static {v4}, Lavx;->b([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 2044
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 2045
    iget-object v5, v3, Lavx;->a:Lcom/alibaba/doraemon/trace/Trace;

    if-eqz v5, :cond_2

    .line 2046
    iget-object v5, v3, Lavx;->a:Lcom/alibaba/doraemon/trace/Trace;

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    aput-object v4, v6, v7

    invoke-interface {v5, v6}, Lcom/alibaba/doraemon/trace/Trace;->error([Ljava/lang/String;)V

    .line 2049
    :cond_2
    invoke-static {}, Lcom/alibaba/doraemon/Doraemon;->getRunningMode()I

    move-result v5

    sget v6, Lcom/alibaba/doraemon/Doraemon;->MODE_DEBUG:I

    if-ne v5, v6, :cond_3

    .line 2050
    const-string/jumbo v5, "[CalendarTrace]"

    invoke-static {v5, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 76
    :cond_3
    invoke-static {v3}, Lavy;->a(Lavx;)V

    goto :goto_0

    :catchall_0
    move-exception v4

    invoke-static {v3}, Lavy;->a(Lavx;)V

    throw v4
.end method
