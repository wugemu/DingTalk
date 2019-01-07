.class public Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionFooterView;
.super Landroid/widget/RelativeLayout;
.source "EmotionFooterView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionFooterView$c;,
        Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionFooterView$b;,
        Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionFooterView$d;,
        Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionFooterView$e;,
        Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionFooterView$f;,
        Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionFooterView$a;,
        Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionFooterView$g;
    }
.end annotation


# instance fields
.field private A:Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionGridView$b;

.field private B:Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionFooterView$e;

.field private C:Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionFooterView$d;

.field private D:Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionFooterView$b;

.field private E:Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionFooterView$c;

.field private F:I

.field private G:Landroid/support/v4/view/ViewPager$d;

.field public a:Landroid/support/v4/view/ViewPager;

.field public b:Landroid/widget/LinearLayout;

.field public c:Landroid/widget/FrameLayout;

.field public d:Landroid/view/View;

.field public e:Landroid/widget/FrameLayout;

.field public f:Landroid/widget/ImageView;

.field public g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lckk;",
            ">;"
        }
    .end annotation
.end field

.field public h:Lcom/alibaba/doraemon/image/ImageMagician;

.field public i:J

.field public j:Landroid/graphics/drawable/AnimationDrawable;

.field public k:Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionFooterView$a;

.field public l:Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionFooterView$f;

.field public m:I

.field public n:Lgl;

.field public o:Landroid/widget/BaseAdapter;

.field private p:Landroid/widget/ImageView;

.field private q:Landroid/view/View;

.field private r:Landroid/widget/ImageView;

.field private s:Landroid/widget/RelativeLayout;

.field private t:Landroid/view/View;

.field private u:Lcom/alibaba/android/dingtalkbase/widgets/views/HorizontalListView;

.field private v:Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;

.field private w:Landroid/view/View;

.field private x:Landroid/view/View;

.field private y:Z

.field private z:Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionFooterView$g;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 96
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 76
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionFooterView;->g:Ljava/util/List;

    .line 79
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionFooterView;->i:J

    .line 285
    new-instance v0, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionFooterView$1;

    invoke-direct {v0, p0}, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionFooterView$1;-><init>(Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionFooterView;)V

    iput-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionFooterView;->n:Lgl;

    .line 344
    const/4 v0, 0x0

    const/high16 v1, 0x42480000    # 50.0f

    invoke-static {v0, v1}, Lcms;->c(Landroid/content/Context;F)I

    move-result v0

    iput v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionFooterView;->F:I

    .line 346
    new-instance v0, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionFooterView$2;

    invoke-direct {v0, p0}, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionFooterView$2;-><init>(Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionFooterView;)V

    iput-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionFooterView;->G:Landroid/support/v4/view/ViewPager$d;

    .line 427
    new-instance v0, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionFooterView$8;

    invoke-direct {v0, p0}, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionFooterView$8;-><init>(Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionFooterView;)V

    iput-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionFooterView;->o:Landroid/widget/BaseAdapter;

    .line 97
    invoke-direct {p0, p1}, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionFooterView;->a(Landroid/content/Context;)V

    .line 98
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 101
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 76
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionFooterView;->g:Ljava/util/List;

    .line 79
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionFooterView;->i:J

    .line 285
    new-instance v0, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionFooterView$1;

    invoke-direct {v0, p0}, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionFooterView$1;-><init>(Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionFooterView;)V

    iput-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionFooterView;->n:Lgl;

    .line 344
    const/4 v0, 0x0

    const/high16 v1, 0x42480000    # 50.0f

    invoke-static {v0, v1}, Lcms;->c(Landroid/content/Context;F)I

    move-result v0

    iput v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionFooterView;->F:I

    .line 346
    new-instance v0, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionFooterView$2;

    invoke-direct {v0, p0}, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionFooterView$2;-><init>(Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionFooterView;)V

    iput-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionFooterView;->G:Landroid/support/v4/view/ViewPager$d;

    .line 427
    new-instance v0, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionFooterView$8;

    invoke-direct {v0, p0}, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionFooterView$8;-><init>(Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionFooterView;)V

    iput-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionFooterView;->o:Landroid/widget/BaseAdapter;

    .line 102
    invoke-direct {p0, p1}, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionFooterView;->a(Landroid/content/Context;)V

    .line 103
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 106
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 76
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionFooterView;->g:Ljava/util/List;

    .line 79
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionFooterView;->i:J

    .line 285
    new-instance v0, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionFooterView$1;

    invoke-direct {v0, p0}, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionFooterView$1;-><init>(Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionFooterView;)V

    iput-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionFooterView;->n:Lgl;

    .line 344
    const/4 v0, 0x0

    const/high16 v1, 0x42480000    # 50.0f

    invoke-static {v0, v1}, Lcms;->c(Landroid/content/Context;F)I

    move-result v0

    iput v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionFooterView;->F:I

    .line 346
    new-instance v0, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionFooterView$2;

    invoke-direct {v0, p0}, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionFooterView$2;-><init>(Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionFooterView;)V

    iput-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionFooterView;->G:Landroid/support/v4/view/ViewPager$d;

    .line 427
    new-instance v0, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionFooterView$8;

    invoke-direct {v0, p0}, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionFooterView$8;-><init>(Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionFooterView;)V

    iput-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionFooterView;->o:Landroid/widget/BaseAdapter;

    .line 107
    invoke-direct {p0, p1}, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionFooterView;->a(Landroid/content/Context;)V

    .line 108
    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionFooterView;I)Lckk;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionFooterView;
    .param p1, "x1"    # I

    .prologue
    .line 47
    .line 3229
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionFooterView;->g:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 3230
    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionFooterView;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 3231
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionFooterView;->g:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lckk;

    :goto_0
    return-object v0

    .line 3234
    :cond_0
    const/4 v0, 0x0

    .line 47
    goto :goto_0
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionFooterView;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionFooterView;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionFooterView;->g:Ljava/util/List;

    return-object v0
