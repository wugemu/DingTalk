.class final Lcom/alibaba/android/search/fragment/BaseSearchFragment$8;
.super Ljava/lang/Object;
.source "BaseSearchFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/search/fragment/BaseSearchFragment;->m()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/search/fragment/BaseSearchFragment;


# direct methods
.method constructor <init>(Lcom/alibaba/android/search/fragment/BaseSearchFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/search/fragment/BaseSearchFragment;

    .prologue
    .line 433
    iput-object p1, p0, Lcom/alibaba/android/search/fragment/BaseSearchFragment$8;->a:Lcom/alibaba/android/search/fragment/BaseSearchFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 14

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v13

    invoke-static {v13}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/16 v13, 0x14

    const/4 v10, 0x1

    const/16 v9, 0x8

    const/4 v8, 0x0

    .line 437
    iget-object v7, p0, Lcom/alibaba/android/search/fragment/BaseSearchFragment$8;->a:Lcom/alibaba/android/search/fragment/BaseSearchFragment;

    invoke-virtual {v7}, Lcom/alibaba/android/search/fragment/BaseSearchFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v7

    invoke-static {v7}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v7

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/alibaba/android/search/fragment/BaseSearchFragment$8;->a:Lcom/alibaba/android/search/fragment/BaseSearchFragment;

    invoke-static {v7}, Lcom/alibaba/android/search/fragment/BaseSearchFragment;->g(Lcom/alibaba/android/search/fragment/BaseSearchFragment;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 509
    :cond_0
    :goto_0
    return-void

    .line 441
    :cond_1
    iget-object v7, p0, Lcom/alibaba/android/search/fragment/BaseSearchFragment$8;->a:Lcom/alibaba/android/search/fragment/BaseSearchFragment;

    invoke-virtual {v7}, Lcom/alibaba/android/search/fragment/BaseSearchFragment;->l()Z

    move-result v3

    .line 442
    .local v3, "showFooterNetworkSearchView":Z
    iget-object v7, p0, Lcom/alibaba/android/search/fragment/BaseSearchFragment$8;->a:Lcom/alibaba/android/search/fragment/BaseSearchFragment;

    invoke-virtual {v7}, Lcom/alibaba/android/search/fragment/BaseSearchFragment;->g()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 443
    iget-object v7, p0, Lcom/alibaba/android/search/fragment/BaseSearchFragment$8;->a:Lcom/alibaba/android/search/fragment/BaseSearchFragment;

    iget-object v7, v7, Lcom/alibaba/android/search/fragment/BaseSearchFragment;->k:Lemz;

    if-eqz v7, :cond_2

    .line 444
    iget-object v7, p0, Lcom/alibaba/android/search/fragment/BaseSearchFragment$8;->a:Lcom/alibaba/android/search/fragment/BaseSearchFragment;

    iget-object v7, v7, Lcom/alibaba/android/search/fragment/BaseSearchFragment;->k:Lemz;

    iget-object v8, p0, Lcom/alibaba/android/search/fragment/BaseSearchFragment$8;->a:Lcom/alibaba/android/search/fragment/BaseSearchFragment;

    iget-object v8, v8, Lcom/alibaba/android/search/fragment/BaseSearchFragment;->l:Ljava/util/List;

    invoke-virtual {v7, v8}, Lemz;->a(Ljava/util/List;)V

    .line 446
    :cond_2
    iget-object v7, p0, Lcom/alibaba/android/search/fragment/BaseSearchFragment$8;->a:Lcom/alibaba/android/search/fragment/BaseSearchFragment;

    iget-object v8, p0, Lcom/alibaba/android/search/fragment/BaseSearchFragment$8;->a:Lcom/alibaba/android/search/fragment/BaseSearchFragment;

    iget-object v8, v8, Lcom/alibaba/android/search/fragment/BaseSearchFragment;->l:Ljava/util/List;

    invoke-virtual {v7, v8}, Lcom/alibaba/android/search/fragment/BaseSearchFragment;->c(Ljava/util/List;)V

    goto :goto_0

    .line 449
    :cond_3
    iget-object v7, p0, Lcom/alibaba/android/search/fragment/BaseSearchFragment$8;->a:Lcom/alibaba/android/search/fragment/BaseSearchFragment;

    iget-object v7, v7, Lcom/alibaba/android/search/fragment/BaseSearchFragment;->k:Lemz;

    if-eqz v7, :cond_4

    iget-object v7, p0, Lcom/alibaba/android/search/fragment/BaseSearchFragment$8;->a:Lcom/alibaba/android/search/fragment/BaseSearchFragment;

    iget-object v7, v7, Lcom/alibaba/android/search/fragment/BaseSearchFragment;->l:Ljava/util/List;

    invoke-static {v7}, Lcpd;->a(Ljava/util/Collection;)Z

    move-result v7

    if-nez v7, :cond_4

    .line 450
    iget-object v7, p0, Lcom/alibaba/android/search/fragment/BaseSearchFragment$8;->a:Lcom/alibaba/android/search/fragment/BaseSearchFragment;

    iget-object v7, v7, Lcom/alibaba/android/search/fragment/BaseSearchFragment;->k:Lemz;

    iget-object v11, p0, Lcom/alibaba/android/search/fragment/BaseSearchFragment$8;->a:Lcom/alibaba/android/search/fragment/BaseSearchFragment;

    instance-of v11, v11, Lcom/alibaba/android/search/fragment/AssureSearchFragment;

    .line 1114
    iput-boolean v11, v7, Lemz;->i:Z

    .line 454
    :cond_4
    iget-object v7, p0, Lcom/alibaba/android/search/fragment/BaseSearchFragment$8;->a:Lcom/alibaba/android/search/fragment/BaseSearchFragment;

    iget-object v7, v7, Lcom/alibaba/android/search/fragment/BaseSearchFragment;->l:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-lez v7, :cond_8

    iget-object v7, p0, Lcom/alibaba/android/search/fragment/BaseSearchFragment$8;->a:Lcom/alibaba/android/search/fragment/BaseSearchFragment;

    iget-object v7, v7, Lcom/alibaba/android/search/fragment/BaseSearchFragment;->l:Ljava/util/List;

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    if-eqz v7, :cond_8

    iget-object v7, p0, Lcom/alibaba/android/search/fragment/BaseSearchFragment$8;->a:Lcom/alibaba/android/search/fragment/BaseSearchFragment;

    iget-object v7, v7, Lcom/alibaba/android/search/fragment/BaseSearchFragment;->l:Ljava/util/List;

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/alibaba/android/search/model/BaseModel;

    invoke-virtual {v7}, Lcom/alibaba/android/search/model/BaseModel;->getModelType()Lcom/alibaba/android/search/model/BaseModel$ModelType;

    move-result-object v7

    sget-object v11, Lcom/alibaba/android/search/model/BaseModel$ModelType;->RecallSearchTip:Lcom/alibaba/android/search/model/BaseModel$ModelType;

    if-ne v7, v11, :cond_8

    move v0, v10

    .line 455
    .local v0, "firstItemRecallTip":Z
    :goto_1
    if-eqz v0, :cond_9

    const/4 v1, 0x5

    .line 456
    .local v1, "itemCountLimit":I
    :goto_2
    iget-object v7, p0, Lcom/alibaba/android/search/fragment/BaseSearchFragment$8;->a:Lcom/alibaba/android/search/fragment/BaseSearchFragment;

    invoke-virtual {v7, v9}, Lcom/alibaba/android/search/fragment/BaseSearchFragment;->a(I)V

    .line 457
    iget-object v7, p0, Lcom/alibaba/android/search/fragment/BaseSearchFragment$8;->a:Lcom/alibaba/android/search/fragment/BaseSearchFragment;

    iget-object v7, v7, Lcom/alibaba/android/search/fragment/BaseSearchFragment;->l:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-gtz v7, :cond_a

    .line 458
    iget-object v7, p0, Lcom/alibaba/android/search/fragment/BaseSearchFragment$8;->a:Lcom/alibaba/android/search/fragment/BaseSearchFragment;

    iget-object v7, v7, Lcom/alibaba/android/search/fragment/BaseSearchFragment;->k:Lemz;

    if-eqz v7, :cond_5

    .line 459
    iget-object v7, p0, Lcom/alibaba/android/search/fragment/BaseSearchFragment$8;->a:Lcom/alibaba/android/search/fragment/BaseSearchFragment;

    iget-object v7, v7, Lcom/alibaba/android/search/fragment/BaseSearchFragment;->k:Lemz;

    iget-object v11, p0, Lcom/alibaba/android/search/fragment/BaseSearchFragment$8;->a:Lcom/alibaba/android/search/fragment/BaseSearchFragment;

    iget-object v11, v11, Lcom/alibaba/android/search/fragment/BaseSearchFragment;->l:Ljava/util/List;

    invoke-virtual {v7, v11}, Lemz;->a(Ljava/util/List;)V

    .line 471
    :cond_5
    :goto_3
    iget-object v7, p0, Lcom/alibaba/android/search/fragment/BaseSearchFragment$8;->a:Lcom/alibaba/android/search/fragment/BaseSearchFragment;

    iget-object v7, v7, Lcom/alibaba/android/search/fragment/BaseSearchFragment;->g:Landroid/view/View;

    if-eqz v7, :cond_6

    .line 472
    iget-object v7, p0, Lcom/alibaba/android/search/fragment/BaseSearchFragment$8;->a:Lcom/alibaba/android/search/fragment/BaseSearchFragment;

    iget-object v11, v7, Lcom/alibaba/android/search/fragment/BaseSearchFragment;->g:Landroid/view/View;

    iget-object v7, p0, Lcom/alibaba/android/search/fragment/BaseSearchFragment$8;->a:Lcom/alibaba/android/search/fragment/BaseSearchFragment;

    iget-object v7, v7, Lcom/alibaba/android/search/fragment/BaseSearchFragment;->l:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-lt v7, v1, :cond_c

    move v7, v8

    :goto_4
    invoke-virtual {v11, v7}, Landroid/view/View;->setVisibility(I)V

    .line 475
    :cond_6
    iget-object v7, p0, Lcom/alibaba/android/search/fragment/BaseSearchFragment$8;->a:Lcom/alibaba/android/search/fragment/BaseSearchFragment;

    iget-object v7, v7, Lcom/alibaba/android/search/fragment/BaseSearchFragment;->z:Leqp$a;

    if-eqz v7, :cond_d

    iget-object v7, p0, Lcom/alibaba/android/search/fragment/BaseSearchFragment$8;->a:Lcom/alibaba/android/search/fragment/BaseSearchFragment;

    iget-object v7, v7, Lcom/alibaba/android/search/fragment/BaseSearchFragment;->z:Leqp$a;

    invoke-interface {v7}, Leqp$a;->k()I

    move-result v6

    .line 476
    .local v6, "totalCount":I
    :goto_5
    iget-object v7, p0, Lcom/alibaba/android/search/fragment/BaseSearchFragment$8;->a:Lcom/alibaba/android/search/fragment/BaseSearchFragment;

    iget-object v7, v7, Lcom/alibaba/android/search/fragment/BaseSearchFragment;->t:Landroid/widget/TextView;

    if-eqz v7, :cond_7

    .line 477
    iget-object v7, p0, Lcom/alibaba/android/search/fragment/BaseSearchFragment$8;->a:Lcom/alibaba/android/search/fragment/BaseSearchFragment;

    iget-object v7, v7, Lcom/alibaba/android/search/fragment/BaseSearchFragment;->l:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-lt v7, v1, :cond_7

    .line 478
    invoke-static {}, Lcom/alibaba/doraemon/performance/DDStringBuilderProxy;->getDDStringBuilder()Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v5

    .line 480
    .local v5, "stringBuilder":Lcom/alibaba/doraemon/performance/DDStringBuilder;
    iget-object v7, p0, Lcom/alibaba/android/search/fragment/BaseSearchFragment$8;->a:Lcom/alibaba/android/search/fragment/BaseSearchFragment;

    iget-object v11, p0, Lcom/alibaba/android/search/fragment/BaseSearchFragment$8;->a:Lcom/alibaba/android/search/fragment/BaseSearchFragment;

    invoke-virtual {v11}, Lcom/alibaba/android/search/fragment/BaseSearchFragment;->z_()I

    move-result v11

    invoke-virtual {v7, v11}, Lcom/alibaba/android/search/fragment/BaseSearchFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 481
    .local v2, "more":Ljava/lang/String;
    iget-object v7, p0, Lcom/alibaba/android/search/fragment/BaseSearchFragment$8;->a:Lcom/alibaba/android/search/fragment/BaseSearchFragment;

    sget v11, Lemt$g;->dt_search_result_org_count_at:I

    invoke-virtual {v7, v11}, Lcom/alibaba/android/search/fragment/BaseSearchFragment;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_e

    .line 482
    iget-object v7, p0, Lcom/alibaba/android/search/fragment/BaseSearchFragment$8;->a:Lcom/alibaba/android/search/fragment/BaseSearchFragment;

    sget v11, Lemt$g;->search_text_view_more:I

    invoke-virtual {v7, v11}, Lcom/alibaba/android/search/fragment/BaseSearchFragment;->getString(I)Ljava/lang/String;

    move-result-object v7

    new-array v11, v10, [Ljava/lang/Object;

    aput-object v2, v11, v8

    invoke-static {v7, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    new-array v10, v10, [Ljava/lang/Object;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v10, v8

    invoke-static {v7, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 483
    .local v4, "str":Ljava/lang/String;
    iget-object v7, p0, Lcom/alibaba/android/search/fragment/BaseSearchFragment$8;->a:Lcom/alibaba/android/search/fragment/BaseSearchFragment;

    iget-object v7, v7, Lcom/alibaba/android/search/fragment/BaseSearchFragment;->t:Landroid/widget/TextView;

    invoke-virtual {v7, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 500
    .end local v2    # "more":Ljava/lang/String;
    .end local v4    # "str":Ljava/lang/String;
    .end local v5    # "stringBuilder":Lcom/alibaba/doraemon/performance/DDStringBuilder;
    :cond_7
    :goto_6
    iget-object v7, p0, Lcom/alibaba/android/search/fragment/BaseSearchFragment$8;->a:Lcom/alibaba/android/search/fragment/BaseSearchFragment;

    iget-object v7, v7, Lcom/alibaba/android/search/fragment/BaseSearchFragment;->h:Landroid/view/View;

    if-eqz v7, :cond_0

    .line 501
    iget-object v7, p0, Lcom/alibaba/android/search/fragment/BaseSearchFragment$8;->a:Lcom/alibaba/android/search/fragment/BaseSearchFragment;

    iget-object v10, v7, Lcom/alibaba/android/search/fragment/BaseSearchFragment;->h:Landroid/view/View;

    if-eqz v3, :cond_10

    move v7, v8

    :goto_7
    invoke-virtual {v10, v7}, Landroid/view/View;->setVisibility(I)V

    .line 503
    if-eqz v3, :cond_0

    iget-object v7, p0, Lcom/alibaba/android/search/fragment/BaseSearchFragment$8;->a:Lcom/alibaba/android/search/fragment/BaseSearchFragment;

    iget-object v7, v7, Lcom/alibaba/android/search/fragment/BaseSearchFragment;->i:Landroid/view/View;

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/alibaba/android/search/fragment/BaseSearchFragment$8;->a:Lcom/alibaba/android/search/fragment/BaseSearchFragment;

    iget-object v7, v7, Lcom/alibaba/android/search/fragment/BaseSearchFragment;->j:Landroid/view/View;

    if-eqz v7, :cond_0

    .line 504
    iget-object v7, p0, Lcom/alibaba/android/search/fragment/BaseSearchFragment$8;->a:Lcom/alibaba/android/search/fragment/BaseSearchFragment;

    iget-object v10, v7, Lcom/alibaba/android/search/fragment/BaseSearchFragment;->i:Landroid/view/View;

    iget-object v7, p0, Lcom/alibaba/android/search/fragment/BaseSearchFragment$8;->a:Lcom/alibaba/android/search/fragment/BaseSearchFragment;

    iget-object v7, v7, Lcom/alibaba/android/search/fragment/BaseSearchFragment;->l:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-gtz v7, :cond_11

    move v7, v9

    :goto_8
    invoke-virtual {v10, v7}, Landroid/view/View;->setVisibility(I)V

    .line 505
    iget-object v7, p0, Lcom/alibaba/android/search/fragment/BaseSearchFragment$8;->a:Lcom/alibaba/android/search/fragment/BaseSearchFragment;

    iget-object v7, v7, Lcom/alibaba/android/search/fragment/BaseSearchFragment;->j:Landroid/view/View;

    iget-object v10, p0, Lcom/alibaba/android/search/fragment/BaseSearchFragment$8;->a:Lcom/alibaba/android/search/fragment/BaseSearchFragment;

    iget-object v10, v10, Lcom/alibaba/android/search/fragment/BaseSearchFragment;->l:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    if-gtz v10, :cond_12

    :goto_9
    invoke-virtual {v7, v9}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    .end local v0    # "firstItemRecallTip":Z
    .end local v1    # "itemCountLimit":I
    .end local v6    # "totalCount":I
    :cond_8
    move v0, v8

    .line 454
    goto/16 :goto_1

    .line 455
    .restart local v0    # "firstItemRecallTip":Z
    :cond_9
    const/4 v1, 0x4

    goto/16 :goto_2

    .line 461
    .restart local v1    # "itemCountLimit":I
    :cond_a
    iget-object v7, p0, Lcom/alibaba/android/search/fragment/BaseSearchFragment$8;->a:Lcom/alibaba/android/search/fragment/BaseSearchFragment;

    iget-object v7, v7, Lcom/alibaba/android/search/fragment/BaseSearchFragment;->l:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-ge v7, v1, :cond_b

    .line 462
    iget-object v7, p0, Lcom/alibaba/android/search/fragment/BaseSearchFragment$8;->a:Lcom/alibaba/android/search/fragment/BaseSearchFragment;

    iget-object v7, v7, Lcom/alibaba/android/search/fragment/BaseSearchFragment;->k:Lemz;

    if-eqz v7, :cond_5

    .line 463
    iget-object v7, p0, Lcom/alibaba/android/search/fragment/BaseSearchFragment$8;->a:Lcom/alibaba/android/search/fragment/BaseSearchFragment;

    iget-object v7, v7, Lcom/alibaba/android/search/fragment/BaseSearchFragment;->k:Lemz;

    iget-object v11, p0, Lcom/alibaba/android/search/fragment/BaseSearchFragment$8;->a:Lcom/alibaba/android/search/fragment/BaseSearchFragment;

    iget-object v11, v11, Lcom/alibaba/android/search/fragment/BaseSearchFragment;->l:Ljava/util/List;

    invoke-virtual {v7, v11}, Lemz;->a(Ljava/util/List;)V

    goto/16 :goto_3

    .line 466
    :cond_b
    iget-object v7, p0, Lcom/alibaba/android/search/fragment/BaseSearchFragment$8;->a:Lcom/alibaba/android/search/fragment/BaseSearchFragment;

    iget-object v7, v7, Lcom/alibaba/android/search/fragment/BaseSearchFragment;->k:Lemz;

    if-eqz v7, :cond_5

    .line 467
    iget-object v7, p0, Lcom/alibaba/android/search/fragment/BaseSearchFragment$8;->a:Lcom/alibaba/android/search/fragment/BaseSearchFragment;

    iget-object v7, v7, Lcom/alibaba/android/search/fragment/BaseSearchFragment;->k:Lemz;

    iget-object v11, p0, Lcom/alibaba/android/search/fragment/BaseSearchFragment$8;->a:Lcom/alibaba/android/search/fragment/BaseSearchFragment;

    iget-object v11, v11, Lcom/alibaba/android/search/fragment/BaseSearchFragment;->l:Ljava/util/List;

    add-int/lit8 v12, v1, -0x1

    invoke-interface {v11, v8, v12}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v11

    invoke-virtual {v7, v11}, Lemz;->a(Ljava/util/List;)V

    goto/16 :goto_3

    :cond_c
    move v7, v9

    .line 472
    goto/16 :goto_4

    :cond_d
    move v6, v8

    .line 475
    goto/16 :goto_5

    .line 485
    .restart local v2    # "more":Ljava/lang/String;
    .restart local v5    # "stringBuilder":Lcom/alibaba/doraemon/performance/DDStringBuilder;
    .restart local v6    # "totalCount":I
    :cond_e
    iget-object v7, p0, Lcom/alibaba/android/search/fragment/BaseSearchFragment$8;->a:Lcom/alibaba/android/search/fragment/BaseSearchFragment;

    sget v11, Lemt$g;->search_text_view_more:I

    invoke-virtual {v7, v11}, Lcom/alibaba/android/search/fragment/BaseSearchFragment;->getString(I)Ljava/lang/String;

    move-result-object v7

    new-array v10, v10, [Ljava/lang/Object;

    iget-object v11, p0, Lcom/alibaba/android/search/fragment/BaseSearchFragment$8;->a:Lcom/alibaba/android/search/fragment/BaseSearchFragment;

    iget-object v12, p0, Lcom/alibaba/android/search/fragment/BaseSearchFragment$8;->a:Lcom/alibaba/android/search/fragment/BaseSearchFragment;

    invoke-virtual {v12}, Lcom/alibaba/android/search/fragment/BaseSearchFragment;->z_()I

    move-result v12

    invoke-virtual {v11, v12}, Lcom/alibaba/android/search/fragment/BaseSearchFragment;->getString(I)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v10, v8

    invoke-static {v7, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 486
    const-string/jumbo v7, "("

    invoke-virtual {v5, v7}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 487
    if-gt v6, v13, :cond_f

    .line 488
    invoke-virtual {v5, v6}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(I)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 489
    const-string/jumbo v7, ")"

    invoke-virtual {v5, v7}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 495
    :goto_a
    iget-object v7, p0, Lcom/alibaba/android/search/fragment/BaseSearchFragment$8;->a:Lcom/alibaba/android/search/fragment/BaseSearchFragment;

    iget-object v7, v7, Lcom/alibaba/android/search/fragment/BaseSearchFragment;->t:Landroid/widget/TextView;

    invoke-virtual {v5}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_6

    .line 491
    :cond_f
    invoke-virtual {v5, v13}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(I)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 492
    const-string/jumbo v7, "+)"

    invoke-virtual {v5, v7}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    goto :goto_a

    .end local v2    # "more":Ljava/lang/String;
    .end local v5    # "stringBuilder":Lcom/alibaba/doraemon/performance/DDStringBuilder;
    :cond_10
    move v7, v9

    .line 501
    goto/16 :goto_7

    :cond_11
    move v7, v8

    .line 504
    goto/16 :goto_8

    :cond_12
    move v9, v8

    .line 505
    goto/16 :goto_9
.end method
