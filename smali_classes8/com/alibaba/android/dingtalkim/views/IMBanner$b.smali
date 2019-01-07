.class final Lcom/alibaba/android/dingtalkim/views/IMBanner$b;
.super Lgl;
.source "IMBanner.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/dingtalkim/views/IMBanner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "b"
.end annotation


# instance fields
.field a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation
.end field

.field final synthetic b:Lcom/alibaba/android/dingtalkim/views/IMBanner;

.field private c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Class;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/alibaba/android/dingtalkim/views/IMBanner;Ljava/util/HashMap;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalkim/views/IMBanner;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<TT;",
            "Ljava/lang/Class;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 459
    .local p0, "this":Lcom/alibaba/android/dingtalkim/views/IMBanner$b;, "Lcom/alibaba/android/dingtalkim/views/IMBanner<TT;>.b;"
    .local p2, "data":Ljava/util/HashMap;, "Ljava/util/HashMap<TT;Ljava/lang/Class;>;"
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/views/IMBanner$b;->b:Lcom/alibaba/android/dingtalkim/views/IMBanner;

    invoke-direct {p0}, Lgl;-><init>()V

    .line 460
    invoke-virtual {p0, p2}, Lcom/alibaba/android/dingtalkim/views/IMBanner$b;->a(Ljava/util/HashMap;)V

    .line 461
    return-void
.end method


