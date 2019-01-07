.class public Lcom/alibaba/android/rimet/biz/im/activities/BackgroundAudioActivity;
.super Lcom/alibaba/android/rimet/BaseActivity;
.source "BackgroundAudioActivity.java"


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private b:Landroid/content/BroadcastReceiver;

.field private c:Lcom/alibaba/doraemon/image/ImageEventListener;

.field private d:Landroid/widget/ImageButton;

.field private e:Landroid/widget/ImageView;

.field private f:Landroid/widget/TextView;

.field private g:Landroid/widget/ImageView;

.field private h:Landroid/widget/TextView;

.field private i:Landroid/widget/RelativeLayout;

.field private j:Landroid/support/v7/widget/Toolbar;

.field private k:Landroid/widget/ImageView;

.field private l:Landroid/widget/ListPopupWindow;

.field private m:I

.field private n:Ljava/lang/String;

.field private o:Ljava/lang/String;

.field private p:Ljava/lang/String;

.field private q:Ljava/lang/String;

.field private r:Ljava/lang/String;

.field private s:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 46
    const-class v0, Lcom/alibaba/android/rimet/biz/im/activities/BackgroundAudioActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alibaba/android/rimet/biz/im/activities/BackgroundAudioActivity;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/alibaba/android/rimet/BaseActivity;-><init>()V

    .line 69
    const-string/jumbo v0, "#eff2f4"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/alibaba/android/rimet/biz/im/activities/BackgroundAudioActivity;->s:I

    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/rimet/biz/im/activities/BackgroundAudioActivity;I)I
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/rimet/biz/im/activities/BackgroundAudioActivity;
    .param p1, "x1"    # I

    .prologue
    .line 44
    iput p1, p0, Lcom/alibaba/android/rimet/biz/im/activities/BackgroundAudioActivity;->m:I

    return p1
.end method

.method static synthetic a(Lcom/alibaba/android/rimet/biz/im/activities/BackgroundAudioActivity;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/rimet/biz/im/activities/BackgroundAudioActivity;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/alibaba/android/rimet/biz/im/activities/BackgroundAudioActivity;->e:Landroid/widget/ImageView;

    return-object v0
.end method

.method private a()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 233
    new-instance v0, Lcjz;

    const v1, 0x7f0923e5

    invoke-virtual {p0, v1}, Lcom/alibaba/android/rimet/biz/im/activities/BackgroundAudioActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/alibaba/android/rimet/biz/im/activities/BackgroundAudioActivity;->s:I

    invoke-direct {v0, v1, v2}, Lcjz;-><init>(Ljava/lang/String;I)V

    .line 234
    .local v0, "drawable":Lcjz;
    const/high16 v1, 0x42000000    # 32.0f

    invoke-static {p0, v1}, Lcms;->c(Landroid/content/Context;F)I

    move-result v1

    int-to-float v1, v1

    .line 4045
    iput v1, v0, Lcjz;->b:F

    .line 235
    iget-object v1, p0, Lcom/alibaba/android/rimet/biz/im/activities/BackgroundAudioActivity;->d:Landroid/widget/ImageButton;

    invoke-virtual {v1, v0}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 236
    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/rimet/biz/im/activities/BackgroundAudioActivity;Landroid/view/View;)V
    .locals 2
    .param p0, "x0"    # Lcom/alibaba/android/rimet/biz/im/activities/BackgroundAudioActivity;
    .param p1, "x1"    # Landroid/view/View;

    .prologue
    .line 44
    .line 4260
    if-eqz p1, :cond_0

    .line 4261
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    .line 4262
    invoke-virtual {p1}, Landroid/view/View;->buildDrawingCache()V

    .line 4263
    invoke-virtual {p1}, Landroid/view/View;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 4264
    invoke-static {v0}, Landroid/support/v7/graphics/Palette;->from(Landroid/graphics/Bitmap;)Landroid/support/v7/graphics/Palette$Builder;

    move-result-object v0

    new-instance v1, Lcom/alibaba/android/rimet/biz/im/activities/BackgroundAudioActivity$8;

    invoke-direct {v1, p0}, Lcom/alibaba/android/rimet/biz/im/activities/BackgroundAudioActivity$8;-><init>(Lcom/alibaba/android/rimet/biz/im/activities/BackgroundAudioActivity;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/graphics/Palette$Builder;->generate(Landroid/support/v7/graphics/Palette$PaletteAsyncListener;)Landroid/os/AsyncTask;

    .line 44
    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/rimet/biz/im/activities/BackgroundAudioActivity;Landroid/widget/ImageView;Ljava/lang/String;)V
    .locals 3
    .param p0, "x0"    # Lcom/alibaba/android/rimet/biz/im/activities/BackgroundAudioActivity;
    .param p1, "x1"    # Landroid/widget/ImageView;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 44
    .line 4246
    :try_start_0
    invoke-static {p2}, Lcom/laiwang/protocol/media/MediaIdManager;->transferToHttpUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 4247
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 4248
    const-string/jumbo v0, "IMAGE"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/image/ImageMagician;

    const/4 v2, 0x0

    invoke-interface {v0, p1, v1, v2}, Lcom/alibaba/doraemon/image/ImageMagician;->setImageDrawable(Landroid/widget/ImageView;Ljava/lang/String;Landroid/widget/AbsListView;)V
    :try_end_0
    .catch Lcom/laiwang/protocol/media/MediaIdEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4252
    :cond_0
    :goto_0
    return-void

    .line 4250
    :catch_0
    move-exception v0

    .line 4251
    invoke-virtual {v0}, Lcom/laiwang/protocol/media/MediaIdEncodingException;->printStackTrace()V

    goto :goto_0
