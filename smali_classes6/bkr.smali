.class public final Lbkr;
.super Ljava/lang/Object;
.source "VipAlarmUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p0, "desc"    # Ljava/lang/String;
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    .prologue
    .line 21
    invoke-static {}, Lbjq;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 26
    :goto_0
    return-void

    .line 24
    :cond_0
    invoke-static {}, Lhzr;->c()Lhzr;

    move-result-object v0

    .line 1033
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 1034
    const-string/jumbo v2, "code"

    invoke-interface {v1, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1035
    const-string/jumbo v2, "error"

    invoke-interface {v1, v2, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1037
    new-instance v2, Lhzu;

    invoke-direct {v2}, Lhzu;-><init>()V

    .line 1038
    const/16 v3, 0xe11

    iput v3, v2, Lhzu;->c:I

    .line 1039
    const-string/jumbo v3, "ding"

    iput-object v3, v2, Lhzu;->a:Ljava/lang/String;

    .line 1040
    iput-object v1, v2, Lhzu;->b:Ljava/util/Map;

    .line 1041
    iput-object p0, v2, Lhzu;->d:Ljava/lang/String;

    .line 24
    invoke-virtual {v0, v2}, Lhzr;->a(Lhzu;)V

    .line 25
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

    invoke-static {v0}, Lbkd;->a([Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2
    .param p0, "desc"    # Ljava/lang/String;
    .param p1, "throwable"    # Ljava/lang/Throwable;

    .prologue
    .line 29
    const-string/jumbo v0, "-1"

    invoke-static {p1}, Lcom/alibaba/doraemon/utils/CommonUtils;->getStackMsg(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lbkr;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    return-void
.end method
