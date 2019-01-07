.class public final Lbkd;
.super Ljava/lang/Object;
.source "DingTraceUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;)Lbkc;
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

    const-string/jumbo v4, "ding"

    aput-object v4, v2, v3

    invoke-static {v2}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-array v3, v5, [Ljava/lang/String;

    invoke-interface {v0, p0, v2, v3}, Lcom/alibaba/doraemon/trace/Trace;->startTrace(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 48
    :cond_0
    new-instance v2, Lbkc;

    invoke-direct {v2, v0}, Lbkc;-><init>(Lcom/alibaba/doraemon/trace/Trace;)V

    return-object v2
.end method

.method public static a(Lbkc;)V
    .locals 1
    .param p0, "trace"    # Lbkc;

    .prologue
    .line 52
    if-eqz p0, :cond_0

    .line 1067
    iget-object v0, p0, Lbkc;->a:Lcom/alibaba/doraemon/trace/Trace;

    if-eqz v0, :cond_0

    .line 1068
    iget-object v0, p0, Lbkc;->a:Lcom/alibaba/doraemon/trace/Trace;

    invoke-interface {v0}, Lcom/alibaba/doraemon/trace/Trace;->endTrace()V

    .line 55
    :cond_0
    return-void
.end method

.method public static varargs a([Ljava/lang/String;)V
    .locals 9
    .param p0, "descriptions"    # [Ljava/lang/String;

    .prologue
    .line 62
    invoke-static {}, Lcom/alibaba/doraemon/performance/DDStringBuilderProxy;->getDDStringBuilder()Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v3

    .line 63
    .local v3, "stringBuilder":Lcom/alibaba/doraemon/performance/DDStringBuilder;
    array-length v2, p0

    .line 64
    .local v2, "paramNum":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 65
    aget-object v5, p0, v1

    invoke-virtual {v3, v5}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 64
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 67
    :cond_0
    invoke-virtual {v3}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 69
    .local v0, "desc":Ljava/lang/String;
    const/4 v4, 0x0

    .line 2039
    .local v4, "trace":Lbkc;
    :try_start_0
    const-string/jumbo v5, ""

    invoke-static {v5}, Lbkd;->a(Ljava/lang/String;)Lbkc;

    move-result-object v4

    .line 72
    if-eqz v4, :cond_2

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 73
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v0, v5, v6

    .line 2041
    invoke-static {v5}, Lbkc;->b([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 2042
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 2043
    iget-object v6, v4, Lbkc;->a:Lcom/alibaba/doraemon/trace/Trace;

    if-eqz v6, :cond_1

    .line 2044
    iget-object v6, v4, Lbkc;->a:Lcom/alibaba/doraemon/trace/Trace;

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    aput-object v5, v7, v8

    invoke-interface {v6, v7}, Lcom/alibaba/doraemon/trace/Trace;->error([Ljava/lang/String;)V

    .line 2047
    :cond_1
    invoke-static {}, Lcom/alibaba/doraemon/Doraemon;->getRunningMode()I

    move-result v6

    sget v7, Lcom/alibaba/doraemon/Doraemon;->MODE_RELEASE:I

    if-eq v6, v7, :cond_2

    .line 2048
    const-string/jumbo v6, "[ding]"

    invoke-static {v6, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 76
    :cond_2
    invoke-static {v4}, Lbkd;->a(Lbkc;)V

    .line 77
    return-void

    .line 76
    :catchall_0
    move-exception v5

    invoke-static {v4}, Lbkd;->a(Lbkc;)V

    throw v5
.end method