# virtual methods
.method public final a(Ljava/util/HashMap;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<TT;",
            "Ljava/lang/Class;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 464
    .local p0, "this":Lcom/alibaba/android/dingtalkim/views/IMBanner$b;, "Lcom/alibaba/android/dingtalkim/views/IMBanner<TT;>.b;"
    .local p1, "data":Ljava/util/HashMap;, "Ljava/util/HashMap<TT;Ljava/lang/Class;>;"
    if-eqz p1, :cond_0

    .line 465
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/views/IMBanner$b;->a:Ljava/util/List;

    if-nez v0, :cond_1

    .line 466
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/views/IMBanner$b;->a:Ljava/util/List;

    .line 470
    :goto_0
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/views/IMBanner$b;->a:Ljava/util/List;

    invoke-virtual {p1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 472
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/views/IMBanner$b;->c:Ljava/util/List;

    if-nez v0, :cond_2

    .line 473
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/views/IMBanner$b;->c:Ljava/util/List;

    .line 477
    :goto_1
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/views/IMBanner$b;->c:Ljava/util/List;

    invoke-virtual {p1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 479
    :cond_0
    return-void

    .line 468
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/views/IMBanner$b;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    goto :goto_0

    .line 475
    :cond_2
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/views/IMBanner$b;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    goto :goto_1
.end method

.method public final destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 2
    .param p1, "container"    # Landroid/view/ViewGroup;
    .param p2, "position"    # I
    .param p3, "object"    # Ljava/lang/Object;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 604
    .local p0, "this":Lcom/alibaba/android/dingtalkim/views/IMBanner$b;, "Lcom/alibaba/android/dingtalkim/views/IMBanner<TT;>.b;"
    instance-of v1, p3, Lcom/alibaba/android/dingtalkim/views/IMBanner$InnerView;

    if-eqz v1, :cond_0

    move-object v0, p3

    .line 605
    check-cast v0, Lcom/alibaba/android/dingtalkim/views/IMBanner$InnerView;

    .line 606
    .local v0, "view":Lcom/alibaba/android/dingtalkim/views/IMBanner$InnerView;
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 607
    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkim/views/IMBanner$InnerView;->removeFromParent()V

    .line 609
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/views/IMBanner$b;->b:Lcom/alibaba/android/dingtalkim/views/IMBanner;

    invoke-static {v1}, Lcom/alibaba/android/dingtalkim/views/IMBanner;->k(Lcom/alibaba/android/dingtalkim/views/IMBanner;)Ljava/util/LinkedList;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 610
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/views/IMBanner$b;->b:Lcom/alibaba/android/dingtalkim/views/IMBanner;

    invoke-static {v1}, Lcom/alibaba/android/dingtalkim/views/IMBanner;->k(Lcom/alibaba/android/dingtalkim/views/IMBanner;)Ljava/util/LinkedList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 613
    .end local v0    # "view":Lcom/alibaba/android/dingtalkim/views/IMBanner$InnerView;
    :cond_0
    return-void
.end method

.method public final getCount()I
    .locals 1

    .prologue
    .line 490
    .local p0, "this":Lcom/alibaba/android/dingtalkim/views/IMBanner$b;, "Lcom/alibaba/android/dingtalkim/views/IMBanner<TT;>.b;"
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/views/IMBanner$b;->a:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/views/IMBanner$b;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0
.end method

.method public final instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 13
    .param p1, "container"    # Landroid/view/ViewGroup;
    .param p2, "position"    # I

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v12

    invoke-static {v12}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .local p0, "this":Lcom/alibaba/android/dingtalkim/views/IMBanner$b;, "Lcom/alibaba/android/dingtalkim/views/IMBanner<TT;>.b;"
    const/4 v12, 0x1

    const/4 v9, 0x0

    .line 500
    const/4 v7, 0x0

    .line 503
    .local v7, "view":Lcom/alibaba/android/dingtalkim/views/IMBanner$InnerView;
    iget-object v10, p0, Lcom/alibaba/android/dingtalkim/views/IMBanner$b;->a:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    rem-int/2addr p2, v10

    .line 504
    if-gez p2, :cond_0

    .line 505
    iget-object v10, p0, Lcom/alibaba/android/dingtalkim/views/IMBanner$b;->a:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    add-int/2addr p2, v10

    .line 509
    :cond_0
    iget-object v10, p0, Lcom/alibaba/android/dingtalkim/views/IMBanner$b;->b:Lcom/alibaba/android/dingtalkim/views/IMBanner;

    invoke-static {v10}, Lcom/alibaba/android/dingtalkim/views/IMBanner;->k(Lcom/alibaba/android/dingtalkim/views/IMBanner;)Ljava/util/LinkedList;

    move-result-object v10

    invoke-virtual {v10}, Ljava/util/LinkedList;->size()I

    move-result v10

    if-lez v10, :cond_3

    .line 510
    iget-object v9, p0, Lcom/alibaba/android/dingtalkim/views/IMBanner$b;->b:Lcom/alibaba/android/dingtalkim/views/IMBanner;

    invoke-static {v9}, Lcom/alibaba/android/dingtalkim/views/IMBanner;->k(Lcom/alibaba/android/dingtalkim/views/IMBanner;)Ljava/util/LinkedList;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/LinkedList;->remove()Ljava/lang/Object;

    move-result-object v7

    .end local v7    # "view":Lcom/alibaba/android/dingtalkim/views/IMBanner$InnerView;
    check-cast v7, Lcom/alibaba/android/dingtalkim/views/IMBanner$InnerView;

    .line 591
    .restart local v7    # "view":Lcom/alibaba/android/dingtalkim/views/IMBanner$InnerView;
    :goto_0
    if-eqz v7, :cond_2

    .line 592
    iget-object v9, p0, Lcom/alibaba/android/dingtalkim/views/IMBanner$b;->a:Ljava/util/List;

    if-eqz v9, :cond_1

    .line 593
    iget-object v9, p0, Lcom/alibaba/android/dingtalkim/views/IMBanner$b;->b:Lcom/alibaba/android/dingtalkim/views/IMBanner;

    invoke-static {v9}, Lcom/alibaba/android/dingtalkim/views/IMBanner;->l(Lcom/alibaba/android/dingtalkim/views/IMBanner;)Lcom/alibaba/wukong/im/Conversation;

    move-result-object v9

    invoke-virtual {v7, p2, v9}, Lcom/alibaba/android/dingtalkim/views/IMBanner$InnerView;->a(ILjava/lang/Object;)V

    .line 594
    iget-object v9, p0, Lcom/alibaba/android/dingtalkim/views/IMBanner$b;->a:Ljava/util/List;

    invoke-interface {v9, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v7, v9}, Lcom/alibaba/android/dingtalkim/views/IMBanner$InnerView;->display(Ljava/lang/Object;)V

    .line 596
    :cond_1
    invoke-virtual {p1, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 599
    :cond_2
    return-object v7

    .line 513
    :cond_3
    :try_start_0
    iget-object v10, p0, Lcom/alibaba/android/dingtalkim/views/IMBanner$b;->c:Ljava/util/List;

    invoke-interface {v10, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Class;

    .line 514
    .local v8, "viewClass":Ljava/lang/Class;
    invoke-virtual {v8}, Ljava/lang/Class;->getConstructors()[Ljava/lang/reflect/Constructor;

    move-result-object v2

    .line 515
    .local v2, "constructors":[Ljava/lang/reflect/Constructor;
    const/4 v6, 0x0

    .line 516
    .local v6, "mDefaultConstructor":Ljava/lang/reflect/Constructor;
    array-length v10, v2

    :goto_1
    if-ge v9, v10, :cond_5

    aget-object v1, v2, v9

    .line 517
    .local v1, "constructor":Ljava/lang/reflect/Constructor;
    invoke-virtual {v1}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v3

    .line 518
    .local v3, "cx":[Ljava/lang/Class;
    array-length v11, v3

    if-ne v11, v12, :cond_4

    .line 519
    move-object v6, v1

    .line 516
    :cond_4
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 522
    .end local v1    # "constructor":Ljava/lang/reflect/Constructor;
    .end local v3    # "cx":[Ljava/lang/Class;
    :cond_5
    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    iget-object v11, p0, Lcom/alibaba/android/dingtalkim/views/IMBanner$b;->b:Lcom/alibaba/android/dingtalkim/views/IMBanner;

    invoke-virtual {v11}, Lcom/alibaba/android/dingtalkim/views/IMBanner;->getContext()Landroid/content/Context;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-virtual {v6, v9}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    move-object v0, v9

    check-cast v0, Lcom/alibaba/android/dingtalkim/views/IMBanner$InnerView;

    move-object v7, v0

    .line 523
    move v5, p2

    .line 524
    .local v5, "finalPosition":I
    new-instance v9, Lcom/alibaba/android/dingtalkim/views/IMBanner$b$1;

    invoke-direct {v9, p0, v5}, Lcom/alibaba/android/dingtalkim/views/IMBanner$b$1;-><init>(Lcom/alibaba/android/dingtalkim/views/IMBanner$b;I)V

    invoke-virtual {v7, v9}, Lcom/alibaba/android/dingtalkim/views/IMBanner$InnerView;->setInnerViewClickListener(Lcom/alibaba/android/dingtalkim/views/IMBanner$InnerView$a;)V
    :try_end_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_0

    .line 582
    .end local v2    # "constructors":[Ljava/lang/reflect/Constructor;
    .end local v5    # "finalPosition":I
    .end local v6    # "mDefaultConstructor":Ljava/lang/reflect/Constructor;
    .end local v8    # "viewClass":Ljava/lang/Class;
    :catch_0
    move-exception v4

    .line 583
    .local v4, "e":Ljava/lang/InstantiationException;
    invoke-virtual {v4}, Ljava/lang/InstantiationException;->printStackTrace()V

    goto :goto_0

    .line 584
    .end local v4    # "e":Ljava/lang/InstantiationException;
    :catch_1
    move-exception v4

    .line 585
    .local v4, "e":Ljava/lang/IllegalAccessException;
    invoke-virtual {v4}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_0

    .line 586
    .end local v4    # "e":Ljava/lang/IllegalAccessException;
    :catch_2
    move-exception v4

    .line 587
    .local v4, "e":Ljava/lang/Exception;
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public final isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "o"    # Ljava/lang/Object;

    .prologue
    .line 495
    .local p0, "this":Lcom/alibaba/android/dingtalkim/views/IMBanner$b;, "Lcom/alibaba/android/dingtalkim/views/IMBanner<TT;>.b;"
    if-ne p1, p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
