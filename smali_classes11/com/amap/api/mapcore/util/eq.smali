.class public Lcom/amap/api/mapcore/util/eq;
.super Landroid/widget/ScrollView;
.source "IndoorFloorSwitchView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amap/api/mapcore/util/eq$a;
    }
.end annotation


# static fields
.field public static final a:Ljava/lang/String;


# instance fields
.field b:I

.field private c:Landroid/content/Context;

.field private d:Landroid/widget/LinearLayout;

.field private e:I

.field private f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private g:I

.field private h:I

.field private i:Landroid/graphics/Bitmap;

.field private j:I

.field private k:I

.field private l:I

.field private m:I

.field private n:I

.field private o:I

.field private p:Ljava/lang/Runnable;

.field private q:I

.field private r:Lcom/amap/api/mapcore/util/eq$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    const-class v0, Lcom/amap/api/mapcore/util/eq;

    .line 33
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amap/api/mapcore/util/eq;->a:Ljava/lang/String;

    .line 32
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 64
    invoke-direct {p0, p1}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    .line 39
    const/4 v0, 0x0

    iput v0, p0, Lcom/amap/api/mapcore/util/eq;->e:I

    .line 42
    const/4 v0, -0x1

    iput v0, p0, Lcom/amap/api/mapcore/util/eq;->g:I

    .line 48
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/api/mapcore/util/eq;->i:Landroid/graphics/Bitmap;

    .line 50
    const-string/jumbo v0, "#eeffffff"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/amap/api/mapcore/util/eq;->j:I

    .line 51
    const-string/jumbo v0, "#44383838"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/amap/api/mapcore/util/eq;->k:I

    .line 52
    const/4 v0, 0x4

    iput v0, p0, Lcom/amap/api/mapcore/util/eq;->l:I

    .line 54
    iput v1, p0, Lcom/amap/api/mapcore/util/eq;->m:I

    .line 56
    iput v1, p0, Lcom/amap/api/mapcore/util/eq;->b:I

    .line 61
    const/16 v0, 0x32

    iput v0, p0, Lcom/amap/api/mapcore/util/eq;->q:I

    .line 65
    invoke-direct {p0, p1}, Lcom/amap/api/mapcore/util/eq;->a(Landroid/content/Context;)V

    .line 66
    return-void
.end method

.method public static a(Landroid/content/Context;F)I
    .locals 2

    .prologue
    .line 492
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    .line 493
    mul-float/2addr v0, p1

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method public static a(Landroid/view/View;)I
    .locals 1

    .prologue
    .line 508
    invoke-static {p0}, Lcom/amap/api/mapcore/util/eq;->b(Landroid/view/View;)V

    .line 509
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    return v0
.end method

.method static synthetic a(Lcom/amap/api/mapcore/util/eq;)I
    .locals 1

    .prologue
    .line 31
    iget v0, p0, Lcom/amap/api/mapcore/util/eq;->o:I

    return v0
.end method

.method static synthetic a(Lcom/amap/api/mapcore/util/eq;I)I
    .locals 0

    .prologue
    .line 31
    iput p1, p0, Lcom/amap/api/mapcore/util/eq;->o:I

    return p1
.end method

.method private a(I)V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 207
    iget v0, p0, Lcom/amap/api/mapcore/util/eq;->e:I

    div-int v0, p1, v0

    iget v1, p0, Lcom/amap/api/mapcore/util/eq;->m:I

    add-int/2addr v0, v1

    .line 208
    iget v1, p0, Lcom/amap/api/mapcore/util/eq;->e:I

    rem-int v1, p1, v1

    .line 209
    iget v2, p0, Lcom/amap/api/mapcore/util/eq;->e:I

    div-int v2, p1, v2

    .line 211
    if-nez v1, :cond_1

    .line 212
    iget v0, p0, Lcom/amap/api/mapcore/util/eq;->m:I

    add-int/2addr v0, v2

    move v1, v0

    .line 220
    :goto_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/eq;->d:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v3

    .line 221
    const/4 v0, 0x0

    move v2, v0

    :goto_1
    if-ge v2, v3, :cond_0

    .line 222
    iget-object v0, p0, Lcom/amap/api/mapcore/util/eq;->d:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 223
    if-nez v0, :cond_2

    .line 232
    :cond_0
    return-void

    .line 214
    :cond_1
    iget v3, p0, Lcom/amap/api/mapcore/util/eq;->e:I

    div-int/lit8 v3, v3, 0x2

    if-le v1, v3, :cond_4

    .line 215
    iget v0, p0, Lcom/amap/api/mapcore/util/eq;->m:I

    add-int/2addr v0, v2

    add-int/lit8 v0, v0, 0x1

    move v1, v0

    goto :goto_0

    .line 226
    :cond_2
    if-ne v1, v2, :cond_3

    .line 227
    const-string/jumbo v4, "#0288ce"

    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 221
    :goto_2
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    .line 229
    :cond_3
    const-string/jumbo v4, "#bbbbbb"

    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_2

    :cond_4
    move v1, v0

    goto :goto_0
