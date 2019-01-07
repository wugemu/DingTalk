.class public Lcom/amap/api/maps/SwipeDismissView;
.super Landroid/widget/RelativeLayout;
.source "SwipeDismissView.java"


# instance fields
.field protected onDismissCallback:Lcom/amap/api/maps/WearMapView$OnDismissCallback;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;ILandroid/view/View;)V
    .locals 1

    .prologue
    .line 38
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 21
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/api/maps/SwipeDismissView;->onDismissCallback:Lcom/amap/api/maps/WearMapView$OnDismissCallback;

    .line 39
    invoke-virtual {p0, p4}, Lcom/amap/api/maps/SwipeDismissView;->setOnTouchListener(Landroid/view/View;)V

    .line 40
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;Landroid/view/View;)V
    .locals 1

    .prologue
    .line 33
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 21
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/api/maps/SwipeDismissView;->onDismissCallback:Lcom/amap/api/maps/WearMapView$OnDismissCallback;

    .line 34
    invoke-virtual {p0, p3}, Lcom/amap/api/maps/SwipeDismissView;->setOnTouchListener(Landroid/view/View;)V

    .line 35
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/View;)V
    .locals 1

    .prologue
    .line 28
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 21
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/api/maps/SwipeDismissView;->onDismissCallback:Lcom/amap/api/maps/WearMapView$OnDismissCallback;

    .line 29
    invoke-virtual {p0, p2}, Lcom/amap/api/maps/SwipeDismissView;->setOnTouchListener(Landroid/view/View;)V

    .line 30
    return-void
.end method


# virtual methods
.method public setCallback(Lcom/amap/api/maps/WearMapView$OnDismissCallback;)V
    .locals 0

    .prologue
    .line 24
    iput-object p1, p0, Lcom/amap/api/maps/SwipeDismissView;->onDismissCallback:Lcom/amap/api/maps/WearMapView$OnDismissCallback;

    .line 25
    return-void
.end method

.method protected setOnTouchListener(Landroid/view/View;)V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 43
    new-instance v0, Lcom/amap/api/maps/SwipeDismissTouchListener;

    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    new-instance v2, Lcom/amap/api/maps/SwipeDismissCallBack;

    invoke-direct {v2, p0}, Lcom/amap/api/maps/SwipeDismissCallBack;-><init>(Lcom/amap/api/maps/SwipeDismissView;)V

    invoke-direct {v0, p1, v1, v2}, Lcom/amap/api/maps/SwipeDismissTouchListener;-><init>(Landroid/view/View;Ljava/lang/Object;Lcom/amap/api/maps/SwipeDismissTouchListener$DismissCallbacks;)V

    .line 44
    invoke-virtual {p0, v0}, Lcom/amap/api/maps/SwipeDismissView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 45
    return-void
.end method
