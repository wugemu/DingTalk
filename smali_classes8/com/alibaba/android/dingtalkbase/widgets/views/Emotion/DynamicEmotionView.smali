.class public Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/DynamicEmotionView;
.super Landroid/widget/RelativeLayout;
.source "DynamicEmotionView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/DynamicEmotionView$b;,
        Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/DynamicEmotionView$a;,
        Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/DynamicEmotionView$c;
    }
.end annotation


# instance fields
.field private a:Lcom/alibaba/android/dingtalkbase/widgets/views/HorizontalListView;

.field private b:Landroid/widget/EditText;

.field private c:Landroid/widget/TextView;

.field private d:Landroid/widget/TextView;

.field private e:Landroid/widget/TextView;

.field private f:Landroid/widget/RelativeLayout;

.field private g:Landroid/widget/ImageView;

.field private h:Landroid/widget/TextView;

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

.field private k:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionGridView$a;",
            ">;"
        }
    .end annotation
.end field

.field private l:Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/DynamicEmotionView$a;

.field private m:Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/DynamicEmotionView$b;

.field private n:J

.field private o:Ljava/lang/String;

.field private p:Landroid/os/Handler;

.field private q:Landroid/widget/BaseAdapter;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 64
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 53
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/DynamicEmotionView;->k:Ljava/util/List;

    .line 59
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/DynamicEmotionView;->o:Ljava/lang/String;

    .line 60
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/DynamicEmotionView;->p:Landroid/os/Handler;

    .line 244
    new-instance v0, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/DynamicEmotionView$7;

    invoke-direct {v0, p0}, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/DynamicEmotionView$7;-><init>(Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/DynamicEmotionView;)V

    iput-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/DynamicEmotionView;->q:Landroid/widget/BaseAdapter;

    .line 65
    invoke-direct {p0, p1}, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/DynamicEmotionView;->a(Landroid/content/Context;)V

    .line 66
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 69
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 53
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/DynamicEmotionView;->k:Ljava/util/List;

    .line 59
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/DynamicEmotionView;->o:Ljava/lang/String;

    .line 60
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/DynamicEmotionView;->p:Landroid/os/Handler;

    .line 244
    new-instance v0, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/DynamicEmotionView$7;

    invoke-direct {v0, p0}, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/DynamicEmotionView$7;-><init>(Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/DynamicEmotionView;)V

    iput-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/DynamicEmotionView;->q:Landroid/widget/BaseAdapter;

    .line 70
    invoke-direct {p0, p1}, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/DynamicEmotionView;->a(Landroid/content/Context;)V

    .line 71
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 74
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 53
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/DynamicEmotionView;->k:Ljava/util/List;

    .line 59
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/DynamicEmotionView;->o:Ljava/lang/String;

    .line 60
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/DynamicEmotionView;->p:Landroid/os/Handler;

    .line 244
    new-instance v0, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/DynamicEmotionView$7;

    invoke-direct {v0, p0}, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/DynamicEmotionView$7;-><init>(Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/DynamicEmotionView;)V

    iput-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/DynamicEmotionView;->q:Landroid/widget/BaseAdapter;

    .line 75
    invoke-direct {p0, p1}, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/DynamicEmotionView;->a(Landroid/content/Context;)V

    .line 76
    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/DynamicEmotionView;J)J
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/DynamicEmotionView;
    .param p1, "x1"    # J

    .prologue
    .line 35
    iput-wide p1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/DynamicEmotionView;->n:J

    return-wide p1
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/DynamicEmotionView;)Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/DynamicEmotionView$a;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/DynamicEmotionView;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/DynamicEmotionView;->l:Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/DynamicEmotionView$a;

    return-object v0
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/DynamicEmotionView;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/DynamicEmotionView;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 35
    iput-object p1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/DynamicEmotionView;->o:Ljava/lang/String;

    return-object p1
.end method