.end method

.method static synthetic b(Lcom/alibaba/android/rimet/biz/im/activities/BackgroundAudioActivity;I)I
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/rimet/biz/im/activities/BackgroundAudioActivity;
    .param p1, "x1"    # I

    .prologue
    .line 44
    iput p1, p0, Lcom/alibaba/android/rimet/biz/im/activities/BackgroundAudioActivity;->s:I

    return p1
.end method

.method static synthetic b(Lcom/alibaba/android/rimet/biz/im/activities/BackgroundAudioActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/rimet/biz/im/activities/BackgroundAudioActivity;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/alibaba/android/rimet/biz/im/activities/BackgroundAudioActivity;->o:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic b(Lcom/alibaba/android/rimet/biz/im/activities/BackgroundAudioActivity;Landroid/view/View;)V
    .locals 5
    .param p0, "x0"    # Lcom/alibaba/android/rimet/biz/im/activities/BackgroundAudioActivity;
    .param p1, "x1"    # Landroid/view/View;

    .prologue
    const/4 v4, 0x0

    .line 44
    .line 6282
    iget-object v0, p0, Lcom/alibaba/android/rimet/biz/im/activities/BackgroundAudioActivity;->l:Landroid/widget/ListPopupWindow;

    if-nez v0, :cond_0

    .line 6283
    new-instance v0, Landroid/widget/ListPopupWindow;

    const/4 v1, 0x0

    const v2, 0x7f01013b

    const v3, 0x7f0c0151

    invoke-direct {v0, p0, v1, v2, v3}, Landroid/widget/ListPopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    iput-object v0, p0, Lcom/alibaba/android/rimet/biz/im/activities/BackgroundAudioActivity;->l:Landroid/widget/ListPopupWindow;

    .line 6285
    iget-object v0, p0, Lcom/alibaba/android/rimet/biz/im/activities/BackgroundAudioActivity;->l:Landroid/widget/ListPopupWindow;

    invoke-virtual {p0}, Lcom/alibaba/android/rimet/biz/im/activities/BackgroundAudioActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f02019d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ListPopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 6309
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 6310
    new-instance v1, Lejs$a;

    const v2, 0x7f09030a

    invoke-virtual {p0, v2}, Lcom/alibaba/android/rimet/biz/im/activities/BackgroundAudioActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f092464

    invoke-static {v3}, Leda;->a(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v4, v2, v4, v3}, Lejs$a;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 6287
    new-instance v1, Lejs;

    invoke-direct {v1, p0, v0}, Lejs;-><init>(Landroid/content/Context;Ljava/util/List;)V

    .line 6288
    iget-object v0, p0, Lcom/alibaba/android/rimet/biz/im/activities/BackgroundAudioActivity;->l:Landroid/widget/ListPopupWindow;

    invoke-virtual {v0, v1}, Landroid/widget/ListPopupWindow;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 6290
    invoke-virtual {p0}, Lcom/alibaba/android/rimet/biz/im/activities/BackgroundAudioActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0272

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 6291
    iget-object v1, p0, Lcom/alibaba/android/rimet/biz/im/activities/BackgroundAudioActivity;->l:Landroid/widget/ListPopupWindow;

    invoke-virtual {v1, v0}, Landroid/widget/ListPopupWindow;->setWidth(I)V

    .line 6292
    iget-object v0, p0, Lcom/alibaba/android/rimet/biz/im/activities/BackgroundAudioActivity;->l:Landroid/widget/ListPopupWindow;

    const/4 v1, -0x2

    invoke-virtual {v0, v1}, Landroid/widget/ListPopupWindow;->setHeight(I)V

    .line 6293
    iget-object v0, p0, Lcom/alibaba/android/rimet/biz/im/activities/BackgroundAudioActivity;->l:Landroid/widget/ListPopupWindow;

    const/high16 v1, 0x40800000    # 4.0f

    invoke-static {p0, v1}, Lcms;->c(Landroid/content/Context;F)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ListPopupWindow;->setVerticalOffset(I)V

    .line 6294
    iget-object v0, p0, Lcom/alibaba/android/rimet/biz/im/activities/BackgroundAudioActivity;->l:Landroid/widget/ListPopupWindow;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ListPopupWindow;->setModal(Z)V

    .line 6295
    iget-object v0, p0, Lcom/alibaba/android/rimet/biz/im/activities/BackgroundAudioActivity;->l:Landroid/widget/ListPopupWindow;

    .line 6296
    iget-object v1, p0, Lcom/alibaba/android/rimet/biz/im/activities/BackgroundAudioActivity;->l:Landroid/widget/ListPopupWindow;

    new-instance v2, Lcom/alibaba/android/rimet/biz/im/activities/BackgroundAudioActivity$9;

    invoke-direct {v2, p0, v0}, Lcom/alibaba/android/rimet/biz/im/activities/BackgroundAudioActivity$9;-><init>(Lcom/alibaba/android/rimet/biz/im/activities/BackgroundAudioActivity;Landroid/widget/ListPopupWindow;)V

    invoke-virtual {v1, v2}, Landroid/widget/ListPopupWindow;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 6303
    iget-object v0, p0, Lcom/alibaba/android/rimet/biz/im/activities/BackgroundAudioActivity;->l:Landroid/widget/ListPopupWindow;

    invoke-virtual {v0, p1}, Landroid/widget/ListPopupWindow;->setAnchorView(Landroid/view/View;)V

    .line 6305
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/rimet/biz/im/activities/BackgroundAudioActivity;->l:Landroid/widget/ListPopupWindow;

    invoke-virtual {v0}, Landroid/widget/ListPopupWindow;->show()V

    .line 44
    return-void
.end method

.method static synthetic c(Lcom/alibaba/android/rimet/biz/im/activities/BackgroundAudioActivity;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/rimet/biz/im/activities/BackgroundAudioActivity;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/alibaba/android/rimet/biz/im/activities/BackgroundAudioActivity;->g:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic d(Lcom/alibaba/android/rimet/biz/im/activities/BackgroundAudioActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/rimet/biz/im/activities/BackgroundAudioActivity;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/alibaba/android/rimet/biz/im/activities/BackgroundAudioActivity;->q:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic e(Lcom/alibaba/android/rimet/biz/im/activities/BackgroundAudioActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/rimet/biz/im/activities/BackgroundAudioActivity;

    .prologue
    .line 44
    iget v0, p0, Lcom/alibaba/android/rimet/biz/im/activities/BackgroundAudioActivity;->m:I

    return v0
.end method

.method static synthetic f(Lcom/alibaba/android/rimet/biz/im/activities/BackgroundAudioActivity;)V
    .locals 3
    .param p0, "x0"    # Lcom/alibaba/android/rimet/biz/im/activities/BackgroundAudioActivity;

    .prologue
    .line 44
    .line 5239
    new-instance v0, Lcjz;

    const v1, 0x7f0923e4

    invoke-virtual {p0, v1}, Lcom/alibaba/android/rimet/biz/im/activities/BackgroundAudioActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/alibaba/android/rimet/biz/im/activities/BackgroundAudioActivity;->s:I

    invoke-direct {v0, v1, v2}, Lcjz;-><init>(Ljava/lang/String;I)V

    .line 5240
    const/high16 v1, 0x42000000    # 32.0f

    invoke-static {p0, v1}, Lcms;->c(Landroid/content/Context;F)I

    move-result v1

    int-to-float v1, v1

    .line 6045
    iput v1, v0, Lcjz;->b:F

    .line 5241
    iget-object v1, p0, Lcom/alibaba/android/rimet/biz/im/activities/BackgroundAudioActivity;->d:Landroid/widget/ImageButton;

    invoke-virtual {v1, v0}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 44
    return-void
.end method

.method static synthetic g(Lcom/alibaba/android/rimet/biz/im/activities/BackgroundAudioActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/rimet/biz/im/activities/BackgroundAudioActivity;

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/alibaba/android/rimet/biz/im/activities/BackgroundAudioActivity;->a()V

    return-void
.end method

.method static synthetic h(Lcom/alibaba/android/rimet/biz/im/activities/BackgroundAudioActivity;)Landroid/widget/RelativeLayout;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/rimet/biz/im/activities/BackgroundAudioActivity;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/alibaba/android/rimet/biz/im/activities/BackgroundAudioActivity;->i:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic i(Lcom/alibaba/android/rimet/biz/im/activities/BackgroundAudioActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/rimet/biz/im/activities/BackgroundAudioActivity;

    .prologue
    .line 44
    iget v0, p0, Lcom/alibaba/android/rimet/biz/im/activities/BackgroundAudioActivity;->s:I

    return v0
.end method

.method static synthetic j(Lcom/alibaba/android/rimet/biz/im/activities/BackgroundAudioActivity;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/rimet/biz/im/activities/BackgroundAudioActivity;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/alibaba/android/rimet/biz/im/activities/BackgroundAudioActivity;->f:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic k(Lcom/alibaba/android/rimet/biz/im/activities/BackgroundAudioActivity;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/rimet/biz/im/activities/BackgroundAudioActivity;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/alibaba/android/rimet/biz/im/activities/BackgroundAudioActivity;->h:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic l(Lcom/alibaba/android/rimet/biz/im/activities/BackgroundAudioActivity;)V
    .locals 3
    .param p0, "x0"    # Lcom/alibaba/android/rimet/biz/im/activities/BackgroundAudioActivity;

    .prologue
    .line 44
    .line 6315
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 6316
    const-string/jumbo v1, "url"

    iget-object v2, p0, Lcom/alibaba/android/rimet/biz/im/activities/BackgroundAudioActivity;->r:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 6317
    invoke-static {}, Lcom/alibaba/dingtalk/runtimebase/LightAppRuntimeReverseInterface;->getInterfaceImpl()Lcom/alibaba/dingtalk/runtimebase/LightAppRuntimeReverseInterface;

    move-result-object v1

    invoke-virtual {v1, p0, v0}, Lcom/alibaba/dingtalk/runtimebase/LightAppRuntimeReverseInterface;->navToCommonWebView(Landroid/content/Context;Landroid/os/Bundle;)V

    .line 6318
    invoke-virtual {p0}, Lcom/alibaba/android/rimet/biz/im/activities/BackgroundAudioActivity;->finish()V

    .line 44
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v5, -0x1

    const/high16 v4, 0x41c00000    # 24.0f

    .line 73
    invoke-super {p0, p1}, Lcom/alibaba/android/rimet/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 74
    const v2, 0x7f040056

    invoke-virtual {p0, v2}, Lcom/alibaba/android/rimet/biz/im/activities/BackgroundAudioActivity;->setContentView(I)V

    .line 75
    const v2, 0x7f1102f3

    invoke-virtual {p0, v2}, Lcom/alibaba/android/rimet/biz/im/activities/BackgroundAudioActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    iput-object v2, p0, Lcom/alibaba/android/rimet/biz/im/activities/BackgroundAudioActivity;->d:Landroid/widget/ImageButton;

    .line 76
    const v2, 0x7f1102ed

    invoke-virtual {p0, v2}, Lcom/alibaba/android/rimet/biz/im/activities/BackgroundAudioActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/alibaba/android/rimet/biz/im/activities/BackgroundAudioActivity;->e:Landroid/widget/ImageView;

    .line 77
    const v2, 0x7f1102f2

    invoke-virtual {p0, v2}, Lcom/alibaba/android/rimet/biz/im/activities/BackgroundAudioActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/alibaba/android/rimet/biz/im/activities/BackgroundAudioActivity;->f:Landroid/widget/TextView;

    .line 78
    const v2, 0x7f1102f0

    invoke-virtual {p0, v2}, Lcom/alibaba/android/rimet/biz/im/activities/BackgroundAudioActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/alibaba/android/rimet/biz/im/activities/BackgroundAudioActivity;->g:Landroid/widget/ImageView;

    .line 79
    const v2, 0x7f1102f1

    invoke-virtual {p0, v2}, Lcom/alibaba/android/rimet/biz/im/activities/BackgroundAudioActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/alibaba/android/rimet/biz/im/activities/BackgroundAudioActivity;->h:Landroid/widget/TextView;

    .line 80
    const v2, 0x7f1102ee

    invoke-virtual {p0, v2}, Lcom/alibaba/android/rimet/biz/im/activities/BackgroundAudioActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    iput-object v2, p0, Lcom/alibaba/android/rimet/biz/im/activities/BackgroundAudioActivity;->i:Landroid/widget/RelativeLayout;

    .line 81
    const/4 v2, 0x1

    iput v2, p0, Lcom/alibaba/android/rimet/biz/im/activities/BackgroundAudioActivity;->m:I

    .line 1167
    const v2, 0x7f1102f4

    invoke-virtual {p0, v2}, Lcom/alibaba/android/rimet/biz/im/activities/BackgroundAudioActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/support/v7/widget/Toolbar;

    iput-object v2, p0, Lcom/alibaba/android/rimet/biz/im/activities/BackgroundAudioActivity;->j:Landroid/support/v7/widget/Toolbar;

    .line 1168
    const v2, 0x7f1102f5

    invoke-virtual {p0, v2}, Lcom/alibaba/android/rimet/biz/im/activities/BackgroundAudioActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/alibaba/android/rimet/biz/im/activities/BackgroundAudioActivity;->k:Landroid/widget/ImageView;

    .line 1170
    new-instance v2, Lcjz;

    const v3, 0x7f092358

    invoke-virtual {p0, v3}, Lcom/alibaba/android/rimet/biz/im/activities/BackgroundAudioActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v5}, Lcjz;-><init>(Ljava/lang/String;I)V

    .line 1171
    invoke-static {p0, v4}, Lcms;->c(Landroid/content/Context;F)I

    move-result v3

    int-to-float v3, v3

    .line 2045
    iput v3, v2, Lcjz;->b:F

    .line 1172
    iget-object v3, p0, Lcom/alibaba/android/rimet/biz/im/activities/BackgroundAudioActivity;->j:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v3, v2}, Landroid/support/v7/widget/Toolbar;->setNavigationIcon(Landroid/graphics/drawable/Drawable;)V

    .line 1174
    new-instance v2, Lcjz;

    const v3, 0x7f0924a4

    invoke-virtual {p0, v3}, Lcom/alibaba/android/rimet/biz/im/activities/BackgroundAudioActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v5}, Lcjz;-><init>(Ljava/lang/String;I)V

    .line 1175
    invoke-static {p0, v4}, Lcms;->c(Landroid/content/Context;F)I

    move-result v3

    int-to-float v3, v3

    .line 3045
    iput v3, v2, Lcjz;->b:F

    .line 1176
    iget-object v3, p0, Lcom/alibaba/android/rimet/biz/im/activities/BackgroundAudioActivity;->k:Landroid/widget/ImageView;

    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1177
    iget-object v2, p0, Lcom/alibaba/android/rimet/biz/im/activities/BackgroundAudioActivity;->k:Landroid/widget/ImageView;

    new-instance v3, Lcom/alibaba/android/rimet/biz/im/activities/BackgroundAudioActivity$5;

    invoke-direct {v3, p0}, Lcom/alibaba/android/rimet/biz/im/activities/BackgroundAudioActivity$5;-><init>(Lcom/alibaba/android/rimet/biz/im/activities/BackgroundAudioActivity;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1183
    iget-object v2, p0, Lcom/alibaba/android/rimet/biz/im/activities/BackgroundAudioActivity;->j:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {p0, v2}, Lcom/alibaba/android/rimet/biz/im/activities/BackgroundAudioActivity;->setSupportActionBar(Landroid/support/v7/widget/Toolbar;)V

    .line 84
    invoke-direct {p0}, Lcom/alibaba/android/rimet/biz/im/activities/BackgroundAudioActivity;->a()V

    .line 86
    invoke-virtual {p0}, Lcom/alibaba/android/rimet/biz/im/activities/BackgroundAudioActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 87
    .local v1, "intent":Landroid/content/Intent;
    if-eqz v1, :cond_0

    .line 88
    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 89
    .local v0, "bundle":Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 90
    const-string/jumbo v2, "title"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/alibaba/android/rimet/biz/im/activities/BackgroundAudioActivity;->n:Ljava/lang/String;

    .line 91
    const-string/jumbo v2, "coverUrl"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/alibaba/android/rimet/biz/im/activities/BackgroundAudioActivity;->o:Ljava/lang/String;

    .line 92
    const-string/jumbo v2, "appName"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/alibaba/android/rimet/biz/im/activities/BackgroundAudioActivity;->p:Ljava/lang/String;

    .line 93
    const-string/jumbo v2, "appIconUrl"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/alibaba/android/rimet/biz/im/activities/BackgroundAudioActivity;->q:Ljava/lang/String;

    .line 94
    const-string/jumbo v2, "originUrl"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/alibaba/android/rimet/biz/im/activities/BackgroundAudioActivity;->r:Ljava/lang/String;

    .line 97
    .end local v0    # "bundle":Landroid/os/Bundle;
    :cond_0
    iget-object v2, p0, Lcom/alibaba/android/rimet/biz/im/activities/BackgroundAudioActivity;->f:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/alibaba/android/rimet/biz/im/activities/BackgroundAudioActivity;->n:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 98
    iget-object v2, p0, Lcom/alibaba/android/rimet/biz/im/activities/BackgroundAudioActivity;->h:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/alibaba/android/rimet/biz/im/activities/BackgroundAudioActivity;->p:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 101
    iget-object v2, p0, Lcom/alibaba/android/rimet/biz/im/activities/BackgroundAudioActivity;->e:Landroid/widget/ImageView;

    new-instance v3, Lcom/alibaba/android/rimet/biz/im/activities/BackgroundAudioActivity$1;

    invoke-direct {v3, p0}, Lcom/alibaba/android/rimet/biz/im/activities/BackgroundAudioActivity$1;-><init>(Lcom/alibaba/android/rimet/biz/im/activities/BackgroundAudioActivity;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->post(Ljava/lang/Runnable;)Z

    .line 111
    iget-object v2, p0, Lcom/alibaba/android/rimet/biz/im/activities/BackgroundAudioActivity;->e:Landroid/widget/ImageView;

    new-instance v3, Lcom/alibaba/android/rimet/biz/im/activities/BackgroundAudioActivity$2;

    invoke-direct {v3, p0}, Lcom/alibaba/android/rimet/biz/im/activities/BackgroundAudioActivity$2;-><init>(Lcom/alibaba/android/rimet/biz/im/activities/BackgroundAudioActivity;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->post(Ljava/lang/Runnable;)Z

    .line 119
    iget-object v2, p0, Lcom/alibaba/android/rimet/biz/im/activities/BackgroundAudioActivity;->g:Landroid/widget/ImageView;

    new-instance v3, Lcom/alibaba/android/rimet/biz/im/activities/BackgroundAudioActivity$3;

    invoke-direct {v3, p0}, Lcom/alibaba/android/rimet/biz/im/activities/BackgroundAudioActivity$3;-><init>(Lcom/alibaba/android/rimet/biz/im/activities/BackgroundAudioActivity;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->post(Ljava/lang/Runnable;)Z

    .line 126
    iget-object v2, p0, Lcom/alibaba/android/rimet/biz/im/activities/BackgroundAudioActivity;->d:Landroid/widget/ImageButton;

    new-instance v3, Lcom/alibaba/android/rimet/biz/im/activities/BackgroundAudioActivity$4;

    invoke-direct {v3, p0}, Lcom/alibaba/android/rimet/biz/im/activities/BackgroundAudioActivity$4;-><init>(Lcom/alibaba/android/rimet/biz/im/activities/BackgroundAudioActivity;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3187
    iget-object v2, p0, Lcom/alibaba/android/rimet/biz/im/activities/BackgroundAudioActivity;->b:Landroid/content/BroadcastReceiver;

    if-nez v2, :cond_1

    .line 3188
    new-instance v2, Lcom/alibaba/android/rimet/biz/im/activities/BackgroundAudioActivity$6;

    invoke-direct {v2, p0}, Lcom/alibaba/android/rimet/biz/im/activities/BackgroundAudioActivity$6;-><init>(Lcom/alibaba/android/rimet/biz/im/activities/BackgroundAudioActivity;)V

    iput-object v2, p0, Lcom/alibaba/android/rimet/biz/im/activities/BackgroundAudioActivity;->b:Landroid/content/BroadcastReceiver;

    .line 3200
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    .line 3201
    const-string/jumbo v3, "action_background_audio_stop"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 3202
    invoke-static {p0}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v3

    iget-object v4, p0, Lcom/alibaba/android/rimet/biz/im/activities/BackgroundAudioActivity;->b:Landroid/content/BroadcastReceiver;

    invoke-virtual {v3, v4, v2}, Ldq;->a(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 3207
    :cond_1
    iget-object v2, p0, Lcom/alibaba/android/rimet/biz/im/activities/BackgroundAudioActivity;->c:Lcom/alibaba/doraemon/image/ImageEventListener;

    if-nez v2, :cond_2

    .line 3208
    new-instance v2, Lcom/alibaba/android/rimet/biz/im/activities/BackgroundAudioActivity$7;

    invoke-direct {v2, p0}, Lcom/alibaba/android/rimet/biz/im/activities/BackgroundAudioActivity$7;-><init>(Lcom/alibaba/android/rimet/biz/im/activities/BackgroundAudioActivity;)V

    iput-object v2, p0, Lcom/alibaba/android/rimet/biz/im/activities/BackgroundAudioActivity;->c:Lcom/alibaba/doraemon/image/ImageEventListener;

    .line 3228
    const-string/jumbo v2, "IMAGE"

    invoke-static {v2}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/doraemon/image/ImageMagician;

    iget-object v3, p0, Lcom/alibaba/android/rimet/biz/im/activities/BackgroundAudioActivity;->c:Lcom/alibaba/doraemon/image/ImageEventListener;

    invoke-interface {v2, v3}, Lcom/alibaba/doraemon/image/ImageMagician;->registerEventListener(Lcom/alibaba/doraemon/image/ImageEventListener;)V

    .line 151
    :cond_2
    return-void
.end method

.method protected onDestroy()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v2, 0x0

    .line 155
    iget-object v0, p0, Lcom/alibaba/android/rimet/biz/im/activities/BackgroundAudioActivity;->b:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 156
    invoke-static {p0}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/rimet/biz/im/activities/BackgroundAudioActivity;->b:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Ldq;->a(Landroid/content/BroadcastReceiver;)V

    .line 157
    iput-object v2, p0, Lcom/alibaba/android/rimet/biz/im/activities/BackgroundAudioActivity;->b:Landroid/content/BroadcastReceiver;

    .line 159
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/rimet/biz/im/activities/BackgroundAudioActivity;->c:Lcom/alibaba/doraemon/image/ImageEventListener;

    if-eqz v0, :cond_1

    .line 160
    const-string/jumbo v0, "IMAGE"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/image/ImageMagician;

    iget-object v1, p0, Lcom/alibaba/android/rimet/biz/im/activities/BackgroundAudioActivity;->c:Lcom/alibaba/doraemon/image/ImageEventListener;

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/image/ImageMagician;->unregisterEventListener(Lcom/alibaba/doraemon/image/ImageEventListener;)V

    .line 161
    iput-object v2, p0, Lcom/alibaba/android/rimet/biz/im/activities/BackgroundAudioActivity;->c:Lcom/alibaba/doraemon/image/ImageEventListener;

    .line 163
    :cond_1
    invoke-super {p0}, Lcom/alibaba/android/rimet/BaseActivity;->onDestroy()V

    .line 164
    return-void
.end method
