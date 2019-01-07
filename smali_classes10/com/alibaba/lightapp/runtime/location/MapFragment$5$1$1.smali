.class final Lcom/alibaba/lightapp/runtime/location/MapFragment$5$1$1;
.super Ljava/lang/Object;
.source "MapFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/lightapp/runtime/location/MapFragment$5$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/alibaba/lightapp/runtime/location/MapFragment$5$1;


# direct methods
.method constructor <init>(Lcom/alibaba/lightapp/runtime/location/MapFragment$5$1;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$2"    # Lcom/alibaba/lightapp/runtime/location/MapFragment$5$1;

    .prologue
    .line 498
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/location/MapFragment$5$1$1;->b:Lcom/alibaba/lightapp/runtime/location/MapFragment$5$1;

    iput-object p2, p0, Lcom/alibaba/lightapp/runtime/location/MapFragment$5$1$1;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 501
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/location/MapFragment$5$1$1;->b:Lcom/alibaba/lightapp/runtime/location/MapFragment$5$1;

    iget-object v0, v0, Lcom/alibaba/lightapp/runtime/location/MapFragment$5$1;->b:Lcom/alibaba/lightapp/runtime/location/MapFragment$5;

    iget-object v0, v0, Lcom/alibaba/lightapp/runtime/location/MapFragment$5;->b:Lcom/alibaba/lightapp/runtime/location/AbstractMapFragment$b;

    if-eqz v0, :cond_0

    .line 502
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/location/MapFragment$5$1$1;->b:Lcom/alibaba/lightapp/runtime/location/MapFragment$5$1;

    iget-object v0, v0, Lcom/alibaba/lightapp/runtime/location/MapFragment$5$1;->b:Lcom/alibaba/lightapp/runtime/location/MapFragment$5;

    iget-object v0, v0, Lcom/alibaba/lightapp/runtime/location/MapFragment$5;->b:Lcom/alibaba/lightapp/runtime/location/AbstractMapFragment$b;

    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/location/MapFragment$5$1$1;->a:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/alibaba/lightapp/runtime/location/AbstractMapFragment$b;->a(Ljava/lang/String;)V

    .line 504
    :cond_0
    return-void
.end method
