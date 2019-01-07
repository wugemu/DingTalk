.class public Lcom/alibaba/lightapp/runtime/location/GMapViewEx;
.super Lcom/google/android/gms/maps/MapView;
.source "GMapViewEx.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/lightapp/runtime/location/GMapViewEx$a;
    }
.end annotation


# instance fields
.field private a:Lcom/alibaba/lightapp/runtime/location/GMapViewEx$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 20
    invoke-direct {p0, p1}, Lcom/google/android/gms/maps/MapView;-><init>(Landroid/content/Context;)V

    .line 17
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alibaba/lightapp/runtime/location/GMapViewEx;->a:Lcom/alibaba/lightapp/runtime/location/GMapViewEx$a;

    .line 21
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attributeSet"    # Landroid/util/AttributeSet;

    .prologue
    .line 24
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/maps/MapView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 17
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alibaba/lightapp/runtime/location/GMapViewEx;->a:Lcom/alibaba/lightapp/runtime/location/GMapViewEx$a;

    .line 25
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attributeSet"    # Landroid/util/AttributeSet;
    .param p3, "i"    # I

    .prologue
    .line 28
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/gms/maps/MapView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 17
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alibaba/lightapp/runtime/location/GMapViewEx;->a:Lcom/alibaba/lightapp/runtime/location/GMapViewEx$a;

    .line 29
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
    .line 33
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/location/GMapViewEx;->a:Lcom/alibaba/lightapp/runtime/location/GMapViewEx$a;

    if-eqz v0, :cond_0

    .line 34
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/location/GMapViewEx;->a:Lcom/alibaba/lightapp/runtime/location/GMapViewEx$a;

    invoke-interface {v0, p1}, Lcom/alibaba/lightapp/runtime/location/GMapViewEx$a;->a(Landroid/view/MotionEvent;)V

    .line 36
    :cond_0
    invoke-super {p0, p1}, Lcom/google/android/gms/maps/MapView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public setOnTouchEvent(Lcom/alibaba/lightapp/runtime/location/GMapViewEx$a;)V
    .locals 0
    .param p1, "event"    # Lcom/alibaba/lightapp/runtime/location/GMapViewEx$a;

    .prologue
    .line 45
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/location/GMapViewEx;->a:Lcom/alibaba/lightapp/runtime/location/GMapViewEx$a;

    .line 46
    return-void
.end method
