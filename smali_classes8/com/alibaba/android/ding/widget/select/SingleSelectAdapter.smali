.class public Lcom/alibaba/android/ding/widget/select/SingleSelectAdapter;
.super Landroid/widget/BaseAdapter;
.source "SingleSelectAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/android/ding/widget/select/SingleSelectAdapter$a;
    }
.end annotation


# instance fields
.field a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/ding/widget/select/SingleSelectedView$a;",
            ">;"
        }
    .end annotation
.end field

.field b:Ljava/io/Serializable;

.field c:Lcom/alibaba/android/ding/widget/select/SingleSelectAdapter$a;

.field private d:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 26
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/alibaba/android/ding/widget/select/SingleSelectAdapter;->d:Landroid/content/Context;

    .line 28
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/ding/widget/select/SingleSelectAdapter;->a:Ljava/util/List;

    .line 29
    return-void
.end method

.method private a(I)Lcom/alibaba/android/ding/widget/select/SingleSelectedView$a;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 66
    iget-object v0, p0, Lcom/alibaba/android/ding/widget/select/SingleSelectAdapter;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/ding/widget/select/SingleSelectedView$a;

    return-object v0
.end method


# virtual methods
.method public final a(Ljava/io/Serializable;)V
    .locals 2
    .param p1, "selectedData"    # Ljava/io/Serializable;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 32
    iget-object v0, p0, Lcom/alibaba/android/ding/widget/select/SingleSelectAdapter;->b:Ljava/io/Serializable;

    if-eq v0, p1, :cond_0

    .line 34
    iput-object p1, p0, Lcom/alibaba/android/ding/widget/select/SingleSelectAdapter;->b:Ljava/io/Serializable;

    .line 35
    invoke-virtual {p0}, Lcom/alibaba/android/ding/widget/select/SingleSelectAdapter;->notifyDataSetChanged()V

    .line 36
    iget-object v0, p0, Lcom/alibaba/android/ding/widget/select/SingleSelectAdapter;->c:Lcom/alibaba/android/ding/widget/select/SingleSelectAdapter$a;

    if-eqz v0, :cond_0

    .line 37
    iget-object v0, p0, Lcom/alibaba/android/ding/widget/select/SingleSelectAdapter;->c:Lcom/alibaba/android/ding/widget/select/SingleSelectAdapter$a;

    iget-object v1, p0, Lcom/alibaba/android/ding/widget/select/SingleSelectAdapter;->b:Ljava/io/Serializable;

    invoke-interface {v0, v1}, Lcom/alibaba/android/ding/widget/select/SingleSelectAdapter$a;->a(Ljava/io/Serializable;)V

    .line 40
    :cond_0
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/alibaba/android/ding/widget/select/SingleSelectAdapter;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public synthetic getItem(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 19
    invoke-direct {p0, p1}, Lcom/alibaba/android/ding/widget/select/SingleSelectAdapter;->a(I)Lcom/alibaba/android/ding/widget/select/SingleSelectedView$a;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 71
    int-to-long v0, p1

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 61
    invoke-super {p0, p1}, Landroid/widget/BaseAdapter;->getItemViewType(I)I

    move-result v0

    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 9
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v7, 0x0

    const/16 v6, 0x8

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 76
    .line 1100
    if-eqz p2, :cond_3

    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    instance-of v3, v3, Lblb;

    if-eqz v3, :cond_3

    .line 1101
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lblb;

    move-object v2, v3

    .line 77
    .local v2, "viewHolder":Lblb;
    :goto_0
    if-nez v2, :cond_0

    .line 78
    iget-object v3, p0, Lcom/alibaba/android/ding/widget/select/SingleSelectAdapter;->d:Landroid/content/Context;

    .line 2096
    new-instance v2, Lblb;

    .end local v2    # "viewHolder":Lblb;
    invoke-direct {v2, v3, p0}, Lblb;-><init>(Landroid/content/Context;Lcom/alibaba/android/ding/widget/select/SingleSelectAdapter;)V

    .line 80
    .restart local v2    # "viewHolder":Lblb;
    :cond_0
    invoke-direct {p0, p1}, Lcom/alibaba/android/ding/widget/select/SingleSelectAdapter;->a(I)Lcom/alibaba/android/ding/widget/select/SingleSelectedView$a;

    move-result-object v0

    .line 82
    .local v0, "displayModel":Lcom/alibaba/android/ding/widget/select/SingleSelectedView$a;
    if-eqz v0, :cond_4

    .line 2109
    iget-object v3, v0, Lcom/alibaba/android/ding/widget/select/SingleSelectedView$a;->f:Ljava/io/Serializable;

    .line 82
    iget-object v8, p0, Lcom/alibaba/android/ding/widget/select/SingleSelectAdapter;->b:Ljava/io/Serializable;

    if-ne v3, v8, :cond_4

    move v1, v4

    .line 3049
    .local v1, "selected":Z
    :goto_1
    iput-object v0, v2, Lblb;->h:Lcom/alibaba/android/ding/widget/select/SingleSelectedView$a;

    .line 3050
    if-eqz v0, :cond_2

    .line 3053
    iget-object v8, v2, Lblb;->d:Landroid/view/View;

    .line 4091
    iget-boolean v3, v0, Lcom/alibaba/android/ding/widget/select/SingleSelectedView$a;->c:Z

    .line 3053
    if-eqz v3, :cond_5

    move v3, v5

    :goto_2
    invoke-virtual {v8, v3}, Landroid/view/View;->setVisibility(I)V

    .line 3054
    iget-object v8, v2, Lblb;->g:Landroid/view/View;

    .line 4100
    iget-boolean v3, v0, Lcom/alibaba/android/ding/widget/select/SingleSelectedView$a;->d:Z

    .line 3054
    if-eqz v3, :cond_6

    move v3, v5

    :goto_3
    invoke-virtual {v8, v3}, Landroid/view/View;->setVisibility(I)V

    .line 4118
    iget-boolean v3, v0, Lcom/alibaba/android/ding/widget/select/SingleSelectedView$a;->e:Z

    .line 3055
    if-eqz v3, :cond_7

    .line 3056
    iget-object v3, v2, Lblb;->c:Landroid/view/View;

    invoke-virtual {v3, v4}, Landroid/view/View;->setClickable(Z)V

    .line 3057
    iget-object v3, v2, Lblb;->c:Landroid/view/View;

    invoke-virtual {v3, v4}, Landroid/view/View;->setEnabled(Z)V

    .line 3058
    iget-object v3, v2, Lblb;->c:Landroid/view/View;

    new-instance v4, Lblb$1;

    invoke-direct {v4, v2}, Lblb$1;-><init>(Lblb;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 5073
    :goto_4
    iget-object v3, v0, Lcom/alibaba/android/ding/widget/select/SingleSelectedView$a;->a:Ljava/lang/String;

    .line 3076
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 3078
    :try_start_0
    iget-object v4, v2, Lblb;->a:Landroid/content/Context;

    .line 5082
    iget v7, v0, Lcom/alibaba/android/ding/widget/select/SingleSelectedView$a;->b:I

    .line 3078
    invoke-virtual {v4, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 3083
    :cond_1
    :goto_5
    iget-object v4, v2, Lblb;->e:Landroid/widget/TextView;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3084
    if-eqz v1, :cond_8

    .line 3085
    iget-object v3, v2, Lblb;->e:Landroid/widget/TextView;

    iget-object v4, v2, Lblb;->a:Landroid/content/Context;

    sget v7, Lcig$c;->text_color_blue:I

    invoke-static {v4, v7}, Ldp;->c(Landroid/content/Context;I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 3091
    :goto_6
    iget-object v3, v2, Lblb;->f:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    if-eqz v1, :cond_a

    :goto_7
    invoke-virtual {v3, v5}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->setVisibility(I)V

    .line 6045
    :cond_2
    iget-object v3, v2, Lblb;->c:Landroid/view/View;

    .line 84
    return-object v3

    .end local v0    # "displayModel":Lcom/alibaba/android/ding/widget/select/SingleSelectedView$a;
    .end local v1    # "selected":Z
    .end local v2    # "viewHolder":Lblb;
    :cond_3
    move-object v2, v7

    .line 1103
    goto :goto_0

    .restart local v0    # "displayModel":Lcom/alibaba/android/ding/widget/select/SingleSelectedView$a;
    .restart local v2    # "viewHolder":Lblb;
    :cond_4
    move v1, v5

    .line 82
    goto :goto_1

    .restart local v1    # "selected":Z
    :cond_5
    move v3, v6

    .line 3053
    goto :goto_2

    :cond_6
    move v3, v6

    .line 3054
    goto :goto_3

    .line 3071
    :cond_7
    iget-object v3, v2, Lblb;->c:Landroid/view/View;

    invoke-virtual {v3, v5}, Landroid/view/View;->setClickable(Z)V

    .line 3072
    iget-object v3, v2, Lblb;->c:Landroid/view/View;

    invoke-virtual {v3, v5}, Landroid/view/View;->setEnabled(Z)V

    .line 3073
    iget-object v3, v2, Lblb;->c:Landroid/view/View;

    invoke-virtual {v3, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_4

    .line 3079
    :catch_0
    move-exception v4

    .line 3080
    const-string/jumbo v7, "[SingleSelectViewHolder]refreshView failed"

    invoke-static {v7, v4}, Lbkr;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_5

    .line 5118
    :cond_8
    iget-boolean v3, v0, Lcom/alibaba/android/ding/widget/select/SingleSelectedView$a;->e:Z

    .line 3086
    if-eqz v3, :cond_9

    .line 3087
    iget-object v3, v2, Lblb;->e:Landroid/widget/TextView;

    iget-object v4, v2, Lblb;->a:Landroid/content/Context;

    sget v7, Lcig$c;->text_color_black:I

    invoke-static {v4, v7}, Ldp;->c(Landroid/content/Context;I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_6

    .line 3089
    :cond_9
    iget-object v3, v2, Lblb;->e:Landroid/widget/TextView;

    iget-object v4, v2, Lblb;->a:Landroid/content/Context;

    sget v7, Lcig$c;->text_color_gray:I

    invoke-static {v4, v7}, Ldp;->c(Landroid/content/Context;I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_6

    :cond_a
    move v5, v6

    .line 3091
    goto :goto_7
.end method
