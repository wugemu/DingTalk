.class final Lcom/alibaba/lightapp/runtime/location/PoiSearchActivity$2;
.super Ljava/lang/Object;
.source "PoiSearchActivity.java"

# interfaces
.implements Landroid/widget/SearchView$OnQueryTextListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/lightapp/runtime/location/PoiSearchActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/lightapp/runtime/location/PoiSearchActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/lightapp/runtime/location/PoiSearchActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/lightapp/runtime/location/PoiSearchActivity;

    .prologue
    .line 118
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/location/PoiSearchActivity$2;->a:Lcom/alibaba/lightapp/runtime/location/PoiSearchActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onQueryTextChange(Ljava/lang/String;)Z
    .locals 1
    .param p1, "newText"    # Ljava/lang/String;

    .prologue
    .line 135
    const/4 v0, 0x0

    return v0
.end method

.method public final onQueryTextSubmit(Ljava/lang/String;)Z
    .locals 3
    .param p1, "query"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v2, 0x0

    .line 122
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/location/PoiSearchActivity$2;->a:Lcom/alibaba/lightapp/runtime/location/PoiSearchActivity;

    invoke-static {v0}, Lcom/alibaba/lightapp/runtime/location/PoiSearchActivity;->a(Lcom/alibaba/lightapp/runtime/location/PoiSearchActivity;)Landroid/widget/ProgressBar;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 125
    :try_start_0
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/location/PoiSearchActivity$2;->a:Lcom/alibaba/lightapp/runtime/location/PoiSearchActivity;

    invoke-static {v0, p1}, Lcom/alibaba/lightapp/runtime/location/PoiSearchActivity;->a(Lcom/alibaba/lightapp/runtime/location/PoiSearchActivity;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 129
    :goto_0
    return v2

    .line 127
    :catch_0
    move-exception v0

    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/location/PoiSearchActivity$2;->a:Lcom/alibaba/lightapp/runtime/location/PoiSearchActivity;

    invoke-static {v0}, Lcom/alibaba/lightapp/runtime/location/PoiSearchActivity;->a(Lcom/alibaba/lightapp/runtime/location/PoiSearchActivity;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto :goto_0
.end method
