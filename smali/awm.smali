.class public final Lawm;
.super Ljava/lang/Object;
.source "VipAlarmUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;)V
    .locals 2
    .param p0, "desc"    # Ljava/lang/String;

    .prologue
    .line 36
    const-string/jumbo v0, "-1"

    const-string/jumbo v1, ""

    invoke-static {p0, v0, v1}, Lawm;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p0, "desc"    # Ljava/lang/String;
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    .prologue
    .line 22
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v2, ", code:"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    aput-object p1, v0, v1

    const/4 v1, 0x3

    const-string/jumbo v2, ", reason:"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    aput-object p2, v0, v1

    invoke-static {v0}, Lavy;->a([Ljava/lang/String;)V

    .line 24
    invoke-static {}, Lcom/alibaba/doraemon/Doraemon;->getRunningMode()I

    move-result v0

    sget v1, Lcom/alibaba/doraemon/Doraemon;->MODE_DEBUG:I

    if-ne v0, v1, :cond_0

    .line 29
    :goto_0
    return-void

    .line 28
    :cond_0
    invoke-static {}, Lhzr;->c()Lhzr;

    move-result-object v0

    invoke-static {p0, p1, p2}, Lawm;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lhzu;

    move-result-object v1

    invoke-virtual {v0, v1}, Lhzr;->a(Lhzu;)V

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2
    .param p0, "desc"    # Ljava/lang/String;
    .param p1, "throwable"    # Ljava/lang/Throwable;

    .prologue
    .line 32
    const-string/jumbo v0, "-1"

    invoke-static {p1}, Lcom/alibaba/doraemon/utils/CommonUtils;->getStackMsg(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lawm;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    return-void
.end method

.method public static b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lhzu;
    .locals 3
    .param p0, "desc"    # Ljava/lang/String;
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    .prologue
    .line 40
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 41
    .local v1, "dt":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v2, "code"

    invoke-interface {v1, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    const-string/jumbo v2, "error"

    invoke-interface {v1, v2, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    new-instance v0, Lhzu;

    invoke-direct {v0}, Lhzu;-><init>()V

    .line 45
    .local v0, "alarm":Lhzu;
    const/16 v2, 0xe10

    iput v2, v0, Lhzu;->c:I

    .line 46
    const-string/jumbo v2, "calendar"

    iput-object v2, v0, Lhzu;->a:Ljava/lang/String;

    .line 47
    iput-object v1, v0, Lhzu;->b:Ljava/util/Map;

    .line 48
    iput-object p0, v0, Lhzu;->d:Ljava/lang/String;

    .line 50
    return-object v0
.end method
