.class public final Lhhr;
.super Ljava/lang/Object;
.source "RuntimeGrayReleaseManager.java"


# static fields
.field private static a:Lhhr;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    new-instance v0, Lhhr;

    invoke-direct {v0}, Lhhr;-><init>()V

    sput-object v0, Lhhr;->a:Lhhr;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lhhr;
    .locals 1

    .prologue
    .line 21
    sget-object v0, Lhhr;->a:Lhhr;

    return-object v0
.end method

.method public static a(Ljava/lang/String;)Z
    .locals 2
    .param p0, "key"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 30
    invoke-static {}, Lhhq;->a()Lhhq;

    const/4 v1, 0x1

    invoke-static {p0, v1}, Lhhq;->a(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 31
    invoke-static {}, Lhhp;->a()Lhhp;

    invoke-static {p0, v0}, Lhhp;->a(Ljava/lang/String;Z)Z

    move-result v0

    .line 34
    :cond_0
    return v0
.end method

.method public static a(Ljava/lang/String;Z)Z
    .locals 2
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "ignoreDingtalkSpecConfig"    # Z

    .prologue
    const/4 v0, 0x0

    .line 44
    invoke-static {}, Lhhq;->a()Lhhq;

    const/4 v1, 0x1

    invoke-static {p0, v1}, Lhhq;->a(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 45
    invoke-static {}, Lhhp;->a()Lhhp;

    invoke-static {p0, v0, p1}, Lhhp;->a(Ljava/lang/String;ZZ)Z

    move-result v0

    .line 48
    :cond_0
    return v0
.end method


# virtual methods
.method public final b(Ljava/lang/String;Z)Z
    .locals 9
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "ignoreDingtalkSpecConfig"    # Z

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 70
    const/4 v1, 0x0

    invoke-static {p1, v1}, Lhhr;->a(Ljava/lang/String;Z)Z

    move-result v0

    .line 71
    .local v0, "enable":Z
    const-string/jumbo v4, "MiniApp"

    .line 1084
    invoke-static {}, Lhhq;->a()Lhhq;

    const-string/jumbo v1, "hybrid_enable_statistics_when_gray"

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lhhq;->a(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1086
    :try_start_0
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->create()Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    move-result-object v5

    .line 1087
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->create()Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    move-result-object v6

    .line 1089
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->create()Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    move-result-object v7

    .line 1090
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->create()Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    move-result-object v8

    .line 1091
    if-eqz v0, :cond_1

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    :goto_0
    invoke-virtual {v8, p1, v2, v3}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->setValue(Ljava/lang/String;D)Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    .line 1093
    const-string/jumbo v1, "STATISTICS"

    invoke-static {v1}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/doraemon/statistics/Statistics;

    .line 1094
    invoke-interface {v1, v4, p1, v5, v7}, Lcom/alibaba/doraemon/statistics/Statistics;->register(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/mtl/appmonitor/model/DimensionSet;Lcom/alibaba/mtl/appmonitor/model/MeasureSet;)V

    .line 1096
    invoke-interface {v1, v4, p1, v6, v8}, Lcom/alibaba/doraemon/statistics/Statistics;->commit(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 72
    :cond_0
    :goto_1
    return v0

    .line 1091
    :cond_1
    const-wide/16 v2, 0x0

    goto :goto_0

    .line 1097
    :catch_0
    move-exception v1

    .line 1098
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1
.end method
