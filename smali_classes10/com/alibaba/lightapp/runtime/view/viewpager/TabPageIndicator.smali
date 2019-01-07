.class public Lcom/alibaba/lightapp/runtime/view/viewpager/TabPageIndicator;
.super Landroid/widget/HorizontalScrollView;
.source "TabPageIndicator.java"

# interfaces
.implements Lhrz;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/lightapp/runtime/view/viewpager/TabPageIndicator$b;,
        Lcom/alibaba/lightapp/runtime/view/viewpager/TabPageIndicator$a;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/CharSequence;


# instance fields
.field private b:Ljava/lang/Runnable;

.field private c:Lcom/alibaba/lightapp/runtime/config/TabConfiguration;

.field private final d:Landroid/view/View$OnClickListener;

.field private final e:Lhry;

.field private f:Landroid/support/v4/view/ViewPager;

.field private g:Landroid/support/v4/view/ViewPager$d;

.field private h:I

.field private i:I

.field private j:Lcom/alibaba/lightapp/runtime/view/viewpager/TabPageIndicator$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 55
    const-string/jumbo v0, ""

    sput-object v0, Lcom/alibaba/lightapp/runtime/view/viewpager/TabPageIndicator;->a:Ljava/lang/CharSequence;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 124
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/alibaba/lightapp/runtime/view/viewpager/TabPageIndicator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 125
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v3, -0x1

    .line 128
    invoke-direct {p0, p1, p2}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 83
    new-instance v0, Lcom/alibaba/lightapp/runtime/view/viewpager/TabPageIndicator$1;

    invoke-direct {v0, p0}, Lcom/alibaba/lightapp/runtime/view/viewpager/TabPageIndicator$1;-><init>(Lcom/alibaba/lightapp/runtime/view/viewpager/TabPageIndicator;)V

    iput-object v0, p0, Lcom/alibaba/lightapp/runtime/view/viewpager/TabPageIndicator;->d:Landroid/view/View$OnClickListener;

    .line 129
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/alibaba/lightapp/runtime/view/viewpager/TabPageIndicator;->setHorizontalScrollBarEnabled(Z)V

    .line 131
    new-instance v0, Lhry;

    sget v1, Lhdn$d;->vpiTabPageIndicatorStyle:I

    invoke-direct {v0, p1, v1}, Lhry;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/alibaba/lightapp/runtime/view/viewpager/TabPageIndicator;->e:Lhry;

    .line 132
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/view/viewpager/TabPageIndicator;->e:Lhry;

    invoke-virtual {v0, v3}, Lhry;->setBackgroundColor(I)V

    .line 133
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/view/viewpager/TabPageIndicator;->e:Lhry;

    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    const/4 v2, -0x2

    invoke-direct {v1, v2, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v1}, Lcom/alibaba/lightapp/runtime/view/viewpager/TabPageIndicator;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 134
    return-void
.end method

