.class public Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionGridView;
.super Landroid/widget/FrameLayout;
.source "EmotionGridView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionGridView$b;,
        Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionGridView$a;
    }
.end annotation


# instance fields
.field private a:I

.field private b:I

.field private c:I

.field private d:I

.field private e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionGridView$a;",
            ">;"
        }
    .end annotation
.end field

.field private f:Lcom/alibaba/doraemon/image/ImageMagician;

.field private g:Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionGridView$b;

.field private h:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 49
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 125
    new-instance v0, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionGridView$1;

    invoke-direct {v0, p0}, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionGridView$1;-><init>(Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionGridView;)V

    iput-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionGridView;->h:Landroid/view/View$OnClickListener;

    .line 50
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionGridView;->a()V

    .line 51
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 54
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 125
    new-instance v0, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionGridView$1;

    invoke-direct {v0, p0}, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionGridView$1;-><init>(Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionGridView;)V

    iput-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionGridView;->h:Landroid/view/View$OnClickListener;

    .line 55
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionGridView;->a()V

    .line 56
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 59
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 125
    new-instance v0, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionGridView$1;

    invoke-direct {v0, p0}, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionGridView$1;-><init>(Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionGridView;)V

    iput-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionGridView;->h:Landroid/view/View$OnClickListener;

    .line 60
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionGridView;->a()V

    .line 61
    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionGridView;)Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionGridView$b;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionGridView;

    .prologue
    .line 18
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionGridView;->g:Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionGridView$b;

    return-object v0
.end method

.method private a()V
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionGridView;->f:Lcom/alibaba/doraemon/image/ImageMagician;

    if-nez v0, :cond_0

    .line 65
    const-string/jumbo v0, "IMAGE"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/image/ImageMagician;

    iput-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionGridView;->f:Lcom/alibaba/doraemon/image/ImageMagician;

    .line 67
    :cond_0
    return-void
.end method

.method private b()V
    .locals 9

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v3, 0x0

    .line 137
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionGridView;->f:Lcom/alibaba/doraemon/image/ImageMagician;

    if-eqz v0, :cond_6

    .line 138
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionGridView;->getChildCount()I

    move-result v7

    .line 139
    .local v7, "l":I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    if-ge v6, v7, :cond_6

    .line 140
    invoke-virtual {p0, v6}, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 141
    .local v1, "v":Landroid/widget/ImageView;
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionGridView;->e:Ljava/util/List;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionGridView;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, v6, :cond_5

    .line 142
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionGridView;->e:Ljava/util/List;

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionGridView$a;

    .line 143
    .local v8, "m":Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionGridView$a;
    if-eqz v8, :cond_4

    .line 144
    invoke-virtual {v1, v8}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 145
    iget v0, v8, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionGridView$a;->e:I

    if-eqz v0, :cond_0

    iget v0, v8, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionGridView$a;->e:I

    const/4 v2, 0x1

    if-ne v0, v2, :cond_3

    .line 147
    :cond_0
    iget v0, v8, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionGridView$a;->d:I

    if-lez v0, :cond_2

    .line 148
    iget v0, v8, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionGridView$a;->d:I

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 155
    :goto_1
    iget-object v0, v8, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionGridView$a;->f:Lcrd;

    if-eqz v0, :cond_1

    .line 156
    iget-object v0, v8, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionGridView$a;->f:Lcrd;

    invoke-virtual {v0}, Lcrd;->getTalkBackDescription()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 139
    .end local v8    # "m":Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionGridView$a;
    :cond_1
    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 150
    .restart local v8    # "m":Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionGridView$a;
    :cond_2
    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 151
    const-string/jumbo v0, "CUSTOM_EMOTION"

    iget-object v2, v8, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionGridView$a;->c:Ljava/lang/String;

    invoke-static {v0, v3, v2, v3}, Liaf;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v4

    .line 152
    .local v4, "requestParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionGridView;->f:Lcom/alibaba/doraemon/image/ImageMagician;

    iget-object v2, v8, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionGridView$a;->a:Ljava/lang/String;

    move-object v5, v3

    invoke-interface/range {v0 .. v5}, Lcom/alibaba/doraemon/image/ImageMagician;->setImageDrawable(Landroid/widget/ImageView;Ljava/lang/String;Landroid/widget/AbsListView;Ljava/util/Map;Ljava/util/Map;)V

    goto :goto_1

    .line 159
    .end local v4    # "requestParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_3
    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 160
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionGridView;->f:Lcom/alibaba/doraemon/image/ImageMagician;

    invoke-interface {v0, v1, v3, v3}, Lcom/alibaba/doraemon/image/ImageMagician;->setImageDrawable(Landroid/widget/ImageView;Ljava/lang/String;Landroid/widget/AbsListView;)V

    goto :goto_2

    .line 163
    :cond_4
    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 164
    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 165
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionGridView;->f:Lcom/alibaba/doraemon/image/ImageMagician;

    invoke-interface {v0, v1, v3, v3}, Lcom/alibaba/doraemon/image/ImageMagician;->setImageDrawable(Landroid/widget/ImageView;Ljava/lang/String;Landroid/widget/AbsListView;)V

    goto :goto_2

    .line 168
    .end local v8    # "m":Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionGridView$a;
    :cond_5
    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 169
    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 170
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionGridView;->f:Lcom/alibaba/doraemon/image/ImageMagician;

    invoke-interface {v0, v1, v3, v3}, Lcom/alibaba/doraemon/image/ImageMagician;->setImageDrawable(Landroid/widget/ImageView;Ljava/lang/String;Landroid/widget/AbsListView;)V

    goto :goto_2

    .line 174
    .end local v1    # "v":Landroid/widget/ImageView;
    .end local v6    # "i":I
    .end local v7    # "l":I
    :cond_6
    return-void
