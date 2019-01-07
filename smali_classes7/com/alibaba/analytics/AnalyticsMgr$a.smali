.class public final Lcom/alibaba/analytics/AnalyticsMgr$a;
.super Ljava/lang/Object;
.source "AnalyticsMgr.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/analytics/AnalyticsMgr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

.field public d:Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

.field public e:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 544
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
