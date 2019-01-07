.class final Lcom/alibaba/alimei/framework/AlimeiService$3;
.super Ljava/lang/Object;
.source "AlimeiService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/alimei/framework/AlimeiService;->startExecuteAutoTryTask()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/alimei/framework/AlimeiService;


# direct methods
.method constructor <init>(Lcom/alibaba/alimei/framework/AlimeiService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/alimei/framework/AlimeiService;

    .prologue
    .line 334
    iput-object p1, p0, Lcom/alibaba/alimei/framework/AlimeiService$3;->a:Lcom/alibaba/alimei/framework/AlimeiService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 13

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v12

    invoke-static {v12}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 337
    invoke-static {}, Lxn;->h()Lcom/alibaba/alimei/framework/account/AccountApi;

    move-result-object v10

    invoke-interface {v10}, Lcom/alibaba/alimei/framework/account/AccountApi;->getDefaultUserAccount()Lcom/alibaba/alimei/framework/model/UserAccountModel;

    move-result-object v6

    .line 338
    .local v6, "mUserAccount":Lcom/alibaba/alimei/framework/model/UserAccountModel;
    if-nez v6, :cond_1

    .line 340
    const-string/jumbo v10, "startExecuteAutoTryTask no default user"

    invoke-static {v10}, Lyx;->a(Ljava/lang/String;)I

    .line 377
    :cond_0
    :goto_0
    return-void

    .line 344
    :cond_1
    invoke-virtual {v6}, Lcom/alibaba/alimei/framework/model/UserAccountModel;->getId()J

    move-result-wide v0

    .line 346
    .local v0, "accountId":J
    new-instance v10, Ljava/lang/StringBuilder;

    const-string/jumbo v11, "startExecuteAutoTryTask accountId "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lyx;->a(Ljava/lang/String;)I

    .line 348
    invoke-static {v0, v1}, Lcom/alibaba/alimei/framework/db/AutoTryTaskDatasource;->hasShouldAutoTryTask(J)Z

    move-result v3

    .line 349
    .local v3, "hasAutoTryTask":Z
    if-eqz v3, :cond_4

    .line 350
    invoke-static {v0, v1}, Lcom/alibaba/alimei/framework/db/AutoTryTaskDatasource;->queryAllShouldTryTask(J)Ljava/util/Map;

    move-result-object v9

    .line 351
    .local v9, "tasks":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lyr;>;"
    if-eqz v9, :cond_0

    invoke-interface {v9}, Ljava/util/Map;->size()I

    move-result v10

    if-lez v10, :cond_0

    .line 352
    iget-object v10, p0, Lcom/alibaba/alimei/framework/AlimeiService$3;->a:Lcom/alibaba/alimei/framework/AlimeiService;

    invoke-virtual {v10}, Lcom/alibaba/alimei/framework/AlimeiService;->getApplicationContext()Landroid/content/Context;

    move-result-object v10

    invoke-static {v10}, Lza;->a(Landroid/content/Context;)Z

    move-result v4

    .line 353
    .local v4, "isWifi":Z
    invoke-interface {v9}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .line 354
    .local v5, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lyr;>;>;"
    :cond_2
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_0

    .line 356
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map$Entry;

    .line 357
    .local v7, "mapEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lyr;>;"
    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 358
    .local v2, "cmmdKey":Ljava/lang/String;
    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lyr;

    .line 359
    .local v8, "task":Lyr;
    if-nez v4, :cond_3

    .line 1058
    iget-object v10, v8, Lyr;->u:Lcom/alibaba/alimei/framework/task/AutoTryTaskPolicy$AutoTryNetwork;

    .line 361
    sget-object v11, Lcom/alibaba/alimei/framework/task/AutoTryTaskPolicy$AutoTryNetwork;->All:Lcom/alibaba/alimei/framework/task/AutoTryTaskPolicy$AutoTryNetwork;

    if-ne v10, v11, :cond_2

    .line 366
    :cond_3
    iget-object v10, p0, Lcom/alibaba/alimei/framework/AlimeiService$3;->a:Lcom/alibaba/alimei/framework/AlimeiService;

    invoke-static {v10, v2}, Lcom/alibaba/alimei/framework/AlimeiService;->access$100(Lcom/alibaba/alimei/framework/AlimeiService;Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_2

    .line 369
    iget-object v10, p0, Lcom/alibaba/alimei/framework/AlimeiService$3;->a:Lcom/alibaba/alimei/framework/AlimeiService;

    invoke-static {v10}, Lcom/alibaba/alimei/framework/AlimeiService;->access$200(Lcom/alibaba/alimei/framework/AlimeiService;)Ljava/util/HashMap;

    move-result-object v10

    invoke-virtual {v10, v2, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 371
    invoke-static {}, Lys;->a()Lys;

    move-result-object v10

    new-instance v11, Lcom/alibaba/alimei/framework/AlimeiService$a;

    iget-object v12, p0, Lcom/alibaba/alimei/framework/AlimeiService$3;->a:Lcom/alibaba/alimei/framework/AlimeiService;

    invoke-direct {v11, v12, v2}, Lcom/alibaba/alimei/framework/AlimeiService$a;-><init>(Lcom/alibaba/alimei/framework/AlimeiService;Ljava/lang/String;)V

    invoke-virtual {v10, v8, v11}, Lys;->a(Lyq;Lyt;)V

    goto :goto_1

    .line 375
    .end local v2    # "cmmdKey":Ljava/lang/String;
    .end local v4    # "isWifi":Z
    .end local v5    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lyr;>;>;"
    .end local v7    # "mapEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lyr;>;"
    .end local v8    # "task":Lyr;
    .end local v9    # "tasks":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lyr;>;"
    :cond_4
    const-string/jumbo v10, "AlimeiService has no auto try task"

    invoke-static {v10}, Lyx;->a(Ljava/lang/String;)I

    goto/16 :goto_0
.end method
