.class public final Lw;
.super Lv;
.source "VectorDrawableCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lw$b;,
        Lw$a;,
        Lw$d;,
        Lw$c;,
        Lw$e;,
        Lw$f;,
        Lw$g;
    }
.end annotation


# static fields
.field static final a:Landroid/graphics/PorterDuff$Mode;


# instance fields
.field c:Z

.field private d:Lw$f;

.field private e:Landroid/graphics/PorterDuffColorFilter;

.field private f:Landroid/graphics/ColorFilter;

.field private g:Z

.field private h:Landroid/graphics/drawable/Drawable$ConstantState;

.field private final i:[F

.field private final j:Landroid/graphics/Matrix;

.field private final k:Landroid/graphics/Rect;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 198
    sget-object v0, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    sput-object v0, Lw;->a:Landroid/graphics/PorterDuff$Mode;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    .prologue
    .line 239
    invoke-direct {p0}, Lv;-><init>()V

    .line 229
    const/4 v0, 0x1

    iput-boolean v0, p0, Lw;->c:Z

    .line 235
    const/16 v0, 0x9

    new-array v0, v0, [F

    iput-object v0, p0, Lw;->i:[F

    .line 236
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lw;->j:Landroid/graphics/Matrix;

    .line 237
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lw;->k:Landroid/graphics/Rect;

    .line 240
    new-instance v0, Lw$f;

    invoke-direct {v0}, Lw$f;-><init>()V

    iput-object v0, p0, Lw;->d:Lw$f;

    .line 241
    return-void
.end method

.method constructor <init>(Lw$f;)V
    .locals 2
    .param p1, "state"    # Lw$f;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 243
    invoke-direct {p0}, Lv;-><init>()V

    .line 229
    const/4 v0, 0x1

    iput-boolean v0, p0, Lw;->c:Z

    .line 235
    const/16 v0, 0x9

    new-array v0, v0, [F

    iput-object v0, p0, Lw;->i:[F

    .line 236
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lw;->j:Landroid/graphics/Matrix;

    .line 237
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lw;->k:Landroid/graphics/Rect;

    .line 244
    iput-object p1, p0, Lw;->d:Lw$f;

    .line 245
    iget-object v0, p1, Lw$f;->c:Landroid/content/res/ColorStateList;

    iget-object v1, p1, Lw$f;->d:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {p0, v0, v1}, Lw;->a(Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;

    move-result-object v0

    iput-object v0, p0, Lw;->e:Landroid/graphics/PorterDuffColorFilter;

    .line 246
    return-void
.end method

.method static a(IF)I
    .locals 2
    .param p0, "color"    # I
    .param p1, "alpha"    # F

    .prologue
    .line 591
    invoke-static {p0}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    .line 592
    .local v0, "alphaBytes":I
    const v1, 0xffffff

    and-int/2addr p0, v1

    .line 593
    int-to-float v1, v0

    mul-float/2addr v1, p1

    float-to-int v1, v1

    shl-int/lit8 v1, v1, 0x18

    or-int/2addr p0, v1

    .line 594
    return p0
.end method

.method private a(Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;
    .locals 3
    .param p1, "tint"    # Landroid/content/res/ColorStateList;
    .param p2, "tintMode"    # Landroid/graphics/PorterDuff$Mode;

    invoke-static {}, Lcom/pnf/dex2jar5;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar5;->b(I)V

    .prologue
    .line 387
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 388
    :cond_0
    const/4 v1, 0x0

    .line 393
    :goto_0
    return-object v1

    .line 392
    :cond_1
    invoke-virtual {p0}, Lw;->getState()[I

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v0

    .line 393
    .local v0, "color":I
    new-instance v1, Landroid/graphics/PorterDuffColorFilter;

    invoke-direct {v1, v0, p2}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    goto :goto_0
.end method

.method public static a(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)Lw;
    .locals 8
    .param p0, "res"    # Landroid/content/res/Resources;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "resId"    # I
        .annotation build Landroid/support/annotation/DrawableRes;
        .end annotation
    .end param
    .param p2, "theme"    # Landroid/content/res/Resources$Theme;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    const/4 v7, 0x2

    .line 549
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x18

    if-lt v5, v6, :cond_0

    .line 550
    new-instance v1, Lw;

    invoke-direct {v1}, Lw;-><init>()V

    .line 551
    .local v1, "drawable":Lw;
    invoke-static {p0, p1, p2}, Ldr;->a(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    iput-object v5, v1, Lw;->b:Landroid/graphics/drawable/Drawable;

    .line 552
    new-instance v5, Lw$g;

    iget-object v6, v1, Lw;->b:Landroid/graphics/drawable/Drawable;

    .line 553
    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v6

    invoke-direct {v5, v6}, Lw$g;-><init>(Landroid/graphics/drawable/Drawable$ConstantState;)V

    iput-object v5, v1, Lw;->h:Landroid/graphics/drawable/Drawable$ConstantState;

    .line 574
    .end local v1    # "drawable":Lw;
    :goto_0
    return-object v1

    .line 558
    :cond_0
    :try_start_0
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v3

    .line 559
    .local v3, "parser":Lorg/xmlpull/v1/XmlPullParser;
    invoke-static {v3}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v0

    .line 561
    .local v0, "attrs":Landroid/util/AttributeSet;
    :cond_1
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v4

    .local v4, "type":I
    if-eq v4, v7, :cond_2

    const/4 v5, 0x1

    if-ne v4, v5, :cond_1

    .line 565
    :cond_2
    if-eq v4, v7, :cond_3

    .line 566
    new-instance v5, Lorg/xmlpull/v1/XmlPullParserException;

    const-string/jumbo v6, "No start tag found"

    invoke-direct {v5, v6}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 569
    .end local v0    # "attrs":Landroid/util/AttributeSet;
    .end local v3    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v4    # "type":I
    :catch_0
    move-exception v2

    .line 570
    .local v2, "e":Lorg/xmlpull/v1/XmlPullParserException;
    const-string/jumbo v5, "VectorDrawableCompat"

    const-string/jumbo v6, "parser error"

    invoke-static {v5, v6, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 574
    .end local v2    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    :goto_1
    const/4 v1, 0x0

    goto :goto_0

    .line 568
    .restart local v0    # "attrs":Landroid/util/AttributeSet;
    .restart local v3    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v4    # "type":I
    :cond_3
    :try_start_1
    invoke-static {p0, v3, v0, p2}, Lw;->a(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)Lw;
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v1

    goto :goto_0

    .line 571
    .end local v0    # "attrs":Landroid/util/AttributeSet;
    .end local v3    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v4    # "type":I
    :catch_1
    move-exception v2

    .line 572
    .local v2, "e":Ljava/io/IOException;
    const-string/jumbo v5, "VectorDrawableCompat"

    const-string/jumbo v6, "parser error"

    invoke-static {v5, v6, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method public static a(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)Lw;
    .locals 1
    .param p0, "r"    # Landroid/content/res/Resources;
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "theme"    # Landroid/content/res/Resources$Theme;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 585
    new-instance v0, Lw;

    invoke-direct {v0}, Lw;-><init>()V

    .line 586
    .local v0, "drawable":Lw;
    invoke-virtual {v0, p0, p1, p2, p3}, Lw;->inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V

    .line 587
    return-object v0
.end method

.method private b(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V
    .locals 18
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
    .line 723
    move-object/from16 v0, p0

    iget-object v11, v0, Lw;->d:Lw$f;

    .line 724
    .local v11, "state":Lw$f;
    iget-object v10, v11, Lw$f;->b:Lw$e;

    .line 725
    .local v10, "pathRenderer":Lw$e;
    const/4 v8, 0x1

    .line 729
    .local v8, "noPathTag":Z
    new-instance v5, Ljava/util/Stack;

    invoke-direct {v5}, Ljava/util/Stack;-><init>()V

    .line 730
    .local v5, "groupStack":Ljava/util/Stack;, "Ljava/util/Stack<Lw$c;>;"
    iget-object v14, v10, Lw$e;->a:Lw$c;

    invoke-virtual {v5, v14}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 732
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v4

    .line 733
    .local v4, "eventType":I
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v14

    add-int/lit8 v6, v14, 0x1

    .line 736
    .local v6, "innerDepth":I
    :goto_0
    const/4 v14, 0x1

    if-eq v4, v14, :cond_a

    .line 737
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v14

    if-ge v14, v6, :cond_0

    const/4 v14, 0x3

    if-eq v4, v14, :cond_a

    .line 738
    :cond_0
    const/4 v14, 0x2

    if-ne v4, v14, :cond_9

    .line 739
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v13

    .line 740
    .local v13, "tagName":Ljava/lang/String;
    invoke-virtual {v5}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lw$c;

    .line 741
    .local v3, "currentGroup":Lw$c;
    const-string/jumbo v14, "path"

    invoke-virtual {v14, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_3

    .line 742
    new-instance v9, Lw$b;

    invoke-direct {v9}, Lw$b;-><init>()V

    .line 5716
    .local v9, "path":Lw$b;
    sget-object v14, Lo;->c:[I

    move-object/from16 v0, p1

    move-object/from16 v1, p4

    move-object/from16 v2, p3

    invoke-static {v0, v1, v2, v14}, Lds;->a(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v14

    .line 5718
    move-object/from16 v0, p2

    invoke-virtual {v9, v14, v0}, Lw$b;->a(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;)V

    .line 5719
    invoke-virtual {v14}, Landroid/content/res/TypedArray;->recycle()V

    .line 744
    iget-object v14, v3, Lw$c;->b:Ljava/util/ArrayList;

    invoke-virtual {v14, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 745
    invoke-virtual {v9}, Lw$b;->getPathName()Ljava/lang/String;

    move-result-object v14

    if-eqz v14, :cond_1

    .line 746
    iget-object v14, v10, Lw$e;->h:Lfk;

    invoke-virtual {v9}, Lw$b;->getPathName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15, v9}, Lfk;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 748
    :cond_1
    const/4 v8, 0x0

    .line 749
    iget v14, v11, Lw$f;->a:I

    iget v15, v9, Lw$b;->o:I

    or-int/2addr v14, v15

    iput v14, v11, Lw$f;->a:I

    .line 775
    .end local v3    # "currentGroup":Lw$c;
    .end local v9    # "path":Lw$b;
    .end local v13    # "tagName":Ljava/lang/String;
    :cond_2
    :goto_1
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v4

    goto :goto_0

    .line 750
    .restart local v3    # "currentGroup":Lw$c;
    .restart local v13    # "tagName":Ljava/lang/String;
    :cond_3
    const-string/jumbo v14, "clip-path"

    invoke-virtual {v14, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_6

    .line 751
    new-instance v9, Lw$a;

    invoke-direct {v9}, Lw$a;-><init>()V

    .line 6605
    .local v9, "path":Lw$a;
    const-string/jumbo v14, "pathData"

    move-object/from16 v0, p2

    invoke-static {v0, v14}, Lds;->a(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v14

    .line 6606
    if-eqz v14, :cond_4

    .line 6609
    sget-object v14, Lo;->d:[I

    move-object/from16 v0, p1

    move-object/from16 v1, p4

    move-object/from16 v2, p3

    invoke-static {v0, v1, v2, v14}, Lds;->a(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v14

    .line 6611
    invoke-virtual {v9, v14}, Lw$a;->a(Landroid/content/res/TypedArray;)V

    .line 6612
    invoke-virtual {v14}, Landroid/content/res/TypedArray;->recycle()V

    .line 753
    :cond_4
    iget-object v14, v3, Lw$c;->b:Ljava/util/ArrayList;

    invoke-virtual {v14, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 754
    invoke-virtual {v9}, Lw$a;->getPathName()Ljava/lang/String;

    move-result-object v14

    if-eqz v14, :cond_5

    .line 755
    iget-object v14, v10, Lw$e;->h:Lfk;

    invoke-virtual {v9}, Lw$a;->getPathName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15, v9}, Lfk;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 757
    :cond_5
    iget v14, v11, Lw$f;->a:I

    iget v15, v9, Lw$a;->o:I

    or-int/2addr v14, v15

    iput v14, v11, Lw$f;->a:I

    goto :goto_1

    .line 758
    .end local v9    # "path":Lw$a;
    :cond_6
    const-string/jumbo v14, "group"

    invoke-virtual {v14, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_2

    .line 759
    new-instance v7, Lw$c;

    invoke-direct {v7}, Lw$c;-><init>()V

    .line 7367
    .local v7, "newChildGroup":Lw$c;
    sget-object v14, Lo;->b:[I

    move-object/from16 v0, p1

    move-object/from16 v1, p4

    move-object/from16 v2, p3

    invoke-static {v0, v1, v2, v14}, Lds;->a(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v14

    .line 7378
    const/4 v15, 0x0

    iput-object v15, v7, Lw$c;->l:[I

    .line 7381
    const-string/jumbo v15, "rotation"

    const/16 v16, 0x5

    iget v0, v7, Lw$c;->c:F

    move/from16 v17, v0

    move-object/from16 v0, p2

    move/from16 v1, v16

    move/from16 v2, v17

    invoke-static {v14, v0, v15, v1, v2}, Lds;->a(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;IF)F

    move-result v15

    iput v15, v7, Lw$c;->c:F

    .line 7384
    const/4 v15, 0x1

    iget v0, v7, Lw$c;->d:F

    move/from16 v16, v0

    invoke-virtual/range {v14 .. v16}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v15

    iput v15, v7, Lw$c;->d:F

    .line 7385
    const/4 v15, 0x2

    iget v0, v7, Lw$c;->e:F

    move/from16 v16, v0

    invoke-virtual/range {v14 .. v16}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v15

    iput v15, v7, Lw$c;->e:F

    .line 7388
    const-string/jumbo v15, "scaleX"

    const/16 v16, 0x3

    iget v0, v7, Lw$c;->f:F

    move/from16 v17, v0

    move-object/from16 v0, p2

    move/from16 v1, v16

    move/from16 v2, v17

    invoke-static {v14, v0, v15, v1, v2}, Lds;->a(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;IF)F

    move-result v15

    iput v15, v7, Lw$c;->f:F

    .line 7392
    const-string/jumbo v15, "scaleY"

    const/16 v16, 0x4

    iget v0, v7, Lw$c;->g:F

    move/from16 v17, v0

    move-object/from16 v0, p2

    move/from16 v1, v16

    move/from16 v2, v17

    invoke-static {v14, v0, v15, v1, v2}, Lds;->a(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;IF)F

    move-result v15

    iput v15, v7, Lw$c;->g:F

    .line 7395
    const-string/jumbo v15, "translateX"

    const/16 v16, 0x6

    iget v0, v7, Lw$c;->h:F

    move/from16 v17, v0

    move-object/from16 v0, p2

    move/from16 v1, v16

    move/from16 v2, v17

    invoke-static {v14, v0, v15, v1, v2}, Lds;->a(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;IF)F

    move-result v15

    iput v15, v7, Lw$c;->h:F

    .line 7397
    const-string/jumbo v15, "translateY"

    const/16 v16, 0x7

    iget v0, v7, Lw$c;->i:F

    move/from16 v17, v0

    move-object/from16 v0, p2

    move/from16 v1, v16

    move/from16 v2, v17

    invoke-static {v14, v0, v15, v1, v2}, Lds;->a(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;IF)F

    move-result v15

    iput v15, v7, Lw$c;->i:F

    .line 7400
    const/4 v15, 0x0

    .line 7401
    invoke-virtual {v14, v15}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 7402
    if-eqz v15, :cond_7

    .line 7403
    iput-object v15, v7, Lw$c;->m:Ljava/lang/String;

    .line 7406
    :cond_7
    invoke-virtual {v7}, Lw$c;->a()V

    .line 7370
    invoke-virtual {v14}, Landroid/content/res/TypedArray;->recycle()V

    .line 761
    iget-object v14, v3, Lw$c;->b:Ljava/util/ArrayList;

    invoke-virtual {v14, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 762
    invoke-virtual {v5, v7}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 763
    invoke-virtual {v7}, Lw$c;->getGroupName()Ljava/lang/String;

    move-result-object v14

    if-eqz v14, :cond_8

    .line 764
    iget-object v14, v10, Lw$e;->h:Lfk;

    invoke-virtual {v7}, Lw$c;->getGroupName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15, v7}, Lfk;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 767
    :cond_8
    iget v14, v11, Lw$f;->a:I

    iget v15, v7, Lw$c;->k:I

    or-int/2addr v14, v15

    iput v14, v11, Lw$f;->a:I

    goto/16 :goto_1

    .line 769
    .end local v3    # "currentGroup":Lw$c;
    .end local v7    # "newChildGroup":Lw$c;
    .end local v13    # "tagName":Ljava/lang/String;
    :cond_9
    const/4 v14, 0x3

    if-ne v4, v14, :cond_2

    .line 770
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v13

    .line 771
    .restart local v13    # "tagName":Ljava/lang/String;
    const-string/jumbo v14, "group"

    invoke-virtual {v14, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_2

    .line 772
    invoke-virtual {v5}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    goto/16 :goto_1

    .line 783
    .end local v13    # "tagName":Ljava/lang/String;
    :cond_a
    if-eqz v8, :cond_c

    .line 784
    new-instance v12, Ljava/lang/StringBuffer;

    invoke-direct {v12}, Ljava/lang/StringBuffer;-><init>()V

    .line 786
    .local v12, "tag":Ljava/lang/StringBuffer;
    invoke-virtual {v12}, Ljava/lang/StringBuffer;->length()I

    move-result v14

    if-lez v14, :cond_b

    .line 787
    const-string/jumbo v14, " or "

    invoke-virtual {v12, v14}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 789
    :cond_b
    const-string/jumbo v14, "path"

    invoke-virtual {v12, v14}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 791
    new-instance v14, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v15, Ljava/lang/StringBuilder;

    const-string/jumbo v16, "no "

    invoke-direct/range {v15 .. v16}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, " defined"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v15}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v14

    .line 793
    .end local v12    # "tag":Ljava/lang/StringBuffer;
    :cond_c
    return-void
.end method


# virtual methods
.method final a(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 263
    iget-object v0, p0, Lw;->d:Lw$f;

    iget-object v0, v0, Lw$f;->b:Lw$e;

    iget-object v0, v0, Lw$e;->h:Lfk;

    invoke-virtual {v0, p1}, Lfk;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic applyTheme(Landroid/content/res/Resources$Theme;)V
    .locals 0

    .prologue
    .line 195
    invoke-super {p0, p1}, Lv;->applyTheme(Landroid/content/res/Resources$Theme;)V

    return-void
.end method

.method public final canApplyTheme()Z
    .locals 1

    .prologue
    .line 491
    iget-object v0, p0, Lw;->b:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 492
    iget-object v0, p0, Lw;->b:Landroid/graphics/drawable/Drawable;

    invoke-static {v0}, Leb;->d(Landroid/graphics/drawable/Drawable;)Z

    .line 495
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final bridge synthetic clearColorFilter()V
    .locals 0

    .prologue
    .line 195
    invoke-super {p0}, Lv;->clearColorFilter()V

    return-void
.end method

.method public final draw(Landroid/graphics/Canvas;)V
    .locals 13
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    invoke-static {}, Lcom/pnf/dex2jar5;->a()Z

    move-result v12

    invoke-static {v12}, Lcom/pnf/dex2jar5;->b(I)V

    .prologue
    .line 278
    iget-object v9, p0, Lw;->b:Landroid/graphics/drawable/Drawable;

    if-eqz v9, :cond_1

    .line 279
    iget-object v9, p0, Lw;->b:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v9, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 346
    :cond_0
    :goto_0
    return-void

    .line 284
    :cond_1
    iget-object v9, p0, Lw;->k:Landroid/graphics/Rect;

    invoke-virtual {p0, v9}, Lw;->copyBounds(Landroid/graphics/Rect;)V

    .line 285
    iget-object v9, p0, Lw;->k:Landroid/graphics/Rect;

    invoke-virtual {v9}, Landroid/graphics/Rect;->width()I

    move-result v9

    if-lez v9, :cond_0

    iget-object v9, p0, Lw;->k:Landroid/graphics/Rect;

    invoke-virtual {v9}, Landroid/graphics/Rect;->height()I

    move-result v9

    if-lez v9, :cond_0

    .line 291
    iget-object v9, p0, Lw;->f:Landroid/graphics/ColorFilter;

    if-nez v9, :cond_8

    iget-object v4, p0, Lw;->e:Landroid/graphics/PorterDuffColorFilter;

    .line 297
    .local v4, "colorFilter":Landroid/graphics/ColorFilter;
    :goto_1
    iget-object v9, p0, Lw;->j:Landroid/graphics/Matrix;

    invoke-virtual {p1, v9}, Landroid/graphics/Canvas;->getMatrix(Landroid/graphics/Matrix;)V

    .line 298
    iget-object v9, p0, Lw;->j:Landroid/graphics/Matrix;

    iget-object v10, p0, Lw;->i:[F

    invoke-virtual {v9, v10}, Landroid/graphics/Matrix;->getValues([F)V

    .line 299
    iget-object v9, p0, Lw;->i:[F

    const/4 v10, 0x0

    aget v9, v9, v10

    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v0

    .line 300
    .local v0, "canvasScaleX":F
    iget-object v9, p0, Lw;->i:[F

    const/4 v10, 0x4

    aget v9, v9, v10

    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v1

    .line 302
    .local v1, "canvasScaleY":F
    iget-object v9, p0, Lw;->i:[F

    const/4 v10, 0x1

    aget v9, v9, v10

    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v2

    .line 303
    .local v2, "canvasSkewX":F
    iget-object v9, p0, Lw;->i:[F

    const/4 v10, 0x3

    aget v9, v9, v10

    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v3

    .line 306
    .local v3, "canvasSkewY":F
    const/4 v9, 0x0

    cmpl-float v9, v2, v9

    if-nez v9, :cond_2

    const/4 v9, 0x0

    cmpl-float v9, v3, v9

    if-eqz v9, :cond_3

    .line 307
    :cond_2
    const/high16 v0, 0x3f800000    # 1.0f

    .line 308
    const/high16 v1, 0x3f800000    # 1.0f

    .line 311
    :cond_3
    iget-object v9, p0, Lw;->k:Landroid/graphics/Rect;

    invoke-virtual {v9}, Landroid/graphics/Rect;->width()I

    move-result v9

    int-to-float v9, v9

    mul-float/2addr v9, v0

    float-to-int v8, v9

    .line 312
    .local v8, "scaledWidth":I
    iget-object v9, p0, Lw;->k:Landroid/graphics/Rect;

    invoke-virtual {v9}, Landroid/graphics/Rect;->height()I

    move-result v9

    int-to-float v9, v9

    mul-float/2addr v9, v1

    float-to-int v7, v9

    .line 313
    .local v7, "scaledHeight":I
    const/16 v9, 0x800

    invoke-static {v9, v8}, Ljava/lang/Math;->min(II)I

    move-result v8

    .line 314
    const/16 v9, 0x800

    invoke-static {v9, v7}, Ljava/lang/Math;->min(II)I

    move-result v7

    .line 316
    if-lez v8, :cond_0

    if-lez v7, :cond_0

    .line 320
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v6

    .line 321
    .local v6, "saveCount":I
    iget-object v9, p0, Lw;->k:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->left:I

    int-to-float v9, v9

    iget-object v10, p0, Lw;->k:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->top:I

    int-to-float v10, v10

    invoke-virtual {p1, v9, v10}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1821
    sget v9, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v10, 0x11

    if-lt v9, v10, :cond_a

    .line 1822
    invoke-virtual {p0}, Lw;->isAutoMirrored()Z

    move-result v9

    if-eqz v9, :cond_9

    .line 1823
    invoke-static {p0}, Leb;->i(Landroid/graphics/drawable/Drawable;)I

    move-result v9

    const/4 v10, 0x1

    if-ne v9, v10, :cond_9

    const/4 v5, 0x1

    .line 325
    .local v5, "needMirroring":Z
    :goto_2
    if-eqz v5, :cond_4

    .line 326
    iget-object v9, p0, Lw;->k:Landroid/graphics/Rect;

    invoke-virtual {v9}, Landroid/graphics/Rect;->width()I

    move-result v9

    int-to-float v9, v9

    const/4 v10, 0x0

    invoke-virtual {p1, v9, v10}, Landroid/graphics/Canvas;->translate(FF)V

    .line 327
    const/high16 v9, -0x40800000    # -1.0f

    const/high16 v10, 0x3f800000    # 1.0f

    invoke-virtual {p1, v9, v10}, Landroid/graphics/Canvas;->scale(FF)V

    .line 333
    :cond_4
    iget-object v9, p0, Lw;->k:Landroid/graphics/Rect;

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 335
    iget-object v10, p0, Lw;->d:Lw$f;

    .line 1998
    iget-object v9, v10, Lw$f;->f:Landroid/graphics/Bitmap;

    if-eqz v9, :cond_5

    .line 2007
    iget-object v9, v10, Lw$f;->f:Landroid/graphics/Bitmap;

    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v9

    if-ne v8, v9, :cond_b

    iget-object v9, v10, Lw$f;->f:Landroid/graphics/Bitmap;

    .line 2008
    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    if-ne v7, v9, :cond_b

    .line 2009
    const/4 v9, 0x1

    .line 1998
    :goto_3
    if-nez v9, :cond_6

    .line 1999
    :cond_5
    sget-object v9, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v8, v7, v9}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v9

    iput-object v9, v10, Lw$f;->f:Landroid/graphics/Bitmap;

    .line 2001
    const/4 v9, 0x1

    iput-boolean v9, v10, Lw$f;->k:Z

    .line 336
    :cond_6
    iget-boolean v9, p0, Lw;->c:Z

    if-nez v9, :cond_c

    .line 337
    iget-object v9, p0, Lw;->d:Lw$f;

    invoke-virtual {v9, v8, v7}, Lw$f;->a(II)V

    .line 344
    :cond_7
    :goto_4
    iget-object v10, p0, Lw;->d:Lw$f;

    iget-object v11, p0, Lw;->k:Landroid/graphics/Rect;

    .line 3971
    iget-object v9, v10, Lw$f;->b:Lw$e;

    invoke-virtual {v9}, Lw$e;->getRootAlpha()I

    move-result v9

    const/16 v12, 0xff

    if-ge v9, v12, :cond_e

    const/4 v9, 0x1

    .line 2978
    :goto_5
    if-nez v9, :cond_f

    if-nez v4, :cond_f

    .line 2979
    const/4 v9, 0x0

    .line 2967
    :goto_6
    iget-object v10, v10, Lw$f;->f:Landroid/graphics/Bitmap;

    const/4 v12, 0x0

    invoke-virtual {p1, v10, v12, v11, v9}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 345
    invoke-virtual {p1, v6}, Landroid/graphics/Canvas;->restoreToCount(I)V

    goto/16 :goto_0

    .line 291
    .end local v0    # "canvasScaleX":F
    .end local v1    # "canvasScaleY":F
    .end local v2    # "canvasSkewX":F
    .end local v3    # "canvasSkewY":F
    .end local v4    # "colorFilter":Landroid/graphics/ColorFilter;
    .end local v5    # "needMirroring":Z
    .end local v6    # "saveCount":I
    .end local v7    # "scaledHeight":I
    .end local v8    # "scaledWidth":I
    :cond_8
    iget-object v4, p0, Lw;->f:Landroid/graphics/ColorFilter;

    goto/16 :goto_1

    .line 1823
    .restart local v0    # "canvasScaleX":F
    .restart local v1    # "canvasScaleY":F
    .restart local v2    # "canvasSkewX":F
    .restart local v3    # "canvasSkewY":F
    .restart local v4    # "colorFilter":Landroid/graphics/ColorFilter;
    .restart local v6    # "saveCount":I
    .restart local v7    # "scaledHeight":I
    .restart local v8    # "scaledWidth":I
    :cond_9
    const/4 v5, 0x0

    goto :goto_2

    .line 1825
    :cond_a
    const/4 v5, 0x0

    goto :goto_2

    .line 2011
    .restart local v5    # "needMirroring":Z
    :cond_b
    const/4 v9, 0x0

    goto :goto_3

    .line 339
    :cond_c
    iget-object v9, p0, Lw;->d:Lw$f;

    .line 2015
    iget-boolean v10, v9, Lw$f;->k:Z

    if-nez v10, :cond_d

    iget-object v10, v9, Lw$f;->g:Landroid/content/res/ColorStateList;

    iget-object v11, v9, Lw$f;->c:Landroid/content/res/ColorStateList;

    if-ne v10, v11, :cond_d

    iget-object v10, v9, Lw$f;->h:Landroid/graphics/PorterDuff$Mode;

    iget-object v11, v9, Lw$f;->d:Landroid/graphics/PorterDuff$Mode;

    if-ne v10, v11, :cond_d

    iget-boolean v10, v9, Lw$f;->j:Z

    iget-boolean v11, v9, Lw$f;->e:Z

    if-ne v10, v11, :cond_d

    iget v10, v9, Lw$f;->i:I

    iget-object v9, v9, Lw$f;->b:Lw$e;

    .line 2019
    invoke-virtual {v9}, Lw$e;->getRootAlpha()I

    move-result v9

    if-ne v10, v9, :cond_d

    .line 2020
    const/4 v9, 0x1

    .line 339
    :goto_7
    if-nez v9, :cond_7

    .line 340
    iget-object v9, p0, Lw;->d:Lw$f;

    invoke-virtual {v9, v8, v7}, Lw$f;->a(II)V

    .line 341
    iget-object v9, p0, Lw;->d:Lw$f;

    .line 2028
    iget-object v10, v9, Lw$f;->c:Landroid/content/res/ColorStateList;

    iput-object v10, v9, Lw$f;->g:Landroid/content/res/ColorStateList;

    .line 2029
    iget-object v10, v9, Lw$f;->d:Landroid/graphics/PorterDuff$Mode;

    iput-object v10, v9, Lw$f;->h:Landroid/graphics/PorterDuff$Mode;

    .line 2030
    iget-object v10, v9, Lw$f;->b:Lw$e;

    invoke-virtual {v10}, Lw$e;->getRootAlpha()I

    move-result v10

    iput v10, v9, Lw$f;->i:I

    .line 2031
    iget-boolean v10, v9, Lw$f;->e:Z

    iput-boolean v10, v9, Lw$f;->j:Z

    .line 2032
    const/4 v10, 0x0

    iput-boolean v10, v9, Lw$f;->k:Z

    goto :goto_4

    .line 2022
    :cond_d
    const/4 v9, 0x0

    goto :goto_7

    .line 3971
    :cond_e
    const/4 v9, 0x0

    goto :goto_5

    .line 2982
    :cond_f
    iget-object v9, v10, Lw$f;->l:Landroid/graphics/Paint;

    if-nez v9, :cond_10

    .line 2983
    new-instance v9, Landroid/graphics/Paint;

    invoke-direct {v9}, Landroid/graphics/Paint;-><init>()V

    iput-object v9, v10, Lw$f;->l:Landroid/graphics/Paint;

    .line 2984
    iget-object v9, v10, Lw$f;->l:Landroid/graphics/Paint;

    const/4 v12, 0x1

    invoke-virtual {v9, v12}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 2986
    :cond_10
    iget-object v9, v10, Lw$f;->l:Landroid/graphics/Paint;

    iget-object v12, v10, Lw$f;->b:Lw$e;

    invoke-virtual {v12}, Lw$e;->getRootAlpha()I

    move-result v12

    invoke-virtual {v9, v12}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 2987
    iget-object v9, v10, Lw$f;->l:Landroid/graphics/Paint;

    invoke-virtual {v9, v4}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 2988
    iget-object v9, v10, Lw$f;->l:Landroid/graphics/Paint;

    goto/16 :goto_6
.end method

.method public final getAlpha()I
    .locals 1

    .prologue
    .line 350
    iget-object v0, p0, Lw;->b:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 351
    iget-object v0, p0, Lw;->b:Landroid/graphics/drawable/Drawable;

    invoke-static {v0}, Leb;->c(Landroid/graphics/drawable/Drawable;)I

    move-result v0

    .line 354
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lw;->d:Lw$f;

    iget-object v0, v0, Lw$f;->b:Lw$e;

    invoke-virtual {v0}, Lw$e;->getRootAlpha()I

    move-result v0

    goto :goto_0
.end method

.method public final getChangingConfigurations()I
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar5;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar5;->b(I)V

    .prologue
    .line 839
    iget-object v0, p0, Lw;->b:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 840
    iget-object v0, p0, Lw;->b:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getChangingConfigurations()I

    move-result v0

    .line 842
    :goto_0
    return v0

    :cond_0
    invoke-super {p0}, Lv;->getChangingConfigurations()I

    move-result v0

    iget-object v1, p0, Lw;->d:Lw$f;

    invoke-virtual {v1}, Lw$f;->getChangingConfigurations()I

    move-result v1

    or-int/2addr v0, v1

    goto :goto_0
.end method

.method public final bridge synthetic getColorFilter()Landroid/graphics/ColorFilter;
    .locals 1

    .prologue
    .line 195
    invoke-super {p0}, Lv;->getColorFilter()Landroid/graphics/ColorFilter;

    move-result-object v0

    return-object v0
.end method

.method public final getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar5;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar5;->b(I)V

    .prologue
    .line 268
    iget-object v0, p0, Lw;->b:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_0

    .line 270
    new-instance v0, Lw$g;

    iget-object v1, p0, Lw;->b:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v1

    invoke-direct {v0, v1}, Lw$g;-><init>(Landroid/graphics/drawable/Drawable$ConstantState;)V

    .line 273
    :goto_0
    return-object v0

    .line 272
    :cond_0
    iget-object v0, p0, Lw;->d:Lw$f;

    invoke-virtual {p0}, Lw;->getChangingConfigurations()I

    move-result v1

    iput v1, v0, Lw$f;->a:I

    .line 273
    iget-object v0, p0, Lw;->d:Lw$f;

    goto :goto_0
.end method

.method public final bridge synthetic getCurrent()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 195
    invoke-super {p0}, Lv;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public final getIntrinsicHeight()I
    .locals 1

    .prologue
    .line 481
    iget-object v0, p0, Lw;->b:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 482
    iget-object v0, p0, Lw;->b:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    .line 485
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lw;->d:Lw$f;

    iget-object v0, v0, Lw$f;->b:Lw$e;

    iget v0, v0, Lw$e;->c:F

    float-to-int v0, v0

    goto :goto_0
.end method

.method public final getIntrinsicWidth()I
    .locals 1

    .prologue
    .line 472
    iget-object v0, p0, Lw;->b:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 473
    iget-object v0, p0, Lw;->b:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    .line 476
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lw;->d:Lw$f;

    iget-object v0, v0, Lw$f;->b:Lw$e;

    iget v0, v0, Lw$e;->b:F

    float-to-int v0, v0

    goto :goto_0
.end method

.method public final bridge synthetic getMinimumHeight()I
    .locals 1

    .prologue
    .line 195
    invoke-super {p0}, Lv;->getMinimumHeight()I

    move-result v0

    return v0
.end method

.method public final bridge synthetic getMinimumWidth()I
    .locals 1

    .prologue
    .line 195
    invoke-super {p0}, Lv;->getMinimumWidth()I

    move-result v0

    return v0
.end method

.method public final getOpacity()I
    .locals 1

    .prologue
    .line 463
    iget-object v0, p0, Lw;->b:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 464
    iget-object v0, p0, Lw;->b:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v0

    .line 467
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x3

    goto :goto_0
.end method

.method public final bridge synthetic getPadding(Landroid/graphics/Rect;)Z
    .locals 1

    .prologue
    .line 195
    invoke-super {p0, p1}, Lv;->getPadding(Landroid/graphics/Rect;)Z

    move-result v0

    return v0
.end method

.method public final bridge synthetic getState()[I
    .locals 1

    .prologue
    .line 195
    invoke-super {p0}, Lv;->getState()[I

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic getTransparentRegion()Landroid/graphics/Region;
    .locals 1

    .prologue
    .line 195
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
    .line 600
    iget-object v0, p0, Lw;->b:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 601
    iget-object v0, p0, Lw;->b:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1, p2, p3}, Landroid/graphics/drawable/Drawable;->inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;)V

    .line 606
    :goto_0
    return-void

    .line 605
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lw;->inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V

    goto :goto_0
.end method

.method public final inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V
    .locals 10
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

    invoke-static {}, Lcom/pnf/dex2jar5;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar5;->b(I)V

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 611
    iget-object v3, p0, Lw;->b:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_0

    .line 612
    iget-object v3, p0, Lw;->b:Landroid/graphics/drawable/Drawable;

    invoke-static {v3, p1, p2, p3, p4}, Leb;->a(Landroid/graphics/drawable/Drawable;Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V

    .line 630
    :goto_0
    return-void

    .line 616
    :cond_0
    iget-object v2, p0, Lw;->d:Lw$f;

    .line 617
    .local v2, "state":Lw$f;
    new-instance v1, Lw$e;

    invoke-direct {v1}, Lw$e;-><init>()V

    .line 618
    .local v1, "pathRenderer":Lw$e;
    iput-object v1, v2, Lw$f;->b:Lw$e;

    .line 620
    sget-object v3, Lo;->a:[I

    invoke-static {p1, p4, p3, v3}, Lds;->a(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 4662
    .local v0, "a":Landroid/content/res/TypedArray;
    iget-object v4, p0, Lw;->d:Lw$f;

    .line 4663
    iget-object v5, v4, Lw$f;->b:Lw$e;

    .line 4668
    const-string/jumbo v3, "tintMode"

    const/4 v6, 0x6

    const/4 v7, -0x1

    invoke-static {v0, p2, v3, v6, v7}, Lds;->a(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;II)I

    move-result v6

    .line 4670
    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    .line 5638
    packed-switch v6, :pswitch_data_0

    .line 4670
    :cond_1
    :goto_1
    :pswitch_0
    iput-object v3, v4, Lw$f;->d:Landroid/graphics/PorterDuff$Mode;

    .line 4673
    invoke-virtual {v0, v9}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v3

    .line 4674
    if-eqz v3, :cond_2

    .line 4675
    iput-object v3, v4, Lw$f;->c:Landroid/content/res/ColorStateList;

    .line 4678
    :cond_2
    const-string/jumbo v3, "autoMirrored"

    const/4 v6, 0x5

    iget-boolean v7, v4, Lw$f;->e:Z

    invoke-static {v0, p2, v3, v6, v7}, Lds;->a(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;IZ)Z

    move-result v3

    iput-boolean v3, v4, Lw$f;->e:Z

    .line 4681
    const-string/jumbo v3, "viewportWidth"

    const/4 v4, 0x7

    iget v6, v5, Lw$e;->d:F

    invoke-static {v0, p2, v3, v4, v6}, Lds;->a(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;IF)F

    move-result v3

    iput v3, v5, Lw$e;->d:F

    .line 4685
    const-string/jumbo v3, "viewportHeight"

    const/16 v4, 0x8

    iget v6, v5, Lw$e;->e:F

    invoke-static {v0, p2, v3, v4, v6}, Lds;->a(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;IF)F

    move-result v3

    iput v3, v5, Lw$e;->e:F

    .line 4689
    iget v3, v5, Lw$e;->d:F

    cmpg-float v3, v3, v8

    if-gtz v3, :cond_3

    .line 4690
    new-instance v3, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->getPositionDescription()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "<vector> tag requires viewportWidth > 0"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 5640
    :pswitch_1
    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC_OVER:Landroid/graphics/PorterDuff$Mode;

    goto :goto_1

    .line 5642
    :pswitch_2
    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    goto :goto_1

    .line 5644
    :pswitch_3
    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    goto :goto_1

    .line 5646
    :pswitch_4
    sget-object v3, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    goto :goto_1

    .line 5648
    :pswitch_5
    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SCREEN:Landroid/graphics/PorterDuff$Mode;

    goto :goto_1

    .line 5650
    :pswitch_6
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0xb

    if-lt v6, v7, :cond_1

    .line 5651
    sget-object v3, Landroid/graphics/PorterDuff$Mode;->ADD:Landroid/graphics/PorterDuff$Mode;

    goto :goto_1

    .line 4692
    :cond_3
    iget v3, v5, Lw$e;->e:F

    cmpg-float v3, v3, v8

    if-gtz v3, :cond_4

    .line 4693
    new-instance v3, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->getPositionDescription()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "<vector> tag requires viewportHeight > 0"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 4697
    :cond_4
    const/4 v3, 0x3

    iget v4, v5, Lw$e;->b:F

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v3

    iput v3, v5, Lw$e;->b:F

    .line 4699
    const/4 v3, 0x2

    iget v4, v5, Lw$e;->c:F

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v3

    iput v3, v5, Lw$e;->c:F

    .line 4701
    iget v3, v5, Lw$e;->b:F

    cmpg-float v3, v3, v8

    if-gtz v3, :cond_5

    .line 4702
    new-instance v3, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->getPositionDescription()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "<vector> tag requires width > 0"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 4704
    :cond_5
    iget v3, v5, Lw$e;->c:F

    cmpg-float v3, v3, v8

    if-gtz v3, :cond_6

    .line 4705
    new-instance v3, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->getPositionDescription()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "<vector> tag requires height > 0"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 4710
    :cond_6
    const-string/jumbo v3, "alpha"

    const/4 v4, 0x4

    .line 4711
    invoke-virtual {v5}, Lw$e;->getAlpha()F

    move-result v6

    .line 4710
    invoke-static {v0, p2, v3, v4, v6}, Lds;->a(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;IF)F

    move-result v3

    .line 4712
    invoke-virtual {v5, v3}, Lw$e;->setAlpha(F)V

    .line 4714
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 4715
    if-eqz v3, :cond_7

    .line 4716
    iput-object v3, v5, Lw$e;->g:Ljava/lang/String;

    .line 4717
    iget-object v4, v5, Lw$e;->h:Lfk;

    invoke-virtual {v4, v3, v5}, Lfk;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 624
    :cond_7
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 625
    invoke-virtual {p0}, Lw;->getChangingConfigurations()I

    move-result v3

    iput v3, v2, Lw$f;->a:I

    .line 626
    iput-boolean v9, v2, Lw$f;->k:Z

    .line 627
    invoke-direct {p0, p1, p2, p3, p4}, Lw;->b(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V

    .line 629
    iget-object v3, v2, Lw$f;->c:Landroid/content/res/ColorStateList;

    iget-object v4, v2, Lw$f;->d:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {p0, v3, v4}, Lw;->a(Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;

    move-result-object v3

    iput-object v3, p0, Lw;->e:Landroid/graphics/PorterDuffColorFilter;

    goto/16 :goto_0

    .line 5638
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public final invalidateSelf()V
    .locals 1

    .prologue
    .line 847
    iget-object v0, p0, Lw;->b:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 848
    iget-object v0, p0, Lw;->b:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 852
    :goto_0
    return-void

    .line 851
    :cond_0
    invoke-super {p0}, Lv;->invalidateSelf()V

    goto :goto_0
.end method

.method public final isAutoMirrored()Z
    .locals 1

    .prologue
    .line 500
    iget-object v0, p0, Lw;->b:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 501
    iget-object v0, p0, Lw;->b:Landroid/graphics/drawable/Drawable;

    invoke-static {v0}, Leb;->b(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    .line 503
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lw;->d:Lw$f;

    iget-boolean v0, v0, Lw$f;->e:Z

    goto :goto_0
.end method

.method public final isStateful()Z
    .locals 1

    .prologue
    .line 438
    iget-object v0, p0, Lw;->b:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 439
    iget-object v0, p0, Lw;->b:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v0

    .line 443
    :goto_0
    return v0

    .line 442
    :cond_0
    invoke-super {p0}, Lv;->isStateful()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lw;->d:Lw$f;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lw;->d:Lw$f;

    iget-object v0, v0, Lw$f;->c:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lw;->d:Lw$f;

    iget-object v0, v0, Lw$f;->c:Landroid/content/res/ColorStateList;

    .line 443
    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->isStateful()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final bridge synthetic jumpToCurrentState()V
    .locals 0

    .prologue
    .line 195
    invoke-super {p0}, Lv;->jumpToCurrentState()V

    return-void
.end method

.method public final mutate()Landroid/graphics/drawable/Drawable;
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar5;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar5;->b(I)V

    .prologue
    .line 250
    iget-object v0, p0, Lw;->b:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    .line 251
    iget-object v0, p0, Lw;->b:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    .line 259
    :cond_0
    :goto_0
    return-object p0

    .line 255
    :cond_1
    iget-boolean v0, p0, Lw;->g:Z

    if-nez v0, :cond_0

    invoke-super {p0}, Lv;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-ne v0, p0, :cond_0

    .line 256
    new-instance v0, Lw$f;

    iget-object v1, p0, Lw;->d:Lw$f;

    invoke-direct {v0, v1}, Lw$f;-><init>(Lw$f;)V

    iput-object v0, p0, Lw;->d:Lw$f;

    .line 257
    const/4 v0, 0x1

    iput-boolean v0, p0, Lw;->g:Z

    goto :goto_0
.end method

.method protected final onBoundsChange(Landroid/graphics/Rect;)V
    .locals 1
    .param p1, "bounds"    # Landroid/graphics/Rect;

    .prologue
    .line 832
    iget-object v0, p0, Lw;->b:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 833
    iget-object v0, p0, Lw;->b:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 835
    :cond_0
    return-void
.end method

.method protected final onStateChange([I)Z
    .locals 3
    .param p1, "stateSet"    # [I

    invoke-static {}, Lcom/pnf/dex2jar5;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar5;->b(I)V

    .prologue
    .line 448
    iget-object v1, p0, Lw;->b:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    .line 449
    iget-object v1, p0, Lw;->b:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    move-result v1

    .line 458
    :goto_0
    return v1

    .line 452
    :cond_0
    iget-object v0, p0, Lw;->d:Lw$f;

    .line 453
    .local v0, "state":Lw$f;
    iget-object v1, v0, Lw$f;->c:Landroid/content/res/ColorStateList;

    if-eqz v1, :cond_1

    iget-object v1, v0, Lw$f;->d:Landroid/graphics/PorterDuff$Mode;

    if-eqz v1, :cond_1

    .line 454
    iget-object v1, v0, Lw$f;->c:Landroid/content/res/ColorStateList;

    iget-object v2, v0, Lw$f;->d:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {p0, v1, v2}, Lw;->a(Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;

    move-result-object v1

    iput-object v1, p0, Lw;->e:Landroid/graphics/PorterDuffColorFilter;

    .line 455
    invoke-virtual {p0}, Lw;->invalidateSelf()V

    .line 456
    const/4 v1, 0x1

    goto :goto_0

    .line 458
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public final scheduleSelf(Ljava/lang/Runnable;J)V
    .locals 2
    .param p1, "what"    # Ljava/lang/Runnable;
    .param p2, "when"    # J

    .prologue
    .line 856
    iget-object v0, p0, Lw;->b:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 857
    iget-object v0, p0, Lw;->b:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1, p2, p3}, Landroid/graphics/drawable/Drawable;->scheduleSelf(Ljava/lang/Runnable;J)V

    .line 861
    :goto_0
    return-void

    .line 860
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lv;->scheduleSelf(Ljava/lang/Runnable;J)V

    goto :goto_0
.end method

.method public final setAlpha(I)V
    .locals 1
    .param p1, "alpha"    # I

    .prologue
    .line 359
    iget-object v0, p0, Lw;->b:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    .line 360
    iget-object v0, p0, Lw;->b:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 368
    :cond_0
    :goto_0
    return-void

    .line 364
    :cond_1
    iget-object v0, p0, Lw;->d:Lw$f;

    iget-object v0, v0, Lw$f;->b:Lw$e;

    invoke-virtual {v0}, Lw$e;->getRootAlpha()I

    move-result v0

    if-eq v0, p1, :cond_0

    .line 365
    iget-object v0, p0, Lw;->d:Lw$f;

    iget-object v0, v0, Lw$f;->b:Lw$e;

    invoke-virtual {v0, p1}, Lw$e;->setRootAlpha(I)V

    .line 366
    invoke-virtual {p0}, Lw;->invalidateSelf()V

    goto :goto_0
.end method

.method public final setAutoMirrored(Z)V
    .locals 1
    .param p1, "mirrored"    # Z

    .prologue
    .line 508
    iget-object v0, p0, Lw;->b:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 509
    iget-object v0, p0, Lw;->b:Landroid/graphics/drawable/Drawable;

    invoke-static {v0, p1}, Leb;->a(Landroid/graphics/drawable/Drawable;Z)V

    .line 513
    :goto_0
    return-void

    .line 512
    :cond_0
    iget-object v0, p0, Lw;->d:Lw$f;

    iput-boolean p1, v0, Lw$f;->e:Z

    goto :goto_0
.end method

.method public final bridge synthetic setChangingConfigurations(I)V
    .locals 0

    .prologue
    .line 195
    invoke-super {p0, p1}, Lv;->setChangingConfigurations(I)V

    return-void
.end method

.method public final bridge synthetic setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V
    .locals 0

    .prologue
    .line 195
    invoke-super {p0, p1, p2}, Lv;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    return-void
.end method

.method public final setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1
    .param p1, "colorFilter"    # Landroid/graphics/ColorFilter;

    .prologue
    .line 372
    iget-object v0, p0, Lw;->b:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 373
    iget-object v0, p0, Lw;->b:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 379
    :goto_0
    return-void

    .line 377
    :cond_0
    iput-object p1, p0, Lw;->f:Landroid/graphics/ColorFilter;

    .line 378
    invoke-virtual {p0}, Lw;->invalidateSelf()V

    goto :goto_0
.end method

.method public final bridge synthetic setFilterBitmap(Z)V
    .locals 0

    .prologue
    .line 195
    invoke-super {p0, p1}, Lv;->setFilterBitmap(Z)V

    return-void
.end method

.method public final bridge synthetic setHotspot(FF)V
    .locals 0

    .prologue
    .line 195
    invoke-super {p0, p1, p2}, Lv;->setHotspot(FF)V

    return-void
.end method

.method public final bridge synthetic setHotspotBounds(IIII)V
    .locals 0

    .prologue
    .line 195
    invoke-super {p0, p1, p2, p3, p4}, Lv;->setHotspotBounds(IIII)V

    return-void
.end method

.method public final bridge synthetic setState([I)Z
    .locals 1

    .prologue
    .line 195
    invoke-super {p0, p1}, Lv;->setState([I)Z

    move-result v0

    return v0
.end method

.method public final setTint(I)V
    .locals 1
    .param p1, "tint"    # I

    .prologue
    .line 398
    iget-object v0, p0, Lw;->b:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 399
    iget-object v0, p0, Lw;->b:Landroid/graphics/drawable/Drawable;

    invoke-static {v0, p1}, Leb;->a(Landroid/graphics/drawable/Drawable;I)V

    .line 404
    :goto_0
    return-void

    .line 403
    :cond_0
    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {p0, v0}, Lw;->setTintList(Landroid/content/res/ColorStateList;)V

    goto :goto_0
.end method

.method public final setTintList(Landroid/content/res/ColorStateList;)V
    .locals 2
    .param p1, "tint"    # Landroid/content/res/ColorStateList;

    invoke-static {}, Lcom/pnf/dex2jar5;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar5;->b(I)V

    .prologue
    .line 408
    iget-object v1, p0, Lw;->b:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_1

    .line 409
    iget-object v1, p0, Lw;->b:Landroid/graphics/drawable/Drawable;

    invoke-static {v1, p1}, Leb;->a(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    .line 419
    :cond_0
    :goto_0
    return-void

    .line 413
    :cond_1
    iget-object v0, p0, Lw;->d:Lw$f;

    .line 414
    .local v0, "state":Lw$f;
    iget-object v1, v0, Lw$f;->c:Landroid/content/res/ColorStateList;

    if-eq v1, p1, :cond_0

    .line 415
    iput-object p1, v0, Lw$f;->c:Landroid/content/res/ColorStateList;

    .line 416
    iget-object v1, v0, Lw$f;->d:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {p0, p1, v1}, Lw;->a(Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;

    move-result-object v1

    iput-object v1, p0, Lw;->e:Landroid/graphics/PorterDuffColorFilter;

    .line 417
    invoke-virtual {p0}, Lw;->invalidateSelf()V

    goto :goto_0
.end method

.method public final setTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 2
    .param p1, "tintMode"    # Landroid/graphics/PorterDuff$Mode;

    invoke-static {}, Lcom/pnf/dex2jar5;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar5;->b(I)V

    .prologue
    .line 423
    iget-object v1, p0, Lw;->b:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_1

    .line 424
    iget-object v1, p0, Lw;->b:Landroid/graphics/drawable/Drawable;

    invoke-static {v1, p1}, Leb;->a(Landroid/graphics/drawable/Drawable;Landroid/graphics/PorterDuff$Mode;)V

    .line 434
    :cond_0
    :goto_0
    return-void

    .line 428
    :cond_1
    iget-object v0, p0, Lw;->d:Lw$f;

    .line 429
    .local v0, "state":Lw$f;
    iget-object v1, v0, Lw$f;->d:Landroid/graphics/PorterDuff$Mode;

    if-eq v1, p1, :cond_0

    .line 430
    iput-object p1, v0, Lw$f;->d:Landroid/graphics/PorterDuff$Mode;

    .line 431
    iget-object v1, v0, Lw$f;->c:Landroid/content/res/ColorStateList;

    invoke-direct {p0, v1, p1}, Lw;->a(Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;

    move-result-object v1

    iput-object v1, p0, Lw;->e:Landroid/graphics/PorterDuffColorFilter;

    .line 432
    invoke-virtual {p0}, Lw;->invalidateSelf()V

    goto :goto_0
.end method

.method public final setVisible(ZZ)Z
    .locals 1
    .param p1, "visible"    # Z
    .param p2, "restart"    # Z

    .prologue
    .line 865
    iget-object v0, p0, Lw;->b:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 866
    iget-object v0, p0, Lw;->b:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    move-result v0

    .line 868
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Lv;->setVisible(ZZ)Z

    move-result v0

    goto :goto_0
.end method

.method public final unscheduleSelf(Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "what"    # Ljava/lang/Runnable;

    .prologue
    .line 873
    iget-object v0, p0, Lw;->b:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 874
    iget-object v0, p0, Lw;->b:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->unscheduleSelf(Ljava/lang/Runnable;)V

    .line 878
    :goto_0
    return-void

    .line 877
    :cond_0
    invoke-super {p0, p1}, Lv;->unscheduleSelf(Ljava/lang/Runnable;)V

    goto :goto_0
.end method
