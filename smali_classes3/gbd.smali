.class public final Lgbd;
.super Lcom/alibaba/dingtalk/cspace/listbase/ArrayListAdapter;
.source "FavoriteListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/alibaba/dingtalk/cspace/listbase/ArrayListAdapter",
        "<",
        "Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavViewModel;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 0
    .param p1, "mContext"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavViewModel;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 20
    .local p2, "list":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavViewModel;>;"
    invoke-direct {p0, p1, p2}, Lcom/alibaba/dingtalk/cspace/listbase/ArrayListAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    .line 21
    return-void
.end method


# virtual methods
.method public final getItemViewType(I)I
    .locals 2
    .param p1, "position"    # I

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 59
    iget-object v1, p0, Lgbd;->l:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavViewModel;

    .line 60
    .local v0, "viewModel":Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavViewModel;
    invoke-virtual {v0}, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavViewModel;->getViewType()I

    move-result v1

    return v1
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 8
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 25
    const/4 v1, 0x0

    .line 26
    .local v1, "viewHolder":Lgaw;
    invoke-virtual {p0, p1}, Lgbd;->getItemViewType(I)I

    move-result v2

    .line 27
    .local v2, "viewType":I
    if-eqz p2, :cond_0

    .line 28
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "viewHolder":Lgaw;
    check-cast v1, Lgaw;

    .line 1070
    .restart local v1    # "viewHolder":Lgaw;
    iget v3, v1, Lgaw;->a:I

    .line 29
    if-eq v3, v2, :cond_0

    .line 30
    const/4 p2, 0x0

    .line 31
    const/4 v1, 0x0

    .line 35
    :cond_0
    if-nez p2, :cond_1

    .line 2016
    packed-switch v2, :pswitch_data_0

    .line 2042
    new-instance v1, Lgbk;

    .end local v1    # "viewHolder":Lgaw;
    invoke-direct {v1}, Lgbk;-><init>()V

    .line 37
    .restart local v1    # "viewHolder":Lgaw;
    :goto_0
    iget-object v3, p0, Lgbd;->m:Landroid/content/Context;

    invoke-virtual {v1, v3}, Lgaw;->b(Landroid/content/Context;)Landroid/view/View;

    move-result-object p2

    .line 38
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 2074
    :cond_1
    iput v2, v1, Lgaw;->a:I

    .line 41
    iget-object v3, p0, Lgbd;->m:Landroid/content/Context;

    invoke-virtual {v1, v3}, Lgaw;->a(Landroid/content/Context;)V

    .line 43
    iget-object v3, p0, Lgbd;->l:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavViewModel;

    .line 44
    .local v0, "favViewModel":Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavViewModel;
    if-eqz v0, :cond_3

    .line 45
    invoke-virtual {v0}, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavViewModel;->getContent()Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavContentViewModel;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-virtual {v0}, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavViewModel;->getContent()Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavContentViewModel;

    move-result-object v3

    invoke-virtual {v3}, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavContentViewModel;->getUid()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-nez v3, :cond_2

    .line 46
    invoke-virtual {v0}, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavViewModel;->getContent()Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavContentViewModel;

    move-result-object v3

    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v4

    invoke-virtual {v4}, Lcid;->b()Lchy;

    move-result-object v4

    invoke-virtual {v4}, Lchy;->getCurrentUid()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavContentViewModel;->setUid(J)V

    .line 48
    :cond_2
    invoke-virtual {v1, v0, p1}, Lgaw;->a(Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavViewModel;I)V

    .line 49
    iget-object v3, p0, Lgbd;->m:Landroid/content/Context;

    invoke-virtual {v1, v3, v0, p1, p3}, Lgaw;->a(Landroid/content/Context;Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavViewModel;ILandroid/view/ViewGroup;)V

    .line 52
    :cond_3
    invoke-virtual {v1}, Lgaw;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 54
    return-object p2

    .line 2018
    .end local v0    # "favViewModel":Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavViewModel;
    :pswitch_0
    new-instance v1, Lgbj;

    .end local v1    # "viewHolder":Lgaw;
    invoke-direct {v1}, Lgbj;-><init>()V

    goto :goto_0

    .line 2020
    .restart local v1    # "viewHolder":Lgaw;
    :pswitch_1
    new-instance v1, Lgax;

    .end local v1    # "viewHolder":Lgaw;
    invoke-direct {v1}, Lgax;-><init>()V

    goto :goto_0

    .line 2022
    .restart local v1    # "viewHolder":Lgaw;
    :pswitch_2
    new-instance v1, Lgbg;

    .end local v1    # "viewHolder":Lgaw;
    invoke-direct {v1}, Lgbg;-><init>()V

    goto :goto_0

    .line 2024
    .restart local v1    # "viewHolder":Lgaw;
    :pswitch_3
    new-instance v1, Lgba;

    .end local v1    # "viewHolder":Lgaw;
    invoke-direct {v1}, Lgba;-><init>()V

    goto :goto_0

    .line 2026
    .restart local v1    # "viewHolder":Lgaw;
    :pswitch_4
    new-instance v1, Lgbc;

    .end local v1    # "viewHolder":Lgaw;
    invoke-direct {v1}, Lgbc;-><init>()V

    goto :goto_0

    .line 2028
    .restart local v1    # "viewHolder":Lgaw;
    :pswitch_5
    new-instance v1, Lgbh;

    .end local v1    # "viewHolder":Lgaw;
    invoke-direct {v1}, Lgbh;-><init>()V

    goto :goto_0

    .line 2030
    .restart local v1    # "viewHolder":Lgaw;
    :pswitch_6
    new-instance v1, Lgbe;

    .end local v1    # "viewHolder":Lgaw;
    invoke-direct {v1}, Lgbe;-><init>()V

    goto/16 :goto_0

    .line 2032
    .restart local v1    # "viewHolder":Lgaw;
    :pswitch_7
    new-instance v1, Lgay;

    .end local v1    # "viewHolder":Lgaw;
    invoke-direct {v1}, Lgay;-><init>()V

    goto/16 :goto_0

    .line 2034
    .restart local v1    # "viewHolder":Lgaw;
    :pswitch_8
    new-instance v1, Lgbf;

    .end local v1    # "viewHolder":Lgaw;
    invoke-direct {v1}, Lgbf;-><init>()V

    goto/16 :goto_0

    .line 2036
    .restart local v1    # "viewHolder":Lgaw;
    :pswitch_9
    new-instance v1, Lgbb;

    .end local v1    # "viewHolder":Lgaw;
    invoke-direct {v1}, Lgbb;-><init>()V

    goto/16 :goto_0

    .line 2038
    .restart local v1    # "viewHolder":Lgaw;
    :pswitch_a
    new-instance v1, Lgbl;

    .end local v1    # "viewHolder":Lgaw;
    invoke-direct {v1}, Lgbl;-><init>()V

    goto/16 :goto_0

    .line 2040
    .restart local v1    # "viewHolder":Lgaw;
    :pswitch_b
    new-instance v1, Lgaz;

    .end local v1    # "viewHolder":Lgaw;
    invoke-direct {v1}, Lgaz;-><init>()V

    goto/16 :goto_0

    .line 2016
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_4
        :pswitch_3
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_a
        :pswitch_9
        :pswitch_b
    .end packed-switch
.end method
