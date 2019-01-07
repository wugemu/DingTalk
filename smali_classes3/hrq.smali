.class public final Lhrq;
.super Ljava/lang/Object;
.source "RTLog.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static varargs a([Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p0, "params"    # [Ljava/lang/String;

    .prologue
    .line 20
    invoke-static {}, Lcom/alibaba/doraemon/performance/DDStringBuilderProxy;->getDDStringBuilder()Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v1

    .line 21
    .local v1, "sb":Lcom/alibaba/doraemon/performance/DDStringBuilder;
    if-eqz p0, :cond_0

    .line 22
    array-length v3, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v0, p0, v2

    .line 23
    .local v0, "param":Ljava/lang/String;
    invoke-virtual {v1, v0}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v4

    const-string/jumbo v5, " "

    invoke-virtual {v4, v5}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 22
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 27
    .end local v0    # "param":Ljava/lang/String;
    :cond_0
    invoke-virtual {v1}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static varargs a(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # [Ljava/lang/String;

    .prologue
    .line 37
    invoke-static {}, Lhrq;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 38
    invoke-static {p1}, Lhrq;->a([Ljava/lang/String;)Ljava/lang/String;

    .line 40
    :cond_0
    return-void
.end method

.method private static a()Z
    .locals 2

    .prologue
    .line 16
    invoke-static {}, Lcom/alibaba/doraemon/Doraemon;->getRunningMode()I

    move-result v0

    sget v1, Lcom/alibaba/doraemon/Doraemon;->MODE_DEBUG:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static varargs b(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # [Ljava/lang/String;

    .prologue
    .line 43
    invoke-static {}, Lhrq;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 44
    invoke-static {p1}, Lhrq;->a([Ljava/lang/String;)Ljava/lang/String;

    .line 46
    :cond_0
    return-void
.end method

.method public static varargs c(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # [Ljava/lang/String;

    .prologue
    .line 55
    invoke-static {}, Lhrq;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 56
    invoke-static {p1}, Lhrq;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    :cond_0
    return-void
.end method
