.class public Lcom/alibaba/lightapp/runtime/location/MapViewEx;
.super Lcom/amap/api/maps/MapView;
.source "MapViewEx.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/lightapp/runtime/location/MapViewEx$a;
    }
.end annotation


# instance fields
.field private a:Landroid/content/Context;

.field private b:Lcom/alibaba/lightapp/runtime/location/MapViewEx$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 20
    invoke-direct {p0, p1}, Lcom/amap/api/maps/MapView;-><init>(Landroid/content/Context;)V

    .line 16
    iput-object v0, p0, Lcom/alibaba/lightapp/runtime/location/MapViewEx;->a:Landroid/content/Context;

    .line 17
    iput-object v0, p0, Lcom/alibaba/lightapp/runtime/location/MapViewEx;->b:Lcom/alibaba/lightapp/runtime/location/MapViewEx$a;

    .line 21
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/location/MapViewEx;->a:Landroid/content/Context;

    .line 22
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attributeSet"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v0, 0x0

    .line 25
    invoke-direct {p0, p1, p2}, Lcom/amap/api/maps/MapView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 16
    iput-object v0, p0, Lcom/alibaba/lightapp/runtime/location/MapViewEx;->a:Landroid/content/Context;

    .line 17
    iput-object v0, p0, Lcom/alibaba/lightapp/runtime/location/MapViewEx;->b:Lcom/alibaba/lightapp/runtime/location/MapViewEx$a;

    .line 26
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/location/MapViewEx;->a:Landroid/content/Context;

    .line 27
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attributeSet"    # Landroid/util/AttributeSet;
    .param p3, "i"    # I

    .prologue
    const/4 v0, 0x0

    .line 30
    invoke-direct {p0, p1, p2, p3}, Lcom/amap/api/maps/MapView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 16
    iput-object v0, p0, Lcom/alibaba/lightapp/runtime/location/MapViewEx;->a:Landroid/content/Context;

    .line 17
    iput-object v0, p0, Lcom/alibaba/lightapp/runtime/location/MapViewEx;->b:Lcom/alibaba/lightapp/runtime/location/MapViewEx$a;

    .line 31
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/location/MapViewEx;->a:Landroid/content/Context;

    .line 32
    return-void
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "ev"    # Landroid/view/MotionEvent;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 36
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/location/MapViewEx;->b:Lcom/alibaba/lightapp/runtime/location/MapViewEx$a;

    if-eqz v0, :cond_0

    .line 37
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/location/MapViewEx;->b:Lcom/alibaba/lightapp/runtime/location/MapViewEx$a;

    invoke-interface {v0, p1}, Lcom/alibaba/lightapp/runtime/location/MapViewEx$a;->a(Landroid/view/MotionEvent;)V

    .line 39
    :cond_0
    invoke-super {p0, p1}, Lcom/amap/api/maps/MapView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public setOnTouchEvent(Lcom/alibaba/lightapp/runtime/location/MapViewEx$a;)V
    .locals 0
    .param p1, "event"    # Lcom/alibaba/lightapp/runtime/location/MapViewEx$a;

    .prologue
    .line 48
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/location/MapViewEx;->b:Lcom/alibaba/lightapp/runtime/location/MapViewEx$a;

    .line 49
    return-void
.end method
