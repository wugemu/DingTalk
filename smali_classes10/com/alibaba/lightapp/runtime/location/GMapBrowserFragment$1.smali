.class final Lcom/alibaba/lightapp/runtime/location/GMapBrowserFragment$1;
.super Ljava/lang/Object;
.source "GMapBrowserFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/lightapp/runtime/location/GMapBrowserFragment;->onInfoWindowClick(Lcom/google/android/gms/maps/model/Marker;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/lightapp/runtime/location/GMapBrowserFragment;


# direct methods
.method constructor <init>(Lcom/alibaba/lightapp/runtime/location/GMapBrowserFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/lightapp/runtime/location/GMapBrowserFragment;

    .prologue
    .line 281
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/location/GMapBrowserFragment$1;->a:Lcom/alibaba/lightapp/runtime/location/GMapBrowserFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 11
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v10

    invoke-static {v10}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 284
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/location/GMapBrowserFragment$1;->a:Lcom/alibaba/lightapp/runtime/location/GMapBrowserFragment;

    invoke-static {v0}, Lcom/alibaba/lightapp/runtime/location/GMapBrowserFragment;->a(Lcom/alibaba/lightapp/runtime/location/GMapBrowserFragment;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 285
    if-ltz p2, :cond_0

    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/location/GMapBrowserFragment$1;->a:Lcom/alibaba/lightapp/runtime/location/GMapBrowserFragment;

    invoke-static {v0}, Lcom/alibaba/lightapp/runtime/location/GMapBrowserFragment;->a(Lcom/alibaba/lightapp/runtime/location/GMapBrowserFragment;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p2, v0, :cond_0

    .line 286
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/location/GMapBrowserFragment$1;->a:Lcom/alibaba/lightapp/runtime/location/GMapBrowserFragment;

    invoke-static {v0}, Lcom/alibaba/lightapp/runtime/location/GMapBrowserFragment;->a(Lcom/alibaba/lightapp/runtime/location/GMapBrowserFragment;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lhld;

    .line 287
    .local v1, "m":Lhld;
    invoke-virtual {v1}, Lhld;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 288
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/location/GMapBrowserFragment$1;->a:Lcom/alibaba/lightapp/runtime/location/GMapBrowserFragment;

    invoke-static {v0}, Lcom/alibaba/lightapp/runtime/location/GMapBrowserFragment;->b(Lcom/alibaba/lightapp/runtime/location/GMapBrowserFragment;)Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/location/GMapBrowserFragment$1;->a:Lcom/alibaba/lightapp/runtime/location/GMapBrowserFragment;

    invoke-static {v0}, Lcom/alibaba/lightapp/runtime/location/GMapBrowserFragment;->c(Lcom/alibaba/lightapp/runtime/location/GMapBrowserFragment;)Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 289
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/location/GMapBrowserFragment$1;->a:Lcom/alibaba/lightapp/runtime/location/GMapBrowserFragment;

    invoke-static {v0}, Lcom/alibaba/lightapp/runtime/location/GMapBrowserFragment;->b(Lcom/alibaba/lightapp/runtime/location/GMapBrowserFragment;)Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v0

    iget-wide v2, v0, Lcom/google/android/gms/maps/model/LatLng;->latitude:D

    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/location/GMapBrowserFragment$1;->a:Lcom/alibaba/lightapp/runtime/location/GMapBrowserFragment;

    invoke-static {v0}, Lcom/alibaba/lightapp/runtime/location/GMapBrowserFragment;->b(Lcom/alibaba/lightapp/runtime/location/GMapBrowserFragment;)Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v0

    iget-wide v4, v0, Lcom/google/android/gms/maps/model/LatLng;->longitude:D

    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/location/GMapBrowserFragment$1;->a:Lcom/alibaba/lightapp/runtime/location/GMapBrowserFragment;

    invoke-static {v0}, Lcom/alibaba/lightapp/runtime/location/GMapBrowserFragment;->c(Lcom/alibaba/lightapp/runtime/location/GMapBrowserFragment;)Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v0

    iget-wide v6, v0, Lcom/google/android/gms/maps/model/LatLng;->latitude:D

    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/location/GMapBrowserFragment$1;->a:Lcom/alibaba/lightapp/runtime/location/GMapBrowserFragment;

    invoke-static {v0}, Lcom/alibaba/lightapp/runtime/location/GMapBrowserFragment;->c(Lcom/alibaba/lightapp/runtime/location/GMapBrowserFragment;)Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v0

    iget-wide v8, v0, Lcom/google/android/gms/maps/model/LatLng;->longitude:D

    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/location/GMapBrowserFragment$1;->a:Lcom/alibaba/lightapp/runtime/location/GMapBrowserFragment;

    invoke-static {v0}, Lcom/alibaba/lightapp/runtime/location/GMapBrowserFragment;->d(Lcom/alibaba/lightapp/runtime/location/GMapBrowserFragment;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual/range {v1 .. v10}, Lhld;->a(DDDDLjava/lang/String;)Z

    .line 296
    .end local v1    # "m":Lhld;
    :cond_0
    :goto_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 297
    return-void

    .line 292
    .restart local v1    # "m":Lhld;
    :cond_1
    const-string/jumbo v0, "NAVIGATOR"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/navigator/Navigator;

    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/location/GMapBrowserFragment$1;->a:Lcom/alibaba/lightapp/runtime/location/GMapBrowserFragment;

    invoke-virtual {v2}, Lcom/alibaba/lightapp/runtime/location/GMapBrowserFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/alibaba/doraemon/navigator/Navigator;->from(Landroid/content/Context;)Lcom/alibaba/doraemon/navigator/Navigator;

    move-result-object v0

    invoke-virtual {v1}, Lhld;->b()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/alibaba/doraemon/navigator/Navigator;->to(Ljava/lang/String;)V

    goto :goto_0
.end method
