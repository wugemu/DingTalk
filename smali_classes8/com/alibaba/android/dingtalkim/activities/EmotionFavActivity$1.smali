.class final Lcom/alibaba/android/dingtalkim/activities/EmotionFavActivity$1;
.super Landroid/widget/BaseAdapter;
.source "EmotionFavActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/dingtalkim/activities/EmotionFavActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalkim/activities/EmotionFavActivity;

.field private final b:I

.field private final c:I


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalkim/activities/EmotionFavActivity;)V
    .locals 1
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalkim/activities/EmotionFavActivity;

    .prologue
    .line 124
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/activities/EmotionFavActivity$1;->a:Lcom/alibaba/android/dingtalkim/activities/EmotionFavActivity;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 125
    const/4 v0, 0x0

    iput v0, p0, Lcom/alibaba/android/dingtalkim/activities/EmotionFavActivity$1;->b:I

    .line 126
    const/4 v0, 0x1

    iput v0, p0, Lcom/alibaba/android/dingtalkim/activities/EmotionFavActivity$1;->c:I

    return-void
.end method


# virtual methods
.method public final getCount()I
    .locals 1

    .prologue
    .line 128
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/EmotionFavActivity$1;->a:Lcom/alibaba/android/dingtalkim/activities/EmotionFavActivity;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/activities/EmotionFavActivity;->a(Lcom/alibaba/android/dingtalkim/activities/EmotionFavActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 129
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/EmotionFavActivity$1;->a:Lcom/alibaba/android/dingtalkim/activities/EmotionFavActivity;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/activities/EmotionFavActivity;->b(Lcom/alibaba/android/dingtalkim/activities/EmotionFavActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 131
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/EmotionFavActivity$1;->a:Lcom/alibaba/android/dingtalkim/activities/EmotionFavActivity;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/activities/EmotionFavActivity;->b(Lcom/alibaba/android/dingtalkim/activities/EmotionFavActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public final getItem(I)Ljava/lang/Object;
    .locals 2
    .param p1, "position"    # I

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v0, 0x0

    .line 136
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/EmotionFavActivity$1;->a:Lcom/alibaba/android/dingtalkim/activities/EmotionFavActivity;

    invoke-static {v1}, Lcom/alibaba/android/dingtalkim/activities/EmotionFavActivity;->a(Lcom/alibaba/android/dingtalkim/activities/EmotionFavActivity;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 137
    if-ltz p1, :cond_0

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/EmotionFavActivity$1;->a:Lcom/alibaba/android/dingtalkim/activities/EmotionFavActivity;

    invoke-static {v1}, Lcom/alibaba/android/dingtalkim/activities/EmotionFavActivity;->b(Lcom/alibaba/android/dingtalkim/activities/EmotionFavActivity;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge p1, v1, :cond_0

    .line 138
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/EmotionFavActivity$1;->a:Lcom/alibaba/android/dingtalkim/activities/EmotionFavActivity;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/activities/EmotionFavActivity;->b(Lcom/alibaba/android/dingtalkim/activities/EmotionFavActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 148
    :cond_0
    :goto_0
    return-object v0

    .line 142
    :cond_1
    if-lez p1, :cond_0

    .line 145
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/EmotionFavActivity$1;->a:Lcom/alibaba/android/dingtalkim/activities/EmotionFavActivity;

    invoke-static {v1}, Lcom/alibaba/android/dingtalkim/activities/EmotionFavActivity;->b(Lcom/alibaba/android/dingtalkim/activities/EmotionFavActivity;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-gt p1, v1, :cond_0

    .line 146
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/EmotionFavActivity$1;->a:Lcom/alibaba/android/dingtalkim/activities/EmotionFavActivity;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/activities/EmotionFavActivity;->b(Lcom/alibaba/android/dingtalkim/activities/EmotionFavActivity;)Ljava/util/List;

    move-result-object v0

    add-int/lit8 v1, p1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public final getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 162
    int-to-long v0, p1

    return-wide v0
.end method

.method public final getItemViewType(I)I
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 155
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/EmotionFavActivity$1;->a:Lcom/alibaba/android/dingtalkim/activities/EmotionFavActivity;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/activities/EmotionFavActivity;->a(Lcom/alibaba/android/dingtalkim/activities/EmotionFavActivity;)Z

    move-result v0

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    .line 156
    const/4 v0, 0x1

    .line 158
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 12
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v11

    invoke-static {v11}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v11, 0x0

    const/16 v10, 0x8

    const/4 v5, 0x0

    .line 167
    invoke-virtual {p0, p1}, Lcom/alibaba/android/dingtalkim/activities/EmotionFavActivity$1;->getItemViewType(I)I

    move-result v7

    .line 168
    .local v7, "itemViewType":I
    if-nez p2, :cond_0

    .line 169
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/EmotionFavActivity$1;->a:Lcom/alibaba/android/dingtalkim/activities/EmotionFavActivity;

    sget v1, Lctk$g;->emotion_fav_item:I

    invoke-static {v0, v1, v5}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 170
    new-instance v6, Lcom/alibaba/android/dingtalkim/activities/EmotionFavActivity$a;

    invoke-direct {v6, v11}, Lcom/alibaba/android/dingtalkim/activities/EmotionFavActivity$a;-><init>(B)V

    .line 171
    .local v6, "holder":Lcom/alibaba/android/dingtalkim/activities/EmotionFavActivity$a;
    sget v0, Lctk$f;->face:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v6, Lcom/alibaba/android/dingtalkim/activities/EmotionFavActivity$a;->a:Landroid/widget/ImageView;

    .line 172
    sget v0, Lctk$f;->face_select:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v6, Lcom/alibaba/android/dingtalkim/activities/EmotionFavActivity$a;->b:Landroid/widget/ImageView;

    .line 173
    invoke-virtual {p2, v6}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 174
    new-instance v8, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v0, -0x1

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/EmotionFavActivity$1;->a:Lcom/alibaba/android/dingtalkim/activities/EmotionFavActivity;

    invoke-static {v1}, Lcom/alibaba/android/dingtalkim/activities/EmotionFavActivity;->c(Lcom/alibaba/android/dingtalkim/activities/EmotionFavActivity;)I

    move-result v1

    invoke-direct {v8, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 175
    .local v8, "lp":Landroid/widget/RelativeLayout$LayoutParams;
    iget-object v0, v6, Lcom/alibaba/android/dingtalkim/activities/EmotionFavActivity$a;->a:Landroid/widget/ImageView;

    invoke-virtual {v0, v8}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 179
    .end local v8    # "lp":Landroid/widget/RelativeLayout$LayoutParams;
    :goto_0
    const/4 v0, 0x1

    if-ne v7, v0, :cond_1

    .line 180
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/EmotionFavActivity$1;->a:Lcom/alibaba/android/dingtalkim/activities/EmotionFavActivity;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/activities/EmotionFavActivity;->e(Lcom/alibaba/android/dingtalkim/activities/EmotionFavActivity;)Lcom/alibaba/doraemon/image/ImageMagician;

    move-result-object v0

    iget-object v1, v6, Lcom/alibaba/android/dingtalkim/activities/EmotionFavActivity$a;->a:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/EmotionFavActivity$1;->a:Lcom/alibaba/android/dingtalkim/activities/EmotionFavActivity;

    invoke-static {v2}, Lcom/alibaba/android/dingtalkim/activities/EmotionFavActivity;->d(Lcom/alibaba/android/dingtalkim/activities/EmotionFavActivity;)Landroid/widget/GridView;

    move-result-object v2

    invoke-interface {v0, v1, v5, v2}, Lcom/alibaba/doraemon/image/ImageMagician;->setImageDrawable(Landroid/widget/ImageView;Ljava/lang/String;Landroid/widget/AbsListView;)V

    .line 181
    iget-object v0, v6, Lcom/alibaba/android/dingtalkim/activities/EmotionFavActivity$a;->a:Landroid/widget/ImageView;

    sget v1, Lctk$e;->emotion_bg_fav_add_no_border:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 182
    iget-object v0, v6, Lcom/alibaba/android/dingtalkim/activities/EmotionFavActivity$a;->a:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 183
    iget-object v0, v6, Lcom/alibaba/android/dingtalkim/activities/EmotionFavActivity$a;->b:Landroid/widget/ImageView;

    invoke-virtual {v0, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 184
    iput-object v5, v6, Lcom/alibaba/android/dingtalkim/activities/EmotionFavActivity$a;->c:Lcom/alibaba/android/dingtalkim/base/model/EmotionDetailObject;

    .line 185
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/EmotionFavActivity$1;->a:Lcom/alibaba/android/dingtalkim/activities/EmotionFavActivity;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/activities/EmotionFavActivity;->f(Lcom/alibaba/android/dingtalkim/activities/EmotionFavActivity;)Landroid/view/View$OnClickListener;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 209
    :goto_1
    return-object p2

    .line 177
    .end local v6    # "holder":Lcom/alibaba/android/dingtalkim/activities/EmotionFavActivity$a;
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/alibaba/android/dingtalkim/activities/EmotionFavActivity$a;

    .restart local v6    # "holder":Lcom/alibaba/android/dingtalkim/activities/EmotionFavActivity$a;
    goto :goto_0

    .line 187
    :cond_1
    invoke-virtual {p0, p1}, Lcom/alibaba/android/dingtalkim/activities/EmotionFavActivity$1;->getItem(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/alibaba/android/dingtalkim/base/model/EmotionDetailObject;

    .line 188
    .local v9, "object":Lcom/alibaba/android/dingtalkim/base/model/EmotionDetailObject;
    if-eqz v9, :cond_3

    .line 189
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/EmotionFavActivity$1;->a:Lcom/alibaba/android/dingtalkim/activities/EmotionFavActivity;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/activities/EmotionFavActivity;->e(Lcom/alibaba/android/dingtalkim/activities/EmotionFavActivity;)Lcom/alibaba/doraemon/image/ImageMagician;

    move-result-object v0

    iget-object v1, v6, Lcom/alibaba/android/dingtalkim/activities/EmotionFavActivity$a;->a:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/EmotionFavActivity$1;->a:Lcom/alibaba/android/dingtalkim/activities/EmotionFavActivity;

    invoke-static {v2}, Lcom/alibaba/android/dingtalkim/activities/EmotionFavActivity;->d(Lcom/alibaba/android/dingtalkim/activities/EmotionFavActivity;)Landroid/widget/GridView;

    move-result-object v2

    invoke-interface {v0, v1, v5, v2}, Lcom/alibaba/doraemon/image/ImageMagician;->setImageDrawable(Landroid/widget/ImageView;Ljava/lang/String;Landroid/widget/AbsListView;)V

    .line 190
    const-string/jumbo v0, "CUSTOM_EMOTION"

    invoke-static {v0, v5, v5, v5}, Liaf;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v4

    .line 191
    .local v4, "requestParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/EmotionFavActivity$1;->a:Lcom/alibaba/android/dingtalkim/activities/EmotionFavActivity;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/activities/EmotionFavActivity;->e(Lcom/alibaba/android/dingtalkim/activities/EmotionFavActivity;)Lcom/alibaba/doraemon/image/ImageMagician;

    move-result-object v0

    iget-object v1, v6, Lcom/alibaba/android/dingtalkim/activities/EmotionFavActivity$a;->a:Landroid/widget/ImageView;

    invoke-static {v9}, Ldpu;->a(Lcom/alibaba/android/dingtalkim/base/model/EmotionDetailObject;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/activities/EmotionFavActivity$1;->a:Lcom/alibaba/android/dingtalkim/activities/EmotionFavActivity;

    invoke-static {v3}, Lcom/alibaba/android/dingtalkim/activities/EmotionFavActivity;->d(Lcom/alibaba/android/dingtalkim/activities/EmotionFavActivity;)Landroid/widget/GridView;

    move-result-object v3

    invoke-interface/range {v0 .. v5}, Lcom/alibaba/doraemon/image/ImageMagician;->setImageDrawable(Landroid/widget/ImageView;Ljava/lang/String;Landroid/widget/AbsListView;Ljava/util/Map;Ljava/util/Map;)V

    .line 192
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/EmotionFavActivity$1;->a:Lcom/alibaba/android/dingtalkim/activities/EmotionFavActivity;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/activities/EmotionFavActivity;->a(Lcom/alibaba/android/dingtalkim/activities/EmotionFavActivity;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/EmotionFavActivity$1;->a:Lcom/alibaba/android/dingtalkim/activities/EmotionFavActivity;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/activities/EmotionFavActivity;->g(Lcom/alibaba/android/dingtalkim/activities/EmotionFavActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v9}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 193
    iget-object v0, v6, Lcom/alibaba/android/dingtalkim/activities/EmotionFavActivity$a;->a:Landroid/widget/ImageView;

    sget v1, Lctk$c;->uidic_global_color_c5:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 194
    iget-object v0, v6, Lcom/alibaba/android/dingtalkim/activities/EmotionFavActivity$a;->b:Landroid/widget/ImageView;

    invoke-virtual {v0, v11}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 199
    :goto_2
    iput-object v9, v6, Lcom/alibaba/android/dingtalkim/activities/EmotionFavActivity$a;->c:Lcom/alibaba/android/dingtalkim/base/model/EmotionDetailObject;

    .line 200
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/EmotionFavActivity$1;->a:Lcom/alibaba/android/dingtalkim/activities/EmotionFavActivity;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/activities/EmotionFavActivity;->h(Lcom/alibaba/android/dingtalkim/activities/EmotionFavActivity;)Landroid/view/View$OnClickListener;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1

    .line 196
    :cond_2
    iget-object v0, v6, Lcom/alibaba/android/dingtalkim/activities/EmotionFavActivity$a;->a:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 197
    iget-object v0, v6, Lcom/alibaba/android/dingtalkim/activities/EmotionFavActivity$a;->b:Landroid/widget/ImageView;

    invoke-virtual {v0, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_2

    .line 202
    .end local v4    # "requestParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_3
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/EmotionFavActivity$1;->a:Lcom/alibaba/android/dingtalkim/activities/EmotionFavActivity;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/activities/EmotionFavActivity;->e(Lcom/alibaba/android/dingtalkim/activities/EmotionFavActivity;)Lcom/alibaba/doraemon/image/ImageMagician;

    move-result-object v0

    iget-object v1, v6, Lcom/alibaba/android/dingtalkim/activities/EmotionFavActivity$a;->a:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/EmotionFavActivity$1;->a:Lcom/alibaba/android/dingtalkim/activities/EmotionFavActivity;

    invoke-static {v2}, Lcom/alibaba/android/dingtalkim/activities/EmotionFavActivity;->d(Lcom/alibaba/android/dingtalkim/activities/EmotionFavActivity;)Landroid/widget/GridView;

    move-result-object v2

    invoke-interface {v0, v1, v5, v2}, Lcom/alibaba/doraemon/image/ImageMagician;->setImageDrawable(Landroid/widget/ImageView;Ljava/lang/String;Landroid/widget/AbsListView;)V

    .line 203
    iget-object v0, v6, Lcom/alibaba/android/dingtalkim/activities/EmotionFavActivity$a;->a:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 204
    iget-object v0, v6, Lcom/alibaba/android/dingtalkim/activities/EmotionFavActivity$a;->b:Landroid/widget/ImageView;

    invoke-virtual {v0, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 205
    iput-object v5, v6, Lcom/alibaba/android/dingtalkim/activities/EmotionFavActivity$a;->c:Lcom/alibaba/android/dingtalkim/base/model/EmotionDetailObject;

    .line 206
    invoke-virtual {p2, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_1
.end method