.method private a(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 79
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    sget v2, Lcig$h;->dynamic_emotion_view:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 80
    .local v0, "view":Landroid/view/View;
    sget v1, Lcig$f;->horizontal_view:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/dingtalkbase/widgets/views/HorizontalListView;

    iput-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/DynamicEmotionView;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/HorizontalListView;

    .line 81
    sget v1, Lcig$f;->edt_search:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/DynamicEmotionView;->b:Landroid/widget/EditText;

    .line 82
    sget v1, Lcig$f;->tv_cancel:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/DynamicEmotionView;->c:Landroid/widget/TextView;

    .line 83
    sget v1, Lcig$f;->rl_empty:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/DynamicEmotionView;->f:Landroid/widget/RelativeLayout;

    .line 84
    sget v1, Lcig$f;->tv_find_more:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/DynamicEmotionView;->d:Landroid/widget/TextView;

    .line 85
    sget v1, Lcig$f;->tv_empty_tip:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/DynamicEmotionView;->e:Landroid/widget/TextView;

    .line 86
    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/DynamicEmotionView;->e:Landroid/widget/TextView;

    sget v2, Lcig$j;->dt_emotion_search_no_results:I

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 87
    sget v1, Lcig$f;->img_clear:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/DynamicEmotionView;->g:Landroid/widget/ImageView;

    .line 88
    sget v1, Lcig$f;->tv_loading:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/DynamicEmotionView;->h:Landroid/widget/TextView;

    .line 89
    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/DynamicEmotionView;->addView(Landroid/view/View;)V

    .line 91
    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/DynamicEmotionView;->c:Landroid/widget/TextView;

    new-instance v2, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/DynamicEmotionView$1;

    invoke-direct {v2, p0}, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/DynamicEmotionView$1;-><init>(Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/DynamicEmotionView;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 100
    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/DynamicEmotionView;->b:Landroid/widget/EditText;

    new-instance v2, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/DynamicEmotionView$2;

    invoke-direct {v2, p0}, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/DynamicEmotionView$2;-><init>(Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/DynamicEmotionView;)V

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 136
    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/DynamicEmotionView;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/HorizontalListView;

    new-instance v2, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/DynamicEmotionView$3;

    invoke-direct {v2, p0}, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/DynamicEmotionView$3;-><init>(Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/DynamicEmotionView;)V

    invoke-virtual {v1, v2}, Lcom/alibaba/android/dingtalkbase/widgets/views/HorizontalListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 146
    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/DynamicEmotionView;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/HorizontalListView;

    new-instance v2, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/DynamicEmotionView$4;

    invoke-direct {v2, p0}, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/DynamicEmotionView$4;-><init>(Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/DynamicEmotionView;)V

    invoke-virtual {v1, v2}, Lcom/alibaba/android/dingtalkbase/widgets/views/HorizontalListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 157
    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/DynamicEmotionView;->d:Landroid/widget/TextView;

    new-instance v2, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/DynamicEmotionView$5;

    invoke-direct {v2, p0}, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/DynamicEmotionView$5;-><init>(Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/DynamicEmotionView;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 164
    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/DynamicEmotionView;->g:Landroid/widget/ImageView;

    new-instance v2, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/DynamicEmotionView$6;

    invoke-direct {v2, p0}, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/DynamicEmotionView$6;-><init>(Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/DynamicEmotionView;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 171
    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/DynamicEmotionView;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/HorizontalListView;

    iget-object v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/DynamicEmotionView;->q:Landroid/widget/BaseAdapter;

    invoke-virtual {v1, v2}, Lcom/alibaba/android/dingtalkbase/widgets/views/HorizontalListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 172
    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/DynamicEmotionView;Z)V
    .locals 5
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/DynamicEmotionView;
    .param p1, "x1"    # Z

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    const/16 v2, 0x8

    .line 35
    .line 1175
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/DynamicEmotionView;->b:Landroid/widget/EditText;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1176
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/DynamicEmotionView;->j:Ljava/util/List;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/DynamicEmotionView;->j:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 1177
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/DynamicEmotionView;->j:Ljava/util/List;

    .line 1218
    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/DynamicEmotionView;->h:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1219
    invoke-direct {p0, v4}, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/DynamicEmotionView;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1226
    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/DynamicEmotionView;->k:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 1227
    if-eqz v0, :cond_0

    .line 1228
    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/DynamicEmotionView;->k:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1230
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/DynamicEmotionView;->q:Landroid/widget/BaseAdapter;

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 1231
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/DynamicEmotionView;->f:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1232
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/DynamicEmotionView;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/HorizontalListView;

    invoke-virtual {v0, v3}, Lcom/alibaba/android/dingtalkbase/widgets/views/HorizontalListView;->b(I)V

    .line 1233
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/DynamicEmotionView;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/HorizontalListView;

    invoke-virtual {v0, v3}, Lcom/alibaba/android/dingtalkbase/widgets/views/HorizontalListView;->setVisibility(I)V

    .line 1185
    :cond_1
    :goto_0
    return-void

    .line 1178
    :cond_2
    if-eqz p1, :cond_3

    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/DynamicEmotionView;->m:Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/DynamicEmotionView$b;

    if-eqz v0, :cond_3

    .line 1180
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/DynamicEmotionView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcms;->d(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1183
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/DynamicEmotionView;->h:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1184
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/DynamicEmotionView;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/HorizontalListView;

    invoke-virtual {v0, v2}, Lcom/alibaba/android/dingtalkbase/widgets/views/HorizontalListView;->setVisibility(I)V

    .line 1185
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/DynamicEmotionView;->f:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_0

    .line 1186
    :cond_3
    if-nez p1, :cond_1

    .line 1187
    invoke-virtual {p0, v4}, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/DynamicEmotionView;->setEmotionResultEmpty(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private a(Ljava/lang/String;)Z
    .locals 1
    .param p1, "keyword"    # Ljava/lang/String;

    .prologue
    .line 237
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/DynamicEmotionView;->b:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 239
    const/4 v0, 0x1

    .line 241
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic b(Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/DynamicEmotionView;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/DynamicEmotionView;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/DynamicEmotionView;->g:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic b(Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/DynamicEmotionView;Ljava/lang/String;)Z
    .locals 4
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/DynamicEmotionView;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x1

    .line 35
    .line 1293
    if-eqz p1, :cond_3

    .line 1294
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    .line 1295
    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, ".gif"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1305
    :cond_0
    :goto_0
    return v0

    .line 1299
    :cond_1
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 1300
    invoke-virtual {v2}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-virtual {v2}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, ".gif"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1304
    :cond_2
    const-string/jumbo v2, ".gif"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1308
    :cond_3
    const/4 v0, 0x0

    .line 35
    goto :goto_0
.end method

.method static synthetic c(Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/DynamicEmotionView;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/DynamicEmotionView;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/DynamicEmotionView;->o:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic d(Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/DynamicEmotionView;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/DynamicEmotionView;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/DynamicEmotionView;->p:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic e(Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/DynamicEmotionView;)J
    .locals 2
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/DynamicEmotionView;

    .prologue
    .line 35
    iget-wide v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/DynamicEmotionView;->n:J

    return-wide v0
.end method

.method static synthetic f(Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/DynamicEmotionView;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/DynamicEmotionView;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/DynamicEmotionView;->k:Ljava/util/List;

    return-object v0
.end method

.method static synthetic g(Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/DynamicEmotionView;)I
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/DynamicEmotionView;

    .prologue
    .line 35
    iget v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/DynamicEmotionView;->i:I

    return v0
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 313
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/DynamicEmotionView;->l:Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/DynamicEmotionView$a;

    if-eqz v0, :cond_0

    .line 314
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/DynamicEmotionView;->b:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 316
    :cond_0
    return-void
.end method

.method public setDefaultImage(I)V
    .locals 0
    .param p1, "defaultImage"    # I

    .prologue
    .line 214
    iput p1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/DynamicEmotionView;->i:I

    .line 215
    return-void
.end method

.method public setEmotionResultEmpty(Ljava/lang/String;)V
    .locals 2
    .param p1, "keyword"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/16 v1, 0x8

    .line 205
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/DynamicEmotionView;->h:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 206
    if-eqz p1, :cond_0

    invoke-direct {p0, p1}, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/DynamicEmotionView;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 211
    :goto_0
    return-void

    .line 209
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/DynamicEmotionView;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/HorizontalListView;

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/HorizontalListView;->setVisibility(I)V

    .line 210
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/DynamicEmotionView;->f:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_0
.end method

.method public setEmotionSearchListener(Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/DynamicEmotionView$a;)V
    .locals 0
    .param p1, "emotionSearchListener"    # Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/DynamicEmotionView$a;

    .prologue
    .line 197
    iput-object p1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/DynamicEmotionView;->l:Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/DynamicEmotionView$a;

    .line 198
    return-void
.end method

.method public setHotEmotionListener(Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/DynamicEmotionView$b;)V
    .locals 0
    .param p1, "listener"    # Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/DynamicEmotionView$b;

    .prologue
    .line 201
    iput-object p1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/DynamicEmotionView;->m:Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/DynamicEmotionView$b;

    .line 202
    return-void
.end method

.method public setSearchHint(Ljava/lang/String;)V
    .locals 1
    .param p1, "hint"    # Ljava/lang/String;

    .prologue
    .line 192
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/DynamicEmotionView;->b:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 193
    return-void
.end method