.end method

.method private a(Landroid/content/Context;)V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 94
    iput-object p1, p0, Lcom/amap/api/mapcore/util/eq;->c:Landroid/content/Context;

    .line 96
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/amap/api/mapcore/util/eq;->setVerticalScrollBarEnabled(Z)V

    .line 99
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/eq;->i:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    .line 100
    invoke-static {p1}, Lcom/amap/api/mapcore/util/el;->a(Landroid/content/Context;)Landroid/content/res/AssetManager;

    move-result-object v0

    const-string/jumbo v1, "map_indoor_select.png"

    .line 101
    invoke-virtual {v0, v1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    .line 102
    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/amap/api/mapcore/util/eq;->i:Landroid/graphics/Bitmap;

    .line 104
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 109
    :cond_0
    :goto_0
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/amap/api/mapcore/util/eq;->d:Landroid/widget/LinearLayout;

    .line 110
    iget-object v0, p0, Lcom/amap/api/mapcore/util/eq;->d:Landroid/widget/LinearLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 111
    iget-object v0, p0, Lcom/amap/api/mapcore/util/eq;->d:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v0}, Lcom/amap/api/mapcore/util/eq;->addView(Landroid/view/View;)V

    .line 112
    new-instance v0, Lcom/amap/api/mapcore/util/eq$1;

    invoke-direct {v0, p0}, Lcom/amap/api/mapcore/util/eq$1;-><init>(Lcom/amap/api/mapcore/util/eq;)V

    iput-object v0, p0, Lcom/amap/api/mapcore/util/eq;->p:Ljava/lang/Runnable;

    .line 158
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method static synthetic b(Lcom/amap/api/mapcore/util/eq;)I
    .locals 1

    .prologue
    .line 31
    iget v0, p0, Lcom/amap/api/mapcore/util/eq;->e:I

    return v0
.end method

