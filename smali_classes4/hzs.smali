.class public final Lhzs;
.super Ljava/lang/Object;
.source "StatisticsTools.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lhzs$a;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 146
    return-void
.end method

.method public static a(Ljava/lang/String;)Lhzs$a;
    .locals 2
    .param p0, "monitorPoint"    # Ljava/lang/String;

    .prologue
    .line 42
    const-string/jumbo v1, "STATISTICS"

    invoke-static {v1}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/statistics/Statistics;

    .line 43
    .local v0, "statistics":Lcom/alibaba/doraemon/statistics/Statistics;
    if-eqz v0, :cond_0

    .line 44
    new-instance v1, Lhzs$a;

    invoke-direct {v1, p0}, Lhzs$a;-><init>(Ljava/lang/String;)V

    .line 46
    :goto_0
    return-object v1

    :cond_0
    new-instance v1, Lhzs$a;

    invoke-direct {v1, p0}, Lhzs$a;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static a(I)V
    .locals 2
    .param p0, "errorCode"    # I

    .prologue
    .line 120
    const-string/jumbo v1, "STATISTICS"

    invoke-static {v1}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/statistics/Statistics;

    .line 121
    .local v0, "statistics":Lcom/alibaba/doraemon/statistics/Statistics;
    if-eqz v0, :cond_0

    .line 122
    invoke-interface {v0, p0}, Lcom/alibaba/doraemon/statistics/Statistics;->commitFaultEvent(I)V

    .line 124
    :cond_0
    return-void
.end method

