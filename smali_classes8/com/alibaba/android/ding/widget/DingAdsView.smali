.class public Lcom/alibaba/android/ding/widget/DingAdsView;
.super Lcom/alibaba/android/ding/base/objects/IDingAdsView;
.source "DingAdsView.java"


# instance fields
.field private a:Landroid/view/View;

.field private b:Landroid/widget/ImageView;

.field private c:Landroid/view/View;

.field private d:Landroid/widget/ImageView;

.field private e:Landroid/widget/TextView;

.field private f:Landroid/widget/TextView;

.field private g:Landroid/widget/TextView;

.field private h:Landroid/widget/LinearLayout;

.field private i:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 45
    invoke-direct {p0, p1}, Lcom/alibaba/android/ding/base/objects/IDingAdsView;-><init>(Landroid/content/Context;)V

    .line 46
    invoke-direct {p0}, Lcom/alibaba/android/ding/widget/DingAdsView;->a()V

    .line 47
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 50
    invoke-direct {p0, p1, p2}, Lcom/alibaba/android/ding/base/objects/IDingAdsView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 51
    invoke-direct {p0}, Lcom/alibaba/android/ding/widget/DingAdsView;->a()V

    .line 52
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 55
    invoke-direct {p0, p1, p2, p3}, Lcom/alibaba/android/ding/base/objects/IDingAdsView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 56
    invoke-direct {p0}, Lcom/alibaba/android/ding/widget/DingAdsView;->a()V

    .line 57
    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/ding/widget/DingAdsView;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/ding/widget/DingAdsView;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/alibaba/android/ding/widget/DingAdsView;->c:Landroid/view/View;

    return-object v0
.end method

.method private a()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 66
    invoke-virtual {p0}, Lcom/alibaba/android/ding/widget/DingAdsView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Laxp$g;->ding_layout_ding_ads:I

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/ding/widget/DingAdsView;->a:Landroid/view/View;

    .line 67
    sget v0, Laxp$f;->iv_icon:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/ding/widget/DingAdsView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/alibaba/android/ding/widget/DingAdsView;->b:Landroid/widget/ImageView;

    .line 68
    sget v0, Laxp$f;->v_red_dot:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/ding/widget/DingAdsView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/ding/widget/DingAdsView;->c:Landroid/view/View;

    .line 69
    sget v0, Laxp$f;->iv_ads:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/ding/widget/DingAdsView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/alibaba/android/ding/widget/DingAdsView;->d:Landroid/widget/ImageView;

    .line 70
    sget v0, Laxp$f;->tv_title:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/ding/widget/DingAdsView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/ding/widget/DingAdsView;->e:Landroid/widget/TextView;

    .line 71
    sget v0, Laxp$f;->tv_desc:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/ding/widget/DingAdsView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/ding/widget/DingAdsView;->f:Landroid/widget/TextView;

    .line 72
    sget v0, Laxp$f;->tv_subtitle:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/ding/widget/DingAdsView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/ding/widget/DingAdsView;->g:Landroid/widget/TextView;

    .line 73
    sget v0, Laxp$f;->ll_close:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/ding/widget/DingAdsView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/alibaba/android/ding/widget/DingAdsView;->h:Landroid/widget/LinearLayout;

    .line 74
    sget v0, Laxp$f;->tv_close:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/ding/widget/DingAdsView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/ding/widget/DingAdsView;->i:Landroid/widget/TextView;

    .line 75
    return-void
.end method

