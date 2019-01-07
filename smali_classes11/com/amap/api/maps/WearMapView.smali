.class public Lcom/amap/api/maps/WearMapView;
.super Landroid/view/ViewGroup;
.source "WearMapView.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x14
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amap/api/maps/WearMapView$OnDismissCallback;
    }
.end annotation


# static fields
.field private static f:I

.field private static g:I


# instance fields
.field private final a:Ljava/lang/String;

.field private b:Lcom/autonavi/amap/mapcore/interfaces/IMapFragmentDelegate;

.field private c:Lcom/amap/api/maps/AMap;

.field private d:Landroid/view/View;

.field private e:Lcom/amap/api/maps/SwipeDismissView;

.field private h:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 44
    sput v0, Lcom/amap/api/maps/WearMapView;->f:I

    .line 45
    sput v0, Lcom/amap/api/maps/WearMapView;->g:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 55
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    .line 36
    const-class v0, Lcom/amap/api/maps/WearMapView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/maps/WearMapView;->a:Ljava/lang/String;

    .line 47
    const/4 v0, 0x0

    iput v0, p0, Lcom/amap/api/maps/WearMapView;->h:I

    .line 56
    invoke-virtual {p0}, Lcom/amap/api/maps/WearMapView;->getMapFragmentDelegate()Lcom/autonavi/amap/mapcore/interfaces/IMapFragmentDelegate;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/autonavi/amap/mapcore/interfaces/IMapFragmentDelegate;->setContext(Landroid/content/Context;)V

    .line 58
    invoke-direct {p0, p1}, Lcom/amap/api/maps/WearMapView;->a(Landroid/content/Context;)V

    .line 59
    invoke-direct {p0, p1}, Lcom/amap/api/maps/WearMapView;->b(Landroid/content/Context;)V

    .line 60
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 70
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 36
    const-class v0, Lcom/amap/api/maps/WearMapView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/maps/WearMapView;->a:Ljava/lang/String;

    .line 47
    iput v1, p0, Lcom/amap/api/maps/WearMapView;->h:I

    .line 71
    const v0, 0x10100dc

    invoke-interface {p2, v0, v1}, Landroid/util/AttributeSet;->getAttributeIntValue(II)I

    move-result v0

    iput v0, p0, Lcom/amap/api/maps/WearMapView;->h:I

    .line 72
    invoke-virtual {p0}, Lcom/amap/api/maps/WearMapView;->getMapFragmentDelegate()Lcom/autonavi/amap/mapcore/interfaces/IMapFragmentDelegate;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/autonavi/amap/mapcore/interfaces/IMapFragmentDelegate;->setContext(Landroid/content/Context;)V

    .line 73
    invoke-virtual {p0}, Lcom/amap/api/maps/WearMapView;->getMapFragmentDelegate()Lcom/autonavi/amap/mapcore/interfaces/IMapFragmentDelegate;

    move-result-object v0

    iget v1, p0, Lcom/amap/api/maps/WearMapView;->h:I

    invoke-interface {v0, v1}, Lcom/autonavi/amap/mapcore/interfaces/IMapFragmentDelegate;->setVisibility(I)V

    .line 75
    invoke-direct {p0, p1}, Lcom/amap/api/maps/WearMapView;->a(Landroid/content/Context;)V

    .line 76
    invoke-direct {p0, p1}, Lcom/amap/api/maps/WearMapView;->b(Landroid/content/Context;)V

    .line 77
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 86
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 36
    const-class v0, Lcom/amap/api/maps/WearMapView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/maps/WearMapView;->a:Ljava/lang/String;

    .line 47
    iput v1, p0, Lcom/amap/api/maps/WearMapView;->h:I

    .line 87
    const v0, 0x10100dc

    invoke-interface {p2, v0, v1}, Landroid/util/AttributeSet;->getAttributeIntValue(II)I

    move-result v0

    iput v0, p0, Lcom/amap/api/maps/WearMapView;->h:I

    .line 88
    invoke-virtual {p0}, Lcom/amap/api/maps/WearMapView;->getMapFragmentDelegate()Lcom/autonavi/amap/mapcore/interfaces/IMapFragmentDelegate;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/autonavi/amap/mapcore/interfaces/IMapFragmentDelegate;->setContext(Landroid/content/Context;)V

    .line 89
    invoke-virtual {p0}, Lcom/amap/api/maps/WearMapView;->getMapFragmentDelegate()Lcom/autonavi/amap/mapcore/interfaces/IMapFragmentDelegate;

    move-result-object v0

    iget v1, p0, Lcom/amap/api/maps/WearMapView;->h:I

    invoke-interface {v0, v1}, Lcom/autonavi/amap/mapcore/interfaces/IMapFragmentDelegate;->setVisibility(I)V

    .line 91
    invoke-direct {p0, p1}, Lcom/amap/api/maps/WearMapView;->a(Landroid/content/Context;)V

    .line 92
    invoke-direct {p0, p1}, Lcom/amap/api/maps/WearMapView;->b(Landroid/content/Context;)V

    .line 93
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/amap/api/maps/AMapOptions;)V
    .locals 1

    .prologue
    .line 101
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    .line 36
    const-class v0, Lcom/amap/api/maps/WearMapView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/maps/WearMapView;->a:Ljava/lang/String;

    .line 47
    const/4 v0, 0x0

    iput v0, p0, Lcom/amap/api/maps/WearMapView;->h:I

    .line 102
    invoke-virtual {p0}, Lcom/amap/api/maps/WearMapView;->getMapFragmentDelegate()Lcom/autonavi/amap/mapcore/interfaces/IMapFragmentDelegate;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/autonavi/amap/mapcore/interfaces/IMapFragmentDelegate;->setContext(Landroid/content/Context;)V

    .line 103
    invoke-virtual {p0}, Lcom/amap/api/maps/WearMapView;->getMapFragmentDelegate()Lcom/autonavi/amap/mapcore/interfaces/IMapFragmentDelegate;

    move-result-object v0

    invoke-interface {v0, p2}, Lcom/autonavi/amap/mapcore/interfaces/IMapFragmentDelegate;->setOptions(Lcom/amap/api/maps/AMapOptions;)V

    .line 105
    invoke-direct {p0, p1}, Lcom/amap/api/maps/WearMapView;->a(Landroid/content/Context;)V

    .line 106
    invoke-direct {p0, p1}, Lcom/amap/api/maps/WearMapView;->b(Landroid/content/Context;)V

    .line 107
    return-void
