.class Lcom/amap/api/mapcore/util/i$2;
.super Ljava/lang/Object;
.source "GLMapResManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amap/api/mapcore/util/i;->b(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:[B

.field final synthetic b:[B

.field final synthetic c:[B

.field final synthetic d:[B

.field final synthetic e:[B

.field final synthetic f:Lcom/amap/api/mapcore/util/i;


# direct methods
.method constructor <init>(Lcom/amap/api/mapcore/util/i;[B[B[B[B[B)V
    .locals 0

    .prologue
    .line 337
    iput-object p1, p0, Lcom/amap/api/mapcore/util/i$2;->f:Lcom/amap/api/mapcore/util/i;

    iput-object p2, p0, Lcom/amap/api/mapcore/util/i$2;->a:[B

    iput-object p3, p0, Lcom/amap/api/mapcore/util/i$2;->b:[B

    iput-object p4, p0, Lcom/amap/api/mapcore/util/i$2;->c:[B

    iput-object p5, p0, Lcom/amap/api/mapcore/util/i$2;->d:[B

    iput-object p6, p0, Lcom/amap/api/mapcore/util/i$2;->e:[B

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 340
    iget-object v0, p0, Lcom/amap/api/mapcore/util/i$2;->f:Lcom/amap/api/mapcore/util/i;

    iget-object v1, p0, Lcom/amap/api/mapcore/util/i$2;->a:[B

    iget-object v2, p0, Lcom/amap/api/mapcore/util/i$2;->b:[B

    iget-object v3, p0, Lcom/amap/api/mapcore/util/i$2;->c:[B

    iget-object v4, p0, Lcom/amap/api/mapcore/util/i$2;->d:[B

    iget-object v5, p0, Lcom/amap/api/mapcore/util/i$2;->e:[B

    invoke-static/range {v0 .. v5}, Lcom/amap/api/mapcore/util/i;->a(Lcom/amap/api/mapcore/util/i;[B[B[B[B[B)V

    .line 341
    return-void
.end method