.method private static a(III)Landroid/graphics/drawable/StateListDrawable;
    .locals 11
    .param p0, "normalColor"    # I
    .param p1, "selectedColor"    # I
    .param p2, "borderWidth"    # I

    .prologue
    const/4 v10, 0x1

    const/4 v1, 0x0

    .line 279
    new-instance v6, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v6}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    .line 280
    .local v6, "bg":Landroid/graphics/drawable/StateListDrawable;
    const/4 v2, -0x1

    if-ne p0, v2, :cond_0

    const/4 v9, 0x0

    .line 284
    .local v9, "normal":Landroid/graphics/drawable/Drawable;
    :goto_0
    new-instance v7, Landroid/graphics/drawable/ShapeDrawable;

    new-instance v2, Landroid/graphics/drawable/shapes/RectShape;

    invoke-direct {v2}, Landroid/graphics/drawable/shapes/RectShape;-><init>()V

    invoke-direct {v7, v2}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    .line 285
    .local v7, "drawable":Landroid/graphics/drawable/ShapeDrawable;
    invoke-virtual {v7}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v2

    sget-object v3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 286
    invoke-virtual {v7}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 287
    invoke-virtual {v7}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v2

    int-to-float v3, p2

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 289
    new-array v8, v10, [Landroid/graphics/drawable/Drawable;

    aput-object v7, v8, v1

    .line 290
    .local v8, "layers":[Landroid/graphics/drawable/Drawable;
    new-instance v0, Landroid/graphics/drawable/LayerDrawable;

    invoke-direct {v0, v8}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    .line 291
    .local v0, "layerDrawable":Landroid/graphics/drawable/LayerDrawable;
    neg-int v2, p2

    neg-int v3, p2

    neg-int v4, p2

    move v5, v1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/drawable/LayerDrawable;->setLayerInset(IIIII)V

    .line 294
    new-array v2, v10, [I

    const v3, 0x10100a1

    aput v3, v2, v1

    invoke-virtual {v6, v2, v0}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 296
    sget-object v1, Landroid/util/StateSet;->WILD_CARD:[I

    invoke-virtual {v6, v1, v9}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 298
    return-object v6

    .line 280
    .end local v0    # "layerDrawable":Landroid/graphics/drawable/LayerDrawable;
    .end local v7    # "drawable":Landroid/graphics/drawable/ShapeDrawable;
    .end local v8    # "layers":[Landroid/graphics/drawable/Drawable;
    .end local v9    # "normal":Landroid/graphics/drawable/Drawable;
    :cond_0
    new-instance v9, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v9, p0}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/alibaba/lightapp/runtime/view/viewpager/TabPageIndicator;)Landroid/support/v4/view/ViewPager;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/view/viewpager/TabPageIndicator;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/view/viewpager/TabPageIndicator;->f:Landroid/support/v4/view/ViewPager;

    return-object v0
.end method

.method static synthetic a(Lcom/alibaba/lightapp/runtime/view/viewpager/TabPageIndicator;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/view/viewpager/TabPageIndicator;
    .param p1, "x1"    # Ljava/lang/Runnable;

    .prologue
    .line 53
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alibaba/lightapp/runtime/view/viewpager/TabPageIndicator;->b:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic a(Lcom/alibaba/lightapp/runtime/view/viewpager/TabPageIndicator;I)V
    .locals 5
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/view/viewpager/TabPageIndicator;
    .param p1, "x1"    # I

    .prologue
    const/4 v1, 0x0

    .line 53
    .line 3099
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/view/viewpager/TabPageIndicator;->e:Lhry;

    invoke-virtual {v0}, Lhry;->getChildCount()I

    move-result v2

    .line 3100
    if-lez v2, :cond_1

    move v0, v1

    .line 3101
    :goto_0
    if-ge v0, v2, :cond_1

    .line 3102
    iget-object v3, p0, Lcom/alibaba/lightapp/runtime/view/viewpager/TabPageIndicator;->e:Lhry;

    invoke-virtual {v3, v0}, Lhry;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 3103
    if-ne v0, p1, :cond_0

    .line 3104
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/view/View;->setSelected(Z)V

    .line 3101
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3106
    :cond_0
    invoke-virtual {v3, v1}, Landroid/view/View;->setSelected(Z)V

    goto :goto_1

    .line 53
    :cond_1
    return-void
.end method

.method static synthetic b(Lcom/alibaba/lightapp/runtime/view/viewpager/TabPageIndicator;)Lcom/alibaba/lightapp/runtime/view/viewpager/TabPageIndicator$a;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/view/viewpager/TabPageIndicator;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/view/viewpager/TabPageIndicator;->j:Lcom/alibaba/lightapp/runtime/view/viewpager/TabPageIndicator$a;

    return-object v0
.end method

.method static synthetic c(Lcom/alibaba/lightapp/runtime/view/viewpager/TabPageIndicator;)I
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/view/viewpager/TabPageIndicator;

    .prologue
    .line 53
    iget v0, p0, Lcom/alibaba/lightapp/runtime/view/viewpager/TabPageIndicator;->h:I

    return v0
.end method


# virtual methods
.method public final a()V
    .locals 20

    .prologue
    .line 341
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/alibaba/lightapp/runtime/view/viewpager/TabPageIndicator;->e:Lhry;

    invoke-virtual {v9}, Lhry;->removeAllViews()V

    .line 342
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/alibaba/lightapp/runtime/view/viewpager/TabPageIndicator;->c:Lcom/alibaba/lightapp/runtime/config/TabConfiguration;

    if-eqz v9, :cond_5

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/alibaba/lightapp/runtime/view/viewpager/TabPageIndicator;->c:Lcom/alibaba/lightapp/runtime/config/TabConfiguration;

    invoke-virtual {v9}, Lcom/alibaba/lightapp/runtime/config/TabConfiguration;->getTabBgColor()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_5

    .line 344
    :try_start_0
    new-instance v9, Ljava/lang/StringBuilder;

    const-string/jumbo v10, "#"

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/alibaba/lightapp/runtime/view/viewpager/TabPageIndicator;->c:Lcom/alibaba/lightapp/runtime/config/TabConfiguration;

    invoke-virtual {v10}, Lcom/alibaba/lightapp/runtime/config/TabConfiguration;->getTabBgColor()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    .line 345
    .local v2, "color":I
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/alibaba/lightapp/runtime/view/viewpager/TabPageIndicator;->e:Lhry;

    invoke-virtual {v9, v2}, Lhry;->setBackgroundColor(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 352
    .end local v2    # "color":I
    :goto_0
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/alibaba/lightapp/runtime/view/viewpager/TabPageIndicator;->f:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v9}, Landroid/support/v4/view/ViewPager;->getAdapter()Lgl;

    move-result-object v1

    .line 353
    .local v1, "adapter":Lgl;
    const/4 v6, 0x0

    .line 354
    .local v6, "iconAdapter":Lhrx;
    instance-of v9, v1, Lhrx;

    if-eqz v9, :cond_0

    move-object v6, v1

    .line 355
    check-cast v6, Lhrx;

    .line 357
    :cond_0
    invoke-virtual {v1}, Lgl;->getCount()I

    move-result v3

    .line 358
    .local v3, "count":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_1
    if-ge v5, v3, :cond_c

    .line 359
    invoke-virtual {v1, v5}, Lgl;->getPageTitle(I)Ljava/lang/CharSequence;

    move-result-object v8

    .line 360
    .local v8, "title":Ljava/lang/CharSequence;
    if-nez v8, :cond_1

    .line 361
    sget-object v8, Lcom/alibaba/lightapp/runtime/view/viewpager/TabPageIndicator;->a:Ljava/lang/CharSequence;

    .line 363
    :cond_1
    const/4 v7, 0x0

    .line 364
    .local v7, "iconResId":I
    if-eqz v6, :cond_2

    .line 365
    invoke-interface {v6}, Lhrx;->a()I

    move-result v7

    .line 1205
    :cond_2
    new-instance v14, Lcom/alibaba/lightapp/runtime/view/viewpager/TabPageIndicator$b;

    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/lightapp/runtime/view/viewpager/TabPageIndicator;->getContext()Landroid/content/Context;

    move-result-object v9

    move-object/from16 v0, p0

    invoke-direct {v14, v0, v9}, Lcom/alibaba/lightapp/runtime/view/viewpager/TabPageIndicator$b;-><init>(Lcom/alibaba/lightapp/runtime/view/viewpager/TabPageIndicator;Landroid/content/Context;)V

    .line 1206
    invoke-static {v14, v5}, Lcom/alibaba/lightapp/runtime/view/viewpager/TabPageIndicator$b;->a(Lcom/alibaba/lightapp/runtime/view/viewpager/TabPageIndicator$b;I)I

    .line 1207
    const/4 v9, 0x1

    invoke-virtual {v14, v9}, Lcom/alibaba/lightapp/runtime/view/viewpager/TabPageIndicator$b;->setFocusable(Z)V

    .line 1208
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/alibaba/lightapp/runtime/view/viewpager/TabPageIndicator;->d:Landroid/view/View$OnClickListener;

    invoke-virtual {v14, v9}, Lcom/alibaba/lightapp/runtime/view/viewpager/TabPageIndicator$b;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1209
    invoke-virtual {v14, v8}, Lcom/alibaba/lightapp/runtime/view/viewpager/TabPageIndicator$b;->setText(Ljava/lang/CharSequence;)V

    .line 1211
    const/4 v9, 0x0

    .line 1212
    const/4 v10, 0x0

    .line 1214
    const/4 v11, 0x0

    .line 1215
    const/4 v12, 0x0

    .line 1217
    const/4 v13, 0x0

    .line 1219
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/alibaba/lightapp/runtime/view/viewpager/TabPageIndicator;->c:Lcom/alibaba/lightapp/runtime/config/TabConfiguration;

    if-eqz v15, :cond_3

    .line 1220
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/alibaba/lightapp/runtime/view/viewpager/TabPageIndicator;->c:Lcom/alibaba/lightapp/runtime/config/TabConfiguration;

    invoke-virtual {v9}, Lcom/alibaba/lightapp/runtime/config/TabConfiguration;->getTextNormalColor()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_6

    new-instance v9, Ljava/lang/StringBuilder;

    const-string/jumbo v10, "#"

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/alibaba/lightapp/runtime/view/viewpager/TabPageIndicator;->c:Lcom/alibaba/lightapp/runtime/config/TabConfiguration;

    invoke-virtual {v10}, Lcom/alibaba/lightapp/runtime/config/TabConfiguration;->getTextNormalColor()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v9

    .line 1221
    :goto_2
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/alibaba/lightapp/runtime/view/viewpager/TabPageIndicator;->c:Lcom/alibaba/lightapp/runtime/config/TabConfiguration;

    invoke-virtual {v10}, Lcom/alibaba/lightapp/runtime/config/TabConfiguration;->getTextSelectedColor()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_7

    new-instance v10, Ljava/lang/StringBuilder;

    const-string/jumbo v11, "#"

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/alibaba/lightapp/runtime/view/viewpager/TabPageIndicator;->c:Lcom/alibaba/lightapp/runtime/config/TabConfiguration;

    invoke-virtual {v11}, Lcom/alibaba/lightapp/runtime/config/TabConfiguration;->getTextSelectedColor()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v10

    .line 1223
    :goto_3
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/alibaba/lightapp/runtime/view/viewpager/TabPageIndicator;->c:Lcom/alibaba/lightapp/runtime/config/TabConfiguration;

    invoke-virtual {v11}, Lcom/alibaba/lightapp/runtime/config/TabConfiguration;->getBorderNormalColor()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_8

    new-instance v11, Ljava/lang/StringBuilder;

    const-string/jumbo v12, "#"

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/alibaba/lightapp/runtime/view/viewpager/TabPageIndicator;->c:Lcom/alibaba/lightapp/runtime/config/TabConfiguration;

    invoke-virtual {v12}, Lcom/alibaba/lightapp/runtime/config/TabConfiguration;->getBorderNormalColor()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v11

    .line 1224
    :goto_4
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/alibaba/lightapp/runtime/view/viewpager/TabPageIndicator;->c:Lcom/alibaba/lightapp/runtime/config/TabConfiguration;

    invoke-virtual {v12}, Lcom/alibaba/lightapp/runtime/config/TabConfiguration;->getBorderSelectedColor()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_9

    new-instance v12, Ljava/lang/StringBuilder;

    const-string/jumbo v13, "#"

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/alibaba/lightapp/runtime/view/viewpager/TabPageIndicator;->c:Lcom/alibaba/lightapp/runtime/config/TabConfiguration;

    invoke-virtual {v13}, Lcom/alibaba/lightapp/runtime/config/TabConfiguration;->getBorderSelectedColor()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v12

    .line 1226
    :goto_5
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/alibaba/lightapp/runtime/view/viewpager/TabPageIndicator;->c:Lcom/alibaba/lightapp/runtime/config/TabConfiguration;

    invoke-virtual {v13}, Lcom/alibaba/lightapp/runtime/config/TabConfiguration;->getBorderWidth()I

    move-result v13

    if-lez v13, :cond_a

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/alibaba/lightapp/runtime/view/viewpager/TabPageIndicator;->c:Lcom/alibaba/lightapp/runtime/config/TabConfiguration;

    invoke-virtual {v13}, Lcom/alibaba/lightapp/runtime/config/TabConfiguration;->getBorderWidth()I

    move-result v13

    .line 1263
    :cond_3
    :goto_6
    const/4 v15, 0x2

    new-array v15, v15, [[I

    const/16 v16, 0x0

    const/16 v17, 0x1

    move/from16 v0, v17

    new-array v0, v0, [I

    move-object/from16 v17, v0

    const/16 v18, 0x0

    const v19, 0x10100a1

    aput v19, v17, v18

    aput-object v17, v15, v16

    const/16 v16, 0x1

    const/16 v17, 0x0

    move/from16 v0, v17

    new-array v0, v0, [I

    move-object/from16 v17, v0

    aput-object v17, v15, v16

    .line 1268
    const/16 v16, 0x2

    move/from16 v0, v16

    new-array v0, v0, [I

    move-object/from16 v16, v0

    const/16 v17, 0x0

    aput v10, v16, v17

    const/4 v10, 0x1

    aput v9, v16, v10

    .line 1273
    new-instance v9, Landroid/content/res/ColorStateList;

    move-object/from16 v0, v16

    invoke-direct {v9, v15, v0}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    .line 1229
    invoke-virtual {v14, v9}, Lcom/alibaba/lightapp/runtime/view/viewpager/TabPageIndicator$b;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 1231
    sget v9, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v10, 0x10

    if-lt v9, v10, :cond_b

    .line 1232
    invoke-static {v11, v12, v13}, Lcom/alibaba/lightapp/runtime/view/viewpager/TabPageIndicator;->a(III)Landroid/graphics/drawable/StateListDrawable;

    move-result-object v9

    invoke-virtual {v14, v9}, Lcom/alibaba/lightapp/runtime/view/viewpager/TabPageIndicator$b;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 1237
    :goto_7
    if-eqz v7, :cond_4

    .line 1238
    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual {v14, v7, v9, v10, v11}, Lcom/alibaba/lightapp/runtime/view/viewpager/TabPageIndicator$b;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 1241
    :cond_4
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/alibaba/lightapp/runtime/view/viewpager/TabPageIndicator;->e:Lhry;

    new-instance v10, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v11, 0x0

    const/4 v12, -0x1

    const/high16 v13, 0x3f800000    # 1.0f

    invoke-direct {v10, v11, v12, v13}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v9, v14, v10}, Lhry;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 358
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_1

    .line 346
    .end local v1    # "adapter":Lgl;
    .end local v3    # "count":I
    .end local v5    # "i":I
    .end local v6    # "iconAdapter":Lhrx;
    .end local v7    # "iconResId":I
    .end local v8    # "title":Ljava/lang/CharSequence;
    :catch_0
    move-exception v4

    .line 347
    .local v4, "e":Ljava/lang/Exception;
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    .line 350
    .end local v4    # "e":Ljava/lang/Exception;
    :cond_5
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/alibaba/lightapp/runtime/view/viewpager/TabPageIndicator;->e:Lhry;

    const/4 v10, -0x1

    invoke-virtual {v9, v10}, Lhry;->setBackgroundColor(I)V

    goto/16 :goto_0

    .line 1220
    .restart local v1    # "adapter":Lgl;
    .restart local v3    # "count":I
    .restart local v5    # "i":I
    .restart local v6    # "iconAdapter":Lhrx;
    .restart local v7    # "iconResId":I
    .restart local v8    # "title":Ljava/lang/CharSequence;
    :cond_6
    const v9, -0x777778

    goto/16 :goto_2

    .line 1221
    :cond_7
    const v10, -0xffff01

    goto/16 :goto_3

    .line 1223
    :cond_8
    const/4 v11, -0x1

    goto/16 :goto_4

    .line 1224
    :cond_9
    const v12, -0xffff01

    goto/16 :goto_5

    .line 1226
    :cond_a
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/lightapp/runtime/view/viewpager/TabPageIndicator;->getContext()Landroid/content/Context;

    move-result-object v13

    const/high16 v15, 0x41000000    # 8.0f

    invoke-static {v13, v15}, Lcms;->c(Landroid/content/Context;F)I

    move-result v13

    goto/16 :goto_6

    .line 1234
    :cond_b
    invoke-static {v11, v12, v13}, Lcom/alibaba/lightapp/runtime/view/viewpager/TabPageIndicator;->a(III)Landroid/graphics/drawable/StateListDrawable;

    move-result-object v9

    invoke-virtual {v14, v9}, Lcom/alibaba/lightapp/runtime/view/viewpager/TabPageIndicator$b;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_7

    .line 369
    .end local v7    # "iconResId":I
    .end local v8    # "title":Ljava/lang/CharSequence;
    :cond_c
    move-object/from16 v0, p0

    iget v9, v0, Lcom/alibaba/lightapp/runtime/view/viewpager/TabPageIndicator;->i:I

    if-le v9, v3, :cond_d

    .line 370
    add-int/lit8 v9, v3, -0x1

    move-object/from16 v0, p0

    iput v9, v0, Lcom/alibaba/lightapp/runtime/view/viewpager/TabPageIndicator;->i:I

    .line 372
    :cond_d
    move-object/from16 v0, p0

    iget v9, v0, Lcom/alibaba/lightapp/runtime/view/viewpager/TabPageIndicator;->i:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lcom/alibaba/lightapp/runtime/view/viewpager/TabPageIndicator;->setCurrentItem(I)V

    .line 373
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/lightapp/runtime/view/viewpager/TabPageIndicator;->requestLayout()V

    .line 374
    return-void
.end method

.method public onAttachedToWindow()V
    .locals 1

    .prologue
    .line 189
    invoke-super {p0}, Landroid/widget/HorizontalScrollView;->onAttachedToWindow()V

    .line 190
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/view/viewpager/TabPageIndicator;->b:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 192
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/view/viewpager/TabPageIndicator;->b:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/alibaba/lightapp/runtime/view/viewpager/TabPageIndicator;->post(Ljava/lang/Runnable;)Z

    .line 194
    :cond_0
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 198
    invoke-super {p0}, Landroid/widget/HorizontalScrollView;->onDetachedFromWindow()V

    .line 199
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/view/viewpager/TabPageIndicator;->b:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 200
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/view/viewpager/TabPageIndicator;->b:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/alibaba/lightapp/runtime/view/viewpager/TabPageIndicator;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 202
    :cond_0
    return-void
.end method

.method public onMeasure(II)V
    .locals 8
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/high16 v7, 0x40000000    # 2.0f

    const/4 v5, 0x1

    .line 147
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v4

    .line 148
    .local v4, "widthMode":I
    if-ne v4, v7, :cond_2

    move v1, v5

    .line 149
    .local v1, "lockedExpanded":Z
    :goto_0
    invoke-virtual {p0, v1}, Lcom/alibaba/lightapp/runtime/view/viewpager/TabPageIndicator;->setFillViewport(Z)V

    .line 151
    iget-object v6, p0, Lcom/alibaba/lightapp/runtime/view/viewpager/TabPageIndicator;->e:Lhry;

    invoke-virtual {v6}, Lhry;->getChildCount()I

    move-result v0

    .line 152
    .local v0, "childCount":I
    if-le v0, v5, :cond_4

    if-eq v4, v7, :cond_0

    const/high16 v5, -0x80000000

    if-ne v4, v5, :cond_4

    .line 153
    :cond_0
    const/4 v5, 0x2

    if-le v0, v5, :cond_3

    .line 154
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v5

    int-to-float v5, v5

    const v6, 0x3ecccccd    # 0.4f

    mul-float/2addr v5, v6

    float-to-int v5, v5

    iput v5, p0, Lcom/alibaba/lightapp/runtime/view/viewpager/TabPageIndicator;->h:I

    .line 162
    :goto_1
    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/view/viewpager/TabPageIndicator;->getMeasuredWidth()I

    move-result v3

    .line 163
    .local v3, "oldWidth":I
    invoke-super {p0, p1, p2}, Landroid/widget/HorizontalScrollView;->onMeasure(II)V

    .line 164
    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/view/viewpager/TabPageIndicator;->getMeasuredWidth()I

    move-result v2

    .line 166
    .local v2, "newWidth":I
    if-eqz v1, :cond_1

    if-eq v3, v2, :cond_1

    .line 168
    iget v5, p0, Lcom/alibaba/lightapp/runtime/view/viewpager/TabPageIndicator;->i:I

    invoke-virtual {p0, v5}, Lcom/alibaba/lightapp/runtime/view/viewpager/TabPageIndicator;->setCurrentItem(I)V

    .line 170
    :cond_1
    return-void

    .line 148
    .end local v0    # "childCount":I
    .end local v1    # "lockedExpanded":Z
    .end local v2    # "newWidth":I
    .end local v3    # "oldWidth":I
    :cond_2
    const/4 v1, 0x0

    goto :goto_0

    .line 156
    .restart local v0    # "childCount":I
    .restart local v1    # "lockedExpanded":Z
    :cond_3
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    iput v5, p0, Lcom/alibaba/lightapp/runtime/view/viewpager/TabPageIndicator;->h:I

    goto :goto_1

    .line 159
    :cond_4
    const/4 v5, -0x1

    iput v5, p0, Lcom/alibaba/lightapp/runtime/view/viewpager/TabPageIndicator;->h:I

    goto :goto_1
.end method

.method public onPageScrollStateChanged(I)V
    .locals 1
    .param p1, "arg0"    # I

    .prologue
    .line 303
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/view/viewpager/TabPageIndicator;->g:Landroid/support/v4/view/ViewPager$d;

    if-eqz v0, :cond_0

    .line 304
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/view/viewpager/TabPageIndicator;->g:Landroid/support/v4/view/ViewPager$d;

    invoke-interface {v0, p1}, Landroid/support/v4/view/ViewPager$d;->onPageScrollStateChanged(I)V

    .line 306
    :cond_0
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 1
    .param p1, "arg0"    # I
    .param p2, "arg1"    # F
    .param p3, "arg2"    # I

    .prologue
    .line 310
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/view/viewpager/TabPageIndicator;->g:Landroid/support/v4/view/ViewPager$d;

    if-eqz v0, :cond_0

    .line 311
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/view/viewpager/TabPageIndicator;->g:Landroid/support/v4/view/ViewPager$d;

    invoke-interface {v0, p1, p2, p3}, Landroid/support/v4/view/ViewPager$d;->onPageScrolled(IFI)V

    .line 313
    :cond_0
    return-void
.end method

.method public onPageSelected(I)V
    .locals 1
    .param p1, "arg0"    # I

    .prologue
    .line 317
    invoke-virtual {p0, p1}, Lcom/alibaba/lightapp/runtime/view/viewpager/TabPageIndicator;->setCurrentItem(I)V

    .line 318
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/view/viewpager/TabPageIndicator;->g:Landroid/support/v4/view/ViewPager$d;

    if-eqz v0, :cond_0

    .line 319
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/view/viewpager/TabPageIndicator;->g:Landroid/support/v4/view/ViewPager$d;

    invoke-interface {v0, p1}, Landroid/support/v4/view/ViewPager$d;->onPageSelected(I)V

    .line 321
    :cond_0
    return-void
.end method

.method public setCurrentItem(I)V
    .locals 6
    .param p1, "item"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 384
    iget-object v4, p0, Lcom/alibaba/lightapp/runtime/view/viewpager/TabPageIndicator;->f:Landroid/support/v4/view/ViewPager;

    if-nez v4, :cond_0

    .line 385
    new-instance v4, Ljava/lang/IllegalStateException;

    const-string/jumbo v5, "ViewPager has not been bound."

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 387
    :cond_0
    iput p1, p0, Lcom/alibaba/lightapp/runtime/view/viewpager/TabPageIndicator;->i:I

    .line 388
    iget-object v4, p0, Lcom/alibaba/lightapp/runtime/view/viewpager/TabPageIndicator;->f:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v4, p1}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 390
    iget-object v4, p0, Lcom/alibaba/lightapp/runtime/view/viewpager/TabPageIndicator;->e:Lhry;

    invoke-virtual {v4}, Lhry;->getChildCount()I

    move-result v3

    .line 391
    .local v3, "tabCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v3, :cond_4

    .line 392
    iget-object v4, p0, Lcom/alibaba/lightapp/runtime/view/viewpager/TabPageIndicator;->e:Lhry;

    invoke-virtual {v4, v1}, Lhry;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 393
    .local v0, "child":Landroid/view/View;
    if-ne v1, p1, :cond_3

    const/4 v2, 0x1

    .line 394
    .local v2, "isSelected":Z
    :goto_1
    invoke-virtual {v0, v2}, Landroid/view/View;->setSelected(Z)V

    .line 395
    if-eqz v2, :cond_2

    .line 2173
    iget-object v4, p0, Lcom/alibaba/lightapp/runtime/view/viewpager/TabPageIndicator;->e:Lhry;

    invoke-virtual {v4, p1}, Lhry;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 2174
    iget-object v5, p0, Lcom/alibaba/lightapp/runtime/view/viewpager/TabPageIndicator;->b:Ljava/lang/Runnable;

    if-eqz v5, :cond_1

    .line 2175
    iget-object v5, p0, Lcom/alibaba/lightapp/runtime/view/viewpager/TabPageIndicator;->b:Ljava/lang/Runnable;

    invoke-virtual {p0, v5}, Lcom/alibaba/lightapp/runtime/view/viewpager/TabPageIndicator;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 2177
    :cond_1
    new-instance v5, Lcom/alibaba/lightapp/runtime/view/viewpager/TabPageIndicator$2;

    invoke-direct {v5, p0, v4}, Lcom/alibaba/lightapp/runtime/view/viewpager/TabPageIndicator$2;-><init>(Lcom/alibaba/lightapp/runtime/view/viewpager/TabPageIndicator;Landroid/view/View;)V

    iput-object v5, p0, Lcom/alibaba/lightapp/runtime/view/viewpager/TabPageIndicator;->b:Ljava/lang/Runnable;

    .line 2184
    iget-object v4, p0, Lcom/alibaba/lightapp/runtime/view/viewpager/TabPageIndicator;->b:Ljava/lang/Runnable;

    invoke-virtual {p0, v4}, Lcom/alibaba/lightapp/runtime/view/viewpager/TabPageIndicator;->post(Ljava/lang/Runnable;)Z

    .line 391
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 393
    .end local v2    # "isSelected":Z
    :cond_3
    const/4 v2, 0x0

    goto :goto_1

    .line 399
    .end local v0    # "child":Landroid/view/View;
    :cond_4
    return-void
.end method

.method public setOnPageChangeListener(Landroid/support/v4/view/ViewPager$d;)V
    .locals 0
    .param p1, "listener"    # Landroid/support/v4/view/ViewPager$d;

    .prologue
    .line 403
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/view/viewpager/TabPageIndicator;->g:Landroid/support/v4/view/ViewPager$d;

    .line 404
    return-void
.end method

.method public setOnTabReselectedListener(Lcom/alibaba/lightapp/runtime/view/viewpager/TabPageIndicator$a;)V
    .locals 0
    .param p1, "listener"    # Lcom/alibaba/lightapp/runtime/view/viewpager/TabPageIndicator$a;

    .prologue
    .line 138
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/view/viewpager/TabPageIndicator;->j:Lcom/alibaba/lightapp/runtime/view/viewpager/TabPageIndicator$a;

    .line 139
    return-void
.end method

.method public setTabConfiguration(Lcom/alibaba/lightapp/runtime/config/TabConfiguration;)V
    .locals 0
    .param p1, "tabConfiguration"    # Lcom/alibaba/lightapp/runtime/config/TabConfiguration;

    .prologue
    .line 142
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/view/viewpager/TabPageIndicator;->c:Lcom/alibaba/lightapp/runtime/config/TabConfiguration;

    .line 143
    return-void
.end method

.method public setTextColor(Landroid/content/res/ColorStateList;)V
    .locals 4
    .param p1, "colorStateList"    # Landroid/content/res/ColorStateList;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 250
    iget-object v3, p0, Lcom/alibaba/lightapp/runtime/view/viewpager/TabPageIndicator;->e:Lhry;

    invoke-virtual {v3}, Lhry;->getChildCount()I

    move-result v1

    .line 251
    .local v1, "childCount":I
    if-lez v1, :cond_1

    .line 252
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 253
    iget-object v3, p0, Lcom/alibaba/lightapp/runtime/view/viewpager/TabPageIndicator;->e:Lhry;

    invoke-virtual {v3, v2}, Lhry;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 254
    .local v0, "child":Landroid/view/View;
    instance-of v3, v0, Lcom/alibaba/lightapp/runtime/view/viewpager/TabPageIndicator$b;

    if-eqz v3, :cond_0

    .line 255
    check-cast v0, Lcom/alibaba/lightapp/runtime/view/viewpager/TabPageIndicator$b;

    .end local v0    # "child":Landroid/view/View;
    invoke-virtual {v0, p1}, Lcom/alibaba/lightapp/runtime/view/viewpager/TabPageIndicator$b;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 252
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 260
    .end local v2    # "i":I
    :cond_1
    return-void
.end method

.method public setViewPager(Landroid/support/v4/view/ViewPager;)V
    .locals 3
    .param p1, "view"    # Landroid/support/v4/view/ViewPager;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 325
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/view/viewpager/TabPageIndicator;->f:Landroid/support/v4/view/ViewPager;

    if-ne v1, p1, :cond_0

    .line 338
    :goto_0
    return-void

    .line 328
    :cond_0
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/view/viewpager/TabPageIndicator;->f:Landroid/support/v4/view/ViewPager;

    if-eqz v1, :cond_1

    .line 329
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/view/viewpager/TabPageIndicator;->f:Landroid/support/v4/view/ViewPager;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/support/v4/view/ViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$d;)V

    .line 331
    :cond_1
    invoke-virtual {p1}, Landroid/support/v4/view/ViewPager;->getAdapter()Lgl;

    move-result-object v0

    .line 332
    .local v0, "adapter":Lgl;
    if-nez v0, :cond_2

    .line 333
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "ViewPager does not have adapter instance."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 335
    :cond_2
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/view/viewpager/TabPageIndicator;->f:Landroid/support/v4/view/ViewPager;

    .line 336
    invoke-virtual {p1, p0}, Landroid/support/v4/view/ViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$d;)V

    .line 337
    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/view/viewpager/TabPageIndicator;->a()V

    goto :goto_0
.end method
