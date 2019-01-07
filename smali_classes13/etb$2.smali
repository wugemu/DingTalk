.class final Letb$2;
.super Ljava/lang/Object;
.source "SearchStatisticUtils.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Letb;->a(Leoe;Ljava/lang/String;Ljava/lang/String;IJLjava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

.field final synthetic b:Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;


# direct methods
.method constructor <init>(Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;)V
    .locals 0

    .prologue
    .line 452
    iput-object p1, p0, Letb$2;->a:Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    iput-object p2, p0, Letb$2;->b:Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 455
    iget-object v0, p0, Letb$2;->a:Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    iget-object v1, p0, Letb$2;->b:Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    invoke-static {v0, v1}, Letb;->a(Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;)V

    .line 456
    return-void
.end method
