.class final Lgee$2$3;
.super Ljava/lang/Object;
.source "DentryListViewPresenter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgee$2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/Map;

.field final synthetic b:Lgee$2;


# direct methods
.method constructor <init>(Lgee$2;Ljava/util/Map;)V
    .locals 0
    .param p1, "this$1"    # Lgee$2;

    .prologue
    .line 352
    iput-object p1, p0, Lgee$2$3;->b:Lgee$2;

    iput-object p2, p0, Lgee$2$3;->a:Ljava/util/Map;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 355
    iget-object v2, p0, Lgee$2$3;->b:Lgee$2;

    iget-object v3, p0, Lgee$2$3;->a:Ljava/util/Map;

    .line 1361
    const/4 v0, 0x0

    .line 1362
    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v1, v0

    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1363
    invoke-virtual {v2, v0}, Lgee$2;->a(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1367
    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 1368
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_0

    .line 1372
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_1
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/alimei/cspace/model/DentryModel;

    .line 1373
    if-eqz v0, :cond_1

    .line 1376
    iget-object v1, v2, Lgee$2;->a:Lgee;

    iget-object v6, v2, Lgee$2;->a:Lgee;

    .line 2054
    invoke-virtual {v6, v0}, Lgee;->b(Lcom/alibaba/alimei/cspace/model/DentryModel;)Ljava/lang/String;

    move-result-object v6

    .line 1376
    invoke-static {v1, v6}, Lgee;->a(Lgee;Ljava/lang/String;)Z

    .line 1377
    invoke-virtual {v0}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getId()J

    move-result-wide v0

    invoke-static {v0, v1}, Lgee;->a(J)Ljava/lang/String;

    move-result-object v0

    .line 1378
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, v2, Lgee$2;->a:Lgee;

    .line 3054
    iget-object v1, v1, Lgee;->j:Ljava/util/Map;

    .line 1378
    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1379
    iget-object v1, v2, Lgee$2;->a:Lgee;

    invoke-static {v1, v0}, Lgee;->a(Lgee;Ljava/lang/String;)Z

    .line 1381
    :cond_2
    const/4 v1, 0x1

    .line 1382
    goto :goto_0

    .line 1385
    :cond_3
    if-eqz v1, :cond_4

    .line 1386
    iget-object v0, v2, Lgee$2;->a:Lgee;

    invoke-virtual {v0}, Lgee;->q()V

    .line 1389
    :cond_4
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v0

    new-instance v1, Lgee$2$4;

    invoke-direct {v1, v2}, Lgee$2$4;-><init>(Lgee$2;)V

    invoke-virtual {v0, v1}, Lhcv;->post(Ljava/lang/Runnable;)Z

    .line 356
    return-void
.end method