.method static synthetic b(Lcom/alibaba/android/ding/widget/DingAdsView;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/ding/widget/DingAdsView;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/alibaba/android/ding/widget/DingAdsView;->a:Landroid/view/View;

    return-object v0
.end method


# virtual methods
.method public final a(ILblf;)V
    .locals 8
    .param p1, "type"    # I
    .param p2, "dingAdsStyleObject"    # Lblf;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/16 v1, 0x8

    const/4 v3, 0x0

    const/4 v5, 0x0

    .line 79
    if-nez p2, :cond_0

    .line 80
    iget-object v2, p0, Lcom/alibaba/android/ding/widget/DingAdsView;->a:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 147
    :goto_0
    return-void

    .line 83
    :cond_0
    iget-object v2, p0, Lcom/alibaba/android/ding/widget/DingAdsView;->a:Landroid/view/View;

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 84
    const-string/jumbo v2, "IMAGE"

    invoke-static {v2}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/image/ImageMagician;

    .line 86
    .local v0, "imageMagician":Lcom/alibaba/doraemon/image/ImageMagician;
    iget-object v2, p0, Lcom/alibaba/android/ding/widget/DingAdsView;->b:Landroid/widget/ImageView;

    iget-object v4, p2, Lblf;->a:Ljava/lang/String;

    invoke-static {v4}, Lbke;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v2, v4, v3}, Lcom/alibaba/doraemon/image/ImageMagician;->setImageDrawable(Landroid/widget/ImageView;Ljava/lang/String;Landroid/widget/AbsListView;)V

    .line 88
    iget-object v2, p0, Lcom/alibaba/android/ding/widget/DingAdsView;->c:Landroid/view/View;

    invoke-static {}, Lbbl;->a()Lbbl;

    move-result-object v4

    invoke-virtual {v4, p1}, Lbbl;->c(I)Z

    move-result v4

    if-eqz v4, :cond_1

    move v1, v5

    :cond_1
    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 91
    iget-object v1, p2, Lblf;->b:Ljava/lang/String;

    invoke-static {v1}, Lbke;->b(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 92
    iget-object v1, p0, Lcom/alibaba/android/ding/widget/DingAdsView;->d:Landroid/widget/ImageView;

    iget-object v2, p2, Lblf;->b:Ljava/lang/String;

    .line 93
    invoke-static {v2}, Lbke;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x2

    move v6, v5

    move-object v7, v3

    .line 92
    invoke-interface/range {v0 .. v7}, Lcom/alibaba/doraemon/image/ImageMagician;->setImageDrawable(Landroid/widget/ImageView;Ljava/lang/String;Landroid/widget/AbsListView;IZZLjava/util/Map;)V

    .line 103
    :goto_1
    iget-object v1, p2, Lblf;->c:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 104
    iget-object v1, p0, Lcom/alibaba/android/ding/widget/DingAdsView;->e:Landroid/widget/TextView;

    iget-object v2, p2, Lblf;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 109
    :goto_2
    iget-object v1, p2, Lblf;->d:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 110
    iget-object v1, p0, Lcom/alibaba/android/ding/widget/DingAdsView;->f:Landroid/widget/TextView;

    iget-object v2, p2, Lblf;->d:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 115
    :goto_3
    iget-object v1, p2, Lblf;->e:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 116
    iget-object v1, p0, Lcom/alibaba/android/ding/widget/DingAdsView;->g:Landroid/widget/TextView;

    iget-object v2, p2, Lblf;->e:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 121
    :goto_4
    iget-object v1, p2, Lblf;->f:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 122
    iget-object v1, p0, Lcom/alibaba/android/ding/widget/DingAdsView;->i:Landroid/widget/TextView;

    iget-object v2, p2, Lblf;->f:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 127
    :goto_5
    iget-object v1, p0, Lcom/alibaba/android/ding/widget/DingAdsView;->a:Landroid/view/View;

    new-instance v2, Lcom/alibaba/android/ding/widget/DingAdsView$1;

    invoke-direct {v2, p0, p1, p2}, Lcom/alibaba/android/ding/widget/DingAdsView$1;-><init>(Lcom/alibaba/android/ding/widget/DingAdsView;ILblf;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 139
    iget-object v1, p0, Lcom/alibaba/android/ding/widget/DingAdsView;->h:Landroid/widget/LinearLayout;

    new-instance v2, Lcom/alibaba/android/ding/widget/DingAdsView$2;

    invoke-direct {v2, p0, p1}, Lcom/alibaba/android/ding/widget/DingAdsView$2;-><init>(Lcom/alibaba/android/ding/widget/DingAdsView;I)V

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_0

    .line 100
    :cond_2
    iget-object v1, p0, Lcom/alibaba/android/ding/widget/DingAdsView;->d:Landroid/widget/ImageView;

    iget-object v2, p2, Lblf;->b:Ljava/lang/String;

    invoke-static {v2}, Lbke;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2, v3}, Lcom/alibaba/doraemon/image/ImageMagician;->setImageDrawable(Landroid/widget/ImageView;Ljava/lang/String;Landroid/widget/AbsListView;)V

    goto :goto_1

    .line 106
    :cond_3
    iget-object v1, p0, Lcom/alibaba/android/ding/widget/DingAdsView;->e:Landroid/widget/TextView;

    const-string/jumbo v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 112
    :cond_4
    iget-object v1, p0, Lcom/alibaba/android/ding/widget/DingAdsView;->f:Landroid/widget/TextView;

    const-string/jumbo v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 118
    :cond_5
    iget-object v1, p0, Lcom/alibaba/android/ding/widget/DingAdsView;->g:Landroid/widget/TextView;

    const-string/jumbo v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_4

    .line 124
    :cond_6
    iget-object v1, p0, Lcom/alibaba/android/ding/widget/DingAdsView;->i:Landroid/widget/TextView;

    const-string/jumbo v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_5
.end method
