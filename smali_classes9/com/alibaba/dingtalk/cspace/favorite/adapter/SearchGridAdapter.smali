.class public Lcom/alibaba/dingtalk/cspace/favorite/adapter/SearchGridAdapter;
.super Lcom/alibaba/dingtalk/cspace/listbase/ArrayListAdapter;
.source "SearchGridAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/dingtalk/cspace/favorite/adapter/SearchGridAdapter$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/alibaba/dingtalk/cspace/listbase/ArrayListAdapter",
        "<",
        "Lgcw;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 20
    invoke-direct {p0, p1}, Lcom/alibaba/dingtalk/cspace/listbase/ArrayListAdapter;-><init>(Landroid/content/Context;)V

    .line 21
    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 26
    if-nez p2, :cond_1

    .line 27
    new-instance v1, Lcom/alibaba/dingtalk/cspace/favorite/adapter/SearchGridAdapter$a;

    invoke-direct {v1}, Lcom/alibaba/dingtalk/cspace/favorite/adapter/SearchGridAdapter$a;-><init>()V

    .line 28
    .local v1, "viewHolder":Lcom/alibaba/dingtalk/cspace/favorite/adapter/SearchGridAdapter$a;
    iget-object v2, p0, Lcom/alibaba/dingtalk/cspace/favorite/adapter/SearchGridAdapter;->m:Landroid/content/Context;

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    sget v3, Lfzs$g;->favorite_search_type_item:I

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 29
    sget v2, Lfzs$f;->tv_name:I

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 1045
    iput-object v2, v1, Lcom/alibaba/dingtalk/cspace/favorite/adapter/SearchGridAdapter$a;->a:Landroid/widget/TextView;

    .line 30
    sget v2, Lfzs$f;->img_icon:I

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 2045
    iput-object v2, v1, Lcom/alibaba/dingtalk/cspace/favorite/adapter/SearchGridAdapter$a;->b:Landroid/widget/ImageView;

    .line 31
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 35
    :goto_0
    iget-object v2, p0, Lcom/alibaba/dingtalk/cspace/favorite/adapter/SearchGridAdapter;->l:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgcw;

    .line 36
    .local v0, "searchTypeItem":Lgcw;
    if-eqz v0, :cond_0

    .line 3045
    iget-object v2, v1, Lcom/alibaba/dingtalk/cspace/favorite/adapter/SearchGridAdapter$a;->a:Landroid/widget/TextView;

    .line 4024
    iget-object v3, v0, Lgcw;->b:Ljava/lang/String;

    .line 37
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4045
    iget-object v3, v1, Lcom/alibaba/dingtalk/cspace/favorite/adapter/SearchGridAdapter$a;->b:Landroid/widget/ImageView;

    .line 4060
    iget-boolean v2, v0, Lgcw;->e:Z

    .line 38
    if-eqz v2, :cond_2

    .line 5040
    iget v2, v0, Lgcw;->d:I

    .line 38
    :goto_1
    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 40
    :cond_0
    return-object p2

    .line 33
    .end local v0    # "searchTypeItem":Lgcw;
    .end local v1    # "viewHolder":Lcom/alibaba/dingtalk/cspace/favorite/adapter/SearchGridAdapter$a;
    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/dingtalk/cspace/favorite/adapter/SearchGridAdapter$a;

    .restart local v1    # "viewHolder":Lcom/alibaba/dingtalk/cspace/favorite/adapter/SearchGridAdapter$a;
    goto :goto_0

    .line 6032
    .restart local v0    # "searchTypeItem":Lgcw;
    :cond_2
    iget v2, v0, Lgcw;->c:I

    goto :goto_1
.end method
