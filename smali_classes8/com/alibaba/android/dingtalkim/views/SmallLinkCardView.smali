.class public Lcom/alibaba/android/dingtalkim/views/SmallLinkCardView;
.super Landroid/widget/FrameLayout;
.source "SmallLinkCardView.java"


# instance fields
.field private final a:I

.field private b:Landroid/widget/TextView;

.field private c:Landroid/widget/ImageView;

.field private d:Landroid/view/View;

.field private e:Lcom/alibaba/doraemon/image/ImageMagician;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 37
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 29
    const/16 v0, 0x32

    iput v0, p0, Lcom/alibaba/android/dingtalkim/views/SmallLinkCardView;->a:I

    .line 38
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkim/views/SmallLinkCardView;->a()V

    .line 39
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 42
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 29
    const/16 v0, 0x32

    iput v0, p0, Lcom/alibaba/android/dingtalkim/views/SmallLinkCardView;->a:I

    .line 43
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkim/views/SmallLinkCardView;->a()V

    .line 44
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 47
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 29
    const/16 v0, 0x32

    iput v0, p0, Lcom/alibaba/android/dingtalkim/views/SmallLinkCardView;->a:I

    .line 48
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkim/views/SmallLinkCardView;->a()V

    .line 49
    return-void
.end method

.method private a()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 52
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/views/SmallLinkCardView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lctk$g;->chatting_small_link:I

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 53
    sget v0, Lctk$f;->tv_small:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkim/views/SmallLinkCardView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/views/SmallLinkCardView;->b:Landroid/widget/TextView;

    .line 54
    sget v0, Lctk$f;->iv_thumb:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkim/views/SmallLinkCardView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/views/SmallLinkCardView;->c:Landroid/widget/ImageView;

    .line 55
    sget v0, Lctk$f;->v_splitter:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkim/views/SmallLinkCardView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/views/SmallLinkCardView;->d:Landroid/view/View;

    .line 56
    const-string/jumbo v0, "IMAGE"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/image/ImageMagician;

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/views/SmallLinkCardView;->e:Lcom/alibaba/doraemon/image/ImageMagician;

    .line 57
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .locals 1
    .param p1, "content"    # Ljava/lang/String;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/views/SmallLinkCardView;->b:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 61
    return-void
.end method

.method public final a(Ljava/lang/String;Landroid/widget/ListView;)V
    .locals 8
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "listView"    # Landroid/widget/ListView;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/16 v1, 0x32

    const/4 v4, 0x0

    .line 64
    .line 65
    move-object v2, p1

    .local v2, "adaptedUrl":Ljava/lang/String;
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 66
    invoke-static {}, Lhcj;->a()Lhcj;

    move-result-object v0

    .line 67
    invoke-virtual {v0, p1, v1, v1}, Lhcj;->a(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v2

    .line 71
    :goto_0
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/views/SmallLinkCardView;->e:Lcom/alibaba/doraemon/image/ImageMagician;

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/views/SmallLinkCardView;->c:Landroid/widget/ImageView;

    const/4 v5, 0x1

    const/4 v7, 0x0

    move-object v3, p2

    move v6, v4

    invoke-interface/range {v0 .. v7}, Lcom/alibaba/doraemon/image/ImageMagician;->setImageDrawable(Landroid/widget/ImageView;Ljava/lang/String;Landroid/widget/AbsListView;IZZLjava/util/Map;)V

    .line 73
    return-void

    .line 69
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public final a(Z)V
    .locals 2
    .param p1, "show"    # Z

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 76
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/views/SmallLinkCardView;->d:Landroid/view/View;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 77
    return-void

    .line 76
    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method
