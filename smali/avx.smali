.class public final Lavx;
.super Ljava/lang/Object;
.source "CalendarTrace.java"


# instance fields
.field a:Lcom/alibaba/doraemon/trace/Trace;


# direct methods
.method constructor <init>(Lcom/alibaba/doraemon/trace/Trace;)V
    .locals 0
    .param p1, "trace"    # Lcom/alibaba/doraemon/trace/Trace;

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lavx;->a:Lcom/alibaba/doraemon/trace/Trace;

    .line 25
    return-void
.end method

.method static b([Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "msg"    # [Ljava/lang/String;

    .prologue
    .line 57
    if-eqz p0, :cond_0

    array-length v2, p0

    if-nez v2, :cond_1

    .line 58
    :cond_0
    const-string/jumbo v2, ""

    .line 65
    :goto_0
    return-object v2

    .line 61
    :cond_1
    invoke-static {}, Lcom/alibaba/doraemon/performance/DDStringBuilderProxy;->getDDStringBuilder()Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v1

    .line 62
    .local v1, "stringBuilder":Lcom/alibaba/doraemon/performance/DDStringBuilder;
    array-length v3, p0

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v3, :cond_2

    aget-object v0, p0, v2

    .line 63
    .local v0, "str":Ljava/lang/String;
    invoke-virtual {v1, v0}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 62
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 65
    .end local v0    # "str":Ljava/lang/String;
    :cond_2
    invoke-virtual {v1}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method


# virtual methods
.method public final varargs a([Ljava/lang/String;)V
    .locals 4
    .param p1, "msg"    # [Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 29
    invoke-static {p1}, Lavx;->b([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 30
    .local v0, "desc":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 31
    iget-object v1, p0, Lavx;->a:Lcom/alibaba/doraemon/trace/Trace;

    if-eqz v1, :cond_0

    .line 32
    iget-object v1, p0, Lavx;->a:Lcom/alibaba/doraemon/trace/Trace;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-interface {v1, v2}, Lcom/alibaba/doraemon/trace/Trace;->info([Ljava/lang/String;)V

    .line 35
    :cond_0
    invoke-static {}, Lcom/alibaba/doraemon/Doraemon;->getRunningMode()I

    move-result v1

    sget v2, Lcom/alibaba/doraemon/Doraemon;->MODE_DEBUG:I

    if-ne v1, v2, :cond_1

    .line 36
    const-string/jumbo v1, "[CalendarTrace]"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    :cond_1
    return-void
.end method
