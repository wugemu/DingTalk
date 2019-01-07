.class public Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionListItemView;
.super Landroid/widget/FrameLayout;
.source "EmotionListItemView.java"


# instance fields
.field public a:Landroid/widget/TextView;

.field public b:Landroid/view/View;

.field public c:Landroid/widget/LinearLayout;

.field public d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionGridView$a;",
            ">;"
        }
    .end annotation
.end field

.field public e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionView;",
            ">;"
        }
    .end annotation
.end field

.field public f:Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionGridView$b;

.field private g:Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionGridView$b;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 34
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionListItemView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 35
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "attrs"    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 38
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionListItemView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 39
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "attrs"    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 42
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 135
    new-instance v0, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionListItemView$1;

    invoke-direct {v0, p0}, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionListItemView$1;-><init>(Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionListItemView;)V

    iput-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionListItemView;->f:Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionGridView$b;

    .line 1051
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionListItemView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcig$h;->dingtalkbase_emotion_list_item:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 1052
    sget v0, Lcig$f;->tv_header_tips:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionListItemView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionListItemView;->a:Landroid/widget/TextView;

    .line 1053
    sget v0, Lcig$f;->v_bottom_line:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionListItemView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionListItemView;->b:Landroid/view/View;

    .line 1054
    sget v0, Lcig$f;->ll_content_container:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionListItemView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionListItemView;->c:Landroid/widget/LinearLayout;

    .line 1055
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionListItemView;->d:Ljava/util/List;

    .line 1056
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionListItemView;->e:Ljava/util/List;

    .line 44
    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionListItemView;)Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionGridView$b;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionListItemView;

    .prologue
    .line 23
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionListItemView;->g:Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionGridView$b;

    return-object v0
.end method


# virtual methods
.method public final a(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionGridView$a;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 119
    .local p1, "itemModelList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionGridView$a;>;"
    iget-object v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionListItemView;->d:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 120
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 121
    iget-object v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionListItemView;->d:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 124
    :cond_0
    const/4 v1, 0x0

    .local v1, "index":I
    :goto_0
    iget-object v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionListItemView;->e:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 125
    iget-object v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionListItemView;->e:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionView;

    .line 126
    .local v0, "emotionView":Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionView;
    iget-object v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionListItemView;->d:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 127
    iget-object v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionListItemView;->d:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionGridView$a;

    invoke-virtual {v0, v2}, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionView;->a(Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionGridView$a;)V

    .line 124
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 129
    :cond_1
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionView;->a(Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionGridView$a;)V

    goto :goto_1

    .line 133
    .end local v0    # "emotionView":Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionView;
    :cond_2
    return-void
.end method

.method public setListener(Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionGridView$b;)V
    .locals 0
    .param p1, "onEmotionClickListener"    # Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionGridView$b;

    .prologue
    .line 47
    iput-object p1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionListItemView;->g:Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionGridView$b;

    .line 48
    return-void
.end method
