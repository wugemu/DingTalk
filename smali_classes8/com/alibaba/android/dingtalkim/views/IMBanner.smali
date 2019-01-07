.class public Lcom/alibaba/android/dingtalkim/views/IMBanner;
.super Landroid/widget/FrameLayout;
.source "IMBanner.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/android/dingtalkim/views/IMBanner$b;,
        Lcom/alibaba/android/dingtalkim/views/IMBanner$a;,
        Lcom/alibaba/android/dingtalkim/views/IMBanner$InnerView;,
        Lcom/alibaba/android/dingtalkim/views/IMBanner$c;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/widget/FrameLayout;"
    }
.end annotation


# instance fields
.field private a:F

.field private b:F

.field private c:Landroid/support/v4/view/ViewPager;

.field private d:Landroid/widget/LinearLayout;

.field private e:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<TT;",
            "Ljava/lang/Class;",
            ">;"
        }
    .end annotation
.end field

.field private f:Lcom/alibaba/wukong/im/Conversation;

.field private g:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/ImageView;",
            ">;"
        }
    .end annotation
.end field

.field private h:I

.field private i:Landroid/view/View;

.field private j:Landroid/view/View;

.field private k:Landroid/view/View;

.field private l:Landroid/view/View;

.field private m:Landroid/widget/TextView;

.field private n:Z

.field private o:I

.field private p:Landroid/view/View;

.field private q:I

.field private r:Lcom/alibaba/android/dingtalkim/views/IMBanner$a;

.field private s:Lcom/alibaba/android/dingtalkim/views/IMBanner$c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/alibaba/android/dingtalkim/views/IMBanner",
            "<TT;>.c;"
        }
    .end annotation
.end field

.field private t:Lcom/alibaba/android/dingtalkim/views/IMBanner$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/alibaba/android/dingtalkim/views/IMBanner",
            "<TT;>.b;"
        }
    .end annotation
.end field

