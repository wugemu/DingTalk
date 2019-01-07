.class final Lcom/alibaba/lightapp/runtime/location/LocationActivity$b$1;
.super Ljava/lang/Object;
.source "LocationActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/lightapp/runtime/location/LocationActivity$b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lhku$a;

.field final synthetic b:Lcom/alibaba/lightapp/runtime/location/LocationActivity$b;


# direct methods
.method constructor <init>(Lcom/alibaba/lightapp/runtime/location/LocationActivity$b;Lhku$a;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/lightapp/runtime/location/LocationActivity$b;

    .prologue
    .line 299
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/location/LocationActivity$b$1;->b:Lcom/alibaba/lightapp/runtime/location/LocationActivity$b;

    iput-object p2, p0, Lcom/alibaba/lightapp/runtime/location/LocationActivity$b$1;->a:Lhku$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 302
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/location/LocationActivity$b$1;->b:Lcom/alibaba/lightapp/runtime/location/LocationActivity$b;

    invoke-static {v1}, Lcom/alibaba/lightapp/runtime/location/LocationActivity$b;->a(Lcom/alibaba/lightapp/runtime/location/LocationActivity$b;)I

    move-result v1

    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/location/LocationActivity$b$1;->b:Lcom/alibaba/lightapp/runtime/location/LocationActivity$b;

    iget-object v2, v2, Lcom/alibaba/lightapp/runtime/location/LocationActivity$b;->a:Lcom/alibaba/lightapp/runtime/location/LocationActivity;

    invoke-static {v2}, Lcom/alibaba/lightapp/runtime/location/LocationActivity;->d(Lcom/alibaba/lightapp/runtime/location/LocationActivity;)I

    move-result v2

    if-ne v1, v2, :cond_4

    .line 303
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/location/LocationActivity$b$1;->b:Lcom/alibaba/lightapp/runtime/location/LocationActivity$b;

    iget-object v1, v1, Lcom/alibaba/lightapp/runtime/location/LocationActivity$b;->a:Lcom/alibaba/lightapp/runtime/location/LocationActivity;

    invoke-static {v1}, Lcom/alibaba/lightapp/runtime/location/LocationActivity;->c(Lcom/alibaba/lightapp/runtime/location/LocationActivity;)Landroid/widget/ListView;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/location/LocationActivity$b$1;->b:Lcom/alibaba/lightapp/runtime/location/LocationActivity$b;

    iget-object v2, v2, Lcom/alibaba/lightapp/runtime/location/LocationActivity$b;->a:Lcom/alibaba/lightapp/runtime/location/LocationActivity;

    invoke-static {v2}, Lcom/alibaba/lightapp/runtime/location/LocationActivity;->b(Lcom/alibaba/lightapp/runtime/location/LocationActivity;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    .line 304
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/location/LocationActivity$b$1;->b:Lcom/alibaba/lightapp/runtime/location/LocationActivity$b;

    iget-object v1, v1, Lcom/alibaba/lightapp/runtime/location/LocationActivity$b;->a:Lcom/alibaba/lightapp/runtime/location/LocationActivity;

    invoke-static {v1}, Lcom/alibaba/lightapp/runtime/location/LocationActivity;->e(Lcom/alibaba/lightapp/runtime/location/LocationActivity;)Landroid/widget/ProgressBar;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 305
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/location/LocationActivity$b$1;->b:Lcom/alibaba/lightapp/runtime/location/LocationActivity$b;

    iget-object v1, v1, Lcom/alibaba/lightapp/runtime/location/LocationActivity$b;->a:Lcom/alibaba/lightapp/runtime/location/LocationActivity;

    invoke-static {v1, v3}, Lcom/alibaba/lightapp/runtime/location/LocationActivity;->a(Lcom/alibaba/lightapp/runtime/location/LocationActivity;Z)Z

    .line 306
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/location/LocationActivity$b$1;->b:Lcom/alibaba/lightapp/runtime/location/LocationActivity$b;

    iget-object v1, v1, Lcom/alibaba/lightapp/runtime/location/LocationActivity$b;->a:Lcom/alibaba/lightapp/runtime/location/LocationActivity;

    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/location/LocationActivity$b$1;->a:Lhku$a;

    invoke-static {v1, v2}, Lcom/alibaba/lightapp/runtime/location/LocationActivity;->a(Lcom/alibaba/lightapp/runtime/location/LocationActivity;Lhku$a;)Lhku$a;

    .line 307
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/location/LocationActivity$b$1;->a:Lhku$a;

    if-eqz v1, :cond_3

    .line 308
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/location/LocationActivity$b$1;->a:Lhku$a;

    iget-object v0, v1, Lhku$a;->b:Ljava/util/List;

    .line 309
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Lcom/amap/api/services/core/PoiItem;>;"
    if-eqz v0, :cond_5

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_5

    .line 310
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/location/LocationActivity$b$1;->b:Lcom/alibaba/lightapp/runtime/location/LocationActivity$b;

    iget-object v1, v1, Lcom/alibaba/lightapp/runtime/location/LocationActivity$b;->a:Lcom/alibaba/lightapp/runtime/location/LocationActivity;

    const-string/jumbo v2, ""

    invoke-static {v1, v2}, Lcom/alibaba/lightapp/runtime/location/LocationActivity;->b(Lcom/alibaba/lightapp/runtime/location/LocationActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 311
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/location/LocationActivity$b$1;->b:Lcom/alibaba/lightapp/runtime/location/LocationActivity$b;

    iget-object v1, v1, Lcom/alibaba/lightapp/runtime/location/LocationActivity$b;->a:Lcom/alibaba/lightapp/runtime/location/LocationActivity;

    invoke-static {v1}, Lcom/alibaba/lightapp/runtime/location/LocationActivity;->f(Lcom/alibaba/lightapp/runtime/location/LocationActivity;)I

    move-result v1

    if-nez v1, :cond_0

    .line 312
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/location/LocationActivity$b$1;->b:Lcom/alibaba/lightapp/runtime/location/LocationActivity$b;

    iget-object v1, v1, Lcom/alibaba/lightapp/runtime/location/LocationActivity$b;->a:Lcom/alibaba/lightapp/runtime/location/LocationActivity;

    invoke-static {v1}, Lcom/alibaba/lightapp/runtime/location/LocationActivity;->g(Lcom/alibaba/lightapp/runtime/location/LocationActivity;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 316
    :cond_0
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/location/LocationActivity$b$1;->b:Lcom/alibaba/lightapp/runtime/location/LocationActivity$b;

    iget-object v1, v1, Lcom/alibaba/lightapp/runtime/location/LocationActivity$b;->a:Lcom/alibaba/lightapp/runtime/location/LocationActivity;

    invoke-static {v1}, Lcom/alibaba/lightapp/runtime/location/LocationActivity;->h(Lcom/alibaba/lightapp/runtime/location/LocationActivity;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 317
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/location/LocationActivity$b$1;->b:Lcom/alibaba/lightapp/runtime/location/LocationActivity$b;

    iget-object v1, v1, Lcom/alibaba/lightapp/runtime/location/LocationActivity$b;->a:Lcom/alibaba/lightapp/runtime/location/LocationActivity;

    invoke-static {v1}, Lcom/alibaba/lightapp/runtime/location/LocationActivity;->i(Lcom/alibaba/lightapp/runtime/location/LocationActivity;)Lcom/amap/api/services/core/PoiItem;

    move-result-object v1

    if-nez v1, :cond_1

    .line 318
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/location/LocationActivity$b$1;->b:Lcom/alibaba/lightapp/runtime/location/LocationActivity$b;

    iget-object v1, v1, Lcom/alibaba/lightapp/runtime/location/LocationActivity$b;->a:Lcom/alibaba/lightapp/runtime/location/LocationActivity;

    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/location/LocationActivity$b$1;->b:Lcom/alibaba/lightapp/runtime/location/LocationActivity$b;

    iget-object v2, v2, Lcom/alibaba/lightapp/runtime/location/LocationActivity$b;->a:Lcom/alibaba/lightapp/runtime/location/LocationActivity;

    invoke-static {v2}, Lcom/alibaba/lightapp/runtime/location/LocationActivity;->j(Lcom/alibaba/lightapp/runtime/location/LocationActivity;)Lcom/amap/api/services/core/PoiItem;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alibaba/lightapp/runtime/location/LocationActivity;->a(Lcom/alibaba/lightapp/runtime/location/LocationActivity;Lcom/amap/api/services/core/PoiItem;)Lcom/amap/api/services/core/PoiItem;

    .line 320
    :cond_1
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/location/LocationActivity$b$1;->b:Lcom/alibaba/lightapp/runtime/location/LocationActivity$b;

    iget-object v1, v1, Lcom/alibaba/lightapp/runtime/location/LocationActivity$b;->a:Lcom/alibaba/lightapp/runtime/location/LocationActivity;

    invoke-static {v1}, Lcom/alibaba/lightapp/runtime/location/LocationActivity;->g(Lcom/alibaba/lightapp/runtime/location/LocationActivity;)Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/location/LocationActivity$b$1;->b:Lcom/alibaba/lightapp/runtime/location/LocationActivity$b;

    iget-object v2, v2, Lcom/alibaba/lightapp/runtime/location/LocationActivity$b;->a:Lcom/alibaba/lightapp/runtime/location/LocationActivity;

    invoke-static {v2}, Lcom/alibaba/lightapp/runtime/location/LocationActivity;->i(Lcom/alibaba/lightapp/runtime/location/LocationActivity;)Lcom/amap/api/services/core/PoiItem;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 321
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/location/LocationActivity$b$1;->b:Lcom/alibaba/lightapp/runtime/location/LocationActivity$b;

    iget-object v1, v1, Lcom/alibaba/lightapp/runtime/location/LocationActivity$b;->a:Lcom/alibaba/lightapp/runtime/location/LocationActivity;

    invoke-static {v1}, Lcom/alibaba/lightapp/runtime/location/LocationActivity;->i(Lcom/alibaba/lightapp/runtime/location/LocationActivity;)Lcom/amap/api/services/core/PoiItem;

    move-result-object v1

    invoke-interface {v0, v3, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 325
    :cond_2
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/location/LocationActivity$b$1;->b:Lcom/alibaba/lightapp/runtime/location/LocationActivity$b;

    iget-object v1, v1, Lcom/alibaba/lightapp/runtime/location/LocationActivity$b;->a:Lcom/alibaba/lightapp/runtime/location/LocationActivity;

    invoke-static {v1}, Lcom/alibaba/lightapp/runtime/location/LocationActivity;->g(Lcom/alibaba/lightapp/runtime/location/LocationActivity;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 327
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/location/LocationActivity$b$1;->b:Lcom/alibaba/lightapp/runtime/location/LocationActivity$b;

    iget-object v1, v1, Lcom/alibaba/lightapp/runtime/location/LocationActivity$b;->a:Lcom/alibaba/lightapp/runtime/location/LocationActivity;

    invoke-static {v1}, Lcom/alibaba/lightapp/runtime/location/LocationActivity;->k(Lcom/alibaba/lightapp/runtime/location/LocationActivity;)V

    .line 329
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/location/LocationActivity$b$1;->b:Lcom/alibaba/lightapp/runtime/location/LocationActivity$b;

    iget-object v1, v1, Lcom/alibaba/lightapp/runtime/location/LocationActivity$b;->a:Lcom/alibaba/lightapp/runtime/location/LocationActivity;

    invoke-static {v1}, Lcom/alibaba/lightapp/runtime/location/LocationActivity;->l(Lcom/alibaba/lightapp/runtime/location/LocationActivity;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/view/View;->setEnabled(Z)V

    .line 341
    .end local v0    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/amap/api/services/core/PoiItem;>;"
    :cond_3
    :goto_0
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/location/LocationActivity$b$1;->b:Lcom/alibaba/lightapp/runtime/location/LocationActivity$b;

    iget-object v1, v1, Lcom/alibaba/lightapp/runtime/location/LocationActivity$b;->a:Lcom/alibaba/lightapp/runtime/location/LocationActivity;

    invoke-static {v1}, Lcom/alibaba/lightapp/runtime/location/LocationActivity;->o(Lcom/alibaba/lightapp/runtime/location/LocationActivity;)Lcom/alibaba/lightapp/runtime/location/LocationActivity$a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/lightapp/runtime/location/LocationActivity$a;->notifyDataSetChanged()V

    .line 343
    :cond_4
    return-void

    .line 331
    .restart local v0    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/amap/api/services/core/PoiItem;>;"
    :cond_5
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/location/LocationActivity$b$1;->b:Lcom/alibaba/lightapp/runtime/location/LocationActivity$b;

    iget-object v1, v1, Lcom/alibaba/lightapp/runtime/location/LocationActivity$b;->a:Lcom/alibaba/lightapp/runtime/location/LocationActivity;

    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/location/LocationActivity$b$1;->b:Lcom/alibaba/lightapp/runtime/location/LocationActivity$b;

    iget-object v2, v2, Lcom/alibaba/lightapp/runtime/location/LocationActivity$b;->a:Lcom/alibaba/lightapp/runtime/location/LocationActivity;

    invoke-static {v2}, Lcom/alibaba/lightapp/runtime/location/LocationActivity;->m(Lcom/alibaba/lightapp/runtime/location/LocationActivity;)Lhku;

    move-result-object v2

    .line 1210
    iget-object v2, v2, Lhku;->a:Ljava/lang/String;

    .line 331
    invoke-static {v1, v2}, Lcom/alibaba/lightapp/runtime/location/LocationActivity;->b(Lcom/alibaba/lightapp/runtime/location/LocationActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 332
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/location/LocationActivity$b$1;->b:Lcom/alibaba/lightapp/runtime/location/LocationActivity$b;

    iget-object v1, v1, Lcom/alibaba/lightapp/runtime/location/LocationActivity$b;->a:Lcom/alibaba/lightapp/runtime/location/LocationActivity;

    invoke-static {v1}, Lcom/alibaba/lightapp/runtime/location/LocationActivity;->g(Lcom/alibaba/lightapp/runtime/location/LocationActivity;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 334
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/location/LocationActivity$b$1;->b:Lcom/alibaba/lightapp/runtime/location/LocationActivity$b;

    iget-object v1, v1, Lcom/alibaba/lightapp/runtime/location/LocationActivity$b;->a:Lcom/alibaba/lightapp/runtime/location/LocationActivity;

    invoke-static {v1}, Lcom/alibaba/lightapp/runtime/location/LocationActivity;->n(Lcom/alibaba/lightapp/runtime/location/LocationActivity;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 335
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/location/LocationActivity$b$1;->b:Lcom/alibaba/lightapp/runtime/location/LocationActivity$b;

    iget-object v1, v1, Lcom/alibaba/lightapp/runtime/location/LocationActivity$b;->a:Lcom/alibaba/lightapp/runtime/location/LocationActivity;

    invoke-static {v1}, Lcom/alibaba/lightapp/runtime/location/LocationActivity;->l(Lcom/alibaba/lightapp/runtime/location/LocationActivity;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/view/View;->setEnabled(Z)V

    goto :goto_0

    .line 337
    :cond_6
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/location/LocationActivity$b$1;->b:Lcom/alibaba/lightapp/runtime/location/LocationActivity$b;

    iget-object v1, v1, Lcom/alibaba/lightapp/runtime/location/LocationActivity$b;->a:Lcom/alibaba/lightapp/runtime/location/LocationActivity;

    invoke-static {v1}, Lcom/alibaba/lightapp/runtime/location/LocationActivity;->l(Lcom/alibaba/lightapp/runtime/location/LocationActivity;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/View;->setEnabled(Z)V

    goto :goto_0
.end method
