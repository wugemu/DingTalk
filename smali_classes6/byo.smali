.class public final Lbyo;
.super Ljava/lang/Object;
.source "LiveVipAlarmUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(ILjava/lang/String;Ljava/util/Map;)V
    .locals 3
    .param p0, "subType"    # I
    .param p1, "desc"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 76
    .local p2, "extra":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {}, Lcom/alibaba/doraemon/Doraemon;->getRunningMode()I

    move-result v1

    sget v2, Lcom/alibaba/doraemon/Doraemon;->MODE_DEBUG:I

    if-ne v1, v2, :cond_0

    .line 87
    :goto_0
    return-void

    .line 79
    :cond_0
    new-instance v0, Lhzu;

    invoke-direct {v0}, Lhzu;-><init>()V

    .line 80
    .local v0, "alarm":Lhzu;
    iput-object p1, v0, Lhzu;->d:Ljava/lang/String;

    .line 81
    iput p0, v0, Lhzu;->c:I

    .line 82
    const-string/jumbo v1, "live"

    iput-object v1, v0, Lhzu;->a:Ljava/lang/String;

    .line 84
    iput-object p2, v0, Lhzu;->b:Ljava/util/Map;

    .line 86
    invoke-static {}, Lhzr;->c()Lhzr;

    move-result-object v1

    invoke-virtual {v1, v0}, Lhzr;->a(Lhzu;)V

    goto :goto_0
.end method
