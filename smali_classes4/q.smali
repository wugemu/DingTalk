.class public final Lq;
.super Lv;
.source "AnimatedVectorDrawableCompat.java"

# interfaces
.implements Lp;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lq$a;,
        Lq$b;
    }
.end annotation


# instance fields
.field final a:Landroid/graphics/drawable/Drawable$Callback;

.field private c:Lq$a;

.field private d:Landroid/content/Context;

.field private e:Landroid/animation/ArgbEvaluator;

.field private f:Landroid/animation/Animator$AnimatorListener;

.field private g:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 164
    invoke-direct {p0, v0, v0, v0}, Lq;-><init>(Landroid/content/Context;Lq$a;Landroid/content/res/Resources;)V

    .line 165
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const/4 v0, 0x0

    .line 168
    invoke-direct {p0, p1, v0, v0}, Lq;-><init>(Landroid/content/Context;Lq$a;Landroid/content/res/Resources;)V

    .line 169
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Lq$a;Landroid/content/res/Resources;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "state"    # Lq$a;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "res"    # Landroid/content/res/Resources;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const/4 v2, 0x0

    .line 173
    invoke-direct {p0}, Lv;-><init>()V

    .line 152
    iput-object v2, p0, Lq;->e:Landroid/animation/ArgbEvaluator;

    .line 157
    iput-object v2, p0, Lq;->f:Landroid/animation/Animator$AnimatorListener;

    .line 160
    iput-object v2, p0, Lq;->g:Ljava/util/ArrayList;

    .line 719
    new-instance v0, Lq$1;

    invoke-direct {v0, p0}, Lq$1;-><init>(Lq;)V

    iput-object v0, p0, Lq;->a:Landroid/graphics/drawable/Drawable$Callback;

    .line 174
    iput-object p1, p0, Lq;->d:Landroid/content/Context;

    .line 178
    new-instance v0, Lq$a;

    iget-object v1, p0, Lq;->a:Landroid/graphics/drawable/Drawable$Callback;

    invoke-direct {v0, v2, v1, v2}, Lq$a;-><init>(Lq$a;Landroid/graphics/drawable/Drawable$Callback;Landroid/content/res/Resources;)V

    iput-object v0, p0, Lq;->c:Lq$a;

    .line 181
    return-void
.end method

.method public static a(Landroid/content/Context;Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)Lq;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "r"    # Landroid/content/res/Resources;
    .param p2, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p3, "attrs"    # Landroid/util/AttributeSet;
    .param p4, "theme"    # Landroid/content/res/Resources$Theme;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 249
    new-instance v0, Lq;

    invoke-direct {v0, p0}, Lq;-><init>(Landroid/content/Context;)V

    .line 250
    .local v0, "drawable":Lq;
    invoke-virtual {v0, p1, p2, p3, p4}, Lq;->inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V

    .line 251
    return-object v0
.end method

.method private a(Landroid/animation/Animator;)V
    .locals 5
    .param p1, "animator"    # Landroid/animation/Animator;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 647
    instance-of v4, p1, Landroid/animation/AnimatorSet;

    if-eqz v4, :cond_0

    move-object v4, p1

    .line 648
    check-cast v4, Landroid/animation/AnimatorSet;

    invoke-virtual {v4}, Landroid/animation/AnimatorSet;->getChildAnimations()Ljava/util/ArrayList;

    move-result-object v0

    .line 649
    .local v0, "childAnimators":Ljava/util/List;, "Ljava/util/List<Landroid/animation/Animator;>;"
    if-eqz v0, :cond_0

    .line 650
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_0

    .line 651
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/animation/Animator;

    invoke-direct {p0, v4}, Lq;->a(Landroid/animation/Animator;)V

    .line 650
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 655
    .end local v0    # "childAnimators":Ljava/util/List;, "Ljava/util/List<Landroid/animation/Animator;>;"
    .end local v1    # "i":I
    :cond_0
    instance-of v4, p1, Landroid/animation/ObjectAnimator;

    if-eqz v4, :cond_3

    move-object v2, p1

    .line 656
    check-cast v2, Landroid/animation/ObjectAnimator;

    .line 657
    .local v2, "objectAnim":Landroid/animation/ObjectAnimator;
    invoke-virtual {v2}, Landroid/animation/ObjectAnimator;->getPropertyName()Ljava/lang/String;

    move-result-object v3

    .line 658
    .local v3, "propertyName":Ljava/lang/String;
    const-string/jumbo v4, "fillColor"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    const-string/jumbo v4, "strokeColor"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 659
    :cond_1
    iget-object v4, p0, Lq;->e:Landroid/animation/ArgbEvaluator;

    if-nez v4, :cond_2

    .line 660
    new-instance v4, Landroid/animation/ArgbEvaluator;

    invoke-direct {v4}, Landroid/animation/ArgbEvaluator;-><init>()V

    iput-object v4, p0, Lq;->e:Landroid/animation/ArgbEvaluator;

    .line 662
    :cond_2
    iget-object v4, p0, Lq;->e:Landroid/animation/ArgbEvaluator;

    invoke-virtual {v2, v4}, Landroid/animation/ObjectAnimator;->setEvaluator(Landroid/animation/TypeEvaluator;)V

    .line 665
    .end local v2    # "objectAnim":Landroid/animation/ObjectAnimator;
    .end local v3    # "propertyName":Ljava/lang/String;
    :cond_3
    return-void