.method private b(Ljava/lang/String;)Landroid/widget/TextView;
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v3, 0x1

    const/4 v5, -0x2

    .line 182
    new-instance v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/amap/api/mapcore/util/eq;->c:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 183
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 186
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 187
    const/4 v1, 0x2

    const/high16 v2, 0x41800000    # 16.0f

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 188
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 189
    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 190
    invoke-virtual {v0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v1

    .line 191
    invoke-virtual {v1, v3}, Landroid/text/TextPaint;->setFakeBoldText(Z)V

    .line 192
    iget-object v1, p0, Lcom/amap/api/mapcore/util/eq;->c:Landroid/content/Context;

    const/high16 v2, 0x41000000    # 8.0f

    invoke-static {v1, v2}, Lcom/amap/api/mapcore/util/eq;->a(Landroid/content/Context;F)I

    move-result v1

    .line 193
    iget-object v2, p0, Lcom/amap/api/mapcore/util/eq;->c:Landroid/content/Context;

    const/high16 v3, 0x40c00000    # 6.0f

    invoke-static {v2, v3}, Lcom/amap/api/mapcore/util/eq;->a(Landroid/content/Context;F)I

    move-result v2

    .line 194
    invoke-virtual {v0, v1, v2, v1, v2}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 195
    iget v1, p0, Lcom/amap/api/mapcore/util/eq;->e:I

    if-nez v1, :cond_0

    .line 196
    invoke-static {v0}, Lcom/amap/api/mapcore/util/eq;->a(Landroid/view/View;)I

    move-result v1

    iput v1, p0, Lcom/amap/api/mapcore/util/eq;->e:I

    .line 197
    iget-object v1, p0, Lcom/amap/api/mapcore/util/eq;->d:Landroid/widget/LinearLayout;

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    iget v3, p0, Lcom/amap/api/mapcore/util/eq;->e:I

    iget v4, p0, Lcom/amap/api/mapcore/util/eq;->n:I

    mul-int/2addr v3, v4

    invoke-direct {v2, v5, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 200
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    iget v2, p0, Lcom/amap/api/mapcore/util/eq;->e:I

    iget v3, p0, Lcom/amap/api/mapcore/util/eq;->n:I

    mul-int/2addr v2, v3

    invoke-direct {v1, v5, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v1}, Lcom/amap/api/mapcore/util/eq;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 203
    :cond_0
    return-object v0
.end method

.method public static b(Landroid/view/View;)V
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 530
    invoke-static {v0, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 532
    const v1, 0x1fffffff

    const/high16 v2, -0x80000000

    invoke-static {v1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 534
    invoke-virtual {p0, v0, v1}, Landroid/view/View;->measure(II)V

    .line 535
    return-void
.end method

.method static synthetic c(Lcom/amap/api/mapcore/util/eq;)I
    .locals 1

    .prologue
    .line 31
    iget v0, p0, Lcom/amap/api/mapcore/util/eq;->m:I

    return v0
.end method

.method private d()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 167
    iget-object v0, p0, Lcom/amap/api/mapcore/util/eq;->f:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore/util/eq;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 179
    :cond_0
    :goto_0
    return-void

    .line 171
    :cond_1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/eq;->d:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 172
    iget v0, p0, Lcom/amap/api/mapcore/util/eq;->m:I

    mul-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/amap/api/mapcore/util/eq;->n:I

    .line 174
    iget-object v0, p0, Lcom/amap/api/mapcore/util/eq;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_1
    if-ltz v1, :cond_2

    .line 175
    iget-object v2, p0, Lcom/amap/api/mapcore/util/eq;->d:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/amap/api/mapcore/util/eq;->f:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/amap/api/mapcore/util/eq;->b(Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 174
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_1

    .line 178
    :cond_2
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/amap/api/mapcore/util/eq;->a(I)V

    goto :goto_0
.end method

.method static synthetic d(Lcom/amap/api/mapcore/util/eq;)V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/amap/api/mapcore/util/eq;->f()V

    return-void
.end method

.method static synthetic e(Lcom/amap/api/mapcore/util/eq;)Ljava/lang/Runnable;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/amap/api/mapcore/util/eq;->p:Ljava/lang/Runnable;

    return-object v0
.end method

.method private e()[I
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 393
    .line 395
    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 396
    const/4 v1, 0x0

    iget v2, p0, Lcom/amap/api/mapcore/util/eq;->e:I

    iget v3, p0, Lcom/amap/api/mapcore/util/eq;->m:I

    mul-int/2addr v2, v3

    aput v2, v0, v1

    .line 397
    const/4 v1, 0x1

    iget v2, p0, Lcom/amap/api/mapcore/util/eq;->e:I

    iget v3, p0, Lcom/amap/api/mapcore/util/eq;->m:I

    add-int/lit8 v3, v3, 0x1

    mul-int/2addr v2, v3

    aput v2, v0, v1

    .line 399
    return-object v0
.end method

.method static synthetic f(Lcom/amap/api/mapcore/util/eq;)I
    .locals 1

    .prologue
    .line 31
    iget v0, p0, Lcom/amap/api/mapcore/util/eq;->q:I

    return v0
.end method

.method private f()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 424
    iget-object v0, p0, Lcom/amap/api/mapcore/util/eq;->r:Lcom/amap/api/mapcore/util/eq$a;

    if-eqz v0, :cond_0

    .line 426
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/eq;->r:Lcom/amap/api/mapcore/util/eq$a;

    invoke-virtual {p0}, Lcom/amap/api/mapcore/util/eq;->b()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/amap/api/mapcore/util/eq$a;->a(I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 431
    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method static synthetic g(Lcom/amap/api/mapcore/util/eq;)I
    .locals 1

    .prologue
    .line 31
    iget v0, p0, Lcom/amap/api/mapcore/util/eq;->j:I

    return v0
.end method

.method static synthetic h(Lcom/amap/api/mapcore/util/eq;)Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/amap/api/mapcore/util/eq;->i:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic i(Lcom/amap/api/mapcore/util/eq;)[I
    .locals 1

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/amap/api/mapcore/util/eq;->e()[I

    move-result-object v0

    return-object v0
.end method

.method static synthetic j(Lcom/amap/api/mapcore/util/eq;)I
    .locals 1

    .prologue
    .line 31
    iget v0, p0, Lcom/amap/api/mapcore/util/eq;->h:I

    return v0
.end method

.method static synthetic k(Lcom/amap/api/mapcore/util/eq;)I
    .locals 1

    .prologue
    .line 31
    iget v0, p0, Lcom/amap/api/mapcore/util/eq;->k:I

    return v0
.end method

.method static synthetic l(Lcom/amap/api/mapcore/util/eq;)I
    .locals 1

    .prologue
    .line 31
    iget v0, p0, Lcom/amap/api/mapcore/util/eq;->l:I

    return v0
.end method


# virtual methods
.method public a()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 162
    invoke-virtual {p0}, Lcom/amap/api/mapcore/util/eq;->getScrollY()I

    move-result v0

    iput v0, p0, Lcom/amap/api/mapcore/util/eq;->o:I

    .line 163
    iget-object v0, p0, Lcom/amap/api/mapcore/util/eq;->p:Ljava/lang/Runnable;

    iget v1, p0, Lcom/amap/api/mapcore/util/eq;->q:I

    int-to-long v2, v1

    invoke-virtual {p0, v0, v2, v3}, Lcom/amap/api/mapcore/util/eq;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 164
    return-void
.end method

.method public a(Lcom/amap/api/mapcore/util/eq$a;)V
    .locals 0

    .prologue
    .line 483
    iput-object p1, p0, Lcom/amap/api/mapcore/util/eq;->r:Lcom/amap/api/mapcore/util/eq$a;

    .line 484
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 434
    iget-object v0, p0, Lcom/amap/api/mapcore/util/eq;->f:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore/util/eq;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 447
    :cond_0
    :goto_0
    return-void

    .line 437
    :cond_1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/eq;->f:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 438
    iget-object v1, p0, Lcom/amap/api/mapcore/util/eq;->f:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    iget v2, p0, Lcom/amap/api/mapcore/util/eq;->m:I

    sub-int/2addr v1, v2

    add-int/lit8 v1, v1, -0x1

    sub-int v0, v1, v0

    .line 439
    iget v1, p0, Lcom/amap/api/mapcore/util/eq;->m:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/amap/api/mapcore/util/eq;->b:I

    .line 440
    new-instance v1, Lcom/amap/api/mapcore/util/eq$3;

    invoke-direct {v1, p0, v0}, Lcom/amap/api/mapcore/util/eq$3;-><init>(Lcom/amap/api/mapcore/util/eq;I)V

    invoke-virtual {p0, v1}, Lcom/amap/api/mapcore/util/eq;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public a(Z)V
    .locals 1

    .prologue
    .line 538
    if-eqz p1, :cond_1

    .line 539
    invoke-virtual {p0}, Lcom/amap/api/mapcore/util/eq;->c()Z

    move-result v0

    if-nez v0, :cond_0

    .line 540
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/amap/api/mapcore/util/eq;->setVisibility(I)V

    .line 546
    :cond_0
    :goto_0
    return-void

    .line 543
    :cond_1
    invoke-virtual {p0}, Lcom/amap/api/mapcore/util/eq;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 544
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/amap/api/mapcore/util/eq;->setVisibility(I)V

    goto :goto_0
.end method

.method public a([Ljava/lang/String;)V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v1, 0x0

    .line 266
    iget-object v0, p0, Lcom/amap/api/mapcore/util/eq;->f:Ljava/util/List;

    if-nez v0, :cond_0

    .line 267
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amap/api/mapcore/util/eq;->f:Ljava/util/List;

    .line 269
    :cond_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/eq;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    move v0, v1

    .line 270
    :goto_0
    array-length v2, p1

    if-ge v0, v2, :cond_1

    .line 271
    iget-object v2, p0, Lcom/amap/api/mapcore/util/eq;->f:Ljava/util/List;

    aget-object v3, p1, v0

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 270
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    move v0, v1

    .line 274
    :goto_1
    iget v2, p0, Lcom/amap/api/mapcore/util/eq;->m:I

    if-ge v0, v2, :cond_2

    .line 275
    iget-object v2, p0, Lcom/amap/api/mapcore/util/eq;->f:Ljava/util/List;

    const-string/jumbo v3, ""

    invoke-interface {v2, v1, v3}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 276
    iget-object v2, p0, Lcom/amap/api/mapcore/util/eq;->f:Ljava/util/List;

    const-string/jumbo v3, ""

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 274
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 279
    :cond_2
    invoke-direct {p0}, Lcom/amap/api/mapcore/util/eq;->d()V

    .line 281
    return-void
.end method

.method public b()I
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v0, 0x0

    .line 454
    iget-object v1, p0, Lcom/amap/api/mapcore/util/eq;->f:Ljava/util/List;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/amap/api/mapcore/util/eq;->f:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_1

    .line 458
    :cond_0
    :goto_0
    return v0

    .line 457
    :cond_1
    iget-object v1, p0, Lcom/amap/api/mapcore/util/eq;->f:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    iget v2, p0, Lcom/amap/api/mapcore/util/eq;->b:I

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/amap/api/mapcore/util/eq;->m:I

    sub-int/2addr v1, v2

    .line 458
    iget-object v2, p0, Lcom/amap/api/mapcore/util/eq;->f:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    iget v3, p0, Lcom/amap/api/mapcore/util/eq;->m:I

    mul-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_0
.end method

.method public c()Z
    .locals 1

    .prologue
    .line 549
    invoke-virtual {p0}, Lcom/amap/api/mapcore/util/eq;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public fling(I)V
    .locals 1

    .prologue
    .line 463
    div-int/lit8 v0, p1, 0x3

    invoke-super {p0, v0}, Landroid/widget/ScrollView;->fling(I)V

    .line 464
    return-void
.end method

.method protected onScrollChanged(IIII)V
    .locals 1

    .prologue
    .line 411
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/ScrollView;->onScrollChanged(IIII)V

    .line 412
    invoke-direct {p0, p2}, Lcom/amap/api/mapcore/util/eq;->a(I)V

    .line 413
    if-le p2, p4, :cond_0

    .line 414
    const/4 v0, 0x1

    iput v0, p0, Lcom/amap/api/mapcore/util/eq;->g:I

    .line 418
    :goto_0
    return-void

    .line 416
    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/amap/api/mapcore/util/eq;->g:I

    goto :goto_0
.end method

.method protected onSizeChanged(IIII)V
    .locals 1

    .prologue
    .line 404
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/ScrollView;->onSizeChanged(IIII)V

    .line 405
    iput p1, p0, Lcom/amap/api/mapcore/util/eq;->h:I

    .line 406
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/amap/api/mapcore/util/eq;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 407
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 468
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 470
    invoke-virtual {p0}, Lcom/amap/api/mapcore/util/eq;->a()V

    .line 472
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/ScrollView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public setBackgroundColor(I)V
    .locals 0

    .prologue
    .line 284
    iput p1, p0, Lcom/amap/api/mapcore/util/eq;->j:I

    .line 285
    return-void
.end method

.method public setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .prologue
    .line 313
    iget v0, p0, Lcom/amap/api/mapcore/util/eq;->h:I

    if-nez v0, :cond_0

    .line 314
    iget-object v0, p0, Lcom/amap/api/mapcore/util/eq;->c:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    .line 315
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/amap/api/mapcore/util/eq;->h:I

    .line 318
    :cond_0
    new-instance v0, Lcom/amap/api/mapcore/util/eq$2;

    invoke-direct {v0, p0}, Lcom/amap/api/mapcore/util/eq$2;-><init>(Lcom/amap/api/mapcore/util/eq;)V

    .line 385
    invoke-super {p0, v0}, Landroid/widget/ScrollView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 387
    return-void
.end method
