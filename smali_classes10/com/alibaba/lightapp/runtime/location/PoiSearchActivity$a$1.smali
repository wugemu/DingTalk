.class final Lcom/alibaba/lightapp/runtime/location/PoiSearchActivity$a$1;
.super Ljava/lang/Object;
.source "PoiSearchActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/lightapp/runtime/location/PoiSearchActivity$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lhku$a;

.field final synthetic b:Lcom/alibaba/lightapp/runtime/location/PoiSearchActivity$a;


# direct methods
.method constructor <init>(Lcom/alibaba/lightapp/runtime/location/PoiSearchActivity$a;Lhku$a;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/lightapp/runtime/location/PoiSearchActivity$a;

    .prologue
    .line 167
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/location/PoiSearchActivity$a$1;->b:Lcom/alibaba/lightapp/runtime/location/PoiSearchActivity$a;

    iput-object p2, p0, Lcom/alibaba/lightapp/runtime/location/PoiSearchActivity$a$1;->a:Lhku$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 170
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/location/PoiSearchActivity$a$1;->b:Lcom/alibaba/lightapp/runtime/location/PoiSearchActivity$a;

    invoke-static {v1}, Lcom/alibaba/lightapp/runtime/location/PoiSearchActivity$a;->a(Lcom/alibaba/lightapp/runtime/location/PoiSearchActivity$a;)I

    move-result v1

    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/location/PoiSearchActivity$a$1;->b:Lcom/alibaba/lightapp/runtime/location/PoiSearchActivity$a;

    iget-object v2, v2, Lcom/alibaba/lightapp/runtime/location/PoiSearchActivity$a;->a:Lcom/alibaba/lightapp/runtime/location/PoiSearchActivity;

    invoke-static {v2}, Lcom/alibaba/lightapp/runtime/location/PoiSearchActivity;->b(Lcom/alibaba/lightapp/runtime/location/PoiSearchActivity;)I

    move-result v2

    if-ne v1, v2, :cond_1

    .line 171
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/location/PoiSearchActivity$a$1;->b:Lcom/alibaba/lightapp/runtime/location/PoiSearchActivity$a;

    iget-object v1, v1, Lcom/alibaba/lightapp/runtime/location/PoiSearchActivity$a;->a:Lcom/alibaba/lightapp/runtime/location/PoiSearchActivity;

    invoke-static {v1}, Lcom/alibaba/lightapp/runtime/location/PoiSearchActivity;->d(Lcom/alibaba/lightapp/runtime/location/PoiSearchActivity;)Landroid/widget/ListView;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/location/PoiSearchActivity$a$1;->b:Lcom/alibaba/lightapp/runtime/location/PoiSearchActivity$a;

    iget-object v2, v2, Lcom/alibaba/lightapp/runtime/location/PoiSearchActivity$a;->a:Lcom/alibaba/lightapp/runtime/location/PoiSearchActivity;

    invoke-static {v2}, Lcom/alibaba/lightapp/runtime/location/PoiSearchActivity;->c(Lcom/alibaba/lightapp/runtime/location/PoiSearchActivity;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    .line 172
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/location/PoiSearchActivity$a$1;->b:Lcom/alibaba/lightapp/runtime/location/PoiSearchActivity$a;

    iget-object v1, v1, Lcom/alibaba/lightapp/runtime/location/PoiSearchActivity$a;->a:Lcom/alibaba/lightapp/runtime/location/PoiSearchActivity;

    invoke-static {v1}, Lcom/alibaba/lightapp/runtime/location/PoiSearchActivity;->a(Lcom/alibaba/lightapp/runtime/location/PoiSearchActivity;)Landroid/widget/ProgressBar;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 173
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/location/PoiSearchActivity$a$1;->b:Lcom/alibaba/lightapp/runtime/location/PoiSearchActivity$a;

    iget-object v1, v1, Lcom/alibaba/lightapp/runtime/location/PoiSearchActivity$a;->a:Lcom/alibaba/lightapp/runtime/location/PoiSearchActivity;

    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/location/PoiSearchActivity$a$1;->a:Lhku$a;

    invoke-static {v1, v2}, Lcom/alibaba/lightapp/runtime/location/PoiSearchActivity;->a(Lcom/alibaba/lightapp/runtime/location/PoiSearchActivity;Lhku$a;)Lhku$a;

    .line 174
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/location/PoiSearchActivity$a$1;->a:Lhku$a;

    if-eqz v1, :cond_2

    .line 175
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/location/PoiSearchActivity$a$1;->a:Lhku$a;

    iget-object v0, v1, Lhku$a;->b:Ljava/util/List;

    .line 176
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Lcom/amap/api/services/core/PoiItem;>;"
    if-eqz v0, :cond_1

    .line 177
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/location/PoiSearchActivity$a$1;->b:Lcom/alibaba/lightapp/runtime/location/PoiSearchActivity$a;

    iget-object v1, v1, Lcom/alibaba/lightapp/runtime/location/PoiSearchActivity$a;->a:Lcom/alibaba/lightapp/runtime/location/PoiSearchActivity;

    invoke-static {v1}, Lcom/alibaba/lightapp/runtime/location/PoiSearchActivity;->e(Lcom/alibaba/lightapp/runtime/location/PoiSearchActivity;)I

    move-result v1

    if-nez v1, :cond_0

    .line 178
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/location/PoiSearchActivity$a$1;->b:Lcom/alibaba/lightapp/runtime/location/PoiSearchActivity$a;

    iget-object v1, v1, Lcom/alibaba/lightapp/runtime/location/PoiSearchActivity$a;->a:Lcom/alibaba/lightapp/runtime/location/PoiSearchActivity;

    invoke-static {v1}, Lcom/alibaba/lightapp/runtime/location/PoiSearchActivity;->f(Lcom/alibaba/lightapp/runtime/location/PoiSearchActivity;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 180
    :cond_0
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/location/PoiSearchActivity$a$1;->b:Lcom/alibaba/lightapp/runtime/location/PoiSearchActivity$a;

    iget-object v1, v1, Lcom/alibaba/lightapp/runtime/location/PoiSearchActivity$a;->a:Lcom/alibaba/lightapp/runtime/location/PoiSearchActivity;

    invoke-static {v1}, Lcom/alibaba/lightapp/runtime/location/PoiSearchActivity;->f(Lcom/alibaba/lightapp/runtime/location/PoiSearchActivity;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 181
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/location/PoiSearchActivity$a$1;->b:Lcom/alibaba/lightapp/runtime/location/PoiSearchActivity$a;

    iget-object v1, v1, Lcom/alibaba/lightapp/runtime/location/PoiSearchActivity$a;->a:Lcom/alibaba/lightapp/runtime/location/PoiSearchActivity;

    invoke-static {v1}, Lcom/alibaba/lightapp/runtime/location/PoiSearchActivity;->g(Lcom/alibaba/lightapp/runtime/location/PoiSearchActivity;)Lcom/alibaba/lightapp/runtime/location/PoiSearchActivity$b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/lightapp/runtime/location/PoiSearchActivity$b;->notifyDataSetChanged()V

    .line 188
    .end local v0    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/amap/api/services/core/PoiItem;>;"
    :cond_1
    :goto_0
    return-void

    .line 185
    :cond_2
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v1

    const-string/jumbo v2, "poi_search_fail"

    invoke-interface {v1, v2}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;)V

    goto :goto_0
.end method