.end method

.method private a(Landroid/content/Context;)V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 245
    const-string/jumbo v0, "window"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 246
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 247
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    .line 248
    invoke-virtual {v0, v1}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 249
    iget v0, v1, Landroid/graphics/Point;->x:I

    sput v0, Lcom/amap/api/maps/WearMapView;->f:I

    .line 250
    iget v0, v1, Landroid/graphics/Point;->y:I

    sput v0, Lcom/amap/api/maps/WearMapView;->g:I

    .line 252
    return-void
.end method

.method private a(Landroid/view/View;)V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/high16 v3, 0x40000000    # 2.0f

    const/4 v1, -0x2

    const/4 v2, 0x0

    .line 319
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 320
    if-nez v0, :cond_0

    .line 321
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 324
    :cond_0
    iget v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 326
    if-lez v1, :cond_1

    .line 327
    invoke-static {v1, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 332
    :goto_0
    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 334
    if-lez v0, :cond_2

    .line 335
    invoke-static {v0, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 340
    :goto_1
    invoke-virtual {p1, v1, v0}, Landroid/view/View;->measure(II)V

    .line 341
    return-void

    .line 329
    :cond_1
    invoke-static {v2, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    goto :goto_0

    .line 337
    :cond_2
    invoke-static {v2, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    goto :goto_1
.end method

.method private b(Landroid/content/Context;)V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v3, 0x0

    .line 255
    new-instance v0, Lcom/amap/api/maps/SwipeDismissView;

    invoke-direct {v0, p1, p0}, Lcom/amap/api/maps/SwipeDismissView;-><init>(Landroid/content/Context;Landroid/view/View;)V

    iput-object v0, p0, Lcom/amap/api/maps/WearMapView;->e:Lcom/amap/api/maps/SwipeDismissView;

    .line 256
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    const/high16 v1, 0x41f00000    # 30.0f

    mul-float/2addr v0, v1

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr v0, v1

    float-to-int v0, v0

    .line 257
    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    sget v2, Lcom/amap/api/maps/WearMapView;->g:I

    invoke-direct {v1, v0, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 258
    iget-object v0, p0, Lcom/amap/api/maps/WearMapView;->e:Lcom/amap/api/maps/SwipeDismissView;

    invoke-static {v3, v3, v3, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/amap/api/maps/SwipeDismissView;->setBackgroundColor(I)V

    .line 259
    invoke-static {v3, v3, v3, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/amap/api/maps/WearMapView;->setBackgroundColor(I)V

    .line 261
    iget-object v0, p0, Lcom/amap/api/maps/WearMapView;->e:Lcom/amap/api/maps/SwipeDismissView;

    invoke-virtual {p0, v0, v1}, Lcom/amap/api/maps/WearMapView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 262
    return-void
.end method


# virtual methods
.method public getMap()Lcom/amap/api/maps/AMap;
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 124
    invoke-virtual {p0}, Lcom/amap/api/maps/WearMapView;->getMapFragmentDelegate()Lcom/autonavi/amap/mapcore/interfaces/IMapFragmentDelegate;

    move-result-object v0

    .line 127
    :try_start_0
    invoke-interface {v0}, Lcom/autonavi/amap/mapcore/interfaces/IMapFragmentDelegate;->getMap()Lcom/autonavi/amap/mapcore/interfaces/IAMap;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 131
    if-nez v0, :cond_0

    .line 132
    const/4 v0, 0x0

    .line 139
    :goto_0
    return-object v0

    .line 128
    :catch_0
    move-exception v0

    .line 129
    new-instance v1, Lcom/amap/api/maps/model/RuntimeRemoteException;

    invoke-direct {v1, v0}, Lcom/amap/api/maps/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v1

    .line 134
    :cond_0
    iget-object v1, p0, Lcom/amap/api/maps/WearMapView;->c:Lcom/amap/api/maps/AMap;

    if-nez v1, :cond_1

    .line 135
    new-instance v1, Lcom/amap/api/maps/AMap;

    invoke-direct {v1, v0}, Lcom/amap/api/maps/AMap;-><init>(Lcom/autonavi/amap/mapcore/interfaces/IAMap;)V

    iput-object v1, p0, Lcom/amap/api/maps/WearMapView;->c:Lcom/amap/api/maps/AMap;

    .line 139
    :cond_1
    iget-object v0, p0, Lcom/amap/api/maps/WearMapView;->c:Lcom/amap/api/maps/AMap;

    goto :goto_0
.end method

.method protected getMapFragmentDelegate()Lcom/autonavi/amap/mapcore/interfaces/IMapFragmentDelegate;
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 110
    iget-object v0, p0, Lcom/amap/api/maps/WearMapView;->b:Lcom/autonavi/amap/mapcore/interfaces/IMapFragmentDelegate;

    if-nez v0, :cond_0

    .line 111
    new-instance v0, Lcom/amap/api/mapcore/util/p;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/amap/api/mapcore/util/p;-><init>(I)V

    iput-object v0, p0, Lcom/amap/api/maps/WearMapView;->b:Lcom/autonavi/amap/mapcore/interfaces/IMapFragmentDelegate;

    .line 113
    :cond_0
    iget-object v0, p0, Lcom/amap/api/maps/WearMapView;->b:Lcom/autonavi/amap/mapcore/interfaces/IMapFragmentDelegate;

    return-object v0
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 149
    :try_start_0
    invoke-virtual {p0}, Lcom/amap/api/maps/WearMapView;->getMapFragmentDelegate()Lcom/autonavi/amap/mapcore/interfaces/IMapFragmentDelegate;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2, p1}, Lcom/autonavi/amap/mapcore/interfaces/IMapFragmentDelegate;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/maps/WearMapView;->d:Landroid/view/View;

    .line 151
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x1

    invoke-direct {v0, v1, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 155
    iget-object v1, p0, Lcom/amap/api/maps/WearMapView;->d:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2, v0}, Lcom/amap/api/maps/WearMapView;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 159
    :goto_0
    return-void

    .line 156
    :catch_0
    move-exception v0

    .line 157
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public final onDestroy()V
    .locals 1

    .prologue
    .line 194
    :try_start_0
    invoke-virtual {p0}, Lcom/amap/api/maps/WearMapView;->getMapFragmentDelegate()Lcom/autonavi/amap/mapcore/interfaces/IMapFragmentDelegate;

    move-result-object v0

    .line 195
    invoke-interface {v0}, Lcom/autonavi/amap/mapcore/interfaces/IMapFragmentDelegate;->onDestroy()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 200
    :goto_0
    return-void

    .line 197
    :catch_0
    move-exception v0

    .line 198
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public onDismiss()V
    .locals 0

    .prologue
    .line 345
    invoke-virtual {p0}, Lcom/amap/api/maps/WearMapView;->removeAllViews()V

    .line 346
    return-void
.end method

.method public onEnterAmbient(Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 349
    invoke-virtual {p0}, Lcom/amap/api/maps/WearMapView;->onResume()V

    .line 350
    return-void
.end method

.method public onExitAmbient()V
    .locals 0

    .prologue
    .line 353
    invoke-virtual {p0}, Lcom/amap/api/maps/WearMapView;->onPause()V

    .line 354
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v1, 0x0

    .line 298
    invoke-virtual {p0}, Lcom/amap/api/maps/WearMapView;->getChildCount()I

    move-result v2

    move v0, v1

    .line 302
    :goto_0
    if-ge v0, v2, :cond_2

    .line 303
    invoke-virtual {p0, v0}, Lcom/amap/api/maps/WearMapView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 305
    iget-object v4, p0, Lcom/amap/api/maps/WearMapView;->d:Landroid/view/View;

    if-ne v3, v4, :cond_1

    .line 306
    invoke-virtual {p0}, Lcom/amap/api/maps/WearMapView;->getWidth()I

    move-result v4

    invoke-virtual {p0}, Lcom/amap/api/maps/WearMapView;->getHeight()I

    move-result v5

    invoke-virtual {v3, v1, v1, v4, v5}, Landroid/view/View;->layout(IIII)V

    .line 302
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 307
    :cond_1
    iget-object v4, p0, Lcom/amap/api/maps/WearMapView;->e:Lcom/amap/api/maps/SwipeDismissView;

    if-ne v3, v4, :cond_0

    .line 308
    iget-object v3, p0, Lcom/amap/api/maps/WearMapView;->e:Lcom/amap/api/maps/SwipeDismissView;

    invoke-direct {p0, v3}, Lcom/amap/api/maps/WearMapView;->a(Landroid/view/View;)V

    .line 309
    iget-object v3, p0, Lcom/amap/api/maps/WearMapView;->e:Lcom/amap/api/maps/SwipeDismissView;

    invoke-virtual {v3}, Lcom/amap/api/maps/SwipeDismissView;->getMeasuredWidth()I

    move-result v3

    .line 312
    iget-object v4, p0, Lcom/amap/api/maps/WearMapView;->e:Lcom/amap/api/maps/SwipeDismissView;

    invoke-virtual {v4, v1, v1, v3, p4}, Lcom/amap/api/maps/SwipeDismissView;->layout(IIII)V

    goto :goto_1

    .line 316
    :cond_2
    return-void
.end method

.method public final onLowMemory()V
    .locals 1

    .prologue
    .line 209
    :try_start_0
    invoke-virtual {p0}, Lcom/amap/api/maps/WearMapView;->getMapFragmentDelegate()Lcom/autonavi/amap/mapcore/interfaces/IMapFragmentDelegate;

    move-result-object v0

    invoke-interface {v0}, Lcom/autonavi/amap/mapcore/interfaces/IMapFragmentDelegate;->onLowMemory()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 213
    :goto_0
    return-void

    .line 210
    :catch_0
    move-exception v0

    .line 211
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method protected onMeasure(II)V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 279
    invoke-virtual {p0}, Lcom/amap/api/maps/WearMapView;->getChildCount()I

    move-result v3

    .line 280
    const/4 v0, 0x0

    move v2, v0

    :goto_0
    if-ge v2, v3, :cond_1

    .line 282
    invoke-virtual {p0, v2}, Lcom/amap/api/maps/WearMapView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 283
    instance-of v0, v1, Lcom/amap/api/maps/SwipeDismissView;

    if-eqz v0, :cond_0

    move-object v0, v1

    .line 284
    check-cast v0, Lcom/amap/api/maps/SwipeDismissView;

    .line 285
    invoke-virtual {v0}, Lcom/amap/api/maps/SwipeDismissView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    iget v4, v4, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-virtual {v0}, Lcom/amap/api/maps/SwipeDismissView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {v1, v4, v0}, Landroid/view/View;->measure(II)V

    .line 280
    :goto_1
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 287
    :cond_0
    invoke-virtual {v1, p1, p2}, Landroid/view/View;->measure(II)V

    goto :goto_1

    .line 292
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->onMeasure(II)V

    .line 293
    return-void
.end method

.method public final onPause()V
    .locals 1

    .prologue
    .line 181
    :try_start_0
    invoke-virtual {p0}, Lcom/amap/api/maps/WearMapView;->getMapFragmentDelegate()Lcom/autonavi/amap/mapcore/interfaces/IMapFragmentDelegate;

    move-result-object v0

    invoke-interface {v0}, Lcom/autonavi/amap/mapcore/interfaces/IMapFragmentDelegate;->onPause()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 185
    :goto_0
    return-void

    .line 182
    :catch_0
    move-exception v0

    .line 183
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public final onResume()V
    .locals 1

    .prologue
    .line 168
    :try_start_0
    invoke-virtual {p0}, Lcom/amap/api/maps/WearMapView;->getMapFragmentDelegate()Lcom/autonavi/amap/mapcore/interfaces/IMapFragmentDelegate;

    move-result-object v0

    invoke-interface {v0}, Lcom/autonavi/amap/mapcore/interfaces/IMapFragmentDelegate;->onResume()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 172
    :goto_0
    return-void

    .line 169
    :catch_0
    move-exception v0

    .line 170
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public final onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 222
    :try_start_0
    invoke-virtual {p0}, Lcom/amap/api/maps/WearMapView;->getMapFragmentDelegate()Lcom/autonavi/amap/mapcore/interfaces/IMapFragmentDelegate;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/autonavi/amap/mapcore/interfaces/IMapFragmentDelegate;->onSaveInstanceState(Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 226
    :goto_0
    return-void

    .line 223
    :catch_0
    move-exception v0

    .line 224
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public setLayerType(ILandroid/graphics/Paint;)V
    .locals 0

    .prologue
    .line 231
    return-void
.end method

.method public setOnDismissCallbackListener(Lcom/amap/api/maps/WearMapView$OnDismissCallback;)V
    .locals 1

    .prologue
    .line 265
    iget-object v0, p0, Lcom/amap/api/maps/WearMapView;->e:Lcom/amap/api/maps/SwipeDismissView;

    if-eqz v0, :cond_0

    .line 266
    iget-object v0, p0, Lcom/amap/api/maps/WearMapView;->e:Lcom/amap/api/maps/SwipeDismissView;

    invoke-virtual {v0, p1}, Lcom/amap/api/maps/SwipeDismissView;->setCallback(Lcom/amap/api/maps/WearMapView$OnDismissCallback;)V

    .line 268
    :cond_0
    return-void
.end method

.method public setVisibility(I)V
    .locals 1

    .prologue
    .line 239
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 240
    invoke-virtual {p0}, Lcom/amap/api/maps/WearMapView;->getMapFragmentDelegate()Lcom/autonavi/amap/mapcore/interfaces/IMapFragmentDelegate;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/autonavi/amap/mapcore/interfaces/IMapFragmentDelegate;->setVisibility(I)V

    .line 241
    return-void
.end method
