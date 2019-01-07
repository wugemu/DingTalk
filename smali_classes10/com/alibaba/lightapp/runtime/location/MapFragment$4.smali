.class final Lcom/alibaba/lightapp/runtime/location/MapFragment$4;
.super Ljava/lang/Object;
.source "MapFragment.java"

# interfaces
.implements Lcom/alibaba/lightapp/runtime/location/MapViewEx$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/lightapp/runtime/location/MapFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/lightapp/runtime/location/MapFragment;


# direct methods
.method constructor <init>(Lcom/alibaba/lightapp/runtime/location/MapFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/lightapp/runtime/location/MapFragment;

    .prologue
    .line 432
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/location/MapFragment$4;->a:Lcom/alibaba/lightapp/runtime/location/MapFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/MotionEvent;)V
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 435
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/location/MapFragment$4;->a:Lcom/alibaba/lightapp/runtime/location/MapFragment;

    invoke-virtual {v0, p1}, Lcom/alibaba/lightapp/runtime/location/MapFragment;->a(Landroid/view/MotionEvent;)V

    .line 436
    return-void
.end method
