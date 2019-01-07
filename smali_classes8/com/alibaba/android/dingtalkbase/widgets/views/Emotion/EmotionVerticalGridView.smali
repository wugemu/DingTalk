.class public Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionVerticalGridView;
.super Landroid/widget/FrameLayout;
.source "EmotionVerticalGridView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionVerticalGridView$a;
    }
.end annotation


# static fields
.field private static a:I

.field private static b:I

.field private static c:I


# instance fields
.field private d:Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionGridView$b;

.field private e:Landroid/widget/GridView;

.field private f:Lcom/alibaba/doraemon/image/ImageMagician;

.field private g:I

.field private h:I

.field private i:I

.field private j:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionGridView$a;",
            ">;"
        }
    .end annotation
.end field

.field private k:Landroid/widget/BaseAdapter;

.field private l:Landroid/view/View$OnClickListener;

.field private m:Landroid/view/View$OnClickListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 36
    const/16 v0, 0x32

    sput v0, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionVerticalGridView;->a:I

    .line 37
    const/4 v0, 0x0

    sput v0, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionVerticalGridView;->b:I

    .line 38
    const/16 v0, 0xf

    sput v0, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionVerticalGridView;->c:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 49
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionVerticalGridView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 50
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "attrs"    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 53
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionVerticalGridView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 54
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "attrs"    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "defStyleAttr"    # I
        .annotation build Landroid/support/annotation/AttrRes;
        .end annotation
    .end param

    .prologue
    const/4 v3, 0x0

    const/4 v2, -0x1

    .line 57
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 46
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionVerticalGridView;->j:Ljava/util/List;

    .line 100
    new-instance v0, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionVerticalGridView$1;

    invoke-direct {v0, p0}, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionVerticalGridView$1;-><init>(Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionVerticalGridView;)V

    iput-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionVerticalGridView;->k:Landroid/widget/BaseAdapter;

    .line 184
    new-instance v0, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionVerticalGridView$2;

    invoke-direct {v0, p0}, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionVerticalGridView$2;-><init>(Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionVerticalGridView;)V

    iput-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionVerticalGridView;->l:Landroid/view/View$OnClickListener;

    .line 198
    new-instance v0, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionVerticalGridView$3;

    invoke-direct {v0, p0}, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionVerticalGridView$3;-><init>(Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionVerticalGridView;)V

    iput-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionVerticalGridView;->m:Landroid/view/View$OnClickListener;

    .line 1062
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionVerticalGridView;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcms;->c(Landroid/content/Context;F)I

    move-result v0

    iput v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionVerticalGridView;->i:I

    .line 1063
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionVerticalGridView;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionVerticalGridView;->a:I

    int-to-float v1, v1

    invoke-static {v0, v1}, Lcms;->c(Landroid/content/Context;F)I

    move-result v0

    iput v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionVerticalGridView;->g:I

    .line 1064
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionVerticalGridView;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionVerticalGridView;->a:I

    int-to-float v1, v1

    invoke-static {v0, v1}, Lcms;->c(Landroid/content/Context;F)I

    move-result v0

    iput v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionVerticalGridView;->h:I

    .line 1065
    const-string/jumbo v0, "IMAGE"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/image/ImageMagician;

    iput-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionVerticalGridView;->f:Lcom/alibaba/doraemon/image/ImageMagician;

    .line 1066
    new-instance v0, Landroid/widget/GridView;

    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionVerticalGridView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/GridView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionVerticalGridView;->e:Landroid/widget/GridView;

    .line 1067
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionVerticalGridView;->e:Landroid/widget/GridView;

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1068
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionVerticalGridView;->e:Landroid/widget/GridView;

    iget v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionVerticalGridView;->i:I

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setVerticalSpacing(I)V

    .line 1069
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionVerticalGridView;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionVerticalGridView;->c:I

    int-to-float v1, v1

    invoke-static {v0, v1}, Lcms;->c(Landroid/content/Context;F)I

    move-result v0

    .line 1070
    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionVerticalGridView;->e:Landroid/widget/GridView;

    invoke-virtual {v1, v0, v3, v0, v3}, Landroid/widget/GridView;->setPadding(IIII)V

    .line 1071
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionVerticalGridView;->e:Landroid/widget/GridView;

    const/high16 v1, 0x3000000

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setScrollBarStyle(I)V

    .line 1072
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionVerticalGridView;->e:Landroid/widget/GridView;

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionVerticalGridView;->addView(Landroid/view/View;)V

    .line 1073
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionVerticalGridView;->e:Landroid/widget/GridView;

    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionVerticalGridView;->k:Landroid/widget/BaseAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 59
    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionVerticalGridView;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionVerticalGridView;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionVerticalGridView;->j:Ljava/util/List;

    return-object v0
.end method

.method static synthetic b(Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionVerticalGridView;)Landroid/view/View$OnClickListener;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionVerticalGridView;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionVerticalGridView;->m:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method static synthetic c(Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionVerticalGridView;)Landroid/view/View$OnClickListener;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionVerticalGridView;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionVerticalGridView;->l:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method static synthetic d(Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionVerticalGridView;)I
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionVerticalGridView;

    .prologue
    .line 34
    iget v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionVerticalGridView;->g:I

    return v0
.end method

.method static synthetic e(Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionVerticalGridView;)I
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionVerticalGridView;

    .prologue
    .line 34
    iget v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionVerticalGridView;->h:I

    return v0
.end method

.method static synthetic f(Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionVerticalGridView;)Lcom/alibaba/doraemon/image/ImageMagician;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionVerticalGridView;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionVerticalGridView;->f:Lcom/alibaba/doraemon/image/ImageMagician;

    return-object v0
.end method

.method static synthetic g(Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionVerticalGridView;)Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionGridView$b;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionVerticalGridView;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionVerticalGridView;->d:Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionGridView$b;

    return-object v0
.end method


# virtual methods
.method public final a(III)V
    .locals 1
    .param p1, "columnCount"    # I
    .param p2, "perViewWidth"    # I
    .param p3, "perViewHeight"    # I

    .prologue
    .line 77
    if-lez p1, :cond_0

    .line 78
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionVerticalGridView;->e:Landroid/widget/GridView;

    invoke-virtual {v0, p1}, Landroid/widget/GridView;->setNumColumns(I)V

    .line 80
    :cond_0
    if-lez p3, :cond_1

    if-lez p2, :cond_1

    .line 81
    iput p3, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionVerticalGridView;->h:I

    .line 82
    iput p2, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionVerticalGridView;->g:I

    .line 83
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionVerticalGridView;->k:Landroid/widget/BaseAdapter;

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 86
    :cond_1
    return-void
.end method

.method public setData(Ljava/util/List;)V
    .locals 1
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
    .line 89
    .local p1, "dataList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionGridView$a;>;"
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionVerticalGridView;->j:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 90
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 91
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionVerticalGridView;->j:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 93
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionVerticalGridView;->k:Landroid/widget/BaseAdapter;

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 94
    return-void
.end method

.method public setEmotionClickListener(Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionGridView$b;)V
    .locals 0
    .param p1, "listener"    # Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionGridView$b;

    .prologue
    .line 97
    iput-object p1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionVerticalGridView;->d:Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionGridView$b;

    .line 98
    return-void
.end method
