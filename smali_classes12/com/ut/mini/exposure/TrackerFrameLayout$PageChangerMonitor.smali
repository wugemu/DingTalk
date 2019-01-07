.class Lcom/ut/mini/exposure/TrackerFrameLayout$PageChangerMonitor;
.super Ljava/lang/Object;
.source "TrackerFrameLayout.java"

# interfaces
.implements Lcom/ut/mini/UTPageHitHelper$PageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ut/mini/exposure/TrackerFrameLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "PageChangerMonitor"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 715
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageAppear(Ljava/lang/Object;)V
    .locals 11
    .param p1, "pageObject"    # Ljava/lang/Object;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v10

    invoke-static {v10}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v8, 0x2

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 719
    invoke-static {}, Lcom/ut/mini/exposure/TrackerFrameLayout;->access$100()Ljava/util/Map;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Map;->clear()V

    .line 720
    if-eqz p1, :cond_0

    instance-of v6, p1, Landroid/app/Activity;

    if-eqz v6, :cond_0

    move-object v0, p1

    .line 721
    check-cast v0, Landroid/app/Activity;

    .line 724
    .local v0, "activity":Landroid/app/Activity;
    const/4 v1, 0x0

    .line 726
    .local v1, "contentView":Landroid/view/View;
    const v6, 0x1020002

    :try_start_0
    invoke-virtual {v0, v6}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 731
    :goto_0
    if-eqz v1, :cond_2

    instance-of v6, v1, Landroid/view/ViewGroup;

    if-eqz v6, :cond_2

    move-object v5, v1

    .line 732
    check-cast v5, Landroid/view/ViewGroup;

    .line 733
    .local v5, "vg":Landroid/view/ViewGroup;
    invoke-virtual {v5, v9}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 734
    .local v4, "v":Landroid/view/View;
    if-eqz v4, :cond_1

    instance-of v6, v4, Lcom/ut/mini/exposure/TrackerFrameLayout;

    if-eqz v6, :cond_1

    move-object v3, v4

    .line 735
    check-cast v3, Lcom/ut/mini/exposure/TrackerFrameLayout;

    .line 736
    .local v3, "tfl":Lcom/ut/mini/exposure/TrackerFrameLayout;
    invoke-static {v3, v10, v10}, Lcom/ut/mini/exposure/TrackerFrameLayout;->access$000(Lcom/ut/mini/exposure/TrackerFrameLayout;IZ)V

    .line 744
    .end local v0    # "activity":Landroid/app/Activity;
    .end local v1    # "contentView":Landroid/view/View;
    .end local v3    # "tfl":Lcom/ut/mini/exposure/TrackerFrameLayout;
    .end local v4    # "v":Landroid/view/View;
    .end local v5    # "vg":Landroid/view/ViewGroup;
    :cond_0
    :goto_1
    return-void

    .line 727
    .restart local v0    # "activity":Landroid/app/Activity;
    .restart local v1    # "contentView":Landroid/view/View;
    :catch_0
    move-exception v2

    .line 728
    .local v2, "e":Ljava/lang/Exception;
    const-string/jumbo v6, "TrackerFrameLayout"

    new-array v7, v9, [Ljava/lang/Object;

    invoke-static {v6, v2, v7}, Lamu;->b(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto :goto_0

    .line 738
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v4    # "v":Landroid/view/View;
    .restart local v5    # "vg":Landroid/view/ViewGroup;
    :cond_1
    const-string/jumbo v6, "TrackerFrameLayout"

    new-array v7, v8, [Ljava/lang/Object;

    const-string/jumbo v8, "cannot found the trace view "

    aput-object v8, v7, v9

    aput-object v4, v7, v10

    invoke-static {v6, v7}, Lamu;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 741
    .end local v4    # "v":Landroid/view/View;
    .end local v5    # "vg":Landroid/view/ViewGroup;
    :cond_2
    const-string/jumbo v6, "TrackerFrameLayout"

    new-array v7, v8, [Ljava/lang/Object;

    const-string/jumbo v8, "contentView"

    aput-object v8, v7, v9

    aput-object v1, v7, v10

    invoke-static {v6, v7}, Lamu;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1
.end method

.method public onPageDisAppear(Ljava/lang/Object;)V
    .locals 11
    .param p1, "pageObject"    # Ljava/lang/Object;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v10

    invoke-static {v10}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v8, 0x2

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 748
    if-eqz p1, :cond_0

    instance-of v6, p1, Landroid/app/Activity;

    if-eqz v6, :cond_0

    move-object v0, p1

    .line 749
    check-cast v0, Landroid/app/Activity;

    .line 752
    .local v0, "activity":Landroid/app/Activity;
    const/4 v1, 0x0

    .line 754
    .local v1, "contentView":Landroid/view/View;
    const v6, 0x1020002

    :try_start_0
    invoke-virtual {v0, v6}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 759
    :goto_0
    if-eqz v1, :cond_2

    instance-of v6, v1, Landroid/view/ViewGroup;

    if-eqz v6, :cond_2

    move-object v5, v1

    .line 760
    check-cast v5, Landroid/view/ViewGroup;

    .line 761
    .local v5, "vg":Landroid/view/ViewGroup;
    invoke-virtual {v5, v9}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 762
    .local v4, "v":Landroid/view/View;
    if-eqz v4, :cond_1

    instance-of v6, v4, Lcom/ut/mini/exposure/TrackerFrameLayout;

    if-eqz v6, :cond_1

    move-object v3, v4

    .line 763
    check-cast v3, Lcom/ut/mini/exposure/TrackerFrameLayout;

    .line 764
    .local v3, "tfl":Lcom/ut/mini/exposure/TrackerFrameLayout;
    invoke-virtual {v3}, Lcom/ut/mini/exposure/TrackerFrameLayout;->onPageDisAppear()V

    .line 772
    .end local v0    # "activity":Landroid/app/Activity;
    .end local v1    # "contentView":Landroid/view/View;
    .end local v3    # "tfl":Lcom/ut/mini/exposure/TrackerFrameLayout;
    .end local v4    # "v":Landroid/view/View;
    .end local v5    # "vg":Landroid/view/ViewGroup;
    :cond_0
    :goto_1
    return-void

    .line 755
    .restart local v0    # "activity":Landroid/app/Activity;
    .restart local v1    # "contentView":Landroid/view/View;
    :catch_0
    move-exception v2

    .line 756
    .local v2, "e":Ljava/lang/Exception;
    const-string/jumbo v6, "TrackerFrameLayout"

    new-array v7, v9, [Ljava/lang/Object;

    invoke-static {v6, v2, v7}, Lamu;->b(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto :goto_0

    .line 766
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v4    # "v":Landroid/view/View;
    .restart local v5    # "vg":Landroid/view/ViewGroup;
    :cond_1
    const-string/jumbo v6, "TrackerFrameLayout"

    new-array v7, v8, [Ljava/lang/Object;

    const-string/jumbo v8, "cannot found the trace view "

    aput-object v8, v7, v9

    aput-object v4, v7, v10

    invoke-static {v6, v7}, Lamu;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 769
    .end local v4    # "v":Landroid/view/View;
    .end local v5    # "vg":Landroid/view/ViewGroup;
    :cond_2
    const-string/jumbo v6, "TrackerFrameLayout"

    new-array v7, v8, [Ljava/lang/Object;

    const-string/jumbo v8, "contentView"

    aput-object v8, v7, v9

    aput-object v1, v7, v10

    invoke-static {v6, v7}, Lamu;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1
.end method
