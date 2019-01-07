.class public Lcom/amap/api/mapcore/util/dn;
.super Ljava/lang/Object;
.source "GLTransformation.java"


# instance fields
.field public a:D

.field public b:D

.field public c:D

.field public d:D

.field public e:D

.field public f:D


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const-wide/high16 v0, 0x7ff8000000000000L    # NaN

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    iput-wide v0, p0, Lcom/amap/api/mapcore/util/dn;->a:D

    .line 9
    iput-wide v0, p0, Lcom/amap/api/mapcore/util/dn;->b:D

    .line 11
    iput-wide v0, p0, Lcom/amap/api/mapcore/util/dn;->c:D

    .line 13
    iput-wide v0, p0, Lcom/amap/api/mapcore/util/dn;->d:D

    .line 15
    iput-wide v0, p0, Lcom/amap/api/mapcore/util/dn;->e:D

    .line 17
    iput-wide v0, p0, Lcom/amap/api/mapcore/util/dn;->f:D

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const-wide/high16 v0, 0x7ff8000000000000L    # NaN

    .line 21
    iput-wide v0, p0, Lcom/amap/api/mapcore/util/dn;->a:D

    .line 22
    iput-wide v0, p0, Lcom/amap/api/mapcore/util/dn;->b:D

    .line 23
    iput-wide v0, p0, Lcom/amap/api/mapcore/util/dn;->c:D

    .line 24
    iput-wide v0, p0, Lcom/amap/api/mapcore/util/dn;->e:D

    .line 25
    iput-wide v0, p0, Lcom/amap/api/mapcore/util/dn;->f:D

    .line 26
    iput-wide v0, p0, Lcom/amap/api/mapcore/util/dn;->d:D

    .line 27
    return-void
.end method
