.class public Lcom/alibaba/appmonitor/model/UTDimensionValueSet;
.super Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;
.source "UTDimensionValueSet.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;-><init>()V

    return-void
.end method

.method public static create(Ljava/util/Map;)Lcom/alibaba/appmonitor/model/UTDimensionValueSet;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/alibaba/appmonitor/model/UTDimensionValueSet;"
        }
    .end annotation

    .prologue
    .line 30
    .local p0, "rawMsg":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {}, Lfzb;->a()Lfzb;

    move-result-object v0

    const-class v1, Lcom/alibaba/appmonitor/model/UTDimensionValueSet;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    invoke-virtual {v0, v1, v2}, Lfzb;->a(Ljava/lang/Class;[Ljava/lang/Object;)Lfzc;

    move-result-object v0

    check-cast v0, Lcom/alibaba/appmonitor/model/UTDimensionValueSet;

    return-object v0
.end method


# virtual methods
.method public clean()V
    .locals 0

    .prologue
    .line 35
    invoke-super {p0}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->clean()V

    .line 36
    return-void
.end method

.method public varargs fill([Ljava/lang/Object;)V
    .locals 0
    .param p1, "params"    # [Ljava/lang/Object;

    .prologue
    .line 41
    invoke-super {p0, p1}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->fill([Ljava/lang/Object;)V

    .line 42
    return-void
.end method

.method public getEventId()Ljava/lang/Integer;
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 15
    const/4 v0, 0x0

    .line 16
    .local v0, "eventId":I
    iget-object v2, p0, Lcom/alibaba/appmonitor/model/UTDimensionValueSet;->map:Ljava/util/Map;

    if-eqz v2, :cond_0

    .line 17
    iget-object v2, p0, Lcom/alibaba/appmonitor/model/UTDimensionValueSet;->map:Ljava/util/Map;

    sget-object v3, Lcom/alibaba/analytics/core/model/LogField;->EVENTID:Lcom/alibaba/analytics/core/model/LogField;

    invoke-virtual {v3}, Lcom/alibaba/analytics/core/model/LogField;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 18
    .local v1, "eventIdStr":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 20
    :try_start_0
    invoke-static {v1}, Lamy;->a(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 26
    .end local v1    # "eventIdStr":Ljava/lang/String;
    :cond_0
    :goto_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    return-object v2

    .restart local v1    # "eventIdStr":Ljava/lang/String;
    :catch_0
    move-exception v2

    goto :goto_0
.end method
