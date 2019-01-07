.class Lcom/amap/api/mapcore/util/de$1;
.super Ljava/lang/Object;
.source "PopupOverlay.java"

# interfaces
.implements Lcom/amap/api/maps/model/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amap/api/mapcore/util/de;->c(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lcom/amap/api/mapcore/util/de;


# direct methods
.method constructor <init>(Lcom/amap/api/mapcore/util/de;Z)V
    .locals 0

    .prologue
    .line 683
    iput-object p1, p0, Lcom/amap/api/mapcore/util/de$1;->b:Lcom/amap/api/mapcore/util/de;

    iput-boolean p2, p0, Lcom/amap/api/mapcore/util/de$1;->a:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 692
    iget-object v0, p0, Lcom/amap/api/mapcore/util/de$1;->b:Lcom/amap/api/mapcore/util/de;

    invoke-static {v0}, Lcom/amap/api/mapcore/util/de;->a(Lcom/amap/api/mapcore/util/de;)Lcom/amap/api/mapcore/util/di;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 693
    iget-object v0, p0, Lcom/amap/api/mapcore/util/de$1;->b:Lcom/amap/api/mapcore/util/de;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/amap/api/mapcore/util/de;->a(Lcom/amap/api/mapcore/util/de;Z)Z

    .line 694
    iget-object v0, p0, Lcom/amap/api/mapcore/util/de$1;->b:Lcom/amap/api/mapcore/util/de;

    invoke-static {v0}, Lcom/amap/api/mapcore/util/de;->a(Lcom/amap/api/mapcore/util/de;)Lcom/amap/api/mapcore/util/di;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/di;->d()V

    .line 695
    iget-object v0, p0, Lcom/amap/api/mapcore/util/de$1;->b:Lcom/amap/api/mapcore/util/de;

    iget-boolean v1, p0, Lcom/amap/api/mapcore/util/de$1;->a:Z

    invoke-static {v0, v1}, Lcom/amap/api/mapcore/util/de;->b(Lcom/amap/api/mapcore/util/de;Z)V

    .line 697
    :cond_0
    return-void
.end method

.method public onAnimationStart()V
    .locals 0

    .prologue
    .line 687
    return-void
.end method
