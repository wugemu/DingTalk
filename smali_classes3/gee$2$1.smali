.class final Lgee$2$1;
.super Ljava/lang/Object;
.source "DentryListViewPresenter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lgee$2;->a(Ljava/util/Map;)V
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
    .line 273
    iput-object p1, p0, Lgee$2$1;->b:Lgee$2;

    iput-object p2, p0, Lgee$2$1;->a:Ljava/util/Map;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 10

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    const/4 v4, 0x1

    const/4 v2, 0x0

    .line 276
    iget-object v5, p0, Lgee$2$1;->b:Lgee$2;

    iget-object v6, p0, Lgee$2$1;->a:Ljava/util/Map;

    .line 1283
    invoke-interface {v6}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    move v1, v2

    :cond_0
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1284
    invoke-virtual {v5, v0}, Lgee$2;->a(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1288
    invoke-interface {v6, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 1289
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    .line 1293
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    move v3, v1

    :cond_1
    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/alimei/cspace/model/DentryModel;

    .line 1294
    if-eqz v0, :cond_1

    .line 1298
    iget-object v1, v5, Lgee$2;->a:Lgee;

    .line 2054
    invoke-virtual {v1, v0}, Lgee;->b(Lcom/alibaba/alimei/cspace/model/DentryModel;)Ljava/lang/String;

    move-result-object v1

    .line 1299
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_1

    .line 1303
    iget-object v9, v5, Lgee$2;->a:Lgee;

    .line 3054
    iget-object v9, v9, Lgee;->j:Ljava/util/Map;

    .line 1303
    invoke-interface {v9, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgei;

    .line 1304
    if-eqz v1, :cond_2

    .line 4025
    iget-object v9, v1, Lgei;->a:Lcom/alibaba/dingtalk/cspace/model/CsDentry;

    .line 1304
    if-eqz v9, :cond_2

    .line 5025
    iget-object v1, v1, Lgei;->a:Lcom/alibaba/dingtalk/cspace/model/CsDentry;

    .line 1305
    invoke-virtual {v1, v0}, Lcom/alibaba/dingtalk/cspace/model/CsDentry;->setDentryModel(Lcom/alibaba/alimei/cspace/model/DentryModel;)V

    goto :goto_1

    .line 1309
    :cond_2
    invoke-static {}, Lcom/alibaba/dingtalk/cspace/model/CsDentry;->create()Lcom/alibaba/dingtalk/cspace/model/CsDentry;

    move-result-object v1

    .line 1310
    invoke-virtual {v1, v0}, Lcom/alibaba/dingtalk/cspace/model/CsDentry;->setDentryModel(Lcom/alibaba/alimei/cspace/model/DentryModel;)V

    .line 1311
    iget-object v9, v5, Lgee$2;->a:Lgee;

    .line 5054
    iget-object v9, v9, Lgee;->e:Lcom/alibaba/dingtalk/cspace/model/CsSpace;

    .line 1311
    invoke-virtual {v1, v9}, Lcom/alibaba/dingtalk/cspace/model/CsDentry;->setSpace(Lcom/alibaba/dingtalk/cspace/model/CsSpace;)V

    .line 1312
    iget-object v9, v5, Lgee$2;->a:Lgee;

    invoke-virtual {v9, v1}, Lgee;->b(Lcom/alibaba/dingtalk/cspace/model/CsDentry;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 1316
    new-instance v3, Lgeh;

    invoke-direct {v3}, Lgeh;-><init>()V

    .line 1317
    iget-object v9, v5, Lgee$2;->a:Lgee;

    invoke-virtual {v9, v1}, Lgee;->a(Lcom/alibaba/dingtalk/cspace/model/CsDentry;)Ljava/lang/String;

    move-result-object v1

    .line 6046
    iput-object v1, v3, Lgeh;->d:Ljava/lang/String;

    .line 1318
    invoke-virtual {v0}, Lcom/alibaba/alimei/cspace/model/DentryModel;->isDirty()Z

    move-result v0

    if-eqz v0, :cond_5

    const/4 v0, 0x2

    .line 7022
    :goto_2
    iput v0, v3, Lgeh;->a:I

    .line 1322
    iget-object v0, v5, Lgee$2;->a:Lgee;

    invoke-virtual {v0, v4}, Lgee;->b(I)Ljava/util/List;

    move-result-object v0

    .line 1323
    if-eqz v0, :cond_3

    .line 1324
    invoke-interface {v0, v2, v3}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 1327
    :cond_3
    iget-object v0, v5, Lgee$2;->a:Lgee;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lgee;->b(I)Ljava/util/List;

    move-result-object v0

    .line 1328
    if-eqz v0, :cond_4

    .line 1329
    invoke-interface {v0, v2, v3}, Ljava/util/List;->add(ILjava/lang/Object;)V

    :cond_4
    move v3, v4

    .line 1333
    goto :goto_1

    :cond_5
    move v0, v4

    .line 1318
    goto :goto_2

    :cond_6
    move v1, v3

    .line 1334
    goto/16 :goto_0

    .line 1336
    :cond_7
    if-eqz v1, :cond_8

    .line 1337
    iget-object v0, v5, Lgee$2;->a:Lgee;

    invoke-virtual {v0}, Lgee;->q()V

    .line 1340
    :cond_8
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v0

    new-instance v1, Lgee$2$2;

    invoke-direct {v1, v5}, Lgee$2$2;-><init>(Lgee$2;)V

    invoke-virtual {v0, v1}, Lhcv;->post(Ljava/lang/Runnable;)Z

    .line 277
    return-void
.end method
