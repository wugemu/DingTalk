.class Lcom/amap/api/mapcore/util/bt$b;
.super Ljava/lang/Object;
.source "UnZipFile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amap/api/mapcore/util/bt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcom/amap/api/mapcore/util/bt;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Lcom/amap/api/mapcore/util/bp;

.field private e:Lcom/amap/api/mapcore/util/bt$a;

.field private f:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/amap/api/mapcore/util/bt;Lcom/amap/api/mapcore/util/bq;Lcom/amap/api/mapcore/util/bp;)V
    .locals 1

    .prologue
    .line 332
    iput-object p1, p0, Lcom/amap/api/mapcore/util/bt$b;->a:Lcom/amap/api/mapcore/util/bt;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 325
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/api/mapcore/util/bt$b;->d:Lcom/amap/api/mapcore/util/bp;

    .line 326
    new-instance v0, Lcom/amap/api/mapcore/util/bt$a;

    invoke-direct {v0}, Lcom/amap/api/mapcore/util/bt$a;-><init>()V

    iput-object v0, p0, Lcom/amap/api/mapcore/util/bt$b;->e:Lcom/amap/api/mapcore/util/bt$a;

    .line 333
    invoke-interface {p2}, Lcom/amap/api/mapcore/util/bq;->B()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/mapcore/util/bt$b;->b:Ljava/lang/String;

    .line 334
    invoke-interface {p2}, Lcom/amap/api/mapcore/util/bq;->C()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/mapcore/util/bt$b;->c:Ljava/lang/String;

    .line 335
    iput-object p3, p0, Lcom/amap/api/mapcore/util/bt$b;->d:Lcom/amap/api/mapcore/util/bp;

    .line 336
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 346
    iget-object v0, p0, Lcom/amap/api/mapcore/util/bt$b;->b:Ljava/lang/String;

    return-object v0
.end method

.method public a(Ljava/lang/String;)V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 339
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    .line 341
    iput-object p1, p0, Lcom/amap/api/mapcore/util/bt$b;->f:Ljava/lang/String;

    .line 343
    :cond_0
    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 350
    iget-object v0, p0, Lcom/amap/api/mapcore/util/bt$b;->c:Ljava/lang/String;

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 354
    iget-object v0, p0, Lcom/amap/api/mapcore/util/bt$b;->f:Ljava/lang/String;

    return-object v0
.end method

.method public d()Lcom/amap/api/mapcore/util/bp;
    .locals 1

    .prologue
    .line 358
    iget-object v0, p0, Lcom/amap/api/mapcore/util/bt$b;->d:Lcom/amap/api/mapcore/util/bp;

    return-object v0
.end method

.method public e()Lcom/amap/api/mapcore/util/bt$a;
    .locals 1

    .prologue
    .line 362
    iget-object v0, p0, Lcom/amap/api/mapcore/util/bt$b;->e:Lcom/amap/api/mapcore/util/bt$a;

    return-object v0
.end method

.method public f()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 366
    iget-object v0, p0, Lcom/amap/api/mapcore/util/bt$b;->e:Lcom/amap/api/mapcore/util/bt$a;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/amap/api/mapcore/util/bt$a;->a:Z

    .line 367
    return-void
.end method
