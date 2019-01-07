.class public Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionView;
.super Landroid/widget/FrameLayout;
.source "EmotionView.java"


# instance fields
.field public a:Landroid/widget/ImageView;

.field private b:Lcom/alibaba/doraemon/image/ImageMagician;

.field private c:Landroid/widget/TextView;

.field private d:Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionGridView$a;

.field private e:Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionGridView$b;

.field private f:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 34
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 35
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 38
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 39
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 42
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 116
    new-instance v0, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionView$1;

    invoke-direct {v0, p0}, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionView$1;-><init>(Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionView;)V

    iput-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionView;->f:Landroid/view/View$OnClickListener;

    .line 1047
    const-string/jumbo v0, "IMAGE"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/image/ImageMagician;

    iput-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionView;->b:Lcom/alibaba/doraemon/image/ImageMagician;

    .line 1048
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcig$h;->emotion_single_grid_item:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 1049
    sget v0, Lcig$f;->iv_image:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionView;->a:Landroid/widget/ImageView;

    .line 1050
    sget v0, Lcig$f;->tv_name:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionView;->c:Landroid/widget/TextView;

    .line 1051
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionView;->f:Landroid/view/View$OnClickListener;

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 44
    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionView;)Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionGridView$a;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionView;

    .prologue
    .line 26
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionView;->d:Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionGridView$a;

    return-object v0
.end method

.method static synthetic b(Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionView;)Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionGridView$b;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionView;

    .prologue
    .line 26
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionView;->e:Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionGridView$b;

    return-object v0
.end method


# virtual methods
.method public final a(Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionGridView$a;)V
    .locals 7
    .param p1, "item"    # Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionGridView$a;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/16 v6, 0x8

    const/4 v3, 0x0

    .line 75
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionView;->f:Landroid/view/View$OnClickListener;

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 76
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionView;->a:Landroid/widget/ImageView;

    invoke-static {v0}, Lcrq;->a(Landroid/view/View;)V

    .line 77
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionView;->a:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionView;->f:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 78
    iput-object p1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionView;->d:Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionGridView$a;

    .line 79
    if-nez p1, :cond_1

    .line 80
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionView;->a:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 81
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionView;->a:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 82
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionView;->c:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 83
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionView;->c:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 84
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionView;->b:Lcom/alibaba/doraemon/image/ImageMagician;

    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionView;->a:Landroid/widget/ImageView;

    invoke-interface {v0, v1, v3, v3}, Lcom/alibaba/doraemon/image/ImageMagician;->setImageDrawable(Landroid/widget/ImageView;Ljava/lang/String;Landroid/widget/AbsListView;)V

    .line 114
    :cond_0
    :goto_0
    return-void

    .line 86
    :cond_1
    iget v0, p1, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionGridView$a;->e:I

    if-eqz v0, :cond_2

    iget v0, p1, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionGridView$a;->e:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_5

    .line 88
    :cond_2
    iget v0, p1, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionGridView$a;->d:I

    if-lez v0, :cond_3

    .line 89
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionView;->a:Landroid/widget/ImageView;

    iget v1, p1, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionGridView$a;->d:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 97
    :goto_1
    iget-object v0, p1, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionGridView$a;->g:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 98
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionView;->c:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 99
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionView;->c:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 104
    :goto_2
    iget-object v0, p1, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionGridView$a;->f:Lcrd;

    if-eqz v0, :cond_0

    .line 105
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionView;->a:Landroid/widget/ImageView;

    iget-object v1, p1, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionGridView$a;->f:Lcrd;

    invoke-virtual {v1}, Lcrd;->getTalkBackDescription()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 91
    :cond_3
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionView;->a:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 92
    const-string/jumbo v0, "CUSTOM_EMOTION"

    iget-object v1, p1, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionGridView$a;->c:Ljava/lang/String;

    invoke-static {v0, v3, v1, v3}, Liaf;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v4

    .line 93
    .local v4, "requestParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionView;->b:Lcom/alibaba/doraemon/image/ImageMagician;

    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionView;->a:Landroid/widget/ImageView;

    iget-object v2, p1, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionGridView$a;->a:Ljava/lang/String;

    move-object v5, v3

    invoke-interface/range {v0 .. v5}, Lcom/alibaba/doraemon/image/ImageMagician;->setImageDrawable(Landroid/widget/ImageView;Ljava/lang/String;Landroid/widget/AbsListView;Ljava/util/Map;Ljava/util/Map;)V

    .line 94
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionView;->a:Landroid/widget/ImageView;

    iget-object v1, p1, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionGridView$a;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionView;->f:Landroid/view/View$OnClickListener;

    invoke-static {v0, v1, v4, v3, v2}, Lcrq;->a(Landroid/view/View;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Landroid/view/View$OnClickListener;)V

    .line 95
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionView;->a:Landroid/widget/ImageView;

    invoke-static {v0}, Lcrq;->b(Landroid/view/View;)V

    goto :goto_1

    .line 101
    .end local v4    # "requestParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_4
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionView;->c:Landroid/widget/TextView;

    iget-object v1, p1, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionGridView$a;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 102
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionView;->c:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2

    .line 108
    :cond_5
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionView;->a:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 109
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionView;->b:Lcom/alibaba/doraemon/image/ImageMagician;

    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionView;->a:Landroid/widget/ImageView;

    invoke-interface {v0, v1, v3, v3}, Lcom/alibaba/doraemon/image/ImageMagician;->setImageDrawable(Landroid/widget/ImageView;Ljava/lang/String;Landroid/widget/AbsListView;)V

    .line 110
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionView;->c:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 111
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionView;->c:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_0
.end method

.method public setListener(Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionGridView$b;)V
    .locals 0
    .param p1, "onEmotionClickListener"    # Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionGridView$b;

    .prologue
    .line 71
    iput-object p1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionView;->e:Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionGridView$b;

    .line 72
    return-void
.end method
