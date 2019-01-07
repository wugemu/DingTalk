.class final Lcom/alibaba/lightapp/runtime/location/GMapFragment$4;
.super Ljava/lang/Object;
.source "GMapFragment.java"

# interfaces
.implements Lcom/alibaba/lightapp/runtime/location/GMapViewEx$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/lightapp/runtime/location/GMapFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/lightapp/runtime/location/GMapFragment;


# direct methods
.method constructor <init>(Lcom/alibaba/lightapp/runtime/location/GMapFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/lightapp/runtime/location/GMapFragment;

    .prologue
    .line 409
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/location/GMapFragment$4;->a:Lcom/alibaba/lightapp/runtime/location/GMapFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/MotionEvent;)V
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 412
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/location/GMapFragment$4;->a:Lcom/alibaba/lightapp/runtime/location/GMapFragment;

    invoke-virtual {v0, p1}, Lcom/alibaba/lightapp/runtime/location/GMapFragment;->a(Landroid/view/MotionEvent;)V

    .line 413
    return-void
.end method