.end method


# virtual methods
.method public final applyTheme(Landroid/content/res/Resources$Theme;)V
    .locals 1
    .param p1, "t"    # Landroid/content/res/Resources$Theme;

    .prologue
    .line 508
    iget-object v0, p0, Lq;->b:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 509
    iget-object v0, p0, Lq;->b:Landroid/graphics/drawable/Drawable;

    invoke-static {v0, p1}, Leb;->a(Landroid/graphics/drawable/Drawable;Landroid/content/res/Resources$Theme;)V

    .line 513
    :cond_0
    return-void
.end method

.method public final canApplyTheme()Z
    .locals 1

    .prologue
    .line 518
    iget-object v0, p0, Lq;->b:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 519
    iget-object v0, p0, Lq;->b:Landroid/graphics/drawable/Drawable;

    invoke-static {v0}, Leb;->d(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    .line 522
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final bridge synthetic clearColorFilter()V
    .locals 0

    .prologue
    .line 139
    invoke-super {p0}, Lv;->clearColorFilter()V

    return-void
.end method

.method public final draw(Landroid/graphics/Canvas;)V
    .locals 1
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 280
    iget-object v0, p0, Lq;->b:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    .line 281
    iget-object v0, p0, Lq;->b:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 288
    :cond_0
    :goto_0
    return-void

    .line 284
    :cond_1
    iget-object v0, p0, Lq;->c:Lq$a;

    iget-object v0, v0, Lq$a;->b:Lw;

    invoke-virtual {v0, p1}, Lw;->draw(Landroid/graphics/Canvas;)V

    .line 285
    iget-object v0, p0, Lq;->c:Lq$a;

    iget-object v0, v0, Lq$a;->c:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 286
    invoke-virtual {p0}, Lq;->invalidateSelf()V

    goto :goto_0
.end method

.method public final getAlpha()I
    .locals 1

    .prologue
    .line 317
    iget-object v0, p0, Lq;->b:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 318
    iget-object v0, p0, Lq;->b:Landroid/graphics/drawable/Drawable;

    invoke-static {v0}, Leb;->c(Landroid/graphics/drawable/Drawable;)I

    move-result v0

    .line 320
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lq;->c:Lq$a;

    iget-object v0, v0, Lq$a;->b:Lw;

    invoke-virtual {v0}, Lw;->getAlpha()I

    move-result v0

    goto :goto_0
.end method

.method public final getChangingConfigurations()I
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 272
    iget-object v0, p0, Lq;->b:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 273
    iget-object v0, p0, Lq;->b:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getChangingConfigurations()I

    move-result v0

    .line 275
    :goto_0
    return v0

    :cond_0
    invoke-super {p0}, Lv;->getChangingConfigurations()I

    move-result v0

    iget-object v1, p0, Lq;->c:Lq$a;

    iget v1, v1, Lq$a;->a:I

    or-int/2addr v0, v1

    goto :goto_0
.end method

.method public final bridge synthetic getColorFilter()Landroid/graphics/ColorFilter;
    .locals 1

    .prologue
    .line 139
    invoke-super {p0}, Lv;->getColorFilter()Landroid/graphics/ColorFilter;

    move-result-object v0

    return-object v0
.end method

.method public final getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 261
    iget-object v0, p0, Lq;->b:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_0

    .line 262
    new-instance v0, Lq$b;

    iget-object v1, p0, Lq;->b:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v1

    invoke-direct {v0, v1}, Lq$b;-><init>(Landroid/graphics/drawable/Drawable$ConstantState;)V

    .line 267
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final bridge synthetic getCurrent()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 139
    invoke-super {p0}, Lv;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public final getIntrinsicHeight()I
    .locals 1

    .prologue
    .line 406
    iget-object v0, p0, Lq;->b:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 407
    iget-object v0, p0, Lq;->b:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    .line 409
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lq;->c:Lq$a;

    iget-object v0, v0, Lq$a;->b:Lw;

    invoke-virtual {v0}, Lw;->getIntrinsicHeight()I

    move-result v0

    goto :goto_0
.end method

.method public final getIntrinsicWidth()I
    .locals 1

    .prologue
    .line 398
    iget-object v0, p0, Lq;->b:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 399
    iget-object v0, p0, Lq;->b:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    .line 401
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lq;->c:Lq$a;

    iget-object v0, v0, Lq$a;->b:Lw;

    invoke-virtual {v0}, Lw;->getIntrinsicWidth()I

    move-result v0

    goto :goto_0
.end method

.method public final bridge synthetic getMinimumHeight()I
    .locals 1

    .prologue
    .line 139
    invoke-super {p0}, Lv;->getMinimumHeight()I

    move-result v0

    return v0
.end method

.method public final bridge synthetic getMinimumWidth()I
    .locals 1

    .prologue
    .line 139
    invoke-super {p0}, Lv;->getMinimumWidth()I

    move-result v0

    return v0
.end method

.method public final getOpacity()I
    .locals 1

    .prologue
    .line 390
    iget-object v0, p0, Lq;->b:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 391
    iget-object v0, p0, Lq;->b:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v0

    .line 393
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lq;->c:Lq$a;

    iget-object v0, v0, Lq$a;->b:Lw;

    invoke-virtual {v0}, Lw;->getOpacity()I

    move-result v0

    goto :goto_0
.end method

.method public final bridge synthetic getPadding(Landroid/graphics/Rect;)Z
    .locals 1
    .param p1, "x0"    # Landroid/graphics/Rect;

    .prologue
    .line 139
    invoke-super {p0, p1}, Lv;->getPadding(Landroid/graphics/Rect;)Z

    move-result v0

    return v0
.end method

.method public final bridge synthetic getState()[I
    .locals 1

    .prologue
    .line 139
    invoke-super {p0}, Lv;->getState()[I

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic getTransparentRegion()Landroid/graphics/Region;
    .locals 1

    .prologue
    .line 139
    invoke-super {p0}, Lv;->getTransparentRegion()Landroid/graphics/Region;

    move-result-object v0

    return-object v0
.end method

.method public final inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "res"    # Landroid/content/res/Resources;
    .param p2, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p3, "attrs"    # Landroid/util/AttributeSet;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 503
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lq;->inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V

    .line 504
    return-void
.end method

.method public final inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V
    .locals 17
    .param p1, "res"    # Landroid/content/res/Resources;
    .param p2, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p3, "attrs"    # Landroid/util/AttributeSet;
    .param p4, "theme"    # Landroid/content/res/Resources$Theme;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 432
    move-object/from16 v0, p0

    iget-object v13, v0, Lq;->b:Landroid/graphics/drawable/Drawable;

    if-eqz v13, :cond_0

    .line 433
    move-object/from16 v0, p0

    iget-object v13, v0, Lq;->b:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    invoke-static {v13, v0, v1, v2, v3}, Leb;->a(Landroid/graphics/drawable/Drawable;Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V

    .line 498
    :goto_0
    return-void

    .line 436
    :cond_0
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v6

    .line 437
    .local v6, "eventType":I
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v13

    add-int/lit8 v8, v13, 0x1

    .line 440
    .local v8, "innerDepth":I
    :goto_1
    const/4 v13, 0x1

    if-eq v6, v13, :cond_b

    .line 441
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v13

    if-ge v13, v8, :cond_1

    const/4 v13, 0x3

    if-eq v6, v13, :cond_b

    .line 442
    :cond_1
    const/4 v13, 0x2

    if-ne v6, v13, :cond_4

    .line 443
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v10

    .line 447
    .local v10, "tagName":Ljava/lang/String;
    const-string/jumbo v13, "animated-vector"

    invoke-virtual {v13, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_5

    .line 448
    sget-object v13, Lo;->e:[I

    .line 449
    move-object/from16 v0, p1

    move-object/from16 v1, p4

    move-object/from16 v2, p3

    invoke-static {v0, v1, v2, v13}, Lds;->a(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v4

    .line 452
    .local v4, "a":Landroid/content/res/TypedArray;
    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-virtual {v4, v13, v14}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v5

    .line 457
    .local v5, "drawableRes":I
    if-eqz v5, :cond_3

    .line 458
    move-object/from16 v0, p1

    move-object/from16 v1, p4

    invoke-static {v0, v5, v1}, Lw;->a(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)Lw;

    move-result-object v12

    .line 1816
    .local v12, "vectorDrawable":Lw;
    const/4 v13, 0x0

    iput-boolean v13, v12, Lw;->c:Z

    .line 461
    move-object/from16 v0, p0

    iget-object v13, v0, Lq;->a:Landroid/graphics/drawable/Drawable$Callback;

    invoke-virtual {v12, v13}, Lw;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 462
    move-object/from16 v0, p0

    iget-object v13, v0, Lq;->c:Lq$a;

    iget-object v13, v13, Lq$a;->b:Lw;

    if-eqz v13, :cond_2

    .line 463
    move-object/from16 v0, p0

    iget-object v13, v0, Lq;->c:Lq$a;

    iget-object v13, v13, Lq$a;->b:Lw;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Lw;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 465
    :cond_2
    move-object/from16 v0, p0

    iget-object v13, v0, Lq;->c:Lq$a;

    iput-object v12, v13, Lq$a;->b:Lw;

    .line 467
    .end local v12    # "vectorDrawable":Lw;
    :cond_3
    invoke-virtual {v4}, Landroid/content/res/TypedArray;->recycle()V

    .line 494
    .end local v4    # "a":Landroid/content/res/TypedArray;
    .end local v5    # "drawableRes":I
    .end local v10    # "tagName":Ljava/lang/String;
    :cond_4
    :goto_2
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v6

    goto :goto_1

    .line 468
    .restart local v10    # "tagName":Ljava/lang/String;
    :cond_5
    const-string/jumbo v13, "target"

    invoke-virtual {v13, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_4

    .line 469
    sget-object v13, Lo;->f:[I

    .line 470
    move-object/from16 v0, p1

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v13}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v4

    .line 472
    .restart local v4    # "a":Landroid/content/res/TypedArray;
    const/4 v13, 0x0

    invoke-virtual {v4, v13}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 475
    .local v11, "target":Ljava/lang/String;
    const/4 v13, 0x1

    const/4 v14, 0x0

    invoke-virtual {v4, v13, v14}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v7

    .line 478
    .local v7, "id":I
    if-eqz v7, :cond_8

    .line 479
    move-object/from16 v0, p0

    iget-object v13, v0, Lq;->d:Landroid/content/Context;

    if-eqz v13, :cond_a

    .line 482
    move-object/from16 v0, p0

    iget-object v13, v0, Lq;->d:Landroid/content/Context;

    .line 2099
    sget v14, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v15, 0x18

    if-lt v14, v15, :cond_9

    .line 2100
    invoke-static {v13, v7}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v9

    .line 2668
    .local v9, "objectAnimator":Landroid/animation/Animator;
    :goto_3
    move-object/from16 v0, p0

    iget-object v13, v0, Lq;->c:Lq$a;

    iget-object v13, v13, Lq$a;->b:Lw;

    invoke-virtual {v13, v11}, Lw;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v13

    .line 2669
    invoke-virtual {v9, v13}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    .line 2670
    sget v13, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v14, 0x15

    if-ge v13, v14, :cond_6

    .line 2671
    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Lq;->a(Landroid/animation/Animator;)V

    .line 2673
    :cond_6
    move-object/from16 v0, p0

    iget-object v13, v0, Lq;->c:Lq$a;

    invoke-static {v13}, Lq$a;->a(Lq$a;)Ljava/util/ArrayList;

    move-result-object v13

    if-nez v13, :cond_7

    .line 2674
    move-object/from16 v0, p0

    iget-object v13, v0, Lq;->c:Lq$a;

    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v13, v14}, Lq$a;->a(Lq$a;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 2675
    move-object/from16 v0, p0

    iget-object v13, v0, Lq;->c:Lq$a;

    new-instance v14, Lfk;

    invoke-direct {v14}, Lfk;-><init>()V

    iput-object v14, v13, Lq$a;->d:Lfk;

    .line 2677
    :cond_7
    move-object/from16 v0, p0

    iget-object v13, v0, Lq;->c:Lq$a;

    invoke-static {v13}, Lq$a;->a(Lq$a;)Ljava/util/ArrayList;

    move-result-object v13

    invoke-virtual {v13, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2678
    move-object/from16 v0, p0

    iget-object v13, v0, Lq;->c:Lq$a;

    iget-object v13, v13, Lq$a;->d:Lfk;

    invoke-virtual {v13, v9, v11}, Lfk;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 491
    .end local v9    # "objectAnimator":Landroid/animation/Animator;
    :cond_8
    invoke-virtual {v4}, Landroid/content/res/TypedArray;->recycle()V

    goto/16 :goto_2

    .line 2102
    :cond_9
    invoke-virtual {v13}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    invoke-virtual {v13}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v15

    .line 2118
    const/high16 v16, 0x3f800000    # 1.0f

    move/from16 v0, v16

    invoke-static {v13, v14, v15, v7, v0}, Ls;->a(Landroid/content/Context;Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;IF)Landroid/animation/Animator;

    move-result-object v9

    goto :goto_3

    .line 486
    :cond_a
    invoke-virtual {v4}, Landroid/content/res/TypedArray;->recycle()V

    .line 487
    new-instance v13, Ljava/lang/IllegalStateException;

    const-string/jumbo v14, "Context can\'t be null when inflating animators"

    invoke-direct {v13, v14}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v13

    .line 497
    .end local v4    # "a":Landroid/content/res/TypedArray;
    .end local v7    # "id":I
    .end local v10    # "tagName":Ljava/lang/String;
    .end local v11    # "target":Ljava/lang/String;
    :cond_b
    move-object/from16 v0, p0

    iget-object v13, v0, Lq;->c:Lq$a;

    invoke-virtual {v13}, Lq$a;->a()V

    goto/16 :goto_0
.end method

.method public final isAutoMirrored()Z
    .locals 1

    .prologue
    .line 414
    iget-object v0, p0, Lq;->b:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 415
    iget-object v0, p0, Lq;->b:Landroid/graphics/drawable/Drawable;

    invoke-static {v0}, Leb;->b(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    .line 417
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lq;->c:Lq$a;

    iget-object v0, v0, Lq$a;->b:Lw;

    invoke-virtual {v0}, Lw;->isAutoMirrored()Z

    move-result v0

    goto :goto_0
.end method

.method public final isRunning()Z
    .locals 1

    .prologue
    .line 686
    iget-object v0, p0, Lq;->b:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 688
    iget-object v0, p0, Lq;->b:Landroid/graphics/drawable/Drawable;

    check-cast v0, Landroid/graphics/drawable/AnimatedVectorDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimatedVectorDrawable;->isRunning()Z

    move-result v0

    .line 690
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lq;->c:Lq$a;

    iget-object v0, v0, Lq$a;->c:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    goto :goto_0
.end method

.method public final isStateful()Z
    .locals 1

    .prologue
    .line 382
    iget-object v0, p0, Lq;->b:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 383
    iget-object v0, p0, Lq;->b:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v0

    .line 385
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lq;->c:Lq$a;

    iget-object v0, v0, Lq$a;->b:Lw;

    invoke-virtual {v0}, Lw;->isStateful()Z

    move-result v0

    goto :goto_0
.end method

.method public final bridge synthetic jumpToCurrentState()V
    .locals 0

    .prologue
    .line 139
    invoke-super {p0}, Lv;->jumpToCurrentState()V

    return-void
.end method

.method public final mutate()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 189
    iget-object v0, p0, Lq;->b:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 190
    iget-object v0, p0, Lq;->b:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    .line 194
    :cond_0
    return-object p0
.end method

.method protected final onBoundsChange(Landroid/graphics/Rect;)V
    .locals 1
    .param p1, "bounds"    # Landroid/graphics/Rect;

    .prologue
    .line 292
    iget-object v0, p0, Lq;->b:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 293
    iget-object v0, p0, Lq;->b:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 297
    :goto_0
    return-void

    .line 296
    :cond_0
    iget-object v0, p0, Lq;->c:Lq$a;

    iget-object v0, v0, Lq$a;->b:Lw;

    invoke-virtual {v0, p1}, Lw;->setBounds(Landroid/graphics/Rect;)V

    goto :goto_0
.end method

.method protected final onLevelChange(I)Z
    .locals 1
    .param p1, "level"    # I

    .prologue
    .line 309
    iget-object v0, p0, Lq;->b:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 310
    iget-object v0, p0, Lq;->b:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    move-result v0

    .line 312
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lq;->c:Lq$a;

    iget-object v0, v0, Lq$a;->b:Lw;

    invoke-virtual {v0, p1}, Lw;->setLevel(I)Z

    move-result v0

    goto :goto_0
.end method

.method protected final onStateChange([I)Z
    .locals 1
    .param p1, "state"    # [I

    .prologue
    .line 301
    iget-object v0, p0, Lq;->b:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 302
    iget-object v0, p0, Lq;->b:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    move-result v0

    .line 304
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lq;->c:Lq$a;

    iget-object v0, v0, Lq$a;->b:Lw;

    invoke-virtual {v0, p1}, Lw;->setState([I)Z

    move-result v0

    goto :goto_0
.end method

.method public final setAlpha(I)V
    .locals 1
    .param p1, "alpha"    # I

    .prologue
    .line 325
    iget-object v0, p0, Lq;->b:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 326
    iget-object v0, p0, Lq;->b:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 330
    :goto_0
    return-void

    .line 329
    :cond_0
    iget-object v0, p0, Lq;->c:Lq$a;

    iget-object v0, v0, Lq$a;->b:Lw;

    invoke-virtual {v0, p1}, Lw;->setAlpha(I)V

    goto :goto_0
.end method

.method public final setAutoMirrored(Z)V
    .locals 1
    .param p1, "mirrored"    # Z

    .prologue
    .line 422
    iget-object v0, p0, Lq;->b:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 423
    iget-object v0, p0, Lq;->b:Landroid/graphics/drawable/Drawable;

    invoke-static {v0, p1}, Leb;->a(Landroid/graphics/drawable/Drawable;Z)V

    .line 427
    :goto_0
    return-void

    .line 426
    :cond_0
    iget-object v0, p0, Lq;->c:Lq$a;

    iget-object v0, v0, Lq$a;->b:Lw;

    invoke-virtual {v0, p1}, Lw;->setAutoMirrored(Z)V

    goto :goto_0
.end method

.method public final bridge synthetic setChangingConfigurations(I)V
    .locals 0
    .param p1, "x0"    # I

    .prologue
    .line 139
    invoke-super {p0, p1}, Lv;->setChangingConfigurations(I)V

    return-void
.end method

.method public final bridge synthetic setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V
    .locals 0
    .param p1, "x0"    # I
    .param p2, "x1"    # Landroid/graphics/PorterDuff$Mode;

    .prologue
    .line 139
    invoke-super {p0, p1, p2}, Lv;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    return-void
.end method

.method public final setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1
    .param p1, "colorFilter"    # Landroid/graphics/ColorFilter;

    .prologue
    .line 334
    iget-object v0, p0, Lq;->b:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 335
    iget-object v0, p0, Lq;->b:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 339
    :goto_0
    return-void

    .line 338
    :cond_0
    iget-object v0, p0, Lq;->c:Lq$a;

    iget-object v0, v0, Lq$a;->b:Lw;

    invoke-virtual {v0, p1}, Lw;->setColorFilter(Landroid/graphics/ColorFilter;)V

    goto :goto_0
.end method

.method public final bridge synthetic setFilterBitmap(Z)V
    .locals 0
    .param p1, "x0"    # Z

    .prologue
    .line 139
    invoke-super {p0, p1}, Lv;->setFilterBitmap(Z)V

    return-void
.end method

.method public final bridge synthetic setHotspot(FF)V
    .locals 0
    .param p1, "x0"    # F
    .param p2, "x1"    # F

    .prologue
    .line 139
    invoke-super {p0, p1, p2}, Lv;->setHotspot(FF)V

    return-void
.end method

.method public final bridge synthetic setHotspotBounds(IIII)V
    .locals 0
    .param p1, "x0"    # I
    .param p2, "x1"    # I
    .param p3, "x2"    # I
    .param p4, "x3"    # I

    .prologue
    .line 139
    invoke-super {p0, p1, p2, p3, p4}, Lv;->setHotspotBounds(IIII)V

    return-void
.end method

.method public final bridge synthetic setState([I)Z
    .locals 1
    .param p1, "x0"    # [I

    .prologue
    .line 139
    invoke-super {p0, p1}, Lv;->setState([I)Z

    move-result v0

    return v0
.end method

.method public final setTint(I)V
    .locals 1
    .param p1, "tint"    # I

    .prologue
    .line 343
    iget-object v0, p0, Lq;->b:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 344
    iget-object v0, p0, Lq;->b:Landroid/graphics/drawable/Drawable;

    invoke-static {v0, p1}, Leb;->a(Landroid/graphics/drawable/Drawable;I)V

    .line 349
    :goto_0
    return-void

    .line 348
    :cond_0
    iget-object v0, p0, Lq;->c:Lq$a;

    iget-object v0, v0, Lq$a;->b:Lw;

    invoke-virtual {v0, p1}, Lw;->setTint(I)V

    goto :goto_0
.end method

.method public final setTintList(Landroid/content/res/ColorStateList;)V
    .locals 1
    .param p1, "tint"    # Landroid/content/res/ColorStateList;

    .prologue
    .line 353
    iget-object v0, p0, Lq;->b:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 354
    iget-object v0, p0, Lq;->b:Landroid/graphics/drawable/Drawable;

    invoke-static {v0, p1}, Leb;->a(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    .line 359
    :goto_0
    return-void

    .line 358
    :cond_0
    iget-object v0, p0, Lq;->c:Lq$a;

    iget-object v0, v0, Lq$a;->b:Lw;

    invoke-virtual {v0, p1}, Lw;->setTintList(Landroid/content/res/ColorStateList;)V

    goto :goto_0
.end method

.method public final setTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 1
    .param p1, "tintMode"    # Landroid/graphics/PorterDuff$Mode;

    .prologue
    .line 363
    iget-object v0, p0, Lq;->b:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 364
    iget-object v0, p0, Lq;->b:Landroid/graphics/drawable/Drawable;

    invoke-static {v0, p1}, Leb;->a(Landroid/graphics/drawable/Drawable;Landroid/graphics/PorterDuff$Mode;)V

    .line 369
    :goto_0
    return-void

    .line 368
    :cond_0
    iget-object v0, p0, Lq;->c:Lq$a;

    iget-object v0, v0, Lq$a;->b:Lw;

    invoke-virtual {v0, p1}, Lw;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    goto :goto_0
.end method

.method public final setVisible(ZZ)Z
    .locals 1
    .param p1, "visible"    # Z
    .param p2, "restart"    # Z

    .prologue
    .line 373
    iget-object v0, p0, Lq;->b:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 374
    iget-object v0, p0, Lq;->b:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    move-result v0

    .line 377
    :goto_0
    return v0

    .line 376
    :cond_0
    iget-object v0, p0, Lq;->c:Lq$a;

    iget-object v0, v0, Lq$a;->b:Lw;

    invoke-virtual {v0, p1, p2}, Lw;->setVisible(ZZ)Z

    .line 377
    invoke-super {p0, p1, p2}, Lv;->setVisible(ZZ)Z

    move-result v0

    goto :goto_0
.end method

.method public final start()V
    .locals 1

    .prologue
    .line 695
    iget-object v0, p0, Lq;->b:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    .line 697
    iget-object v0, p0, Lq;->b:Landroid/graphics/drawable/Drawable;

    check-cast v0, Landroid/graphics/drawable/AnimatedVectorDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimatedVectorDrawable;->start()V

    .line 707
    :cond_0
    :goto_0
    return-void

    .line 701
    :cond_1
    iget-object v0, p0, Lq;->c:Lq$a;

    iget-object v0, v0, Lq$a;->c:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isStarted()Z

    move-result v0

    if-nez v0, :cond_0

    .line 705
    iget-object v0, p0, Lq;->c:Lq$a;

    iget-object v0, v0, Lq$a;->c:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 706
    invoke-virtual {p0}, Lq;->invalidateSelf()V

    goto :goto_0
.end method

.method public final stop()V
    .locals 1

    .prologue
    .line 711
    iget-object v0, p0, Lq;->b:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 713
    iget-object v0, p0, Lq;->b:Landroid/graphics/drawable/Drawable;

    check-cast v0, Landroid/graphics/drawable/AnimatedVectorDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimatedVectorDrawable;->stop()V

    .line 717
    :goto_0
    return-void

    .line 716
    :cond_0
    iget-object v0, p0, Lq;->c:Lq$a;

    iget-object v0, v0, Lq$a;->c:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->end()V

    goto :goto_0
.end method