.field private u:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/alibaba/android/dingtalkim/views/IMBanner$InnerView;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 244
    .local p0, "this":Lcom/alibaba/android/dingtalkim/views/IMBanner;, "Lcom/alibaba/android/dingtalkim/views/IMBanner<TT;>;"
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/alibaba/android/dingtalkim/views/IMBanner;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 245
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 248
    .local p0, "this":Lcom/alibaba/android/dingtalkim/views/IMBanner;, "Lcom/alibaba/android/dingtalkim/views/IMBanner<TT;>;"
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/alibaba/android/dingtalkim/views/IMBanner;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 249
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .local p0, "this":Lcom/alibaba/android/dingtalkim/views/IMBanner;, "Lcom/alibaba/android/dingtalkim/views/IMBanner<TT;>;"
    const/4 v4, 0x0

    .line 252
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 72
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v2

    invoke-virtual {v2}, Lcid;->c()Landroid/app/Application;

    move-result-object v2

    const/high16 v3, 0x43520000    # 210.0f

    invoke-static {v2, v3}, Lcms;->c(Landroid/content/Context;F)I

    move-result v2

    int-to-float v2, v2

    iput v2, p0, Lcom/alibaba/android/dingtalkim/views/IMBanner;->a:F

    .line 73
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v2

    invoke-virtual {v2}, Lcid;->c()Landroid/app/Application;

    move-result-object v2

    const/high16 v3, 0x42300000    # 44.0f

    invoke-static {v2, v3}, Lcms;->c(Landroid/content/Context;F)I

    move-result v2

    int-to-float v2, v2

    iput v2, p0, Lcom/alibaba/android/dingtalkim/views/IMBanner;->b:F

    .line 89
    iput-boolean v4, p0, Lcom/alibaba/android/dingtalkim/views/IMBanner;->n:Z

    .line 90
    const/4 v2, 0x1

    iput v2, p0, Lcom/alibaba/android/dingtalkim/views/IMBanner;->o:I

    .line 454
    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    iput-object v2, p0, Lcom/alibaba/android/dingtalkim/views/IMBanner;->u:Ljava/util/LinkedList;

    .line 253
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lctk$c;->im_pay_bill_line_red_color:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    .line 254
    .local v1, "defaultColor":I
    sget-object v2, Lctk$k;->IMBanner:[I

    invoke-virtual {p1, p2, v2, p3, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 255
    .local v0, "a":Landroid/content/res/TypedArray;
    if-eqz v0, :cond_0

    .line 256
    sget v2, Lctk$k;->IMBanner_bottomLineColor:I

    invoke-virtual {v0, v2, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    iput v2, p0, Lcom/alibaba/android/dingtalkim/views/IMBanner;->q:I

    .line 257
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 1266
    :goto_0
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/views/IMBanner;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    sget v3, Lctk$g;->im_banner:I

    invoke-virtual {v2, v3, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 1267
    sget v2, Lctk$f;->im_banner_dot_layout:I

    invoke-virtual {p0, v2}, Lcom/alibaba/android/dingtalkim/views/IMBanner;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/alibaba/android/dingtalkim/views/IMBanner;->d:Landroid/widget/LinearLayout;

    .line 1268
    sget v2, Lctk$f;->im_banner_viewPager:I

    invoke-virtual {p0, v2}, Lcom/alibaba/android/dingtalkim/views/IMBanner;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/support/v4/view/ViewPager;

    iput-object v2, p0, Lcom/alibaba/android/dingtalkim/views/IMBanner;->c:Landroid/support/v4/view/ViewPager;

    .line 1269
    sget v2, Lctk$f;->banner:I

    invoke-virtual {p0, v2}, Lcom/alibaba/android/dingtalkim/views/IMBanner;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/alibaba/android/dingtalkim/views/IMBanner;->k:Landroid/view/View;

    .line 1270
    sget v2, Lctk$f;->folded_packet:I

    invoke-virtual {p0, v2}, Lcom/alibaba/android/dingtalkim/views/IMBanner;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/alibaba/android/dingtalkim/views/IMBanner;->l:Landroid/view/View;

    .line 1271
    sget v2, Lctk$f;->folded_packet_text:I

    invoke-virtual {p0, v2}, Lcom/alibaba/android/dingtalkim/views/IMBanner;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/alibaba/android/dingtalkim/views/IMBanner;->m:Landroid/widget/TextView;

    .line 1272
    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/views/IMBanner;->l:Landroid/view/View;

    new-instance v3, Lcom/alibaba/android/dingtalkim/views/IMBanner$1;

    invoke-direct {v3, p0}, Lcom/alibaba/android/dingtalkim/views/IMBanner$1;-><init>(Lcom/alibaba/android/dingtalkim/views/IMBanner;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1284
    sget v2, Lctk$f;->fold:I

    invoke-virtual {p0, v2}, Lcom/alibaba/android/dingtalkim/views/IMBanner;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/alibaba/android/dingtalkim/views/IMBanner;->j:Landroid/view/View;

    .line 1285
    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/views/IMBanner;->j:Landroid/view/View;

    new-instance v3, Lcom/alibaba/android/dingtalkim/views/IMBanner$2;

    invoke-direct {v3, p0}, Lcom/alibaba/android/dingtalkim/views/IMBanner$2;-><init>(Lcom/alibaba/android/dingtalkim/views/IMBanner;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1298
    sget v2, Lctk$f;->im_banner_close:I

    invoke-virtual {p0, v2}, Lcom/alibaba/android/dingtalkim/views/IMBanner;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/alibaba/android/dingtalkim/views/IMBanner;->i:Landroid/view/View;

    .line 1299
    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/views/IMBanner;->i:Landroid/view/View;

    new-instance v3, Lcom/alibaba/android/dingtalkim/views/IMBanner$3;

    invoke-direct {v3, p0}, Lcom/alibaba/android/dingtalkim/views/IMBanner$3;-><init>(Lcom/alibaba/android/dingtalkim/views/IMBanner;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1317
    sget v2, Lctk$f;->im_banner_bottom_line:I

    invoke-virtual {p0, v2}, Lcom/alibaba/android/dingtalkim/views/IMBanner;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/alibaba/android/dingtalkim/views/IMBanner;->p:Landroid/view/View;

    .line 1318
    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/views/IMBanner;->p:Landroid/view/View;

    iget v3, p0, Lcom/alibaba/android/dingtalkim/views/IMBanner;->q:I

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundColor(I)V

    .line 263
    return-void

    .line 259
    :cond_0
    iput v1, p0, Lcom/alibaba/android/dingtalkim/views/IMBanner;->q:I

    goto :goto_0
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalkim/views/IMBanner;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/views/IMBanner;

    .prologue
    .line 68
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/views/IMBanner;->l:Landroid/view/View;

    return-object v0
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalkim/views/IMBanner;Lcom/alibaba/android/dingtalkim/views/IMBanner$c;)Lcom/alibaba/android/dingtalkim/views/IMBanner$c;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/views/IMBanner;
    .param p1, "x1"    # Lcom/alibaba/android/dingtalkim/views/IMBanner$c;

    .prologue
    .line 68
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/views/IMBanner;->s:Lcom/alibaba/android/dingtalkim/views/IMBanner$c;

    return-object p1
.end method

.method private a()V
    .locals 8

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .local p0, "this":Lcom/alibaba/android/dingtalkim/views/IMBanner;, "Lcom/alibaba/android/dingtalkim/views/IMBanner<TT;>;"
    const/4 v7, 0x6

    const/4 v6, 0x1

    const/4 v5, -0x2

    const/4 v1, 0x0

    .line 375
    .line 2414
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/views/IMBanner;->d:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 2415
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/views/IMBanner;->e:Ljava/util/HashMap;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/views/IMBanner;->e:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-le v0, v6, :cond_2

    .line 2416
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/views/IMBanner;->d:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2417
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/views/IMBanner;->e:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v2

    .line 2418
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/views/IMBanner;->g:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 2419
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/views/IMBanner;->g:Ljava/util/ArrayList;

    :goto_0
    move v0, v1

    .line 2423
    :goto_1
    if-ge v0, v2, :cond_3

    .line 2424
    new-instance v3, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/views/IMBanner;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 2425
    new-instance v4, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v4, v5, v5}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2426
    if-nez v0, :cond_1

    .line 2427
    sget v4, Lctk$e;->im_dot_focused:I

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 2431
    :goto_2
    invoke-virtual {v3, v7, v1, v7, v1}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 2432
    iget-object v4, p0, Lcom/alibaba/android/dingtalkim/views/IMBanner;->d:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 2433
    iget-object v4, p0, Lcom/alibaba/android/dingtalkim/views/IMBanner;->g:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2423
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 2421
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/views/IMBanner;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    goto :goto_0

    .line 2429
    :cond_1
    sget v4, Lctk$e;->im_dot_normal:I

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_2

    .line 2436
    :cond_2
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/views/IMBanner;->d:Landroid/widget/LinearLayout;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2438
    :cond_3
    iput v1, p0, Lcom/alibaba/android/dingtalkim/views/IMBanner;->h:I

    .line 376
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/views/IMBanner;->u:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    .line 377
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/views/IMBanner;->t:Lcom/alibaba/android/dingtalkim/views/IMBanner$b;

    if-nez v0, :cond_4

    .line 378
    new-instance v0, Lcom/alibaba/android/dingtalkim/views/IMBanner$b;

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/views/IMBanner;->e:Ljava/util/HashMap;

    invoke-direct {v0, p0, v1}, Lcom/alibaba/android/dingtalkim/views/IMBanner$b;-><init>(Lcom/alibaba/android/dingtalkim/views/IMBanner;Ljava/util/HashMap;)V

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/views/IMBanner;->t:Lcom/alibaba/android/dingtalkim/views/IMBanner$b;

    .line 382
    :goto_3
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/views/IMBanner;->c:Landroid/support/v4/view/ViewPager;

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/views/IMBanner;->t:Lcom/alibaba/android/dingtalkim/views/IMBanner$b;

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setAdapter(Lgl;)V

    .line 383
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/views/IMBanner;->c:Landroid/support/v4/view/ViewPager;

    new-instance v1, Lcom/alibaba/android/dingtalkim/views/IMBanner$4;

    invoke-direct {v1, p0}, Lcom/alibaba/android/dingtalkim/views/IMBanner$4;-><init>(Lcom/alibaba/android/dingtalkim/views/IMBanner;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$d;)V

    .line 404
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/views/IMBanner;->e:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-gt v0, v6, :cond_5

    .line 405
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/views/IMBanner;->m:Landroid/widget/TextView;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 411
    :goto_4
    return-void

    .line 380
    :cond_4
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/views/IMBanner;->t:Lcom/alibaba/android/dingtalkim/views/IMBanner$b;

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/views/IMBanner;->e:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkim/views/IMBanner$b;->a(Ljava/util/HashMap;)V

    goto :goto_3

    .line 406
    :cond_5
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/views/IMBanner;->e:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    const/16 v1, 0x9

    if-gt v0, v1, :cond_6

    .line 407
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/views/IMBanner;->m:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "x"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/views/IMBanner;->e:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_4

    .line 409
    :cond_6
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/views/IMBanner;->m:Landroid/widget/TextView;

    const-string/jumbo v1, "x9+"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_4
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalkim/views/IMBanner;I)V
    .locals 2
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/views/IMBanner;
    .param p1, "x1"    # I

    .prologue
    .line 68
    .line 2446
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/views/IMBanner;->g:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/views/IMBanner;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_1

    .line 2447
    :cond_0
    :goto_0
    return-void

    .line 2449
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/views/IMBanner;->g:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    sget v1, Lctk$e;->im_dot_focused:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 2450
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/views/IMBanner;->g:Ljava/util/ArrayList;

    iget v1, p0, Lcom/alibaba/android/dingtalkim/views/IMBanner;->h:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    sget v1, Lctk$e;->im_dot_normal:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 2451
    iput p1, p0, Lcom/alibaba/android/dingtalkim/views/IMBanner;->h:I

    goto :goto_0
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalkim/views/IMBanner;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/views/IMBanner;
    .param p1, "x1"    # Z

    .prologue
    .line 68
    iput-boolean p1, p0, Lcom/alibaba/android/dingtalkim/views/IMBanner;->n:Z

    return p1
.end method

.method static synthetic b(Lcom/alibaba/android/dingtalkim/views/IMBanner;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/views/IMBanner;

    .prologue
    .line 68
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/views/IMBanner;->k:Landroid/view/View;

    return-object v0
.end method

.method static synthetic c(Lcom/alibaba/android/dingtalkim/views/IMBanner;)F
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/views/IMBanner;

    .prologue
    .line 68
    iget v0, p0, Lcom/alibaba/android/dingtalkim/views/IMBanner;->a:F

    return v0
.end method

.method static synthetic d(Lcom/alibaba/android/dingtalkim/views/IMBanner;)F
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/views/IMBanner;

    .prologue
    .line 68
    iget v0, p0, Lcom/alibaba/android/dingtalkim/views/IMBanner;->b:F

    return v0
.end method

.method static synthetic e(Lcom/alibaba/android/dingtalkim/views/IMBanner;)Lcom/alibaba/android/dingtalkim/views/IMBanner$c;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/views/IMBanner;

    .prologue
    .line 68
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/views/IMBanner;->s:Lcom/alibaba/android/dingtalkim/views/IMBanner$c;

    return-object v0
.end method

.method static synthetic f(Lcom/alibaba/android/dingtalkim/views/IMBanner;)Z
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/views/IMBanner;

    .prologue
    .line 68
    iget-boolean v0, p0, Lcom/alibaba/android/dingtalkim/views/IMBanner;->n:Z

    return v0
.end method

.method static synthetic g(Lcom/alibaba/android/dingtalkim/views/IMBanner;)Lcom/alibaba/android/dingtalkim/views/IMBanner$a;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/views/IMBanner;

    .prologue
    .line 68
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/views/IMBanner;->r:Lcom/alibaba/android/dingtalkim/views/IMBanner$a;

    return-object v0
.end method

.method private getFoldedPrefKey()Ljava/lang/String;
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 628
    .local p0, "this":Lcom/alibaba/android/dingtalkim/views/IMBanner;, "Lcom/alibaba/android/dingtalkim/views/IMBanner<TT;>;"
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/views/IMBanner;->f:Lcom/alibaba/wukong/im/Conversation;

    if-nez v1, :cond_0

    .line 629
    const/4 v1, 0x0

    .line 635
    :goto_0
    return-object v1

    .line 632
    :cond_0
    invoke-static {}, Lcom/alibaba/doraemon/performance/DDStringBuilderProxy;->getDDStringBuilder()Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v0

    .line 633
    .local v0, "stringBuilder":Lcom/alibaba/doraemon/performance/DDStringBuilder;
    const-string/jumbo v1, "lucky_time_redpackets_fold"

    invoke-virtual {v0, v1}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v1

    const-string/jumbo v2, "_"

    invoke-virtual {v1, v2}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/views/IMBanner;->f:Lcom/alibaba/wukong/im/Conversation;

    invoke-interface {v2}, Lcom/alibaba/wukong/im/Conversation;->conversationId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 635
    invoke-virtual {v0}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method static synthetic h(Lcom/alibaba/android/dingtalkim/views/IMBanner;)Lcom/alibaba/android/dingtalkim/views/IMBanner$b;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/views/IMBanner;

    .prologue
    .line 68
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/views/IMBanner;->t:Lcom/alibaba/android/dingtalkim/views/IMBanner$b;

    return-object v0
.end method

.method static synthetic i(Lcom/alibaba/android/dingtalkim/views/IMBanner;)I
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/views/IMBanner;

    .prologue
    .line 68
    iget v0, p0, Lcom/alibaba/android/dingtalkim/views/IMBanner;->h:I

    return v0
.end method

.method static synthetic j(Lcom/alibaba/android/dingtalkim/views/IMBanner;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/views/IMBanner;

    .prologue
    .line 68
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/views/IMBanner;->e:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic k(Lcom/alibaba/android/dingtalkim/views/IMBanner;)Ljava/util/LinkedList;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/views/IMBanner;

    .prologue
    .line 68
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/views/IMBanner;->u:Ljava/util/LinkedList;

    return-object v0
.end method

.method static synthetic l(Lcom/alibaba/android/dingtalkim/views/IMBanner;)Lcom/alibaba/wukong/im/Conversation;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/views/IMBanner;

    .prologue
    .line 68
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/views/IMBanner;->f:Lcom/alibaba/wukong/im/Conversation;

    return-object v0
.end method

.method static synthetic m(Lcom/alibaba/android/dingtalkim/views/IMBanner;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/views/IMBanner;

    .prologue
    .line 68
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkim/views/IMBanner;->a()V

    return-void
.end method


# virtual methods
.method public getData()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<TT;",
            "Ljava/lang/Class;",
            ">;"
        }
    .end annotation

    .prologue
    .line 338
    .local p0, "this":Lcom/alibaba/android/dingtalkim/views/IMBanner;, "Lcom/alibaba/android/dingtalkim/views/IMBanner<TT;>;"
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/views/IMBanner;->e:Ljava/util/HashMap;

    return-object v0
.end method

.method public getFoldedValue()Z
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 365
    .local p0, "this":Lcom/alibaba/android/dingtalkim/views/IMBanner;, "Lcom/alibaba/android/dingtalkim/views/IMBanner<TT;>;"
    const/4 v1, 0x0

    .line 366
    .local v1, "result":Z
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkim/views/IMBanner;->getFoldedPrefKey()Ljava/lang/String;

    move-result-object v0

    .line 367
    .local v0, "foldedKey":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 368
    invoke-static {}, Lcnh;->a()Lcnh;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3}, Lcnh;->d(Ljava/lang/String;Z)Z

    move-result v1

    .line 371
    :cond_0
    return v1
.end method

.method public setChangeListener(Lcom/alibaba/android/dingtalkim/views/IMBanner$a;)V
    .locals 0
    .param p1, "listener"    # Lcom/alibaba/android/dingtalkim/views/IMBanner$a;

    .prologue
    .line 354
    .local p0, "this":Lcom/alibaba/android/dingtalkim/views/IMBanner;, "Lcom/alibaba/android/dingtalkim/views/IMBanner<TT;>;"
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/views/IMBanner;->r:Lcom/alibaba/android/dingtalkim/views/IMBanner$a;

    .line 355
    return-void
.end method

.method public setCloseMethod(I)V
    .locals 3
    .param p1, "method"    # I

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .local p0, "this":Lcom/alibaba/android/dingtalkim/views/IMBanner;, "Lcom/alibaba/android/dingtalkim/views/IMBanner<TT;>;"
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 342
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 343
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/views/IMBanner;->i:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 344
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/views/IMBanner;->j:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 350
    :cond_0
    :goto_0
    iput p1, p0, Lcom/alibaba/android/dingtalkim/views/IMBanner;->o:I

    .line 351
    return-void

    .line 345
    :cond_1
    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 346
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/views/IMBanner;->i:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 347
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/views/IMBanner;->j:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public setCurrentConversation(Lcom/alibaba/wukong/im/Conversation;)V
    .locals 0
    .param p1, "conversation"    # Lcom/alibaba/wukong/im/Conversation;

    .prologue
    .line 322
    .local p0, "this":Lcom/alibaba/android/dingtalkim/views/IMBanner;, "Lcom/alibaba/android/dingtalkim/views/IMBanner<TT;>;"
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/views/IMBanner;->f:Lcom/alibaba/wukong/im/Conversation;

    .line 323
    return-void
.end method

.method public setData(Ljava/util/HashMap;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<TT;",
            "Ljava/lang/Class;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .local p0, "this":Lcom/alibaba/android/dingtalkim/views/IMBanner;, "Lcom/alibaba/android/dingtalkim/views/IMBanner<TT;>;"
    .local p1, "data":Ljava/util/HashMap;, "Ljava/util/HashMap<TT;Ljava/lang/Class;>;"
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 328
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/views/IMBanner;->e:Ljava/util/HashMap;

    .line 329
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkim/views/IMBanner;->a()V

    .line 331
    iget v0, p0, Lcom/alibaba/android/dingtalkim/views/IMBanner;->o:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 332
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/views/IMBanner;->getFoldedValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/alibaba/android/dingtalkim/views/IMBanner;->n:Z

    .line 1617
    iget-boolean v0, p0, Lcom/alibaba/android/dingtalkim/views/IMBanner;->n:Z

    if-eqz v0, :cond_1

    .line 1618
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/views/IMBanner;->l:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1619
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/views/IMBanner;->k:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    :goto_0
    return-void

    .line 1621
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/views/IMBanner;->l:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1622
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/views/IMBanner;->k:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public setFoldedValue(Z)V
    .locals 2
    .param p1, "enable"    # Z

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 358
    .local p0, "this":Lcom/alibaba/android/dingtalkim/views/IMBanner;, "Lcom/alibaba/android/dingtalkim/views/IMBanner<TT;>;"
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkim/views/IMBanner;->getFoldedPrefKey()Ljava/lang/String;

    move-result-object v0

    .line 359
    .local v0, "foldedKey":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 360
    invoke-static {}, Lcnh;->a()Lcnh;

    move-result-object v1

    invoke-virtual {v1, v0, p1}, Lcnh;->c(Ljava/lang/String;Z)V

    .line 362
    :cond_0
    return-void
.end method
