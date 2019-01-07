.class final Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionVerticalGridView$1;
.super Landroid/widget/BaseAdapter;
.source "EmotionVerticalGridView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionVerticalGridView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionVerticalGridView;

.field private b:Landroid/view/LayoutInflater;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionVerticalGridView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionVerticalGridView;

    .prologue
    .line 100
    iput-object p1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionVerticalGridView$1;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionVerticalGridView;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    return-void
.end method

.method private a(I)Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionGridView$a;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 110
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionVerticalGridView$1;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionVerticalGridView;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionVerticalGridView;->a(Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionVerticalGridView;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionGridView$a;

    return-object v0
.end method


# virtual methods
.method public final getCount()I
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionVerticalGridView$1;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionVerticalGridView;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionVerticalGridView;->a(Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionVerticalGridView;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final synthetic getItem(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 100
    invoke-direct {p0, p1}, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionVerticalGridView$1;->a(I)Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionGridView$a;

    move-result-object v0

    return-object v0
.end method

.method public final getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 115
    int-to-long v0, p1

    return-wide v0
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 11
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v10

    invoke-static {v10}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/16 v10, 0x8

    const/4 v9, 0x0

    const/4 v3, 0x0

    .line 120
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionVerticalGridView$1;->b:Landroid/view/LayoutInflater;

    if-nez v0, :cond_0

    .line 121
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionVerticalGridView$1;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionVerticalGridView;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionVerticalGridView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionVerticalGridView$1;->b:Landroid/view/LayoutInflater;

    .line 124
    :cond_0
    if-nez p2, :cond_4

    .line 125
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionVerticalGridView$1;->b:Landroid/view/LayoutInflater;

    sget v1, Lcig$h;->emotion_grid_item:I

    invoke-virtual {v0, v1, p3, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 126
    new-instance v8, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionVerticalGridView$a;

    invoke-direct {v8, v9}, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionVerticalGridView$a;-><init>(B)V

    .line 127
    .local v8, "viewHolder":Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionVerticalGridView$a;
    invoke-virtual {p2, v8}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 128
    sget v0, Lcig$f;->iv_image:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v8, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionVerticalGridView$a;->a:Landroid/widget/ImageView;

    .line 129
    sget v0, Lcig$f;->tv_name:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v8, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionVerticalGridView$a;->b:Landroid/widget/TextView;

    .line 133
    :goto_0
    sget v0, Lcig$j;->icon_tag:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 134
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionVerticalGridView$1;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionVerticalGridView;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionVerticalGridView;->b(Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionVerticalGridView;)Landroid/view/View$OnClickListener;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 135
    iget-object v0, v8, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionVerticalGridView$a;->a:Landroid/widget/ImageView;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 136
    iget-object v0, v8, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionVerticalGridView$a;->a:Landroid/widget/ImageView;

    invoke-static {v0}, Lcrq;->a(Landroid/view/View;)V

    .line 137
    iget-object v0, v8, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionVerticalGridView$a;->a:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionVerticalGridView$1;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionVerticalGridView;

    invoke-static {v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionVerticalGridView;->c(Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionVerticalGridView;)Landroid/view/View$OnClickListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 138
    iget-object v0, v8, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionVerticalGridView$a;->a:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    .line 139
    .local v7, "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    iget v0, v7, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionVerticalGridView$1;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionVerticalGridView;

    invoke-static {v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionVerticalGridView;->d(Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionVerticalGridView;)I

    move-result v1

    if-ne v0, v1, :cond_1

    iget v0, v7, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionVerticalGridView$1;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionVerticalGridView;

    invoke-static {v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionVerticalGridView;->e(Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionVerticalGridView;)I

    move-result v1

    if-eq v0, v1, :cond_2

    .line 140
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionVerticalGridView$1;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionVerticalGridView;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionVerticalGridView;->e(Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionVerticalGridView;)I

    move-result v0

    iput v0, v7, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 141
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionVerticalGridView$1;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionVerticalGridView;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionVerticalGridView;->d(Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionVerticalGridView;)I

    move-result v0

    iput v0, v7, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 143
    :cond_2
    invoke-direct {p0, p1}, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionVerticalGridView$1;->a(I)Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionGridView$a;

    move-result-object v6

    .line 144
    .local v6, "item":Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionGridView$a;
    if-nez v6, :cond_5

    .line 145
    iget-object v0, v8, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionVerticalGridView$a;->a:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 146
    iget-object v0, v8, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionVerticalGridView$a;->a:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 147
    iget-object v0, v8, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionVerticalGridView$a;->b:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 148
    iget-object v0, v8, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionVerticalGridView$a;->b:Landroid/widget/TextView;

    invoke-virtual {v0, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 149
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionVerticalGridView$1;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionVerticalGridView;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionVerticalGridView;->f(Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionVerticalGridView;)Lcom/alibaba/doraemon/image/ImageMagician;

    move-result-object v0

    iget-object v1, v8, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionVerticalGridView$a;->a:Landroid/widget/ImageView;

    invoke-interface {v0, v1, v3, v3}, Lcom/alibaba/doraemon/image/ImageMagician;->setImageDrawable(Landroid/widget/ImageView;Ljava/lang/String;Landroid/widget/AbsListView;)V

    .line 180
    :cond_3
    :goto_1
    return-object p2

    .line 131
    .end local v6    # "item":Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionGridView$a;
    .end local v7    # "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    .end local v8    # "viewHolder":Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionVerticalGridView$a;
    :cond_4
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionVerticalGridView$a;

    .restart local v8    # "viewHolder":Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionVerticalGridView$a;
    goto/16 :goto_0

    .line 151
    .restart local v6    # "item":Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionGridView$a;
    .restart local v7    # "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    :cond_5
    iget v0, v6, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionGridView$a;->e:I

    if-eqz v0, :cond_6

    iget v0, v6, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionGridView$a;->e:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_9

    .line 153
    :cond_6
    iget v0, v6, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionGridView$a;->d:I

    if-lez v0, :cond_7

    .line 154
    iget-object v0, v8, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionVerticalGridView$a;->a:Landroid/widget/ImageView;

    iget v1, v6, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionGridView$a;->d:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 162
    :goto_2
    iget-object v0, v6, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionGridView$a;->g:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 163
    iget-object v0, v8, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionVerticalGridView$a;->b:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 164
    iget-object v0, v8, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionVerticalGridView$a;->b:Landroid/widget/TextView;

    invoke-virtual {v0, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 169
    :goto_3
    iget-object v0, v6, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionGridView$a;->f:Lcrd;

    if-eqz v0, :cond_3

    .line 170
    iget-object v0, v8, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionVerticalGridView$a;->a:Landroid/widget/ImageView;

    iget-object v1, v6, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionGridView$a;->f:Lcrd;

    invoke-virtual {v1}, Lcrd;->getTalkBackDescription()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 156
    :cond_7
    iget-object v0, v8, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionVerticalGridView$a;->a:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 157
    const-string/jumbo v0, "CUSTOM_EMOTION"

    iget-object v1, v6, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionGridView$a;->c:Ljava/lang/String;

    invoke-static {v0, v3, v1, v3}, Liaf;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v4

    .line 158
    .local v4, "requestParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionVerticalGridView$1;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionVerticalGridView;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionVerticalGridView;->f(Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionVerticalGridView;)Lcom/alibaba/doraemon/image/ImageMagician;

    move-result-object v0

    iget-object v1, v8, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionVerticalGridView$a;->a:Landroid/widget/ImageView;

    iget-object v2, v6, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionGridView$a;->a:Ljava/lang/String;

    move-object v5, v3

    invoke-interface/range {v0 .. v5}, Lcom/alibaba/doraemon/image/ImageMagician;->setImageDrawable(Landroid/widget/ImageView;Ljava/lang/String;Landroid/widget/AbsListView;Ljava/util/Map;Ljava/util/Map;)V

    .line 159
    iget-object v0, v8, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionVerticalGridView$a;->a:Landroid/widget/ImageView;

    iget-object v1, v6, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionGridView$a;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionVerticalGridView$1;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionVerticalGridView;

    invoke-static {v2}, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionVerticalGridView;->c(Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionVerticalGridView;)Landroid/view/View$OnClickListener;

    move-result-object v2

    invoke-static {v0, v1, v4, v3, v2}, Lcrq;->a(Landroid/view/View;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Landroid/view/View$OnClickListener;)V

    .line 160
    iget-object v0, v8, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionVerticalGridView$a;->a:Landroid/widget/ImageView;

    invoke-static {v0}, Lcrq;->b(Landroid/view/View;)V

    goto :goto_2

    .line 166
    .end local v4    # "requestParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_8
    iget-object v0, v8, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionVerticalGridView$a;->b:Landroid/widget/TextView;

    iget-object v1, v6, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionGridView$a;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 167
    iget-object v0, v8, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionVerticalGridView$a;->b:Landroid/widget/TextView;

    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_3

    .line 173
    :cond_9
    iget-object v0, v8, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionVerticalGridView$a;->a:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 174
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionVerticalGridView$1;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionVerticalGridView;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionVerticalGridView;->f(Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionVerticalGridView;)Lcom/alibaba/doraemon/image/ImageMagician;

    move-result-object v0

    iget-object v1, v8, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionVerticalGridView$a;->a:Landroid/widget/ImageView;

    invoke-interface {v0, v1, v3, v3}, Lcom/alibaba/doraemon/image/ImageMagician;->setImageDrawable(Landroid/widget/ImageView;Ljava/lang/String;Landroid/widget/AbsListView;)V

    .line 175
    iget-object v0, v8, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionVerticalGridView$a;->b:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 176
    iget-object v0, v8, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionVerticalGridView$a;->b:Landroid/widget/TextView;

    invoke-virtual {v0, v10}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_1
.end method
