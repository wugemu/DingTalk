.class Lcom/amap/api/mapcore/util/b$13;
.super Lcom/amap/api/mapcore/util/b$a;
.source "AMapDelegateImp.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amap/api/mapcore/util/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/amap/api/mapcore/util/b;


# direct methods
.method constructor <init>(Lcom/amap/api/mapcore/util/b;)V
    .locals 1

    .prologue
    .line 3478
    iput-object p1, p0, Lcom/amap/api/mapcore/util/b$13;->a:Lcom/amap/api/mapcore/util/b;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/amap/api/mapcore/util/b$a;-><init>(Lcom/amap/api/mapcore/util/b$1;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 3482
    invoke-super {p0}, Lcom/amap/api/mapcore/util/b$a;->run()V

    .line 3483
    iget-object v0, p0, Lcom/amap/api/mapcore/util/b$13;->a:Lcom/amap/api/mapcore/util/b;

    invoke-static {v0}, Lcom/amap/api/mapcore/util/b;->l(Lcom/amap/api/mapcore/util/b;)Lcom/autonavi/amap/mapcore/MapConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autonavi/amap/mapcore/MapConfig;->getCustomStylePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore/util/b$13;->a:Lcom/amap/api/mapcore/util/b;

    invoke-static {v0}, Lcom/amap/api/mapcore/util/b;->l(Lcom/amap/api/mapcore/util/b;)Lcom/autonavi/amap/mapcore/MapConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autonavi/amap/mapcore/MapConfig;->isCustomStyleEnable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3484
    iget-object v0, p0, Lcom/amap/api/mapcore/util/b$13;->a:Lcom/amap/api/mapcore/util/b;

    sget-object v1, Lcom/amap/api/mapcore/util/i$a;->a:Lcom/amap/api/mapcore/util/i$a;

    sget-object v2, Lcom/amap/api/mapcore/util/i$c;->a:Lcom/amap/api/mapcore/util/i$c;

    invoke-virtual {v0, v1, v2}, Lcom/amap/api/mapcore/util/b;->a(Lcom/amap/api/mapcore/util/i$a;Lcom/amap/api/mapcore/util/i$c;)V

    .line 3489
    :goto_0
    return-void

    .line 3486
    :cond_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/b$13;->a:Lcom/amap/api/mapcore/util/b;

    iget-object v1, p0, Lcom/amap/api/mapcore/util/b$13;->c:Lcom/amap/api/mapcore/util/i$a;

    iget-object v2, p0, Lcom/amap/api/mapcore/util/b$13;->d:Lcom/amap/api/mapcore/util/i$c;

    iget-object v3, p0, Lcom/amap/api/mapcore/util/b$13;->e:Lcom/amap/api/mapcore/util/i$b;

    invoke-virtual {v0, v1, v2, v3}, Lcom/amap/api/mapcore/util/b;->a(Lcom/amap/api/mapcore/util/i$a;Lcom/amap/api/mapcore/util/i$c;Lcom/amap/api/mapcore/util/i$b;)V

    goto :goto_0
.end method