.method public static a(Ljava/lang/String;D)V
    .locals 4
    .param p0, "monitorPoint"    # Ljava/lang/String;
    .param p1, "value"    # D

    .prologue
    .line 127
    const-string/jumbo v1, "STATISTICS"

    invoke-static {v1}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/statistics/Statistics;

    .line 128
    .local v0, "statistics":Lcom/alibaba/doraemon/statistics/Statistics;
    if-eqz v0, :cond_0

    .line 129
    const-string/jumbo v1, "WK"

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    invoke-interface {v0, v1, p0, v2, v3}, Lcom/alibaba/doraemon/statistics/Statistics;->commitCountEvent(Ljava/lang/String;Ljava/lang/String;D)V

    .line 131
    :cond_0
    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p0, "monitorPoint"    # Ljava/lang/String;
    .param p1, "measure"    # Ljava/lang/String;

    .prologue
    .line 28
    const-string/jumbo v1, "STATISTICS"

    invoke-static {v1}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/statistics/Statistics;

    .line 29
    .local v0, "statistics":Lcom/alibaba/doraemon/statistics/Statistics;
    if-eqz v0, :cond_0

    .line 30
    const-string/jumbo v1, "WK"

    invoke-interface {v0, v1, p0, p1}, Lcom/alibaba/doraemon/statistics/Statistics;->registerMeasure(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    :cond_0
    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;D)V
    .locals 6
    .param p0, "monitorPoint"    # Ljava/lang/String;
    .param p1, "arg"    # Ljava/lang/String;
    .param p2, "value"    # D

    .prologue
    .line 140
    const-string/jumbo v1, "STATISTICS"

    invoke-static {v1}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/statistics/Statistics;

    .line 141
    .local v0, "statistics":Lcom/alibaba/doraemon/statistics/Statistics;
    if-eqz v0, :cond_0

    .line 142
    const-string/jumbo v1, "WK"

    move-object v2, p0

    move-object v3, p1

    move-wide v4, p2

    invoke-interface/range {v0 .. v5}, Lcom/alibaba/doraemon/statistics/Statistics;->commitCountEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;D)V

    .line 144
    :cond_0
    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p0, "monitorPoint"    # Ljava/lang/String;
    .param p1, "errorCode"    # Ljava/lang/String;
    .param p2, "errorMsg"    # Ljava/lang/String;

    .prologue
    .line 102
    const-string/jumbo v1, "STATISTICS"

    invoke-static {v1}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/statistics/Statistics;

    .line 103
    .local v0, "statistics":Lcom/alibaba/doraemon/statistics/Statistics;
    if-eqz v0, :cond_0

    .line 104
    const-string/jumbo v1, "WK"

    invoke-interface {v0, v1, p0, p1, p2}, Lcom/alibaba/doraemon/statistics/Statistics;->commitRateFail(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    :cond_0
    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p0, "monitorPoint"    # Ljava/lang/String;
    .param p1, "arg"    # Ljava/lang/String;
    .param p2, "errorCode"    # Ljava/lang/String;
    .param p3, "errorMsg"    # Ljava/lang/String;

    .prologue
    .line 109
    const-string/jumbo v1, "STATISTICS"

    invoke-static {v1}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/statistics/Statistics;

    .line 110
    .local v0, "statistics":Lcom/alibaba/doraemon/statistics/Statistics;
    if-eqz v0, :cond_0

    .line 111
    const-string/jumbo v1, "WK"

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-interface/range {v0 .. v5}, Lcom/alibaba/doraemon/statistics/Statistics;->commitRateFail(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    :cond_0
    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)V
    .locals 2
    .param p0, "monitorPoint"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Double;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 71
    .local p1, "dimensions":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .local p2, "measures":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Double;>;"
    const-string/jumbo v1, "STATISTICS"

    invoke-static {v1}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/statistics/Statistics;

    .line 72
    .local v0, "statistics":Lcom/alibaba/doraemon/statistics/Statistics;
    if-eqz v0, :cond_0

    .line 73
    const-string/jumbo v1, "WK"

    invoke-interface {v0, v1, p0, p1, p2}, Lcom/alibaba/doraemon/statistics/Statistics;->commitStatEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)V

    .line 75
    :cond_0
    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/util/Set;Ljava/util/Set;)V
    .locals 2
    .param p0, "monitorPoint"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 35
    .local p1, "dimensions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .local p2, "measures":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const-string/jumbo v1, "STATISTICS"

    invoke-static {v1}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/statistics/Statistics;

    .line 36
    .local v0, "statistics":Lcom/alibaba/doraemon/statistics/Statistics;
    if-eqz v0, :cond_0

    .line 37
    const-string/jumbo v1, "WK"

    invoke-interface {v0, v1, p0, p1, p2}, Lcom/alibaba/doraemon/statistics/Statistics;->registerStatEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;Ljava/util/Set;)V

    .line 39
    :cond_0
    return-void
.end method

.method public static b(Ljava/lang/String;)V
    .locals 2
    .param p0, "monitorPoint"    # Ljava/lang/String;

    .prologue
    .line 82
    const-string/jumbo v1, "STATISTICS"

    invoke-static {v1}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/statistics/Statistics;

    .line 83
    .local v0, "statistics":Lcom/alibaba/doraemon/statistics/Statistics;
    if-eqz v0, :cond_0

    .line 84
    const-string/jumbo v1, "WK"

    invoke-interface {v0, v1, p0}, Lcom/alibaba/doraemon/statistics/Statistics;->commitRateSuccess(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    :cond_0
    return-void
.end method

.method public static b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p0, "monitorPoint"    # Ljava/lang/String;
    .param p1, "arg"    # Ljava/lang/String;

    .prologue
    .line 89
    const-string/jumbo v1, "STATISTICS"

    invoke-static {v1}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/statistics/Statistics;

    .line 90
    .local v0, "statistics":Lcom/alibaba/doraemon/statistics/Statistics;
    if-eqz v0, :cond_0

    .line 91
    const-string/jumbo v1, "WK"

    invoke-interface {v0, v1, p0, p1}, Lcom/alibaba/doraemon/statistics/Statistics;->commitRateSuccess(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    :cond_0
    return-void
.end method
