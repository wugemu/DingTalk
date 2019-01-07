.class public Lcom/alibaba/lightapp/runtime/plugin/util/TimeZoneUtil;
.super Ljava/lang/Object;
.source "TimeZoneUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static appendNumber(Lcom/alibaba/doraemon/performance/DDStringBuilder;II)V
    .locals 3
    .param p0, "builder"    # Lcom/alibaba/doraemon/performance/DDStringBuilder;
    .param p1, "count"    # I
    .param p2, "value"    # I

    .prologue
    .line 41
    if-nez p0, :cond_1

    .line 50
    :cond_0
    :goto_0
    return-void

    .line 43
    :cond_1
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    .line 44
    .local v1, "string":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 45
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    sub-int v2, p1, v2

    if-ge v0, v2, :cond_2

    .line 46
    const/16 v2, 0x30

    invoke-virtual {p0, v2}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(C)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 45
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 48
    :cond_2
    invoke-virtual {p0, v1}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    goto :goto_0
.end method

.method public static createGmtOffsetString(ZZI)Ljava/lang/String;
    .locals 5
    .param p0, "includeGmt"    # Z
    .param p1, "includeMinuteSeparator"    # Z
    .param p2, "offsetMillis"    # I

    .prologue
    const/4 v4, 0x2

    .line 21
    const v3, 0xea60

    div-int v1, p2, v3

    .line 22
    .local v1, "offsetMinutes":I
    const/16 v2, 0x2b

    .line 23
    .local v2, "sign":C
    if-gez v1, :cond_0

    .line 24
    const/16 v2, 0x2d

    .line 25
    neg-int v1, v1

    .line 27
    :cond_0
    new-instance v0, Lcom/alibaba/doraemon/performance/DDStringBuilder;

    const/16 v3, 0x9

    invoke-direct {v0, v3}, Lcom/alibaba/doraemon/performance/DDStringBuilder;-><init>(I)V

    .line 28
    .local v0, "builder":Lcom/alibaba/doraemon/performance/DDStringBuilder;
    if-eqz p0, :cond_1

    .line 29
    const-string/jumbo v3, "GMT"

    invoke-virtual {v0, v3}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 31
    :cond_1
    invoke-virtual {v0, v2}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(C)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 32
    div-int/lit8 v3, v1, 0x3c

    invoke-static {v0, v4, v3}, Lcom/alibaba/lightapp/runtime/plugin/util/TimeZoneUtil;->appendNumber(Lcom/alibaba/doraemon/performance/DDStringBuilder;II)V

    .line 33
    if-eqz p1, :cond_2

    .line 34
    const/16 v3, 0x3a

    invoke-virtual {v0, v3}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(C)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 36
    :cond_2
    rem-int/lit8 v3, v1, 0x3c

    invoke-static {v0, v4, v3}, Lcom/alibaba/lightapp/runtime/plugin/util/TimeZoneUtil;->appendNumber(Lcom/alibaba/doraemon/performance/DDStringBuilder;II)V

    .line 37
    invoke-virtual {v0}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public static getCurrentTimeZone()Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 16
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v0

    .line 17
    .local v0, "tz":Ljava/util/TimeZone;
    invoke-virtual {v0}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v1

    invoke-static {v2, v2, v1}, Lcom/alibaba/lightapp/runtime/plugin/util/TimeZoneUtil;->createGmtOffsetString(ZZI)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
