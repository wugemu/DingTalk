.class final Lcom/alibaba/laiwang/photokit/picker/PickerFragment$4;
.super Ljava/lang/Object;
.source "PickerFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/laiwang/photokit/picker/PickerFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/laiwang/photokit/picker/PickerFragment;


# direct methods
.method constructor <init>(Lcom/alibaba/laiwang/photokit/picker/PickerFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/laiwang/photokit/picker/PickerFragment;

    .prologue
    .line 436
    iput-object p1, p0, Lcom/alibaba/laiwang/photokit/picker/PickerFragment$4;->a:Lcom/alibaba/laiwang/photokit/picker/PickerFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 12
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 439
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v6, p0, Lcom/alibaba/laiwang/photokit/picker/PickerFragment$4;->a:Lcom/alibaba/laiwang/photokit/picker/PickerFragment;

    invoke-static {v6}, Lcom/alibaba/laiwang/photokit/picker/PickerFragment;->d(Lcom/alibaba/laiwang/photokit/picker/PickerFragment;)Lhbl;

    move-result-object v6

    invoke-virtual {v6, p3}, Lhbl;->getItemViewType(I)I

    move-result v6

    if-nez v6, :cond_2

    .line 441
    if-nez p3, :cond_1

    .line 442
    iget-object v6, p0, Lcom/alibaba/laiwang/photokit/picker/PickerFragment$4;->a:Lcom/alibaba/laiwang/photokit/picker/PickerFragment;

    invoke-static {v6}, Lhbp;->b(Lcom/alibaba/laiwang/photokit/picker/PickerFragment;)V

    .line 544
    :cond_0
    :goto_0
    return-void

    .line 443
    :cond_1
    const/4 v6, 0x1

    if-ne p3, v6, :cond_0

    .line 444
    iget-object v6, p0, Lcom/alibaba/laiwang/photokit/picker/PickerFragment$4;->a:Lcom/alibaba/laiwang/photokit/picker/PickerFragment;

    invoke-static {v6}, Lcom/alibaba/laiwang/photokit/picker/PickerFragment;->e(Lcom/alibaba/laiwang/photokit/picker/PickerFragment;)Lcom/alibaba/laiwang/photokit/picker/PickerFragment$b;

    move-result-object v6

    if-eqz v6, :cond_0

    .line 445
    iget-object v6, p0, Lcom/alibaba/laiwang/photokit/picker/PickerFragment$4;->a:Lcom/alibaba/laiwang/photokit/picker/PickerFragment;

    invoke-static {v6}, Lcom/alibaba/laiwang/photokit/picker/PickerFragment;->e(Lcom/alibaba/laiwang/photokit/picker/PickerFragment;)Lcom/alibaba/laiwang/photokit/picker/PickerFragment$b;

    move-result-object v6

    invoke-interface {v6}, Lcom/alibaba/laiwang/photokit/picker/PickerFragment$b;->a()V

    goto :goto_0

    .line 449
    :cond_2
    iget-object v6, p0, Lcom/alibaba/laiwang/photokit/picker/PickerFragment$4;->a:Lcom/alibaba/laiwang/photokit/picker/PickerFragment;

    invoke-static {v6}, Lcom/alibaba/laiwang/photokit/picker/PickerFragment;->d(Lcom/alibaba/laiwang/photokit/picker/PickerFragment;)Lhbl;

    move-result-object v6

    invoke-virtual {v6}, Lhbl;->a()I

    move-result v6

    sub-int v6, p3, v6

    invoke-virtual {p1, v6}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/laiwang/photokit/picker/media/ImageItem;

    .line 451
    .local v0, "imageItem":Lcom/alibaba/laiwang/photokit/picker/media/ImageItem;
    iget-object v6, p0, Lcom/alibaba/laiwang/photokit/picker/PickerFragment$4;->a:Lcom/alibaba/laiwang/photokit/picker/PickerFragment;

    invoke-static {v6}, Lcom/alibaba/laiwang/photokit/picker/PickerFragment;->h(Lcom/alibaba/laiwang/photokit/picker/PickerFragment;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 452
    iget-object v6, p0, Lcom/alibaba/laiwang/photokit/picker/PickerFragment$4;->a:Lcom/alibaba/laiwang/photokit/picker/PickerFragment;

    invoke-static {v6}, Lcom/alibaba/laiwang/photokit/picker/PickerFragment;->i(Lcom/alibaba/laiwang/photokit/picker/PickerFragment;)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_3

    .line 453
    iget-object v6, p0, Lcom/alibaba/laiwang/photokit/picker/PickerFragment$4;->a:Lcom/alibaba/laiwang/photokit/picker/PickerFragment;

    invoke-virtual {v0}, Lcom/alibaba/laiwang/photokit/picker/media/ImageItem;->getContentPath()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/alibaba/laiwang/photokit/picker/PickerFragment;->a(Lcom/alibaba/laiwang/photokit/picker/PickerFragment;Ljava/lang/String;)V

    goto :goto_0

    .line 456
    :cond_3
    iget-object v6, p0, Lcom/alibaba/laiwang/photokit/picker/PickerFragment$4;->a:Lcom/alibaba/laiwang/photokit/picker/PickerFragment;

    invoke-static {v6}, Lcom/alibaba/laiwang/photokit/picker/PickerFragment;->a(Lcom/alibaba/laiwang/photokit/picker/PickerFragment;)Lhca;

    move-result-object v6

    .line 1208
    iget-object v6, v6, Lhca;->e:Ljava/util/Map;

    invoke-interface {v6}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_4
    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/alibaba/laiwang/photokit/picker/media/ImageItem;

    .line 1209
    invoke-virtual {v6}, Lcom/alibaba/laiwang/photokit/picker/media/ImageItem;->isSelected()Z

    move-result v8

    if-eqz v8, :cond_4

    .line 1210
    const/4 v8, 0x0

    const-wide/16 v10, 0x0

    invoke-virtual {v6, v8, v10, v11}, Lcom/alibaba/laiwang/photokit/picker/media/ImageItem;->setSelected(ZJ)V

    goto :goto_1

    .line 458
    :cond_5
    const/4 v6, 0x1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-virtual {v0, v6, v8, v9}, Lcom/alibaba/laiwang/photokit/picker/media/ImageItem;->setSelected(ZJ)V

    .line 460
    iget-object v6, p0, Lcom/alibaba/laiwang/photokit/picker/PickerFragment$4;->a:Lcom/alibaba/laiwang/photokit/picker/PickerFragment;

    invoke-static {v6}, Lcom/alibaba/laiwang/photokit/picker/PickerFragment;->d(Lcom/alibaba/laiwang/photokit/picker/PickerFragment;)Lhbl;

    .line 462
    iget-object v6, p0, Lcom/alibaba/laiwang/photokit/picker/PickerFragment$4;->a:Lcom/alibaba/laiwang/photokit/picker/PickerFragment;

    invoke-static {v6, v0}, Lcom/alibaba/laiwang/photokit/picker/PickerFragment;->a(Lcom/alibaba/laiwang/photokit/picker/PickerFragment;Lcom/alibaba/laiwang/photokit/picker/media/ImageItem;)V

    .line 464
    iget-object v6, p0, Lcom/alibaba/laiwang/photokit/picker/PickerFragment$4;->a:Lcom/alibaba/laiwang/photokit/picker/PickerFragment;

    invoke-static {v6}, Lcom/alibaba/laiwang/photokit/picker/PickerFragment;->e(Lcom/alibaba/laiwang/photokit/picker/PickerFragment;)Lcom/alibaba/laiwang/photokit/picker/PickerFragment$b;

    move-result-object v6

    if-eqz v6, :cond_0

    .line 465
    iget-object v6, p0, Lcom/alibaba/laiwang/photokit/picker/PickerFragment$4;->a:Lcom/alibaba/laiwang/photokit/picker/PickerFragment;

    invoke-static {v6}, Lcom/alibaba/laiwang/photokit/picker/PickerFragment;->e(Lcom/alibaba/laiwang/photokit/picker/PickerFragment;)Lcom/alibaba/laiwang/photokit/picker/PickerFragment$b;

    move-result-object v6

    invoke-interface {v6, v0}, Lcom/alibaba/laiwang/photokit/picker/PickerFragment$b;->a(Lcom/alibaba/laiwang/photokit/picker/media/ImageItem;)V

    goto/16 :goto_0

    .line 469
    :cond_6
    iget-object v6, p0, Lcom/alibaba/laiwang/photokit/picker/PickerFragment$4;->a:Lcom/alibaba/laiwang/photokit/picker/PickerFragment;

    invoke-static {v6}, Lcom/alibaba/laiwang/photokit/picker/PickerFragment;->a(Lcom/alibaba/laiwang/photokit/picker/PickerFragment;)Lhca;

    move-result-object v6

    invoke-virtual {v6}, Lhca;->b()Ljava/util/List;

    move-result-object v5

    .line 471
    .local v5, "selected":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/laiwang/photokit/picker/media/ImageItem;>;"
    iget-object v6, p0, Lcom/alibaba/laiwang/photokit/picker/PickerFragment$4;->a:Lcom/alibaba/laiwang/photokit/picker/PickerFragment;

    invoke-static {v6}, Lcom/alibaba/laiwang/photokit/picker/PickerFragment;->j(Lcom/alibaba/laiwang/photokit/picker/PickerFragment;)I

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_d

    invoke-virtual {v0}, Lcom/alibaba/laiwang/photokit/picker/media/ImageItem;->isSelected()Z

    move-result v6

    if-nez v6, :cond_d

    .line 472
    const/4 v2, 0x0

    .line 473
    .local v2, "needNotifyAll":Z
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_7
    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_8

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/alibaba/laiwang/photokit/picker/media/ImageItem;

    .line 474
    .local v4, "oldSelectedItem":Lcom/alibaba/laiwang/photokit/picker/media/ImageItem;
    if-eqz v4, :cond_7

    .line 475
    const/4 v7, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-virtual {v4, v7, v8, v9}, Lcom/alibaba/laiwang/photokit/picker/media/ImageItem;->setSelected(ZJ)V

    .line 476
    iget-object v7, p0, Lcom/alibaba/laiwang/photokit/picker/PickerFragment$4;->a:Lcom/alibaba/laiwang/photokit/picker/PickerFragment;

    invoke-static {v7, v4}, Lcom/alibaba/laiwang/photokit/picker/PickerFragment;->b(Lcom/alibaba/laiwang/photokit/picker/PickerFragment;Lcom/alibaba/laiwang/photokit/picker/media/ImageItem;)Z

    move-result v7

    or-int/2addr v2, v7

    goto :goto_2

    .line 479
    .end local v4    # "oldSelectedItem":Lcom/alibaba/laiwang/photokit/picker/media/ImageItem;
    :cond_8
    invoke-virtual {v0}, Lcom/alibaba/laiwang/photokit/picker/media/ImageItem;->getType()I

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_a

    iget-object v6, p0, Lcom/alibaba/laiwang/photokit/picker/PickerFragment$4;->a:Lcom/alibaba/laiwang/photokit/picker/PickerFragment;

    invoke-static {v6}, Lcom/alibaba/laiwang/photokit/picker/PickerFragment;->k(Lcom/alibaba/laiwang/photokit/picker/PickerFragment;)Z

    move-result v6

    if-eqz v6, :cond_a

    const/4 v3, 0x1

    .line 481
    .local v3, "needPreview":Z
    :goto_3
    if-eqz v3, :cond_b

    .line 483
    if-eqz v2, :cond_9

    .line 484
    iget-object v6, p0, Lcom/alibaba/laiwang/photokit/picker/PickerFragment$4;->a:Lcom/alibaba/laiwang/photokit/picker/PickerFragment;

    invoke-static {v6}, Lcom/alibaba/laiwang/photokit/picker/PickerFragment;->d(Lcom/alibaba/laiwang/photokit/picker/PickerFragment;)Lhbl;

    move-result-object v6

    invoke-virtual {v6}, Lhbl;->notifyDataSetChanged()V

    .line 487
    :cond_9
    iget-object v6, p0, Lcom/alibaba/laiwang/photokit/picker/PickerFragment$4;->a:Lcom/alibaba/laiwang/photokit/picker/PickerFragment;

    invoke-static {v6, v0}, Lcom/alibaba/laiwang/photokit/picker/PickerFragment;->a(Lcom/alibaba/laiwang/photokit/picker/PickerFragment;Lcom/alibaba/laiwang/photokit/picker/media/ImageItem;)V

    .line 489
    iget-object v6, p0, Lcom/alibaba/laiwang/photokit/picker/PickerFragment$4;->a:Lcom/alibaba/laiwang/photokit/picker/PickerFragment;

    invoke-static {v6}, Lcom/alibaba/laiwang/photokit/picker/PickerFragment;->e(Lcom/alibaba/laiwang/photokit/picker/PickerFragment;)Lcom/alibaba/laiwang/photokit/picker/PickerFragment$b;

    move-result-object v6

    if-eqz v6, :cond_0

    .line 490
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 491
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/laiwang/photokit/picker/media/ImageItem;>;"
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 492
    iget-object v6, p0, Lcom/alibaba/laiwang/photokit/picker/PickerFragment$4;->a:Lcom/alibaba/laiwang/photokit/picker/PickerFragment;

    invoke-static {v6}, Lcom/alibaba/laiwang/photokit/picker/PickerFragment;->e(Lcom/alibaba/laiwang/photokit/picker/PickerFragment;)Lcom/alibaba/laiwang/photokit/picker/PickerFragment$b;

    move-result-object v6

    invoke-interface {v6, v1}, Lcom/alibaba/laiwang/photokit/picker/PickerFragment$b;->a(Ljava/util/List;)V

    goto/16 :goto_0

    .line 479
    .end local v1    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/laiwang/photokit/picker/media/ImageItem;>;"
    .end local v3    # "needPreview":Z
    :cond_a
    const/4 v3, 0x0

    goto :goto_3

    .line 496
    .restart local v3    # "needPreview":Z
    :cond_b
    const/4 v6, 0x1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-virtual {v0, v6, v8, v9}, Lcom/alibaba/laiwang/photokit/picker/media/ImageItem;->setSelected(ZJ)V

    .line 498
    if-eqz v2, :cond_c

    .line 499
    iget-object v6, p0, Lcom/alibaba/laiwang/photokit/picker/PickerFragment$4;->a:Lcom/alibaba/laiwang/photokit/picker/PickerFragment;

    invoke-static {v6}, Lcom/alibaba/laiwang/photokit/picker/PickerFragment;->d(Lcom/alibaba/laiwang/photokit/picker/PickerFragment;)Lhbl;

    move-result-object v6

    invoke-virtual {v6}, Lhbl;->notifyDataSetChanged()V

    .line 504
    :goto_4
    iget-object v6, p0, Lcom/alibaba/laiwang/photokit/picker/PickerFragment$4;->a:Lcom/alibaba/laiwang/photokit/picker/PickerFragment;

    invoke-static {v6, v0}, Lcom/alibaba/laiwang/photokit/picker/PickerFragment;->a(Lcom/alibaba/laiwang/photokit/picker/PickerFragment;Lcom/alibaba/laiwang/photokit/picker/media/ImageItem;)V

    .line 506
    iget-object v6, p0, Lcom/alibaba/laiwang/photokit/picker/PickerFragment$4;->a:Lcom/alibaba/laiwang/photokit/picker/PickerFragment;

    invoke-static {v6}, Lcom/alibaba/laiwang/photokit/picker/PickerFragment;->e(Lcom/alibaba/laiwang/photokit/picker/PickerFragment;)Lcom/alibaba/laiwang/photokit/picker/PickerFragment$b;

    move-result-object v6

    if-eqz v6, :cond_0

    .line 507
    iget-object v6, p0, Lcom/alibaba/laiwang/photokit/picker/PickerFragment$4;->a:Lcom/alibaba/laiwang/photokit/picker/PickerFragment;

    invoke-static {v6}, Lcom/alibaba/laiwang/photokit/picker/PickerFragment;->e(Lcom/alibaba/laiwang/photokit/picker/PickerFragment;)Lcom/alibaba/laiwang/photokit/picker/PickerFragment$b;

    move-result-object v6

    invoke-interface {v6, v0}, Lcom/alibaba/laiwang/photokit/picker/PickerFragment$b;->a(Lcom/alibaba/laiwang/photokit/picker/media/ImageItem;)V

    goto/16 :goto_0

    .line 501
    :cond_c
    iget-object v6, p0, Lcom/alibaba/laiwang/photokit/picker/PickerFragment$4;->a:Lcom/alibaba/laiwang/photokit/picker/PickerFragment;

    invoke-static {v6}, Lcom/alibaba/laiwang/photokit/picker/PickerFragment;->d(Lcom/alibaba/laiwang/photokit/picker/PickerFragment;)Lhbl;

    invoke-static {p2, v0}, Lhbl;->a(Landroid/view/View;Lcom/alibaba/laiwang/photokit/picker/media/ImageItem;)V

    goto :goto_4

    .line 512
    .end local v2    # "needNotifyAll":Z
    .end local v3    # "needPreview":Z
    :cond_d
    invoke-virtual {v0}, Lcom/alibaba/laiwang/photokit/picker/media/ImageItem;->getType()I

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_f

    iget-object v6, p0, Lcom/alibaba/laiwang/photokit/picker/PickerFragment$4;->a:Lcom/alibaba/laiwang/photokit/picker/PickerFragment;

    invoke-static {v6}, Lcom/alibaba/laiwang/photokit/picker/PickerFragment;->k(Lcom/alibaba/laiwang/photokit/picker/PickerFragment;)Z

    move-result v6

    if-eqz v6, :cond_f

    .line 513
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_e

    .line 514
    sget v6, Liff$f;->dt_pick_video_when_pic_selected:I

    invoke-static {v6}, Lhcn;->a(I)V

    goto/16 :goto_0

    .line 517
    :cond_e
    iget-object v6, p0, Lcom/alibaba/laiwang/photokit/picker/PickerFragment$4;->a:Lcom/alibaba/laiwang/photokit/picker/PickerFragment;

    invoke-static {v6}, Lcom/alibaba/laiwang/photokit/picker/PickerFragment;->e(Lcom/alibaba/laiwang/photokit/picker/PickerFragment;)Lcom/alibaba/laiwang/photokit/picker/PickerFragment$b;

    move-result-object v6

    if-eqz v6, :cond_0

    .line 518
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 519
    .restart local v1    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/laiwang/photokit/picker/media/ImageItem;>;"
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 520
    iget-object v6, p0, Lcom/alibaba/laiwang/photokit/picker/PickerFragment$4;->a:Lcom/alibaba/laiwang/photokit/picker/PickerFragment;

    invoke-static {v6}, Lcom/alibaba/laiwang/photokit/picker/PickerFragment;->e(Lcom/alibaba/laiwang/photokit/picker/PickerFragment;)Lcom/alibaba/laiwang/photokit/picker/PickerFragment$b;

    move-result-object v6

    invoke-interface {v6, v1}, Lcom/alibaba/laiwang/photokit/picker/PickerFragment$b;->a(Ljava/util/List;)V

    goto/16 :goto_0

    .line 525
    .end local v1    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/laiwang/photokit/picker/media/ImageItem;>;"
    :cond_f
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    iget-object v7, p0, Lcom/alibaba/laiwang/photokit/picker/PickerFragment$4;->a:Lcom/alibaba/laiwang/photokit/picker/PickerFragment;

    invoke-static {v7}, Lcom/alibaba/laiwang/photokit/picker/PickerFragment;->j(Lcom/alibaba/laiwang/photokit/picker/PickerFragment;)I

    move-result v7

    if-lt v6, v7, :cond_10

    invoke-virtual {v0}, Lcom/alibaba/laiwang/photokit/picker/media/ImageItem;->isSelected()Z

    move-result v6

    if-nez v6, :cond_10

    .line 526
    invoke-static {}, Lcom/alibaba/doraemon/Doraemon;->getContext()Landroid/content/Context;

    move-result-object v6

    sget v7, Liff$f;->choose_picture_reach_max:I

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    iget-object v10, p0, Lcom/alibaba/laiwang/photokit/picker/PickerFragment$4;->a:Lcom/alibaba/laiwang/photokit/picker/PickerFragment;

    invoke-static {v10}, Lcom/alibaba/laiwang/photokit/picker/PickerFragment;->j(Lcom/alibaba/laiwang/photokit/picker/PickerFragment;)I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-virtual {v6, v7, v8}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lhcn;->a(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 529
    :cond_10
    invoke-virtual {v0}, Lcom/alibaba/laiwang/photokit/picker/media/ImageItem;->isSelected()Z

    move-result v6

    if-nez v6, :cond_11

    const/4 v6, 0x1

    :goto_5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-virtual {v0, v6, v8, v9}, Lcom/alibaba/laiwang/photokit/picker/media/ImageItem;->setSelected(ZJ)V

    .line 531
    iget-object v6, p0, Lcom/alibaba/laiwang/photokit/picker/PickerFragment$4;->a:Lcom/alibaba/laiwang/photokit/picker/PickerFragment;

    invoke-static {v6}, Lcom/alibaba/laiwang/photokit/picker/PickerFragment;->d(Lcom/alibaba/laiwang/photokit/picker/PickerFragment;)Lhbl;

    invoke-static {p2, v0}, Lhbl;->a(Landroid/view/View;Lcom/alibaba/laiwang/photokit/picker/media/ImageItem;)V

    .line 533
    iget-object v6, p0, Lcom/alibaba/laiwang/photokit/picker/PickerFragment$4;->a:Lcom/alibaba/laiwang/photokit/picker/PickerFragment;

    invoke-static {v6, v0}, Lcom/alibaba/laiwang/photokit/picker/PickerFragment;->a(Lcom/alibaba/laiwang/photokit/picker/PickerFragment;Lcom/alibaba/laiwang/photokit/picker/media/ImageItem;)V

    .line 535
    iget-object v6, p0, Lcom/alibaba/laiwang/photokit/picker/PickerFragment$4;->a:Lcom/alibaba/laiwang/photokit/picker/PickerFragment;

    invoke-static {v6}, Lcom/alibaba/laiwang/photokit/picker/PickerFragment;->e(Lcom/alibaba/laiwang/photokit/picker/PickerFragment;)Lcom/alibaba/laiwang/photokit/picker/PickerFragment$b;

    move-result-object v6

    if-eqz v6, :cond_0

    .line 536
    iget-object v6, p0, Lcom/alibaba/laiwang/photokit/picker/PickerFragment$4;->a:Lcom/alibaba/laiwang/photokit/picker/PickerFragment;

    invoke-static {v6}, Lcom/alibaba/laiwang/photokit/picker/PickerFragment;->e(Lcom/alibaba/laiwang/photokit/picker/PickerFragment;)Lcom/alibaba/laiwang/photokit/picker/PickerFragment$b;

    move-result-object v6

    invoke-interface {v6, v0}, Lcom/alibaba/laiwang/photokit/picker/PickerFragment$b;->a(Lcom/alibaba/laiwang/photokit/picker/media/ImageItem;)V

    goto/16 :goto_0

    .line 529
    :cond_11
    const/4 v6, 0x0

    goto :goto_5
.end method
