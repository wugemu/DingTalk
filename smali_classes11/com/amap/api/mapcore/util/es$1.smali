.class Lcom/amap/api/mapcore/util/es$1;
.super Ljava/lang/Object;
.source "MapOverlayViewGroup.java"

# interfaces
.implements Lcom/amap/api/maps/AMap$InfoWindowAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amap/api/mapcore/util/es;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/amap/api/mapcore/util/es;


# direct methods
.method constructor <init>(Lcom/amap/api/mapcore/util/es;)V
    .locals 0

    .prologue
    .line 63
    iput-object p1, p0, Lcom/amap/api/mapcore/util/es$1;->a:Lcom/amap/api/mapcore/util/es;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getInfoContents(Lcom/amap/api/maps/model/Marker;)Landroid/view/View;
    .locals 1

    .prologue
    .line 100
    const/4 v0, 0x0

    return-object v0
.end method

.method public getInfoWindow(Lcom/amap/api/maps/model/Marker;)Landroid/view/View;
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 69
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/es$1;->a:Lcom/amap/api/mapcore/util/es;

    invoke-static {v0}, Lcom/amap/api/mapcore/util/es;->a(Lcom/amap/api/mapcore/util/es;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_0

    .line 70
    iget-object v0, p0, Lcom/amap/api/mapcore/util/es$1;->a:Lcom/amap/api/mapcore/util/es;

    iget-object v1, p0, Lcom/amap/api/mapcore/util/es$1;->a:Lcom/amap/api/mapcore/util/es;

    .line 71
    invoke-static {v1}, Lcom/amap/api/mapcore/util/es;->b(Lcom/amap/api/mapcore/util/es;)Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v2, "infowindow_bg.9.png"

    .line 70
    invoke-static {v1, v2}, Lcom/amap/api/mapcore/util/ei;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/amap/api/mapcore/util/es;->a(Lcom/amap/api/mapcore/util/es;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    .line 74
    :cond_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/es$1;->a:Lcom/amap/api/mapcore/util/es;

    invoke-static {v0}, Lcom/amap/api/mapcore/util/es;->c(Lcom/amap/api/mapcore/util/es;)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_1

    .line 76
    iget-object v0, p0, Lcom/amap/api/mapcore/util/es$1;->a:Lcom/amap/api/mapcore/util/es;

    new-instance v1, Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/amap/api/mapcore/util/es$1;->a:Lcom/amap/api/mapcore/util/es;

    invoke-static {v2}, Lcom/amap/api/mapcore/util/es;->b(Lcom/amap/api/mapcore/util/es;)Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-static {v0, v1}, Lcom/amap/api/mapcore/util/es;->a(Lcom/amap/api/mapcore/util/es;Landroid/view/View;)Landroid/view/View;

    .line 77
    iget-object v0, p0, Lcom/amap/api/mapcore/util/es$1;->a:Lcom/amap/api/mapcore/util/es;

    invoke-static {v0}, Lcom/amap/api/mapcore/util/es;->c(Lcom/amap/api/mapcore/util/es;)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/amap/api/mapcore/util/es$1;->a:Lcom/amap/api/mapcore/util/es;

    invoke-static {v1}, Lcom/amap/api/mapcore/util/es;->a(Lcom/amap/api/mapcore/util/es;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 79
    iget-object v0, p0, Lcom/amap/api/mapcore/util/es$1;->a:Lcom/amap/api/mapcore/util/es;

    new-instance v1, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/amap/api/mapcore/util/es$1;->a:Lcom/amap/api/mapcore/util/es;

    invoke-static {v2}, Lcom/amap/api/mapcore/util/es;->b(Lcom/amap/api/mapcore/util/es;)Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    invoke-static {v0, v1}, Lcom/amap/api/mapcore/util/es;->a(Lcom/amap/api/mapcore/util/es;Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 80
    iget-object v0, p0, Lcom/amap/api/mapcore/util/es$1;->a:Lcom/amap/api/mapcore/util/es;

    invoke-static {v0}, Lcom/amap/api/mapcore/util/es;->d(Lcom/amap/api/mapcore/util/es;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {p1}, Lcom/amap/api/maps/model/Marker;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 81
    iget-object v0, p0, Lcom/amap/api/mapcore/util/es$1;->a:Lcom/amap/api/mapcore/util/es;

    invoke-static {v0}, Lcom/amap/api/mapcore/util/es;->d(Lcom/amap/api/mapcore/util/es;)Landroid/widget/TextView;

    move-result-object v0

    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 82
    iget-object v0, p0, Lcom/amap/api/mapcore/util/es$1;->a:Lcom/amap/api/mapcore/util/es;

    new-instance v1, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/amap/api/mapcore/util/es$1;->a:Lcom/amap/api/mapcore/util/es;

    invoke-static {v2}, Lcom/amap/api/mapcore/util/es;->b(Lcom/amap/api/mapcore/util/es;)Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    invoke-static {v0, v1}, Lcom/amap/api/mapcore/util/es;->b(Lcom/amap/api/mapcore/util/es;Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 83
    iget-object v0, p0, Lcom/amap/api/mapcore/util/es$1;->a:Lcom/amap/api/mapcore/util/es;

    invoke-static {v0}, Lcom/amap/api/mapcore/util/es;->e(Lcom/amap/api/mapcore/util/es;)Landroid/widget/TextView;

    move-result-object v0

    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 84
    iget-object v0, p0, Lcom/amap/api/mapcore/util/es$1;->a:Lcom/amap/api/mapcore/util/es;

    invoke-static {v0}, Lcom/amap/api/mapcore/util/es;->e(Lcom/amap/api/mapcore/util/es;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {p1}, Lcom/amap/api/maps/model/Marker;->getSnippet()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 85
    iget-object v0, p0, Lcom/amap/api/mapcore/util/es$1;->a:Lcom/amap/api/mapcore/util/es;

    invoke-static {v0}, Lcom/amap/api/mapcore/util/es;->c(Lcom/amap/api/mapcore/util/es;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 86
    iget-object v0, p0, Lcom/amap/api/mapcore/util/es$1;->a:Lcom/amap/api/mapcore/util/es;

    invoke-static {v0}, Lcom/amap/api/mapcore/util/es;->c(Lcom/amap/api/mapcore/util/es;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/amap/api/mapcore/util/es$1;->a:Lcom/amap/api/mapcore/util/es;

    invoke-static {v1}, Lcom/amap/api/mapcore/util/es;->d(Lcom/amap/api/mapcore/util/es;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 87
    iget-object v0, p0, Lcom/amap/api/mapcore/util/es$1;->a:Lcom/amap/api/mapcore/util/es;

    invoke-static {v0}, Lcom/amap/api/mapcore/util/es;->c(Lcom/amap/api/mapcore/util/es;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/amap/api/mapcore/util/es$1;->a:Lcom/amap/api/mapcore/util/es;

    invoke-static {v1}, Lcom/amap/api/mapcore/util/es;->e(Lcom/amap/api/mapcore/util/es;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 95
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/es$1;->a:Lcom/amap/api/mapcore/util/es;

    invoke-static {v0}, Lcom/amap/api/mapcore/util/es;->c(Lcom/amap/api/mapcore/util/es;)Landroid/view/View;

    move-result-object v0

    return-object v0

    .line 89
    :catch_0
    move-exception v0

    .line 90
    const-string/jumbo v1, "MapOverlayViewGroup"

    const-string/jumbo v2, "showInfoWindow decodeDrawableFromAsset"

    invoke-static {v0, v1, v2}, Lcom/amap/api/mapcore/util/ft;->b(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method
