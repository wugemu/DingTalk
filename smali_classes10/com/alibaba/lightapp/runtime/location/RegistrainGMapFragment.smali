.class public Lcom/alibaba/lightapp/runtime/location/RegistrainGMapFragment;
.super Lcom/alibaba/lightapp/runtime/location/GMapFragment;
.source "RegistrainGMapFragment.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/alibaba/lightapp/runtime/location/GMapFragment;-><init>()V

    return-void
.end method

.method public static k()Landroid/support/v4/app/Fragment;
    .locals 2

    .prologue
    .line 23
    new-instance v1, Lcom/alibaba/lightapp/runtime/location/RegistrainMapFragment;

    invoke-direct {v1}, Lcom/alibaba/lightapp/runtime/location/RegistrainMapFragment;-><init>()V

    .line 24
    .local v1, "fragment":Lcom/alibaba/lightapp/runtime/location/RegistrainMapFragment;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 25
    .local v0, "bundle":Landroid/os/Bundle;
    invoke-virtual {v1, v0}, Lcom/alibaba/lightapp/runtime/location/RegistrainMapFragment;->setArguments(Landroid/os/Bundle;)V

    .line 26
    return-object v1
.end method


# virtual methods
.method protected final a(F)I
    .locals 1
    .param p1, "accuracy"    # F

    .prologue
    .line 68
    float-to-int v0, p1

    add-int/lit8 v0, v0, 0x14

    return v0
.end method

.method protected final a(Landroid/view/MotionEvent;)V
    .locals 0
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 64
    return-void
.end method

.method protected final h()Z
    .locals 1

    .prologue
    .line 59
    const/4 v0, 0x0

    return v0
.end method

.method protected final j()Z
    .locals 1

    .prologue
    .line 54
    const/4 v0, 0x0

    return v0
.end method
