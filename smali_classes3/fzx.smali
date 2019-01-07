.class public final Lfzx;
.super Lcom/alibaba/dingtalk/cspace/listbase/ArrayListAdapter;
.source "CSpaceAddMenuAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lfzx$b;,
        Lfzx$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/alibaba/dingtalk/cspace/listbase/ArrayListAdapter",
        "<",
        "Lfzx$a;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 2
    .param p1, "mContext"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lfzx$a;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 88
    .local p2, "list":Ljava/util/List;, "Ljava/util/List<Lfzx$a;>;"
    invoke-direct {p0, p1, p2}, Lcom/alibaba/dingtalk/cspace/listbase/ArrayListAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    .line 89
    iget-object v0, p0, Lfzx;->l:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lfzx;->l:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 90
    iget-object v0, p0, Lfzx;->l:Ljava/util/List;

    new-instance v1, Lfzx$1;

    invoke-direct {v1, p0}, Lfzx$1;-><init>(Lfzx;)V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 99
    :cond_0
    return-void
.end method


# virtual methods
.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    const/16 v6, 0x8

    const/4 v5, 0x0

    .line 104
    if-nez p2, :cond_1

    .line 105
    new-instance v1, Lfzx$b;

    invoke-direct {v1}, Lfzx$b;-><init>()V

    .line 106
    .local v1, "viewHolder":Lfzx$b;
    iget-object v2, p0, Lfzx;->m:Landroid/content/Context;

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    sget v3, Lfzs$g;->cspace_drop_down_menu_item:I

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 107
    sget v2, Lfzs$f;->item_icon_font:I

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    iput-object v2, v1, Lfzx$b;->a:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    .line 108
    sget v2, Lfzs$f;->item_icon:I

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, v1, Lfzx$b;->b:Landroid/widget/ImageView;

    .line 109
    sget v2, Lfzs$f;->item_text:I

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v1, Lfzx$b;->c:Landroid/widget/TextView;

    .line 110
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 114
    :goto_0
    iget-object v2, p0, Lfzx;->l:Ljava/util/List;

    if-eqz v2, :cond_5

    if-ltz p1, :cond_5

    iget-object v2, p0, Lfzx;->l:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge p1, v2, :cond_5

    .line 115
    iget-object v2, p0, Lfzx;->l:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfzx$a;

    .line 116
    .local v0, "item":Lfzx$a;
    if-eqz v0, :cond_0

    .line 117
    iget-object v2, v1, Lfzx$b;->c:Landroid/widget/TextView;

    .line 1026
    iget-object v3, v0, Lfzx$a;->c:Ljava/lang/String;

    .line 117
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 118
    iget-object v3, v1, Lfzx$b;->c:Landroid/widget/TextView;

    iget-object v2, p0, Lfzx;->m:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 1073
    iget-boolean v2, v0, Lfzx$a;->f:Z

    .line 119
    if-eqz v2, :cond_2

    sget v2, Lfzs$c;->text_color_bread_gray:I

    .line 118
    :goto_1
    invoke-virtual {v4, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 2026
    iget v2, v0, Lfzx$a;->d:I

    .line 120
    if-lez v2, :cond_3

    .line 121
    iget-object v2, v1, Lfzx$b;->b:Landroid/widget/ImageView;

    .line 3026
    iget v3, v0, Lfzx$a;->d:I

    .line 121
    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 122
    iget-object v2, v1, Lfzx$b;->b:Landroid/widget/ImageView;

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 4026
    :goto_2
    iget v2, v0, Lfzx$a;->e:I

    .line 126
    if-lez v2, :cond_4

    .line 127
    iget-object v2, v1, Lfzx$b;->a:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    .line 5026
    iget v3, v0, Lfzx$a;->e:I

    .line 127
    invoke-virtual {v2, v3}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->setText(I)V

    .line 128
    iget-object v2, v1, Lfzx$b;->a:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    invoke-virtual {v2, v5}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->setVisibility(I)V

    .line 139
    .end local v0    # "item":Lfzx$a;
    :cond_0
    :goto_3
    return-object p2

    .line 112
    .end local v1    # "viewHolder":Lfzx$b;
    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lfzx$b;

    .restart local v1    # "viewHolder":Lfzx$b;
    goto :goto_0

    .line 119
    .restart local v0    # "item":Lfzx$a;
    :cond_2
    sget v2, Lfzs$c;->gray:I

    goto :goto_1

    .line 124
    :cond_3
    iget-object v2, v1, Lfzx$b;->b:Landroid/widget/ImageView;

    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_2

    .line 130
    :cond_4
    iget-object v2, v1, Lfzx$b;->a:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    invoke-virtual {v2, v6}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->setVisibility(I)V

    goto :goto_3

    .line 134
    .end local v0    # "item":Lfzx$a;
    :cond_5
    iget-object v2, v1, Lfzx$b;->b:Landroid/widget/ImageView;

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 135
    iget-object v2, v1, Lfzx$b;->a:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    const-string/jumbo v3, ""

    invoke-virtual {v2, v3}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->setText(Ljava/lang/CharSequence;)V

    .line 136
    iget-object v2, v1, Lfzx$b;->c:Landroid/widget/TextView;

    const-string/jumbo v3, ""

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 137
    iget-object v2, v1, Lfzx$b;->c:Landroid/widget/TextView;

    iget-object v3, p0, Lfzx;->m:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lfzs$c;->gray:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_3
.end method
