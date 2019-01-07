.class public final Lfyg$c;
.super Ljava/lang/Object;
.source "AppMonitorDelegate.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfyg;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 523
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;D)V
    .locals 11
    .param p0, "module"    # Ljava/lang/String;
    .param p1, "monitorPoint"    # Ljava/lang/String;
    .param p2, "dimensionValues"    # Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;
    .param p3, "value"    # D

    .prologue
    const/4 v9, 0x1

    .line 641
    :try_start_0
    sget-boolean v5, Lfyg;->b:Z

    if-eqz v5, :cond_3

    invoke-static {}, Lajw;->l()Z

    sget-object v5, Lcom/alibaba/appmonitor/event/EventType;->STAT:Lcom/alibaba/appmonitor/event/EventType;

    invoke-virtual {v5}, Lcom/alibaba/appmonitor/event/EventType;->isOpen()Z

    move-result v5

    if-eqz v5, :cond_3

    sget-boolean v5, Lfyg;->a:Z

    if-nez v5, :cond_0

    invoke-static {}, Lfzf;->a()Lfzf;

    move-result-object v6

    sget-object v7, Lcom/alibaba/appmonitor/event/EventType;->STAT:Lcom/alibaba/appmonitor/event/EventType;

    if-eqz p2, :cond_2

    invoke-virtual {p2}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->getMap()Ljava/util/Map;

    move-result-object v5

    :goto_0
    invoke-virtual {v6, v7, p0, p1, v5}, Lfzf;->a(Lcom/alibaba/appmonitor/event/EventType;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 643
    :cond_0
    const-string/jumbo v5, "AppMonitorDelegate"

    const/4 v6, 0x4

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    const-string/jumbo v8, "statEvent commit. module: "

    aput-object v8, v6, v7

    const/4 v7, 0x1

    aput-object p0, v6, v7

    const/4 v7, 0x2

    const-string/jumbo v8, " monitorPoint: "

    aput-object v8, v6, v7

    const/4 v7, 0x3

    aput-object p1, v6, v7

    invoke-static {v5, v6}, Lamu;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 644
    invoke-static {}, Lfyu;->a()Lfyu;

    move-result-object v5

    invoke-virtual {v5, p0, p1}, Lfyu;->a(Ljava/lang/String;Ljava/lang/String;)Lfyt;

    move-result-object v3

    .line 645
    .local v3, "metric":Lfyt;
    if-eqz v3, :cond_1

    .line 646
    invoke-virtual {v3}, Lfyt;->d()Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    move-result-object v5

    invoke-virtual {v5}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->getMeasures()Ljava/util/List;

    move-result-object v2

    .line 647
    .local v2, "measures":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/mtl/appmonitor/model/Measure;>;"
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    if-ne v5, v9, :cond_1

    .line 648
    const/4 v5, 0x0

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/alibaba/mtl/appmonitor/model/Measure;

    invoke-virtual {v5}, Lcom/alibaba/mtl/appmonitor/model/Measure;->getName()Ljava/lang/String;

    move-result-object v0

    .line 649
    .local v0, "measureName":Ljava/lang/String;
    invoke-static {}, Lfzb;->a()Lfzb;

    move-result-object v5

    const-class v6, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-virtual {v5, v6, v7}, Lfzb;->a(Ljava/lang/Class;[Ljava/lang/Object;)Lfzc;

    move-result-object v5

    check-cast v5, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    invoke-virtual {v5, v0, p3, p4}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->setValue(Ljava/lang/String;D)Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    move-result-object v1

    .line 650
    .local v1, "measureValues":Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;
    invoke-static {p0, p1, p2, v1}, Lfyg$c;->a(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;)V

    .line 659
    .end local v0    # "measureName":Ljava/lang/String;
    .end local v1    # "measureValues":Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;
    .end local v2    # "measures":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/mtl/appmonitor/model/Measure;>;"
    .end local v3    # "metric":Lfyt;
    :cond_1
    :goto_1
    return-void

    .line 641
    :cond_2
    const/4 v5, 0x0

    goto :goto_0

    .line 654
    :cond_3
    const-string/jumbo v5, "log discard !"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    const-string/jumbo v8, ""

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Lamu;->b(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 656
    :catch_0
    move-exception v4

    .line 657
    .local v4, "t":Ljava/lang/Throwable;
    sget-object v5, Lcom/alibaba/analytics/core/selfmonitor/exception/ExceptionEventBuilder$ExceptionType;->AP:Lcom/alibaba/analytics/core/selfmonitor/exception/ExceptionEventBuilder$ExceptionType;

    invoke-static {v5, v4}, Lcom/alibaba/analytics/core/selfmonitor/exception/ExceptionEventBuilder;->a(Lcom/alibaba/analytics/core/selfmonitor/exception/ExceptionEventBuilder$ExceptionType;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;)V
    .locals 11
    .param p0, "module"    # Ljava/lang/String;
    .param p1, "monitorPoint"    # Ljava/lang/String;
    .param p2, "dimensionValues"    # Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;
    .param p3, "measureValues"    # Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    .prologue
    const/4 v6, 0x1

    const/4 v9, 0x0

    .line 672
    :try_start_0
    invoke-static {}, Lalm;->a()Lalm;

    move-result-object v0

    sget-object v1, Lcom/alibaba/appmonitor/event/EventType;->STAT:Lcom/alibaba/appmonitor/event/EventType;

    invoke-virtual {v0, v1, p0, p1}, Lalm;->a(Lcom/alibaba/appmonitor/event/EventType;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 673
    sget-object v0, Lfyg;->c:Lalo;

    sget v1, Laln;->a:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/alibaba/appmonitor/event/EventType;->STAT:Lcom/alibaba/appmonitor/event/EventType;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    invoke-static {v1, v2, v3}, Laln;->a(ILjava/lang/String;Ljava/lang/Double;)Laln;

    move-result-object v1

    invoke-virtual {v0, v1}, Lalo;->a(Laln;)V

    .line 675
    :cond_0
    sget-boolean v0, Lfyg;->b:Z

    if-eqz v0, :cond_6

    invoke-static {}, Lajw;->l()Z

    sget-object v0, Lcom/alibaba/appmonitor/event/EventType;->STAT:Lcom/alibaba/appmonitor/event/EventType;

    invoke-virtual {v0}, Lcom/alibaba/appmonitor/event/EventType;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_6

    sget-boolean v0, Lfyg;->a:Z

    if-nez v0, :cond_1

    invoke-static {}, Lfzf;->a()Lfzf;

    move-result-object v1

    sget-object v2, Lcom/alibaba/appmonitor/event/EventType;->STAT:Lcom/alibaba/appmonitor/event/EventType;

    if-eqz p2, :cond_3

    invoke-virtual {p2}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->getMap()Ljava/util/Map;

    move-result-object v0

    :goto_0
    invoke-virtual {v1, v2, p0, p1, v0}, Lfzf;->a(Lcom/alibaba/appmonitor/event/EventType;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 681
    :cond_1
    const-string/jumbo v0, "statEvent commit"

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string/jumbo v3, "module"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p0, v1, v2

    const/4 v2, 0x2

    const-string/jumbo v3, "monitorPoint"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Lamu;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 682
    invoke-static {}, Lfzf;->a()Lfzf;

    move-result-object v0

    sget-object v1, Lcom/alibaba/appmonitor/event/EventType;->STAT:Lcom/alibaba/appmonitor/event/EventType;

    invoke-virtual {v0, v1, p0, p1}, Lfzf;->b(Lcom/alibaba/appmonitor/event/EventType;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 683
    invoke-static {}, Lajw;->a()Lajw;

    move-result-object v0

    .line 1305
    iget-object v7, v0, Lajw;->c:Landroid/content/Context;

    .line 684
    .local v7, "context":Landroid/content/Context;
    invoke-static {}, Lfyz;->d()Lfyz;

    move-result-object v9

    sget-object v10, Lcom/alibaba/appmonitor/event/EventType;->STAT:Lcom/alibaba/appmonitor/event/EventType;

    new-instance v0, Lfza;

    invoke-static {v7}, Lalg;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v7}, Lalg;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v6}, Lfza;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v9, v10, v0}, Lfyz;->a(Lcom/alibaba/appmonitor/event/EventType;Lfyy;)V

    .line 699
    .end local v7    # "context":Landroid/content/Context;
    :cond_2
    :goto_1
    return-void

    .line 675
    :cond_3
    const/4 v0, 0x0

    goto :goto_0

    .line 686
    :cond_4
    invoke-static {}, Lfyq;->a()Lfyq;

    move-result-object v0

    sget-object v1, Lcom/alibaba/appmonitor/event/EventType;->STAT:Lcom/alibaba/appmonitor/event/EventType;

    invoke-virtual {v1}, Lcom/alibaba/appmonitor/event/EventType;->getEventId()I

    move-result v1

    move-object v2, p0

    move-object v3, p1

    move-object v4, p3

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Lfyq;->a(ILjava/lang/String;Ljava/lang/String;Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;)V

    .line 688
    invoke-static {}, Lalm;->a()Lalm;

    move-result-object v0

    .line 2130
    invoke-virtual {v0, p0, p1}, Lalm;->b(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    move-result-object v0

    if-eqz v0, :cond_5

    move v0, v6

    .line 688
    :goto_2
    if-eqz v0, :cond_2

    .line 689
    invoke-static {}, Lfyq;->a()Lfyq;

    move-result-object v0

    sget-object v1, Lcom/alibaba/appmonitor/event/EventType;->STAT:Lcom/alibaba/appmonitor/event/EventType;

    invoke-virtual {v1}, Lcom/alibaba/appmonitor/event/EventType;->getEventId()I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "_abtest"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v3, p1

    move-object v4, p3

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Lfyq;->a(ILjava/lang/String;Ljava/lang/String;Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 696
    :catch_0
    move-exception v8

    .line 697
    .local v8, "t":Ljava/lang/Throwable;
    sget-object v0, Lcom/alibaba/analytics/core/selfmonitor/exception/ExceptionEventBuilder$ExceptionType;->AP:Lcom/alibaba/analytics/core/selfmonitor/exception/ExceptionEventBuilder$ExceptionType;

    invoke-static {v0, v8}, Lcom/alibaba/analytics/core/selfmonitor/exception/ExceptionEventBuilder;->a(Lcom/alibaba/analytics/core/selfmonitor/exception/ExceptionEventBuilder$ExceptionType;Ljava/lang/Throwable;)V

    goto :goto_1

    .end local v8    # "t":Ljava/lang/Throwable;
    :cond_5
    move v0, v9

    .line 2130
    goto :goto_2

    .line 693
    :cond_6
    :try_start_1
    const-string/jumbo v0, "log discard !"

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string/jumbo v3, "module"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p0, v1, v2

    const/4 v2, 0x2

    const-string/jumbo v3, "monitorPoint"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Lamu;->b(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method