.end method


# virtual methods
.method public final a(IIII)V
    .locals 7
    .param p1, "col"    # I
    .param p2, "row"    # I
    .param p3, "itemWidth"    # I
    .param p4, "itemHeight"    # I

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v6, -0x2

    .line 177
    iget v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionGridView;->a:I

    if-ne p1, v0, :cond_0

    iget v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionGridView;->b:I

    if-ne p2, v0, :cond_0

    iget v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionGridView;->c:I

    if-ne p3, v0, :cond_0

    iget v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionGridView;->d:I

    if-eq p4, v0, :cond_3

    .line 178
    :cond_0
    iput p1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionGridView;->a:I

    .line 179
    iput p2, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionGridView;->b:I

    .line 180
    iput p3, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionGridView;->c:I

    .line 181
    iput p4, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionGridView;->d:I

    .line 1104
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionGridView;->removeAllViews()V

    .line 1105
    iget v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionGridView;->a:I

    if-lez v0, :cond_3

    iget v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionGridView;->b:I

    if-lez v0, :cond_3

    .line 1106
    iget v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionGridView;->a:I

    iget v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionGridView;->b:I

    mul-int/2addr v1, v0

    .line 1107
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_2

    .line 1108
    new-instance v2, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionGridView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 1109
    sget-object v3, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 1110
    iget v3, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionGridView;->c:I

    if-lez v3, :cond_1

    iget v3, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionGridView;->d:I

    if-lez v3, :cond_1

    .line 1111
    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    iget v4, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionGridView;->c:I

    iget v5, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionGridView;->d:I

    invoke-direct {v3, v4, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 1112
    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1117
    :goto_1
    iget-object v3, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionGridView;->h:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1118
    invoke-virtual {p0, v2}, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionGridView;->addView(Landroid/view/View;)V

    .line 1107
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1114
    :cond_1
    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v3, v6, v6}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 1115
    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1

    .line 1120
    :cond_2
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionGridView;->b()V

    .line 1121
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionGridView;->invalidate()V

    .line 184
    :cond_3
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 100
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method protected onLayout(ZIIII)V
    .locals 13
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v12

    invoke-static {v12}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 71
    iget v11, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionGridView;->a:I

    if-lez v11, :cond_0

    iget v11, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionGridView;->a:I

    if-lez v11, :cond_0

    .line 72
    sub-int p4, p4, p2

    .line 74
    sub-int p5, p5, p3

    .line 76
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionGridView;->getPaddingLeft()I

    move-result v11

    add-int/lit8 p2, v11, 0x0

    .line 77
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionGridView;->getPaddingTop()I

    move-result v11

    add-int/lit8 p3, v11, 0x0

    .line 78
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionGridView;->getPaddingRight()I

    move-result v11

    sub-int p4, p4, v11

    .line 79
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionGridView;->getPaddingBottom()I

    move-result v11

    sub-int p5, p5, v11

    .line 80
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionGridView;->getChildCount()I

    move-result v2

    .line 81
    .local v2, "count":I
    sub-int v10, p4, p2

    .line 82
    .local v10, "w":I
    sub-int v3, p5, p3

    .line 83
    .local v3, "h":I
    iget v11, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionGridView;->c:I

    iget v12, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionGridView;->a:I

    mul-int/2addr v11, v12

    sub-int v11, v10, v11

    iget v12, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionGridView;->a:I

    add-int/lit8 v12, v12, 0x1

    div-int v1, v11, v12

    .line 84
    .local v1, "colSpace":I
    iget v11, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionGridView;->d:I

    iget v12, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionGridView;->b:I

    mul-int/2addr v11, v12

    sub-int v11, v3, v11

    iget v12, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionGridView;->b:I

    add-int/lit8 v12, v12, 0x1

    div-int v8, v11, v12

    .line 85
    .local v8, "rowSpace":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v2, :cond_1

    .line 86
    iget v11, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionGridView;->a:I

    rem-int v0, v4, v11

    .line 87
    .local v0, "col":I
    iget v11, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionGridView;->a:I

    div-int v7, v4, v11

    .line 88
    .local v7, "row":I
    iget v11, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionGridView;->c:I

    add-int/2addr v11, v1

    mul-int/2addr v11, v0

    add-int/2addr v11, p2

    add-int v5, v11, v1

    .line 89
    .local v5, "markX":I
    iget v11, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionGridView;->d:I

    add-int/2addr v11, v8

    mul-int/2addr v11, v7

    add-int v11, v11, p3

    add-int v6, v11, v8

    .line 90
    .local v6, "markY":I
    invoke-virtual {p0, v4}, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    .line 91
    .local v9, "v":Landroid/view/View;
    iget v11, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionGridView;->c:I

    add-int/2addr v11, v5

    iget v12, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionGridView;->d:I

    add-int/2addr v12, v6

    invoke-virtual {v9, v5, v6, v11, v12}, Landroid/view/View;->layout(IIII)V

    .line 85
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 94
    .end local v0    # "col":I
    .end local v1    # "colSpace":I
    .end local v2    # "count":I
    .end local v3    # "h":I
    .end local v4    # "i":I
    .end local v5    # "markX":I
    .end local v6    # "markY":I
    .end local v7    # "row":I
    .end local v8    # "rowSpace":I
    .end local v9    # "v":Landroid/view/View;
    .end local v10    # "w":I
    :cond_0
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 96
    :cond_1
    return-void
.end method

.method public setData(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionGridView$a;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 187
    .local p1, "data":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionGridView$a;>;"
    iput-object p1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionGridView;->e:Ljava/util/List;

    .line 188
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionGridView;->b()V

    .line 189
    return-void
.end method

.method public setEmotionClickListener(Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionGridView$b;)V
    .locals 0
    .param p1, "listener"    # Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionGridView$b;

    .prologue
    .line 192
    iput-object p1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionGridView;->g:Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionGridView$b;

    .line 193
    return-void
.end method
