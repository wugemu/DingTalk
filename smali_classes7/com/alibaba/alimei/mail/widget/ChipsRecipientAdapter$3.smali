.class final Lcom/alibaba/alimei/mail/widget/ChipsRecipientAdapter$3;
.super Landroid/os/Handler;
.source "ChipsRecipientAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/alimei/mail/widget/ChipsRecipientAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/alimei/mail/widget/ChipsRecipientAdapter;

.field private b:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/alibaba/alimei/mail/widget/ChipsRecipientAdapter;)V
    .locals 1
    .param p1, "this$0"    # Lcom/alibaba/alimei/mail/widget/ChipsRecipientAdapter;

    .prologue
    .line 1416
    iput-object p1, p0, Lcom/alibaba/alimei/mail/widget/ChipsRecipientAdapter$3;->a:Lcom/alibaba/alimei/mail/widget/ChipsRecipientAdapter;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 1417
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alibaba/alimei/mail/widget/ChipsRecipientAdapter$3;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 13
    .param p1, "msg"    # Landroid/os/Message;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v12

    invoke-static {v12}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v11, 0x2

    const/4 v12, 0x1

    const/4 v10, 0x0

    .line 1421
    iget-object v8, p0, Lcom/alibaba/alimei/mail/widget/ChipsRecipientAdapter$3;->a:Lcom/alibaba/alimei/mail/widget/ChipsRecipientAdapter;

    invoke-virtual {v8}, Lcom/alibaba/alimei/mail/widget/ChipsRecipientAdapter;->a()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 1534
    :cond_0
    :goto_0
    return-void

    .line 1424
    :cond_1
    iget-object v7, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1425
    .local v7, "targetObj":Ljava/lang/Object;
    instance-of v8, v7, Ljava/lang/String;

    if-eqz v8, :cond_2

    .line 1426
    iget v8, p1, Landroid/os/Message;->what:I

    if-eqz v8, :cond_2

    move-object v3, v7

    .line 1427
    check-cast v3, Ljava/lang/String;

    .line 1428
    .local v3, "keyword":Ljava/lang/String;
    iget-object v8, p0, Lcom/alibaba/alimei/mail/widget/ChipsRecipientAdapter$3;->b:Ljava/lang/String;

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 1433
    .end local v3    # "keyword":Ljava/lang/String;
    :cond_2
    iget v8, p1, Landroid/os/Message;->what:I

    sparse-switch v8, :sswitch_data_0

    .line 1531
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    goto :goto_0

    .line 1435
    :sswitch_0
    iget-object v8, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, Ljava/lang/String;

    iput-object v8, p0, Lcom/alibaba/alimei/mail/widget/ChipsRecipientAdapter$3;->b:Ljava/lang/String;

    .line 1436
    iget-object v8, p0, Lcom/alibaba/alimei/mail/widget/ChipsRecipientAdapter$3;->a:Lcom/alibaba/alimei/mail/widget/ChipsRecipientAdapter;

    invoke-static {v8, v10}, Lcom/alibaba/alimei/mail/widget/ChipsRecipientAdapter;->a(Lcom/alibaba/alimei/mail/widget/ChipsRecipientAdapter;I)I

    .line 1437
    iget-object v8, p0, Lcom/alibaba/alimei/mail/widget/ChipsRecipientAdapter$3;->a:Lcom/alibaba/alimei/mail/widget/ChipsRecipientAdapter;

    invoke-static {v8}, Lcom/alibaba/alimei/mail/widget/ChipsRecipientAdapter;->o(Lcom/alibaba/alimei/mail/widget/ChipsRecipientAdapter;)Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/ArrayList;->clear()V

    goto :goto_0

    .line 1440
    :sswitch_1
    iget-object v8, p0, Lcom/alibaba/alimei/mail/widget/ChipsRecipientAdapter$3;->a:Lcom/alibaba/alimei/mail/widget/ChipsRecipientAdapter;

    invoke-static {v8}, Lcom/alibaba/alimei/mail/widget/ChipsRecipientAdapter;->m(Lcom/alibaba/alimei/mail/widget/ChipsRecipientAdapter;)Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/ArrayList;->clear()V

    .line 1441
    iget-object v8, p0, Lcom/alibaba/alimei/mail/widget/ChipsRecipientAdapter$3;->a:Lcom/alibaba/alimei/mail/widget/ChipsRecipientAdapter;

    invoke-static {v8}, Lcom/alibaba/alimei/mail/widget/ChipsRecipientAdapter;->p(Lcom/alibaba/alimei/mail/widget/ChipsRecipientAdapter;)Lcom/alibaba/alimei/mail/widget/ChipsRecipientAdapter$a;

    move-result-object v8

    if-eqz v8, :cond_3

    .line 1442
    iget-object v8, p0, Lcom/alibaba/alimei/mail/widget/ChipsRecipientAdapter$3;->a:Lcom/alibaba/alimei/mail/widget/ChipsRecipientAdapter;

    invoke-static {v8}, Lcom/alibaba/alimei/mail/widget/ChipsRecipientAdapter;->p(Lcom/alibaba/alimei/mail/widget/ChipsRecipientAdapter;)Lcom/alibaba/alimei/mail/widget/ChipsRecipientAdapter$a;

    move-result-object v8

    iget-object v9, p0, Lcom/alibaba/alimei/mail/widget/ChipsRecipientAdapter$3;->a:Lcom/alibaba/alimei/mail/widget/ChipsRecipientAdapter;

    invoke-static {v9}, Lcom/alibaba/alimei/mail/widget/ChipsRecipientAdapter;->o(Lcom/alibaba/alimei/mail/widget/ChipsRecipientAdapter;)Ljava/util/ArrayList;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    invoke-interface {v8, v9}, Lcom/alibaba/alimei/mail/widget/ChipsRecipientAdapter$a;->a(I)V

    .line 1444
    :cond_3
    iget-object v8, p0, Lcom/alibaba/alimei/mail/widget/ChipsRecipientAdapter$3;->a:Lcom/alibaba/alimei/mail/widget/ChipsRecipientAdapter;

    invoke-static {v8}, Lcom/alibaba/alimei/mail/widget/ChipsRecipientAdapter;->l(Lcom/alibaba/alimei/mail/widget/ChipsRecipientAdapter;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 1447
    :try_start_0
    iget-object v8, p0, Lcom/alibaba/alimei/mail/widget/ChipsRecipientAdapter$3;->a:Lcom/alibaba/alimei/mail/widget/ChipsRecipientAdapter;

    invoke-static {v8}, Lcom/alibaba/alimei/mail/widget/ChipsRecipientAdapter;->o(Lcom/alibaba/alimei/mail/widget/ChipsRecipientAdapter;)Ljava/util/ArrayList;

    move-result-object v8

    iget-object v9, p0, Lcom/alibaba/alimei/mail/widget/ChipsRecipientAdapter$3;->a:Lcom/alibaba/alimei/mail/widget/ChipsRecipientAdapter;

    invoke-static {v9}, Lcom/alibaba/alimei/mail/widget/ChipsRecipientAdapter;->q(Lcom/alibaba/alimei/mail/widget/ChipsRecipientAdapter;)Ljava/util/Comparator;

    move-result-object v9

    invoke-static {v8, v9}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1460
    :goto_1
    new-instance v1, Ljava/util/ArrayList;

    iget-object v8, p0, Lcom/alibaba/alimei/mail/widget/ChipsRecipientAdapter$3;->a:Lcom/alibaba/alimei/mail/widget/ChipsRecipientAdapter;

    invoke-static {v8}, Lcom/alibaba/alimei/mail/widget/ChipsRecipientAdapter;->o(Lcom/alibaba/alimei/mail/widget/ChipsRecipientAdapter;)Ljava/util/ArrayList;

    move-result-object v8

    invoke-direct {v1, v8}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1461
    .local v1, "contactViewModels":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lsf;>;"
    new-instance v6, Ljava/util/ArrayList;

    iget-object v8, p0, Lcom/alibaba/alimei/mail/widget/ChipsRecipientAdapter$3;->a:Lcom/alibaba/alimei/mail/widget/ChipsRecipientAdapter;

    invoke-static {v8}, Lcom/alibaba/alimei/mail/widget/ChipsRecipientAdapter;->o(Lcom/alibaba/alimei/mail/widget/ChipsRecipientAdapter;)Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    invoke-direct {v6, v8}, Ljava/util/ArrayList;-><init>(I)V

    .line 1462
    .local v6, "resultModels":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lsf;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_6

    .line 1463
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    .line 1464
    .local v4, "mailSet":Ljava/util/HashSet;
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_4
    :goto_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_6

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lsf;

    .line 1465
    .local v0, "contactViewModel":Lsf;
    iget-object v9, v0, Lsf;->b:Ljava/lang/String;

    invoke-virtual {v4, v9}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_4

    .line 1468
    iget-object v9, v0, Lsf;->b:Ljava/lang/String;

    invoke-virtual {v4, v9}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1469
    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 1448
    .end local v0    # "contactViewModel":Lsf;
    .end local v1    # "contactViewModels":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lsf;>;"
    .end local v4    # "mailSet":Ljava/util/HashSet;
    .end local v6    # "resultModels":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lsf;>;"
    :catch_0
    move-exception v2

    .line 1449
    .local v2, "e":Ljava/lang/Exception;
    sget-object v8, Lcom/alibaba/alimei/mail/widget/ChipsRecipientAdapter;->a:Ljava/lang/String;

    invoke-static {v8, v2}, Lafg;->a(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_1

    .line 1454
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_5
    :try_start_1
    iget-object v8, p0, Lcom/alibaba/alimei/mail/widget/ChipsRecipientAdapter$3;->a:Lcom/alibaba/alimei/mail/widget/ChipsRecipientAdapter;

    invoke-static {v8}, Lcom/alibaba/alimei/mail/widget/ChipsRecipientAdapter;->o(Lcom/alibaba/alimei/mail/widget/ChipsRecipientAdapter;)Ljava/util/ArrayList;

    move-result-object v8

    iget-object v9, p0, Lcom/alibaba/alimei/mail/widget/ChipsRecipientAdapter$3;->a:Lcom/alibaba/alimei/mail/widget/ChipsRecipientAdapter;

    invoke-static {v9}, Lcom/alibaba/alimei/mail/widget/ChipsRecipientAdapter;->r(Lcom/alibaba/alimei/mail/widget/ChipsRecipientAdapter;)Ljava/util/Comparator;

    move-result-object v9

    invoke-static {v8, v9}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 1455
    :catch_1
    move-exception v2

    .line 1456
    .restart local v2    # "e":Ljava/lang/Exception;
    sget-object v8, Lcom/alibaba/alimei/mail/widget/ChipsRecipientAdapter;->a:Ljava/lang/String;

    invoke-static {v8, v2}, Lafg;->a(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_1

    .line 1472
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v1    # "contactViewModels":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lsf;>;"
    .restart local v6    # "resultModels":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lsf;>;"
    :cond_6
    iget-object v8, p0, Lcom/alibaba/alimei/mail/widget/ChipsRecipientAdapter$3;->a:Lcom/alibaba/alimei/mail/widget/ChipsRecipientAdapter;

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9, v6}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v8, v9}, Lcom/alibaba/alimei/mail/widget/ChipsRecipientAdapter;->a(Lcom/alibaba/alimei/mail/widget/ChipsRecipientAdapter;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 1473
    iget-object v8, p0, Lcom/alibaba/alimei/mail/widget/ChipsRecipientAdapter$3;->a:Lcom/alibaba/alimei/mail/widget/ChipsRecipientAdapter;

    invoke-virtual {v8}, Lcom/alibaba/alimei/mail/widget/ChipsRecipientAdapter;->notifyDataSetChanged()V

    .line 1474
    sget-object v8, Lcom/alibaba/alimei/mail/widget/ChipsRecipientAdapter;->a:Ljava/lang/String;

    new-array v8, v11, [Ljava/lang/String;

    const-string/jumbo v9, "refresh : "

    aput-object v9, v8, v10

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v12

    invoke-static {v8}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_0

    .line 1477
    .end local v1    # "contactViewModels":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lsf;>;"
    .end local v6    # "resultModels":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lsf;>;"
    :sswitch_2
    iget-object v8, p0, Lcom/alibaba/alimei/mail/widget/ChipsRecipientAdapter$3;->a:Lcom/alibaba/alimei/mail/widget/ChipsRecipientAdapter;

    iget-object v9, p0, Lcom/alibaba/alimei/mail/widget/ChipsRecipientAdapter$3;->a:Lcom/alibaba/alimei/mail/widget/ChipsRecipientAdapter;

    invoke-static {v9}, Lcom/alibaba/alimei/mail/widget/ChipsRecipientAdapter;->s(Lcom/alibaba/alimei/mail/widget/ChipsRecipientAdapter;)I

    move-result v9

    or-int/lit8 v9, v9, 0x2

    invoke-static {v8, v9}, Lcom/alibaba/alimei/mail/widget/ChipsRecipientAdapter;->a(Lcom/alibaba/alimei/mail/widget/ChipsRecipientAdapter;I)I

    .line 1478
    iget-object v8, p0, Lcom/alibaba/alimei/mail/widget/ChipsRecipientAdapter$3;->a:Lcom/alibaba/alimei/mail/widget/ChipsRecipientAdapter;

    invoke-static {v8}, Lcom/alibaba/alimei/mail/widget/ChipsRecipientAdapter;->o(Lcom/alibaba/alimei/mail/widget/ChipsRecipientAdapter;)Ljava/util/ArrayList;

    move-result-object v8

    iget-object v9, p0, Lcom/alibaba/alimei/mail/widget/ChipsRecipientAdapter$3;->a:Lcom/alibaba/alimei/mail/widget/ChipsRecipientAdapter;

    invoke-static {v9}, Lcom/alibaba/alimei/mail/widget/ChipsRecipientAdapter;->e(Lcom/alibaba/alimei/mail/widget/ChipsRecipientAdapter;)Ljava/util/ArrayList;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1479
    iget-object v8, p0, Lcom/alibaba/alimei/mail/widget/ChipsRecipientAdapter$3;->a:Lcom/alibaba/alimei/mail/widget/ChipsRecipientAdapter;

    iget-object v9, p0, Lcom/alibaba/alimei/mail/widget/ChipsRecipientAdapter$3;->b:Ljava/lang/String;

    invoke-static {v8, v9}, Lcom/alibaba/alimei/mail/widget/ChipsRecipientAdapter;->j(Lcom/alibaba/alimei/mail/widget/ChipsRecipientAdapter;Ljava/lang/String;)V

    .line 1480
    sget-object v8, Lcom/alibaba/alimei/mail/widget/ChipsRecipientAdapter;->a:Ljava/lang/String;

    new-array v8, v11, [Ljava/lang/String;

    const-string/jumbo v9, "mail ready : "

    aput-object v9, v8, v10

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v12

    invoke-static {v8}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_0

    .line 1495
    :sswitch_3
    iget-object v8, p0, Lcom/alibaba/alimei/mail/widget/ChipsRecipientAdapter$3;->a:Lcom/alibaba/alimei/mail/widget/ChipsRecipientAdapter;

    iget-object v9, p0, Lcom/alibaba/alimei/mail/widget/ChipsRecipientAdapter$3;->a:Lcom/alibaba/alimei/mail/widget/ChipsRecipientAdapter;

    invoke-static {v9}, Lcom/alibaba/alimei/mail/widget/ChipsRecipientAdapter;->s(Lcom/alibaba/alimei/mail/widget/ChipsRecipientAdapter;)I

    move-result v9

    or-int/lit8 v9, v9, 0x10

    invoke-static {v8, v9}, Lcom/alibaba/alimei/mail/widget/ChipsRecipientAdapter;->a(Lcom/alibaba/alimei/mail/widget/ChipsRecipientAdapter;I)I

    .line 1496
    iget-object v8, p0, Lcom/alibaba/alimei/mail/widget/ChipsRecipientAdapter$3;->a:Lcom/alibaba/alimei/mail/widget/ChipsRecipientAdapter;

    invoke-static {v8}, Lcom/alibaba/alimei/mail/widget/ChipsRecipientAdapter;->o(Lcom/alibaba/alimei/mail/widget/ChipsRecipientAdapter;)Ljava/util/ArrayList;

    move-result-object v8

    iget-object v9, p0, Lcom/alibaba/alimei/mail/widget/ChipsRecipientAdapter$3;->a:Lcom/alibaba/alimei/mail/widget/ChipsRecipientAdapter;

    invoke-static {v9}, Lcom/alibaba/alimei/mail/widget/ChipsRecipientAdapter;->g(Lcom/alibaba/alimei/mail/widget/ChipsRecipientAdapter;)Ljava/util/ArrayList;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1497
    iget-object v8, p0, Lcom/alibaba/alimei/mail/widget/ChipsRecipientAdapter$3;->a:Lcom/alibaba/alimei/mail/widget/ChipsRecipientAdapter;

    iget-object v9, p0, Lcom/alibaba/alimei/mail/widget/ChipsRecipientAdapter$3;->b:Ljava/lang/String;

    invoke-static {v8, v9}, Lcom/alibaba/alimei/mail/widget/ChipsRecipientAdapter;->j(Lcom/alibaba/alimei/mail/widget/ChipsRecipientAdapter;Ljava/lang/String;)V

    .line 1498
    sget-object v8, Lcom/alibaba/alimei/mail/widget/ChipsRecipientAdapter;->a:Ljava/lang/String;

    new-array v8, v11, [Ljava/lang/String;

    const-string/jumbo v9, "server ready : "

    aput-object v9, v8, v10

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v12

    invoke-static {v8}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_0

    .line 1501
    :sswitch_4
    iget-object v8, p0, Lcom/alibaba/alimei/mail/widget/ChipsRecipientAdapter$3;->a:Lcom/alibaba/alimei/mail/widget/ChipsRecipientAdapter;

    iget-object v9, p0, Lcom/alibaba/alimei/mail/widget/ChipsRecipientAdapter$3;->a:Lcom/alibaba/alimei/mail/widget/ChipsRecipientAdapter;

    invoke-static {v9}, Lcom/alibaba/alimei/mail/widget/ChipsRecipientAdapter;->s(Lcom/alibaba/alimei/mail/widget/ChipsRecipientAdapter;)I

    move-result v9

    or-int/lit8 v9, v9, 0x8

    invoke-static {v8, v9}, Lcom/alibaba/alimei/mail/widget/ChipsRecipientAdapter;->a(Lcom/alibaba/alimei/mail/widget/ChipsRecipientAdapter;I)I

    .line 1502
    iget-object v8, p0, Lcom/alibaba/alimei/mail/widget/ChipsRecipientAdapter$3;->a:Lcom/alibaba/alimei/mail/widget/ChipsRecipientAdapter;

    invoke-static {v8}, Lcom/alibaba/alimei/mail/widget/ChipsRecipientAdapter;->o(Lcom/alibaba/alimei/mail/widget/ChipsRecipientAdapter;)Ljava/util/ArrayList;

    move-result-object v8

    iget-object v9, p0, Lcom/alibaba/alimei/mail/widget/ChipsRecipientAdapter$3;->a:Lcom/alibaba/alimei/mail/widget/ChipsRecipientAdapter;

    invoke-static {v9}, Lcom/alibaba/alimei/mail/widget/ChipsRecipientAdapter;->h(Lcom/alibaba/alimei/mail/widget/ChipsRecipientAdapter;)Ljava/util/ArrayList;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1503
    iget-object v8, p0, Lcom/alibaba/alimei/mail/widget/ChipsRecipientAdapter$3;->a:Lcom/alibaba/alimei/mail/widget/ChipsRecipientAdapter;

    iget-object v9, p0, Lcom/alibaba/alimei/mail/widget/ChipsRecipientAdapter$3;->b:Ljava/lang/String;

    invoke-static {v8, v9}, Lcom/alibaba/alimei/mail/widget/ChipsRecipientAdapter;->j(Lcom/alibaba/alimei/mail/widget/ChipsRecipientAdapter;Ljava/lang/String;)V

    .line 1504
    sget-object v8, Lcom/alibaba/alimei/mail/widget/ChipsRecipientAdapter;->a:Ljava/lang/String;

    new-array v8, v11, [Ljava/lang/String;

    const-string/jumbo v9, "conversation ready : "

    aput-object v9, v8, v10

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v12

    invoke-static {v8}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_0

    .line 1507
    :sswitch_5
    iget-object v8, p0, Lcom/alibaba/alimei/mail/widget/ChipsRecipientAdapter$3;->a:Lcom/alibaba/alimei/mail/widget/ChipsRecipientAdapter;

    iget-object v9, p0, Lcom/alibaba/alimei/mail/widget/ChipsRecipientAdapter$3;->a:Lcom/alibaba/alimei/mail/widget/ChipsRecipientAdapter;

    invoke-static {v9}, Lcom/alibaba/alimei/mail/widget/ChipsRecipientAdapter;->s(Lcom/alibaba/alimei/mail/widget/ChipsRecipientAdapter;)I

    move-result v9

    or-int/lit8 v9, v9, 0x1

    invoke-static {v8, v9}, Lcom/alibaba/alimei/mail/widget/ChipsRecipientAdapter;->a(Lcom/alibaba/alimei/mail/widget/ChipsRecipientAdapter;I)I

    .line 1508
    iget-object v8, p0, Lcom/alibaba/alimei/mail/widget/ChipsRecipientAdapter$3;->a:Lcom/alibaba/alimei/mail/widget/ChipsRecipientAdapter;

    invoke-static {v8}, Lcom/alibaba/alimei/mail/widget/ChipsRecipientAdapter;->o(Lcom/alibaba/alimei/mail/widget/ChipsRecipientAdapter;)Ljava/util/ArrayList;

    move-result-object v8

    iget-object v9, p0, Lcom/alibaba/alimei/mail/widget/ChipsRecipientAdapter$3;->a:Lcom/alibaba/alimei/mail/widget/ChipsRecipientAdapter;

    invoke-static {v9}, Lcom/alibaba/alimei/mail/widget/ChipsRecipientAdapter;->i(Lcom/alibaba/alimei/mail/widget/ChipsRecipientAdapter;)Ljava/util/ArrayList;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1509
    iget-object v8, p0, Lcom/alibaba/alimei/mail/widget/ChipsRecipientAdapter$3;->a:Lcom/alibaba/alimei/mail/widget/ChipsRecipientAdapter;

    iget-object v9, p0, Lcom/alibaba/alimei/mail/widget/ChipsRecipientAdapter$3;->b:Ljava/lang/String;

    invoke-static {v8, v9}, Lcom/alibaba/alimei/mail/widget/ChipsRecipientAdapter;->j(Lcom/alibaba/alimei/mail/widget/ChipsRecipientAdapter;Ljava/lang/String;)V

    .line 1510
    sget-object v8, Lcom/alibaba/alimei/mail/widget/ChipsRecipientAdapter;->a:Ljava/lang/String;

    new-array v8, v11, [Ljava/lang/String;

    const-string/jumbo v9, "recommend ready : "

    aput-object v9, v8, v10

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v12

    invoke-static {v8}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_0

    .line 1513
    :sswitch_6
    iget-object v8, p0, Lcom/alibaba/alimei/mail/widget/ChipsRecipientAdapter$3;->a:Lcom/alibaba/alimei/mail/widget/ChipsRecipientAdapter;

    iget-object v9, p0, Lcom/alibaba/alimei/mail/widget/ChipsRecipientAdapter$3;->a:Lcom/alibaba/alimei/mail/widget/ChipsRecipientAdapter;

    invoke-static {v9}, Lcom/alibaba/alimei/mail/widget/ChipsRecipientAdapter;->s(Lcom/alibaba/alimei/mail/widget/ChipsRecipientAdapter;)I

    move-result v9

    or-int/lit8 v9, v9, 0x20

    invoke-static {v8, v9}, Lcom/alibaba/alimei/mail/widget/ChipsRecipientAdapter;->a(Lcom/alibaba/alimei/mail/widget/ChipsRecipientAdapter;I)I

    .line 1514
    iget-object v8, p0, Lcom/alibaba/alimei/mail/widget/ChipsRecipientAdapter$3;->a:Lcom/alibaba/alimei/mail/widget/ChipsRecipientAdapter;

    invoke-static {v8}, Lcom/alibaba/alimei/mail/widget/ChipsRecipientAdapter;->o(Lcom/alibaba/alimei/mail/widget/ChipsRecipientAdapter;)Ljava/util/ArrayList;

    move-result-object v8

    iget-object v9, p0, Lcom/alibaba/alimei/mail/widget/ChipsRecipientAdapter$3;->a:Lcom/alibaba/alimei/mail/widget/ChipsRecipientAdapter;

    invoke-static {v9}, Lcom/alibaba/alimei/mail/widget/ChipsRecipientAdapter;->k(Lcom/alibaba/alimei/mail/widget/ChipsRecipientAdapter;)Ljava/util/ArrayList;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1515
    iget-object v8, p0, Lcom/alibaba/alimei/mail/widget/ChipsRecipientAdapter$3;->a:Lcom/alibaba/alimei/mail/widget/ChipsRecipientAdapter;

    iget-object v9, p0, Lcom/alibaba/alimei/mail/widget/ChipsRecipientAdapter$3;->b:Ljava/lang/String;

    invoke-static {v8, v9}, Lcom/alibaba/alimei/mail/widget/ChipsRecipientAdapter;->j(Lcom/alibaba/alimei/mail/widget/ChipsRecipientAdapter;Ljava/lang/String;)V

    .line 1516
    sget-object v8, Lcom/alibaba/alimei/mail/widget/ChipsRecipientAdapter;->a:Ljava/lang/String;

    new-array v8, v11, [Ljava/lang/String;

    const-string/jumbo v9, "friend ready : "

    aput-object v9, v8, v10

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v12

    invoke-static {v8}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_0

    .line 1519
    :sswitch_7
    iget-object v8, p0, Lcom/alibaba/alimei/mail/widget/ChipsRecipientAdapter$3;->a:Lcom/alibaba/alimei/mail/widget/ChipsRecipientAdapter;

    iget-object v9, p0, Lcom/alibaba/alimei/mail/widget/ChipsRecipientAdapter$3;->a:Lcom/alibaba/alimei/mail/widget/ChipsRecipientAdapter;

    invoke-static {v9}, Lcom/alibaba/alimei/mail/widget/ChipsRecipientAdapter;->s(Lcom/alibaba/alimei/mail/widget/ChipsRecipientAdapter;)I

    move-result v9

    or-int/lit8 v9, v9, 0x4

    invoke-static {v8, v9}, Lcom/alibaba/alimei/mail/widget/ChipsRecipientAdapter;->a(Lcom/alibaba/alimei/mail/widget/ChipsRecipientAdapter;I)I

    .line 1520
    iget-object v8, p0, Lcom/alibaba/alimei/mail/widget/ChipsRecipientAdapter$3;->a:Lcom/alibaba/alimei/mail/widget/ChipsRecipientAdapter;

    invoke-static {v8}, Lcom/alibaba/alimei/mail/widget/ChipsRecipientAdapter;->o(Lcom/alibaba/alimei/mail/widget/ChipsRecipientAdapter;)Ljava/util/ArrayList;

    move-result-object v8

    iget-object v9, p0, Lcom/alibaba/alimei/mail/widget/ChipsRecipientAdapter$3;->a:Lcom/alibaba/alimei/mail/widget/ChipsRecipientAdapter;

    invoke-static {v9}, Lcom/alibaba/alimei/mail/widget/ChipsRecipientAdapter;->j(Lcom/alibaba/alimei/mail/widget/ChipsRecipientAdapter;)Ljava/util/ArrayList;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1521
    iget-object v8, p0, Lcom/alibaba/alimei/mail/widget/ChipsRecipientAdapter$3;->a:Lcom/alibaba/alimei/mail/widget/ChipsRecipientAdapter;

    iget-object v9, p0, Lcom/alibaba/alimei/mail/widget/ChipsRecipientAdapter$3;->b:Ljava/lang/String;

    invoke-static {v8, v9}, Lcom/alibaba/alimei/mail/widget/ChipsRecipientAdapter;->j(Lcom/alibaba/alimei/mail/widget/ChipsRecipientAdapter;Ljava/lang/String;)V

    .line 1522
    sget-object v8, Lcom/alibaba/alimei/mail/widget/ChipsRecipientAdapter;->a:Ljava/lang/String;

    new-array v8, v11, [Ljava/lang/String;

    const-string/jumbo v9, "same org ready : "

    aput-object v9, v8, v10

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v12

    invoke-static {v8}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_0

    .line 1525
    :sswitch_8
    sget-object v8, Lcom/alibaba/alimei/mail/widget/ChipsRecipientAdapter;->a:Ljava/lang/String;

    new-array v8, v11, [Ljava/lang/String;

    const-string/jumbo v9, "wait : "

    aput-object v9, v8, v10

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v12

    invoke-static {v8}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    .line 1526
    iget-object v8, p0, Lcom/alibaba/alimei/mail/widget/ChipsRecipientAdapter$3;->a:Lcom/alibaba/alimei/mail/widget/ChipsRecipientAdapter;

    iget-object v8, v8, Lcom/alibaba/alimei/mail/widget/ChipsRecipientAdapter;->o:Landroid/os/Handler;

    const/16 v9, 0x400

    invoke-virtual {v8, v9}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    .line 1527
    .local v5, "message":Landroid/os/Message;
    iget-object v8, p0, Lcom/alibaba/alimei/mail/widget/ChipsRecipientAdapter$3;->b:Ljava/lang/String;

    iput-object v8, v5, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1528
    iget-object v8, p0, Lcom/alibaba/alimei/mail/widget/ChipsRecipientAdapter$3;->a:Lcom/alibaba/alimei/mail/widget/ChipsRecipientAdapter;

    iget-object v8, v8, Lcom/alibaba/alimei/mail/widget/ChipsRecipientAdapter;->o:Landroid/os/Handler;

    const-wide/16 v10, 0x64

    invoke-virtual {v8, v5, v10, v11}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    .line 1433
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_5
        0x2 -> :sswitch_2
        0x4 -> :sswitch_7
        0x8 -> :sswitch_4
        0x10 -> :sswitch_3
        0x20 -> :sswitch_6
        0x200 -> :sswitch_8
        0x400 -> :sswitch_1
    .end sparse-switch
.end method