.end method

.method private a(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 220
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionFooterView;->h:Lcom/alibaba/doraemon/image/ImageMagician;

    if-nez v0, :cond_0

    .line 221
    const-string/jumbo v0, "IMAGE"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/image/ImageMagician;

    iput-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionFooterView;->h:Lcom/alibaba/doraemon/image/ImageMagician;

    .line 1238
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionFooterView;->a:Landroid/support/v4/view/ViewPager;

    if-nez v0, :cond_2

    .line 1239
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcig$h;->emotion_footer_view_v2:I

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 1240
    sget v0, Lcig$f;->emotion_pager:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionFooterView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPager;

    iput-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionFooterView;->a:Landroid/support/v4/view/ViewPager;

    .line 1241
    sget v0, Lcig$f;->fl_top_container:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionFooterView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionFooterView;->c:Landroid/widget/FrameLayout;

    .line 1242
    sget v0, Lcig$f;->v_container_splitter:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionFooterView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionFooterView;->d:Landroid/view/View;

    .line 1243
    sget v0, Lcig$f;->bottom_container:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionFooterView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionFooterView;->b:Landroid/widget/LinearLayout;

    .line 1244
    sget v0, Lcig$f;->fl_extend_container:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionFooterView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionFooterView;->e:Landroid/widget/FrameLayout;

    .line 1245
    sget v0, Lcig$f;->emotion_store:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionFooterView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionFooterView;->p:Landroid/widget/ImageView;

    .line 1246
    sget v0, Lcig$f;->divider_emotion_store:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionFooterView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionFooterView;->q:Landroid/view/View;

    .line 1247
    sget v0, Lcig$f;->img_dynamic_emotion:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionFooterView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionFooterView;->f:Landroid/widget/ImageView;

    .line 1248
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionFooterView;->f:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    instance-of v0, v0, Landroid/graphics/drawable/AnimationDrawable;

    if-eqz v0, :cond_1

    .line 1249
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionFooterView;->f:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    iput-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionFooterView;->j:Landroid/graphics/drawable/AnimationDrawable;

    .line 1251
    :cond_1
    sget v0, Lcig$f;->iv_dynamic_dot:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionFooterView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionFooterView;->r:Landroid/widget/ImageView;

    .line 1252
    sget v0, Lcig$f;->rl_dynamic_emotion:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionFooterView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionFooterView;->s:Landroid/widget/RelativeLayout;

    .line 1253
    sget v0, Lcig$f;->line_dynamic_emotion:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionFooterView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionFooterView;->w:Landroid/view/View;

    .line 1254
    const-string/jumbo v0, "emotion_store_icon_first_show"

    const/4 v1, 0x1

    invoke-static {p1, v0, v1}, Lcpk;->b(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionFooterView;->y:Z

    .line 1256
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionFooterView;->getFaceStoreDrawable()Lecw;

    move-result-object v0

    .line 1257
    iget-boolean v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionFooterView;->y:Z

    if-eqz v1, :cond_3

    .line 1258
    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionFooterView;->p:Landroid/widget/ImageView;

    invoke-static {v0}, Lecx;->a(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1262
    :goto_0
    sget v0, Lcig$f;->emotion_setting:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionFooterView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionFooterView;->t:Landroid/view/View;

    .line 1263
    sget v0, Lcig$f;->emotion_tabs:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionFooterView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/widgets/views/HorizontalListView;

    iput-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionFooterView;->u:Lcom/alibaba/android/dingtalkbase/widgets/views/HorizontalListView;

    .line 1264
    sget v0, Lcig$f;->emotion_del:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionFooterView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionFooterView;->x:Landroid/view/View;

    .line 1281
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionFooterView;->a:Landroid/support/v4/view/ViewPager;

    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionFooterView;->n:Lgl;

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setAdapter(Lgl;)V

    .line 1282
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionFooterView;->a:Landroid/support/v4/view/ViewPager;

    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionFooterView;->G:Landroid/support/v4/view/ViewPager$d;

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$d;)V

    .line 1377
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionFooterView;->p:Landroid/widget/ImageView;

    new-instance v1, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionFooterView$3;

    invoke-direct {v1, p0}, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionFooterView$3;-><init>(Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionFooterView;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1391
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionFooterView;->s:Landroid/widget/RelativeLayout;

    new-instance v1, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionFooterView$4;

    invoke-direct {v1, p0}, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionFooterView$4;-><init>(Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionFooterView;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1400
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionFooterView;->t:Landroid/view/View;

    new-instance v1, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionFooterView$5;

    invoke-direct {v1, p0}, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionFooterView$5;-><init>(Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionFooterView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1408
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionFooterView;->u:Lcom/alibaba/android/dingtalkbase/widgets/views/HorizontalListView;

    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionFooterView;->o:Landroid/widget/BaseAdapter;

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/HorizontalListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 1409
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionFooterView;->u:Lcom/alibaba/android/dingtalkbase/widgets/views/HorizontalListView;

    new-instance v1, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionFooterView$6;

    invoke-direct {v1, p0}, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionFooterView$6;-><init>(Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionFooterView;)V

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/HorizontalListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 1416
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionFooterView;->x:Landroid/view/View;

    new-instance v1, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionFooterView$7;

    invoke-direct {v1, p0}, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionFooterView$7;-><init>(Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionFooterView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1267
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionFooterView;->b()V

    .line 224
    :cond_2
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionFooterView;->G:Landroid/support/v4/view/ViewPager$d;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/support/v4/view/ViewPager$d;->onPageSelected(I)V

    .line 225
    invoke-static {}, Lcrc;->a()Lcrc;

    move-result-object v0

    .line 2075
    iget v0, v0, Lcrc;->a:I

    .line 225
    iput v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionFooterView;->m:I

    .line 226
    return-void

    .line 1260
    :cond_3
    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionFooterView;->p:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionFooterView;Z)Z
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionFooterView;
    .param p1, "x1"    # Z

    .prologue
    .line 47
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionFooterView;->y:Z

    return v0
.end method

.method static synthetic b(Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionFooterView;)Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionGridView$b;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionFooterView;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionFooterView;->A:Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionGridView$b;

    return-object v0
.end method

.method static synthetic c(Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionFooterView;)Lcom/alibaba/android/dingtalkbase/widgets/views/HorizontalListView;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionFooterView;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionFooterView;->u:Lcom/alibaba/android/dingtalkbase/widgets/views/HorizontalListView;

    return-object v0
.end method

.method static synthetic d(Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionFooterView;)I
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionFooterView;

    .prologue
    .line 47
    iget v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionFooterView;->F:I

    return v0
.end method

.method static synthetic e(Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionFooterView;)Landroid/widget/BaseAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionFooterView;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionFooterView;->o:Landroid/widget/BaseAdapter;

    return-object v0
.end method

.method static synthetic f(Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionFooterView;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionFooterView;

    .prologue
    .line 47
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionFooterView;->a()V

    return-void
.end method

.method static synthetic g(Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionFooterView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionFooterView;

    .prologue
    .line 47
    iget-boolean v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionFooterView;->y:Z

    return v0
.end method

.method private getFaceStoreDrawable()Lecw;
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 272
    new-instance v0, Lecw;

    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionFooterView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcig$j;->icon_facestore:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    sget v3, Lcig$c;->ui_common_level1_plus_icon_bg_color:I

    .line 273
    invoke-static {v3}, Leda;->b(I)I

    move-result v3

    invoke-direct {v0, v2, v3}, Lecw;-><init>(Ljava/lang/String;I)V

    .line 274
    .local v0, "dtIconFontDrawable":Lecw;
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionFooterView;->getContext()Landroid/content/Context;

    move-result-object v2

    const/high16 v3, 0x42000000    # 32.0f

    invoke-static {v2, v3}, Lcms;->c(Landroid/content/Context;F)I

    move-result v1

    .line 2079
    .local v1, "size":I
    iput v1, v0, Lecw;->b:I

    .line 3070
    iput v1, v0, Lecw;->a:I

    .line 277
    return-object v0
.end method

.method static synthetic h(Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionFooterView;)Lecw;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionFooterView;

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionFooterView;->getFaceStoreDrawable()Lecw;

    move-result-object v0

    return-object v0
.end method

.method static synthetic i(Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionFooterView;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionFooterView;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionFooterView;->p:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic j(Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionFooterView;)Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionFooterView$e;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionFooterView;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionFooterView;->B:Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionFooterView$e;

    return-object v0
.end method

.method static synthetic k(Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionFooterView;)Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionFooterView$b;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionFooterView;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionFooterView;->D:Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionFooterView$b;

    return-object v0
.end method

.method static synthetic l(Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionFooterView;)Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionFooterView$d;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionFooterView;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionFooterView;->C:Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionFooterView$d;

    return-object v0
.end method

.method static synthetic m(Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionFooterView;)Landroid/support/v4/view/ViewPager;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionFooterView;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionFooterView;->a:Landroid/support/v4/view/ViewPager;

    return-object v0
.end method

.method static synthetic n(Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionFooterView;)Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionFooterView$c;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionFooterView;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionFooterView;->E:Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionFooterView$c;

    return-object v0
.end method

.method static synthetic o(Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionFooterView;)Lcom/alibaba/doraemon/image/ImageMagician;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionFooterView;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionFooterView;->h:Lcom/alibaba/doraemon/image/ImageMagician;

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 539
    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionFooterView;->v:Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionFooterView;->a:Landroid/support/v4/view/ViewPager;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionFooterView;->g:Ljava/util/List;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionFooterView;->g:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 540
    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionFooterView;->a:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v1}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v0

    .line 541
    .local v0, "pager":I
    if-lez v0, :cond_1

    .line 542
    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionFooterView;->v:Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->setMessageEditCursorVisible(Z)V

    .line 547
    .end local v0    # "pager":I
    :cond_0
    :goto_0
    return-void

    .line 544
    .restart local v0    # "pager":I
    :cond_1
    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionFooterView;->v:Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->setMessageEditCursorVisible(Z)V

    goto :goto_0
.end method

.method public final a(Z)V
    .locals 3
    .param p1, "show"    # Z

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 150
    if-eqz p1, :cond_1

    .line 151
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionFooterView;->s:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 152
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionFooterView;->w:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 153
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionFooterView;->j:Landroid/graphics/drawable/AnimationDrawable;

    if-eqz v0, :cond_0

    .line 154
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionFooterView;->j:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    .line 163
    :cond_0
    :goto_0
    return-void

    .line 157
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionFooterView;->s:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 158
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionFooterView;->w:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 159
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionFooterView;->j:Landroid/graphics/drawable/AnimationDrawable;

    if-eqz v0, :cond_0

    .line 160
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionFooterView;->j:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    goto :goto_0
.end method

.method public final b()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v2, 0x0

    .line 553
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionFooterView;->e:Landroid/widget/FrameLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 554
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionFooterView;->c:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 555
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionFooterView;->d:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 556
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionFooterView;->b:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 557
    return-void
.end method

.method public final b(Z)V
    .locals 2
    .param p1, "hasNew"    # Z

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 194
    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionFooterView;->r:Landroid/widget/ImageView;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 196
    return-void

    .line 194
    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public final c(Z)V
    .locals 4
    .param p1, "show"    # Z

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 199
    iget-object v3, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionFooterView;->p:Landroid/widget/ImageView;

    if-eqz p1, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 200
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionFooterView;->q:Landroid/view/View;

    if-eqz p1, :cond_1

    :goto_1
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 201
    return-void

    :cond_0
    move v0, v2

    .line 199
    goto :goto_0

    :cond_1
    move v1, v2

    .line 200
    goto :goto_1
.end method

.method public getExtendContainer()Landroid/view/ViewGroup;
    .locals 1

    .prologue
    .line 585
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionFooterView;->e:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .prologue
    .line 205
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onAttachedToWindow()V

    .line 206
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionFooterView;->z:Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionFooterView$g;

    if-eqz v0, :cond_0

    .line 207
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionFooterView;->z:Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionFooterView$g;

    invoke-interface {v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionFooterView$g;->a()V

    .line 209
    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 213
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onDetachedFromWindow()V

    .line 214
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionFooterView;->z:Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionFooterView$g;

    if-eqz v0, :cond_0

    .line 215
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionFooterView;->z:Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionFooterView$g;

    invoke-interface {v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionFooterView$g;->b()V

    .line 217
    :cond_0
    return-void
.end method

.method public setBottomBarVisible(Z)V
    .locals 2
    .param p1, "visible"    # Z

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 535
    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionFooterView;->b:Landroid/widget/LinearLayout;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 536
    return-void

    .line 535
    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public setCustomEmotionSyncDelegate(Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionFooterView$a;)V
    .locals 0
    .param p1, "customEmotionSyncDelegate"    # Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionFooterView$a;

    .prologue
    .line 123
    iput-object p1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionFooterView;->k:Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionFooterView$a;

    .line 124
    return-void
.end method

.method public setDynamicEmotionClickListener(Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionFooterView$b;)V
    .locals 0
    .param p1, "dynamicEmotionClickListener"    # Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionFooterView$b;

    .prologue
    .line 132
    iput-object p1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionFooterView;->D:Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionFooterView$b;

    .line 133
    return-void
.end method

.method public setEmotionClickListener(Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionGridView$b;)V
    .locals 0
    .param p1, "listener"    # Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionGridView$b;

    .prologue
    .line 527
    iput-object p1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionFooterView;->A:Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionGridView$b;

    .line 528
    return-void
.end method

.method public setEmotionDeleteClickListener(Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionFooterView$c;)V
    .locals 0
    .param p1, "emotionDeleteClickListener"    # Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionFooterView$c;

    .prologue
    .line 136
    iput-object p1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionFooterView;->E:Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionFooterView$c;

    .line 137
    return-void
.end method

.method public setEmotionSettingClickListener(Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionFooterView$d;)V
    .locals 0
    .param p1, "emotionSettingClickListener"    # Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionFooterView$d;

    .prologue
    .line 119
    iput-object p1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionFooterView;->C:Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionFooterView$d;

    .line 120
    return-void
.end method

.method public setEmotionStoreClickListener(Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionFooterView$e;)V
    .locals 0
    .param p1, "emotionStoreClickListener"    # Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionFooterView$e;

    .prologue
    .line 115
    iput-object p1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionFooterView;->B:Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionFooterView$e;

    .line 116
    return-void
.end method

.method public setInputPanelView(Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;)V
    .locals 0
    .param p1, "inputPanelView"    # Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;

    .prologue
    .line 531
    iput-object p1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionFooterView;->v:Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;

    .line 532
    return-void
.end method

.method public setRecentEmotionSyncDelegate(Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionFooterView$f;)V
    .locals 0
    .param p1, "recentEmotionSyncDelegate"    # Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionFooterView$f;

    .prologue
    .line 128
    iput-object p1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionFooterView;->l:Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionFooterView$f;

    .line 129
    return-void
.end method

.method public setVisibilityListener(Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionFooterView$g;)V
    .locals 0
    .param p1, "visibilityListener"    # Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionFooterView$g;

    .prologue
    .line 111
    iput-object p1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionFooterView;->z:Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionFooterView$g;

    .line 112
    return-void
.end method
