.class public final Ljmk;
.super Ljava/lang/Object;
.source "GMonitor.java"


# static fields
.field public static a:Ljava/lang/String;

.field public static b:Ljava/lang/String;

.field public static c:Ljava/lang/String;

.field public static d:Ljava/lang/String;

.field private static e:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 14
    const-string/jumbo v2, "GCanvas"

    sput-object v2, Ljmk;->e:Ljava/lang/String;

    .line 15
    const-string/jumbo v2, "GCanvasFps"

    sput-object v2, Ljmk;->a:Ljava/lang/String;

    .line 16
    const-string/jumbo v2, "fps"

    sput-object v2, Ljmk;->b:Ljava/lang/String;

    .line 17
    const-string/jumbo v2, "type"

    sput-object v2, Ljmk;->c:Ljava/lang/String;

    .line 18
    const-string/jumbo v2, "plugin"

    sput-object v2, Ljmk;->d:Ljava/lang/String;

    .line 21
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->create()Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    move-result-object v1

    .line 22
    .local v1, "measures":Lcom/alibaba/mtl/appmonitor/model/MeasureSet;
    sget-object v2, Ljmk;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->addMeasure(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    .line 24
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->create()Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    move-result-object v0

    .line 25
    .local v0, "dimensions":Lcom/alibaba/mtl/appmonitor/model/DimensionSet;
    sget-object v2, Ljmk;->c:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->addDimension(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    .line 26
    sget-object v2, Ljmk;->d:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->addDimension(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    .line 28
    sget-object v2, Ljmk;->e:Ljava/lang/String;

    sget-object v3, Ljmk;->a:Ljava/lang/String;

    invoke-static {v2, v3, v1, v0}, Lcom/alibaba/mtl/appmonitor/AppMonitor;->register(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/mtl/appmonitor/model/MeasureSet;Lcom/alibaba/mtl/appmonitor/model/DimensionSet;)V

    .line 29
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;)V
    .locals 1
    .param p0, "monitorPoint"    # Ljava/lang/String;
    .param p1, "dimensionValues"    # Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;
    .param p2, "measureValues"    # Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    .prologue
    .line 32
    sget-object v0, Ljmk;->e:Ljava/lang/String;

    invoke-static {v0, p0, p1, p2}, Lcom/alibaba/mtl/appmonitor/AppMonitor$Stat;->commit(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;)V

    .line 33
    return-void
.end method
