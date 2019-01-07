.class public final Lcia;
.super Landroid/widget/BaseAdapter;
.source "BaseSelectModeListAdapter.java"


# instance fields
.field public a:I

.field public b:Z

.field private c:Landroid/content/Context;

.field private d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;Ljava/util/List;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p4, "initIndex"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Boolean;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 26
    .local p2, "desResIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .local p3, "enables":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Boolean;>;"
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 27
    iput-object p1, p0, Lcia;->c:Landroid/content/Context;

    .line 28
    iput-object p2, p0, Lcia;->d:Ljava/util/List;

    .line 29
    iput-object p3, p0, Lcia;->e:Ljava/util/List;

    .line 30
    iput p4, p0, Lcia;->a:I

    .line 31
    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 0
    .param p1, "selectedIndex"    # I

    .prologue
    .line 89
    iput p1, p0, Lcia;->a:I

    .line 90
    invoke-virtual {p0}, Lcia;->notifyDataSetChanged()V

    .line 91
    return-void
.end method

.method public final getCount()I
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcia;->d:Ljava/util/List;

    if-nez v0, :cond_0

    .line 36
    const/4 v0, 0x0

    .line 38
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcia;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0
.end method

.method public final getItem(I)Ljava/lang/Object;
    .locals 2
    .param p1, "position"    # I

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v0, 0x0

    .line 43
    iget-object v1, p0, Lcia;->d:Ljava/util/List;

    if-nez v1, :cond_1

    .line 49
    :cond_0
    :goto_0
    return-object v0

    .line 46
    :cond_1
    if-ltz p1, :cond_0

    iget-object v1, p0, Lcia;->d:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge p1, v1, :cond_0

    .line 49
    iget-object v0, p0, Lcia;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public final getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 54
    int-to-long v0, p1

    return-wide v0
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 11
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v10

    invoke-static {v10}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v6, 0x0

    const/4 v10, 0x1

    const/16 v5, 0x8

    const/4 v4, 0x0

    .line 60
    if-nez p2, :cond_5

    .line 61
    new-instance v1, Lchz;

    iget-object v2, p0, Lcia;->c:Landroid/content/Context;

    invoke-direct {v1, v2, p0}, Lchz;-><init>(Landroid/content/Context;Lcia;)V

    .line 1033
    .local v1, "holder":Lchz;
    iget-object v2, v1, Lchz;->a:Landroid/content/Context;

    if-nez v2, :cond_4

    move-object p2, v6

    .line 1040
    :goto_0
    if-eqz p2, :cond_0

    .line 1043
    iput-object p2, v1, Lchz;->c:Landroid/view/View;

    .line 1044
    sget v2, Lcig$f;->view_top_line:I

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, v1, Lchz;->d:Landroid/view/View;

    .line 1045
    sget v2, Lcig$f;->tv_base_mode:I

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v1, Lchz;->e:Landroid/widget/TextView;

    .line 1046
    sget v2, Lcig$f;->iv_base_mode_toggle:I

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, v1, Lchz;->f:Landroid/widget/ImageView;

    .line 1047
    sget v2, Lcig$f;->view_bottom:I

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, v1, Lchz;->g:Landroid/view/View;

    .line 64
    :cond_0
    if-eqz p2, :cond_1

    .line 65
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 70
    :cond_1
    :goto_1
    const/4 v0, 0x1

    .line 71
    .local v0, "enable":Z
    iget-object v2, p0, Lcia;->e:Ljava/util/List;

    if-eqz v2, :cond_2

    if-ltz p1, :cond_2

    iget-object v2, p0, Lcia;->e:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge p1, v2, :cond_2

    .line 72
    iget-object v2, p0, Lcia;->e:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 73
    iget-object v2, p0, Lcia;->e:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 76
    :cond_2
    iget-object v2, p0, Lcia;->d:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    iget v7, p0, Lcia;->a:I

    iget-boolean v8, p0, Lcia;->b:Z

    .line 1055
    iget-object v3, v1, Lchz;->a:Landroid/content/Context;

    if-eqz v3, :cond_3

    iget-object v3, v1, Lchz;->c:Landroid/view/View;

    if-eqz v3, :cond_3

    if-nez v2, :cond_6

    .line 77
    :cond_3
    :goto_2
    return-object p2

    .line 1036
    .end local v0    # "enable":Z
    :cond_4
    iget-object v2, v1, Lchz;->a:Landroid/content/Context;

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    sget v3, Lcig$h;->item_base_mode:I

    invoke-virtual {v2, v3, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    goto :goto_0

    .line 68
    .end local v1    # "holder":Lchz;
    :cond_5
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lchz;

    .restart local v1    # "holder":Lchz;
    goto :goto_1

    .line 1060
    .restart local v0    # "enable":Z
    :cond_6
    iget-object v9, v1, Lchz;->g:Landroid/view/View;

    if-eqz v8, :cond_7

    if-nez p1, :cond_7

    move v3, v4

    :goto_3
    invoke-virtual {v9, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1061
    iget-object v9, v1, Lchz;->d:Landroid/view/View;

    if-nez p1, :cond_8

    move v3, v5

    :goto_4
    invoke-virtual {v9, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1064
    if-eq p1, v7, :cond_a

    if-eqz v0, :cond_a

    .line 1065
    iget-object v3, v1, Lchz;->c:Landroid/view/View;

    invoke-virtual {v3, v10}, Landroid/view/View;->setClickable(Z)V

    .line 1066
    iget-object v3, v1, Lchz;->c:Landroid/view/View;

    invoke-virtual {v3, v10}, Landroid/view/View;->setEnabled(Z)V

    .line 1067
    iget-object v3, v1, Lchz;->c:Landroid/view/View;

    new-instance v6, Lchz$1;

    invoke-direct {v6, v1, p1}, Lchz$1;-><init>(Lchz;I)V

    invoke-virtual {v3, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1080
    :goto_5
    iget-object v3, v1, Lchz;->e:Landroid/widget/TextView;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(I)V

    .line 1081
    iget-object v3, v1, Lchz;->e:Landroid/widget/TextView;

    if-ne p1, v7, :cond_b

    iget-object v2, v1, Lchz;->a:Landroid/content/Context;

    .line 1082
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v6, Lcig$c;->ui_common_theme_text_color:I

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    .line 1081
    :goto_6
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1085
    iget-object v2, v1, Lchz;->f:Landroid/widget/ImageView;

    if-ne p1, v7, :cond_d

    :goto_7
    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_2

    :cond_7
    move v3, v5

    .line 1060
    goto :goto_3

    .line 1061
    :cond_8
    if-eqz v8, :cond_9

    if-ne p1, v10, :cond_9

    move v3, v5

    goto :goto_4

    :cond_9
    move v3, v4

    goto :goto_4

    .line 1076
    :cond_a
    iget-object v3, v1, Lchz;->c:Landroid/view/View;

    invoke-virtual {v3, v4}, Landroid/view/View;->setClickable(Z)V

    .line 1077
    iget-object v3, v1, Lchz;->c:Landroid/view/View;

    invoke-virtual {v3, v4}, Landroid/view/View;->setEnabled(Z)V

    .line 1078
    iget-object v3, v1, Lchz;->c:Landroid/view/View;

    invoke-virtual {v3, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_5

    .line 1082
    :cond_b
    if-eqz v0, :cond_c

    iget-object v2, v1, Lchz;->a:Landroid/content/Context;

    .line 1083
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v6, Lcig$c;->text_color_black:I

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    goto :goto_6

    :cond_c
    iget-object v2, v1, Lchz;->a:Landroid/content/Context;

    .line 1084
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v6, Lcig$c;->text_color_gray:I

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    goto :goto_6

    :cond_d
    move v4, v5

    .line 1085
    goto :goto_7
.end method
