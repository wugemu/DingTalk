.class public final Lhfa;
.super Ljava/lang/Object;
.source "MiniAppListViewHolderFactory.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 99
    return-void
.end method

.method public static a(Landroid/view/ViewGroup;ILandroid/app/Activity;Landroid/support/v7/widget/RecyclerView$LayoutManager;)Lhes;
    .locals 6
    .param p0, "parent"    # Landroid/view/ViewGroup;
    .param p1, "itemType"    # I
    .param p2, "activity"    # Landroid/app/Activity;
    .param p3, "layoutManager"    # Landroid/support/v7/widget/RecyclerView$LayoutManager;

    .prologue
    const/4 v5, 0x0

    .line 37
    invoke-static {p1}, Lcom/alibaba/lightapp/runtime/model/MiniAppListItemModel$ItemType;->getItemTypeFromInt(I)Lcom/alibaba/lightapp/runtime/model/MiniAppListItemModel$ItemType;

    move-result-object v0

    .line 38
    .local v0, "compositeItemType":Lcom/alibaba/lightapp/runtime/model/MiniAppListItemModel$ItemType;
    sget-object v3, Lhfa$1;->a:[I

    invoke-virtual {v0}, Lcom/alibaba/lightapp/runtime/model/MiniAppListItemModel$ItemType;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 97
    if-eqz p2, :cond_a

    .end local p2    # "activity":Landroid/app/Activity;
    :goto_0
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    invoke-static {}, Lhew;->b()I

    move-result v4

    invoke-virtual {v3, v4, p0, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 98
    .local v2, "view":Landroid/view/View;
    new-instance v1, Lhew;

    invoke-direct {v1, v2}, Lhew;-><init>(Landroid/view/View;)V

    .line 101
    .local v1, "miniAppListBaseViewHolder":Lhes;
    :goto_1
    return-object v1

    .line 40
    .end local v1    # "miniAppListBaseViewHolder":Lhes;
    .end local v2    # "view":Landroid/view/View;
    .restart local p2    # "activity":Landroid/app/Activity;
    :pswitch_0
    if-eqz p2, :cond_0

    .end local p2    # "activity":Landroid/app/Activity;
    :goto_2
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    .line 41
    invoke-static {}, Lhez;->b()I

    move-result v4

    invoke-virtual {v3, v4, p0, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 42
    .restart local v2    # "view":Landroid/view/View;
    new-instance v1, Lhez;

    invoke-direct {v1, v2}, Lhez;-><init>(Landroid/view/View;)V

    .line 43
    .restart local v1    # "miniAppListBaseViewHolder":Lhes;
    goto :goto_1

    .line 40
    .end local v1    # "miniAppListBaseViewHolder":Lhes;
    .end local v2    # "view":Landroid/view/View;
    .restart local p2    # "activity":Landroid/app/Activity;
    :cond_0
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v3

    invoke-virtual {v3}, Lcid;->c()Landroid/app/Application;

    move-result-object p2

    goto :goto_2

    .line 45
    :pswitch_1
    if-eqz p2, :cond_1

    .end local p2    # "activity":Landroid/app/Activity;
    :goto_3
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    .line 46
    invoke-static {}, Lhev;->b()I

    move-result v4

    invoke-virtual {v3, v4, p0, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 47
    .restart local v2    # "view":Landroid/view/View;
    new-instance v1, Lhev;

    invoke-direct {v1, v2}, Lhev;-><init>(Landroid/view/View;)V

    .line 48
    .restart local v1    # "miniAppListBaseViewHolder":Lhes;
    goto :goto_1

    .line 45
    .end local v1    # "miniAppListBaseViewHolder":Lhes;
    .end local v2    # "view":Landroid/view/View;
    .restart local p2    # "activity":Landroid/app/Activity;
    :cond_1
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v3

    invoke-virtual {v3}, Lcid;->c()Landroid/app/Application;

    move-result-object p2

    goto :goto_3

    .line 50
    :pswitch_2
    if-eqz p2, :cond_2

    move-object v3, p2

    :goto_4
    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    .line 51
    invoke-static {}, Lhey;->b()I

    move-result v4

    invoke-virtual {v3, v4, p0, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 52
    .restart local v2    # "view":Landroid/view/View;
    if-eqz p2, :cond_3

    instance-of v3, p2, Lheo;

    if-eqz v3, :cond_3

    .line 53
    new-instance v1, Lhey;

    check-cast p2, Lheo;

    .end local p2    # "activity":Landroid/app/Activity;
    invoke-direct {v1, v2, p2}, Lhey;-><init>(Landroid/view/View;Lheo;)V

    .restart local v1    # "miniAppListBaseViewHolder":Lhes;
    goto :goto_1

    .line 50
    .end local v1    # "miniAppListBaseViewHolder":Lhes;
    .end local v2    # "view":Landroid/view/View;
    .restart local p2    # "activity":Landroid/app/Activity;
    :cond_2
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v3

    invoke-virtual {v3}, Lcid;->c()Landroid/app/Application;

    move-result-object v3

    goto :goto_4

    .line 56
    .restart local v2    # "view":Landroid/view/View;
    :cond_3
    new-instance v1, Lhey;

    invoke-direct {v1, v2}, Lhey;-><init>(Landroid/view/View;)V

    .line 58
    .restart local v1    # "miniAppListBaseViewHolder":Lhes;
    goto :goto_1

    .line 60
    .end local v1    # "miniAppListBaseViewHolder":Lhes;
    .end local v2    # "view":Landroid/view/View;
    :pswitch_3
    if-eqz p2, :cond_4

    move-object v3, p2

    :goto_5
    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    .line 61
    invoke-static {}, Lhet;->b()I

    move-result v4

    invoke-virtual {v3, v4, p0, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 62
    .restart local v2    # "view":Landroid/view/View;
    if-eqz p2, :cond_5

    instance-of v3, p2, Lheo;

    if-eqz v3, :cond_5

    .line 63
    new-instance v1, Lhet;

    check-cast p2, Lheo;

    .end local p2    # "activity":Landroid/app/Activity;
    invoke-direct {v1, v2, p2}, Lhet;-><init>(Landroid/view/View;Lheo;)V

    .restart local v1    # "miniAppListBaseViewHolder":Lhes;
    goto/16 :goto_1

    .line 60
    .end local v1    # "miniAppListBaseViewHolder":Lhes;
    .end local v2    # "view":Landroid/view/View;
    .restart local p2    # "activity":Landroid/app/Activity;
    :cond_4
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v3

    invoke-virtual {v3}, Lcid;->c()Landroid/app/Application;

    move-result-object v3

    goto :goto_5

    .line 66
    .restart local v2    # "view":Landroid/view/View;
    :cond_5
    new-instance v1, Lhet;

    invoke-direct {v1, v2}, Lhet;-><init>(Landroid/view/View;)V

    .line 68
    .restart local v1    # "miniAppListBaseViewHolder":Lhes;
    goto/16 :goto_1

    .line 70
    .end local v1    # "miniAppListBaseViewHolder":Lhes;
    .end local v2    # "view":Landroid/view/View;
    :pswitch_4
    if-eqz p2, :cond_6

    move-object v3, p2

    :goto_6
    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    .line 71
    invoke-static {}, Lheu;->b()I

    move-result v4

    invoke-virtual {v3, v4, p0, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 76
    .restart local v2    # "view":Landroid/view/View;
    if-eqz p2, :cond_7

    instance-of v3, p2, Lheo;

    if-eqz v3, :cond_7

    .line 77
    new-instance v1, Lheu;

    check-cast p2, Lheo;

    .end local p2    # "activity":Landroid/app/Activity;
    invoke-direct {v1, v2, p3, p2}, Lheu;-><init>(Landroid/view/View;Landroid/support/v7/widget/RecyclerView$LayoutManager;Lheo;)V

    .restart local v1    # "miniAppListBaseViewHolder":Lhes;
    goto/16 :goto_1

    .line 70
    .end local v1    # "miniAppListBaseViewHolder":Lhes;
    .end local v2    # "view":Landroid/view/View;
    .restart local p2    # "activity":Landroid/app/Activity;
    :cond_6
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v3

    invoke-virtual {v3}, Lcid;->c()Landroid/app/Application;

    move-result-object v3

    goto :goto_6

    .line 82
    .restart local v2    # "view":Landroid/view/View;
    :cond_7
    new-instance v1, Lheu;

    invoke-direct {v1, v2, p3}, Lheu;-><init>(Landroid/view/View;Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 84
    .restart local v1    # "miniAppListBaseViewHolder":Lhes;
    goto/16 :goto_1

    .line 86
    .end local v1    # "miniAppListBaseViewHolder":Lhes;
    .end local v2    # "view":Landroid/view/View;
    :pswitch_5
    if-eqz p2, :cond_8

    move-object v3, p2

    :goto_7
    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    .line 87
    invoke-static {}, Lhex;->b()I

    move-result v4

    invoke-virtual {v3, v4, p0, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 88
    .restart local v2    # "view":Landroid/view/View;
    if-eqz p2, :cond_9

    instance-of v3, p2, Lheo;

    if-eqz v3, :cond_9

    .line 89
    new-instance v1, Lhex;

    check-cast p2, Lheo;

    .end local p2    # "activity":Landroid/app/Activity;
    invoke-direct {v1, v2, p2}, Lhex;-><init>(Landroid/view/View;Lheo;)V

    .restart local v1    # "miniAppListBaseViewHolder":Lhes;
    goto/16 :goto_1

    .line 86
    .end local v1    # "miniAppListBaseViewHolder":Lhes;
    .end local v2    # "view":Landroid/view/View;
    .restart local p2    # "activity":Landroid/app/Activity;
    :cond_8
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v3

    invoke-virtual {v3}, Lcid;->c()Landroid/app/Application;

    move-result-object v3

    goto :goto_7

    .line 92
    .restart local v2    # "view":Landroid/view/View;
    :cond_9
    new-instance v1, Lhex;

    invoke-direct {v1, v2}, Lhex;-><init>(Landroid/view/View;)V

    .line 94
    .restart local v1    # "miniAppListBaseViewHolder":Lhes;
    goto/16 :goto_1

    .line 97
    .end local v1    # "miniAppListBaseViewHolder":Lhes;
    .end local v2    # "view":Landroid/view/View;
    :cond_a
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v3

    invoke-virtual {v3}, Lcid;->c()Landroid/app/Application;

    move-result-object p2

    goto/16 :goto_0

    .line 38
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method
