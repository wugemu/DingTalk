.class public abstract Landroid/support/transition/Visibility;
.super Landroid/support/transition/Transition;
.source "Visibility.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/transition/Visibility$a;,
        Landroid/support/transition/Visibility$b;,
        Landroid/support/transition/Visibility$Mode;
    }
.end annotation


# static fields
.field private static final b:[Ljava/lang/String;


# instance fields
.field a:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 78
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "android:visibility:visibility"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v2, "android:visibility:parent"

    aput-object v2, v0, v1

    sput-object v0, Landroid/support/transition/Visibility;->b:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 94
    invoke-direct {p0}, Landroid/support/transition/Transition;-><init>()V

    .line 92
    const/4 v0, 0x3

    iput v0, p0, Landroid/support/transition/Visibility;->a:I

    .line 95
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v3, 0x0

    .line 98
    invoke-direct {p0, p1, p2}, Landroid/support/transition/Transition;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 92
    const/4 v2, 0x3

    iput v2, p0, Landroid/support/transition/Visibility;->a:I

    .line 99
    sget-object v2, Lbc;->e:[I

    invoke-virtual {p1, p2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 101
    .local v0, "a":Landroid/content/res/TypedArray;
    check-cast p2, Landroid/content/res/XmlResourceParser;

    .end local p2    # "attrs":Landroid/util/AttributeSet;
    const-string/jumbo v2, "transitionVisibilityMode"

    invoke-static {v0, p2, v2, v3, v3}, Lds;->a(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;II)I

    move-result v1

    .line 104
    .local v1, "mode":I
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 105
    if-eqz v1, :cond_0

    .line 106
    invoke-virtual {p0, v1}, Landroid/support/transition/Visibility;->a(I)V

    .line 108
    :cond_0
    return-void
.end method

.method private static a(Lbh;Lbh;)Landroid/support/transition/Visibility$b;
    .locals 7
    .param p0, "startValues"    # Lbh;
    .param p1, "endValues"    # Lbh;

    .prologue
    const/4 v6, 0x0

    const/4 v5, -0x1

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 187
    new-instance v0, Landroid/support/transition/Visibility$b;

    invoke-direct {v0, v4}, Landroid/support/transition/Visibility$b;-><init>(B)V

    .line 188
    .local v0, "visInfo":Landroid/support/transition/Visibility$b;
    iput-boolean v4, v0, Landroid/support/transition/Visibility$b;->a:Z

    .line 189
    iput-boolean v4, v0, Landroid/support/transition/Visibility$b;->b:Z

    .line 190
    if-eqz p0, :cond_1

    iget-object v1, p0, Lbh;->a:Ljava/util/Map;

    const-string/jumbo v2, "android:visibility:visibility"

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 191
    iget-object v1, p0, Lbh;->a:Ljava/util/Map;

    const-string/jumbo v2, "android:visibility:visibility"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, v0, Landroid/support/transition/Visibility$b;->c:I

    .line 192
    iget-object v1, p0, Lbh;->a:Ljava/util/Map;

    const-string/jumbo v2, "android:visibility:parent"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, v0, Landroid/support/transition/Visibility$b;->e:Landroid/view/ViewGroup;

    .line 197
    :goto_0
    if-eqz p1, :cond_2

    iget-object v1, p1, Lbh;->a:Ljava/util/Map;

    const-string/jumbo v2, "android:visibility:visibility"

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 198
    iget-object v1, p1, Lbh;->a:Ljava/util/Map;

    const-string/jumbo v2, "android:visibility:visibility"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, v0, Landroid/support/transition/Visibility$b;->d:I

    .line 199
    iget-object v1, p1, Lbh;->a:Ljava/util/Map;

    const-string/jumbo v2, "android:visibility:parent"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, v0, Landroid/support/transition/Visibility$b;->f:Landroid/view/ViewGroup;

    .line 204
    :goto_1
    if-eqz p0, :cond_7

    if-eqz p1, :cond_7

    .line 205
    iget v1, v0, Landroid/support/transition/Visibility$b;->c:I

    iget v2, v0, Landroid/support/transition/Visibility$b;->d:I

    if-ne v1, v2, :cond_3

    iget-object v1, v0, Landroid/support/transition/Visibility$b;->e:Landroid/view/ViewGroup;

    iget-object v2, v0, Landroid/support/transition/Visibility$b;->f:Landroid/view/ViewGroup;

    if-ne v1, v2, :cond_3

    .line 235
    :cond_0
    :goto_2
    return-object v0

    .line 194
    :cond_1
    iput v5, v0, Landroid/support/transition/Visibility$b;->c:I

    .line 195
    iput-object v6, v0, Landroid/support/transition/Visibility$b;->e:Landroid/view/ViewGroup;

    goto :goto_0

    .line 201
    :cond_2
    iput v5, v0, Landroid/support/transition/Visibility$b;->d:I

    .line 202
    iput-object v6, v0, Landroid/support/transition/Visibility$b;->f:Landroid/view/ViewGroup;

    goto :goto_1

    .line 209
    :cond_3
    iget v1, v0, Landroid/support/transition/Visibility$b;->c:I

    iget v2, v0, Landroid/support/transition/Visibility$b;->d:I

    if-eq v1, v2, :cond_5

    .line 210
    iget v1, v0, Landroid/support/transition/Visibility$b;->c:I

    if-nez v1, :cond_4

    .line 211
    iput-boolean v4, v0, Landroid/support/transition/Visibility$b;->b:Z

    .line 212
    iput-boolean v3, v0, Landroid/support/transition/Visibility$b;->a:Z

    goto :goto_2

    .line 213
    :cond_4
    iget v1, v0, Landroid/support/transition/Visibility$b;->d:I

    if-nez v1, :cond_0

    .line 214
    iput-boolean v3, v0, Landroid/support/transition/Visibility$b;->b:Z

    .line 215
    iput-boolean v3, v0, Landroid/support/transition/Visibility$b;->a:Z

    goto :goto_2

    .line 219
    :cond_5
    iget-object v1, v0, Landroid/support/transition/Visibility$b;->f:Landroid/view/ViewGroup;

    if-nez v1, :cond_6

    .line 220
    iput-boolean v4, v0, Landroid/support/transition/Visibility$b;->b:Z

    .line 221
    iput-boolean v3, v0, Landroid/support/transition/Visibility$b;->a:Z

    goto :goto_2

    .line 222
    :cond_6
    iget-object v1, v0, Landroid/support/transition/Visibility$b;->e:Landroid/view/ViewGroup;

    if-nez v1, :cond_0

    .line 223
    iput-boolean v3, v0, Landroid/support/transition/Visibility$b;->b:Z

    .line 224
    iput-boolean v3, v0, Landroid/support/transition/Visibility$b;->a:Z

    goto :goto_2

    .line 228
    :cond_7
    if-nez p0, :cond_8

    iget v1, v0, Landroid/support/transition/Visibility$b;->d:I

    if-nez v1, :cond_8

    .line 229
    iput-boolean v3, v0, Landroid/support/transition/Visibility$b;->b:Z

    .line 230
    iput-boolean v3, v0, Landroid/support/transition/Visibility$b;->a:Z

    goto :goto_2

    .line 231
    :cond_8
    if-nez p1, :cond_0

    iget v1, v0, Landroid/support/transition/Visibility$b;->c:I

    if-nez v1, :cond_0

    .line 232
    iput-boolean v4, v0, Landroid/support/transition/Visibility$b;->b:Z

    .line 233
    iput-boolean v3, v0, Landroid/support/transition/Visibility$b;->a:Z

    goto :goto_2
.end method

.method private static a(Lbh;)V
    .locals 5
    .param p0, "transitionValues"    # Lbh;

    .prologue
    .line 142
    iget-object v2, p0, Lbh;->b:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v1

    .line 143
    .local v1, "visibility":I
    iget-object v2, p0, Lbh;->a:Ljava/util/Map;

    const-string/jumbo v3, "android:visibility:visibility"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 144
    iget-object v2, p0, Lbh;->a:Ljava/util/Map;

    const-string/jumbo v3, "android:visibility:parent"

    iget-object v4, p0, Lbh;->b:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 145
    const/4 v2, 0x2

    new-array v0, v2, [I

    .line 146
    .local v0, "loc":[I
    iget-object v2, p0, Lbh;->b:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 147
    iget-object v2, p0, Lbh;->a:Ljava/util/Map;

    const-string/jumbo v3, "android:visibility:screenLocation"

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 148
    return-void
.end method


# virtual methods
.method public a(Landroid/view/ViewGroup;Landroid/view/View;Lbh;)Landroid/animation/Animator;
    .locals 1
    .param p1, "sceneRoot"    # Landroid/view/ViewGroup;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "startValues"    # Lbh;

    .prologue
    .line 450
    const/4 v0, 0x0

    return-object v0
.end method

.method public a(Landroid/view/ViewGroup;Landroid/view/View;Lbh;Lbh;)Landroid/animation/Animator;
    .locals 1
    .param p1, "sceneRoot"    # Landroid/view/ViewGroup;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "startValues"    # Lbh;
    .param p4, "endValues"    # Lbh;

    .prologue
    .line 311
    const/4 v0, 0x0

    return-object v0
.end method

.method public final a(I)V
    .locals 2
    .param p1, "mode"    # I

    .prologue
    .line 118
    and-int/lit8 v0, p1, -0x4

    if-eqz v0, :cond_0

    .line 119
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Only MODE_IN and MODE_OUT flags are allowed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 121
    :cond_0
    iput p1, p0, Landroid/support/transition/Visibility;->a:I

    .line 122
    return-void
.end method

.method public captureEndValues(Lbh;)V
    .locals 0
    .param p1, "transitionValues"    # Lbh;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 157
    invoke-static {p1}, Landroid/support/transition/Visibility;->a(Lbh;)V

    .line 158
    return-void
.end method

.method public captureStartValues(Lbh;)V
    .locals 0
    .param p1, "transitionValues"    # Lbh;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 152
    invoke-static {p1}, Landroid/support/transition/Visibility;->a(Lbh;)V

    .line 153
    return-void
.end method

.method public createAnimator(Landroid/view/ViewGroup;Lbh;Lbh;)Landroid/animation/Animator;
    .locals 20
    .param p1, "sceneRoot"    # Landroid/view/ViewGroup;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "startValues"    # Lbh;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "endValues"    # Lbh;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 242
    invoke-static/range {p2 .. p3}, Landroid/support/transition/Visibility;->a(Lbh;Lbh;)Landroid/support/transition/Visibility$b;

    move-result-object v4

    .line 243
    .local v4, "visInfo":Landroid/support/transition/Visibility$b;
    iget-boolean v5, v4, Landroid/support/transition/Visibility$b;->a:Z

    if-eqz v5, :cond_13

    iget-object v5, v4, Landroid/support/transition/Visibility$b;->e:Landroid/view/ViewGroup;

    if-nez v5, :cond_0

    iget-object v5, v4, Landroid/support/transition/Visibility$b;->f:Landroid/view/ViewGroup;

    if-eqz v5, :cond_13

    .line 245
    :cond_0
    iget-boolean v5, v4, Landroid/support/transition/Visibility$b;->b:Z

    if-eqz v5, :cond_4

    .line 1275
    move-object/from16 v0, p0

    iget v5, v0, Landroid/support/transition/Visibility;->a:I

    and-int/lit8 v5, v5, 0x1

    const/4 v6, 0x1

    if-ne v5, v6, :cond_1

    if-nez p3, :cond_2

    .line 1276
    :cond_1
    const/4 v5, 0x0

    .line 1427
    :goto_0
    return-object v5

    .line 1278
    :cond_2
    if-nez p2, :cond_3

    .line 1279
    move-object/from16 v0, p3

    iget-object v5, v0, Lbh;->b:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    check-cast v5, Landroid/view/View;

    .line 1280
    const/4 v6, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Landroid/support/transition/Visibility;->getMatchedTransitionValues(Landroid/view/View;Z)Lbh;

    move-result-object v6

    .line 1282
    const/4 v7, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v7}, Landroid/support/transition/Visibility;->getTransitionValues(Landroid/view/View;Z)Lbh;

    move-result-object v5

    .line 1284
    invoke-static {v6, v5}, Landroid/support/transition/Visibility;->a(Lbh;Lbh;)Landroid/support/transition/Visibility$b;

    move-result-object v5

    .line 1285
    iget-boolean v5, v5, Landroid/support/transition/Visibility$b;->a:Z

    if-eqz v5, :cond_3

    .line 1286
    const/4 v5, 0x0

    goto :goto_0

    .line 1289
    :cond_3
    move-object/from16 v0, p3

    iget-object v5, v0, Lbh;->b:Landroid/view/View;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    invoke-virtual {v0, v1, v5, v2, v3}, Landroid/support/transition/Visibility;->a(Landroid/view/ViewGroup;Landroid/view/View;Lbh;Lbh;)Landroid/animation/Animator;

    move-result-object v5

    goto :goto_0

    .line 249
    :cond_4
    iget v9, v4, Landroid/support/transition/Visibility$b;->d:I

    .line 1332
    move-object/from16 v0, p0

    iget v5, v0, Landroid/support/transition/Visibility;->a:I

    and-int/lit8 v5, v5, 0x2

    const/4 v6, 0x2

    if-ne v5, v6, :cond_12

    .line 1336
    if-eqz p2, :cond_6

    move-object/from16 v0, p2

    iget-object v6, v0, Lbh;->b:Landroid/view/View;

    .line 1337
    :goto_1
    if-eqz p3, :cond_7

    move-object/from16 v0, p3

    iget-object v5, v0, Lbh;->b:Landroid/view/View;

    .line 1338
    :goto_2
    const/4 v7, 0x0

    .line 1339
    const/4 v8, 0x0

    .line 1340
    if-eqz v5, :cond_5

    invoke-virtual {v5}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v10

    if-nez v10, :cond_c

    .line 1341
    :cond_5
    if-eqz v5, :cond_8

    move-object v6, v8

    move-object v7, v5

    .line 1388
    :goto_3
    if-eqz v7, :cond_10

    if-eqz p2, :cond_10

    .line 1390
    move-object/from16 v0, p2

    iget-object v5, v0, Lbh;->a:Ljava/util/Map;

    const-string/jumbo v6, "android:visibility:screenLocation"

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [I

    check-cast v5, [I

    .line 1391
    const/4 v6, 0x0

    aget v6, v5, v6

    .line 1392
    const/4 v8, 0x1

    aget v5, v5, v8

    .line 1393
    const/4 v8, 0x2

    new-array v8, v8, [I

    .line 1394
    move-object/from16 v0, p1

    invoke-virtual {v0, v8}, Landroid/view/ViewGroup;->getLocationOnScreen([I)V

    .line 1395
    const/4 v9, 0x0

    aget v9, v8, v9

    sub-int/2addr v6, v9

    invoke-virtual {v7}, Landroid/view/View;->getLeft()I

    move-result v9

    sub-int/2addr v6, v9

    invoke-virtual {v7, v6}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 1396
    const/4 v6, 0x1

    aget v6, v8, v6

    sub-int/2addr v5, v6

    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    move-result v6

    sub-int/2addr v5, v6

    invoke-virtual {v7, v5}, Landroid/view/View;->offsetTopAndBottom(I)V

    .line 1397
    invoke-static/range {p1 .. p1}, Lbn;->a(Landroid/view/ViewGroup;)Lbm;

    move-result-object v6

    .line 1398
    invoke-interface {v6, v7}, Lbm;->a(Landroid/view/View;)V

    .line 1399
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v7, v2}, Landroid/support/transition/Visibility;->a(Landroid/view/ViewGroup;Landroid/view/View;Lbh;)Landroid/animation/Animator;

    move-result-object v5

    .line 1400
    if-nez v5, :cond_f

    .line 1401
    invoke-interface {v6, v7}, Lbm;->b(Landroid/view/View;)V

    goto/16 :goto_0

    .line 1336
    :cond_6
    const/4 v6, 0x0

    goto :goto_1

    .line 1337
    :cond_7
    const/4 v5, 0x0

    goto :goto_2

    .line 1344
    :cond_8
    if-eqz v6, :cond_15

    .line 1348
    invoke-virtual {v6}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    if-eqz v5, :cond_e

    .line 1351
    invoke-virtual {v6}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    instance-of v5, v5, Landroid/view/View;

    if-eqz v5, :cond_15

    .line 1352
    invoke-virtual {v6}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    check-cast v5, Landroid/view/View;

    .line 1353
    const/4 v10, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v10}, Landroid/support/transition/Visibility;->getTransitionValues(Landroid/view/View;Z)Lbh;

    move-result-object v10

    .line 1354
    const/4 v11, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v11}, Landroid/support/transition/Visibility;->getMatchedTransitionValues(Landroid/view/View;Z)Lbh;

    move-result-object v11

    .line 1357
    invoke-static {v10, v11}, Landroid/support/transition/Visibility;->a(Lbh;Lbh;)Landroid/support/transition/Visibility$b;

    move-result-object v10

    .line 1358
    iget-boolean v10, v10, Landroid/support/transition/Visibility$b;->a:Z

    if-nez v10, :cond_b

    .line 2043
    new-instance v10, Landroid/graphics/Matrix;

    invoke-direct {v10}, Landroid/graphics/Matrix;-><init>()V

    .line 2044
    invoke-virtual {v5}, Landroid/view/View;->getScrollX()I

    move-result v7

    neg-int v7, v7

    int-to-float v7, v7

    invoke-virtual {v5}, Landroid/view/View;->getScrollY()I

    move-result v5

    neg-int v5, v5

    int-to-float v5, v5

    invoke-virtual {v10, v7, v5}, Landroid/graphics/Matrix;->setTranslate(FF)V

    .line 2045
    invoke-static {v6, v10}, Lbs;->a(Landroid/view/View;Landroid/graphics/Matrix;)V

    .line 2046
    move-object/from16 v0, p1

    invoke-static {v0, v10}, Lbs;->b(Landroid/view/View;Landroid/graphics/Matrix;)V

    .line 2047
    new-instance v11, Landroid/graphics/RectF;

    const/4 v5, 0x0

    const/4 v7, 0x0

    invoke-virtual {v6}, Landroid/view/View;->getWidth()I

    move-result v12

    int-to-float v12, v12

    invoke-virtual {v6}, Landroid/view/View;->getHeight()I

    move-result v13

    int-to-float v13, v13

    invoke-direct {v11, v5, v7, v12, v13}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 2048
    invoke-virtual {v10, v11}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 2049
    iget v5, v11, Landroid/graphics/RectF;->left:F

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v12

    .line 2050
    iget v5, v11, Landroid/graphics/RectF;->top:F

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v13

    .line 2051
    iget v5, v11, Landroid/graphics/RectF;->right:F

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v14

    .line 2052
    iget v5, v11, Landroid/graphics/RectF;->bottom:F

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v15

    .line 2054
    new-instance v7, Landroid/widget/ImageView;

    invoke-virtual {v6}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v7, v5}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 2055
    sget-object v5, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v7, v5}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 2082
    const/4 v5, 0x0

    .line 2083
    invoke-virtual {v11}, Landroid/graphics/RectF;->width()F

    move-result v16

    invoke-static/range {v16 .. v16}, Ljava/lang/Math;->round(F)I

    move-result v16

    .line 2084
    invoke-virtual {v11}, Landroid/graphics/RectF;->height()F

    move-result v17

    invoke-static/range {v17 .. v17}, Ljava/lang/Math;->round(F)I

    move-result v17

    .line 2085
    if-lez v16, :cond_9

    if-lez v17, :cond_9

    .line 2086
    const/high16 v5, 0x3f800000    # 1.0f

    const/high16 v18, 0x49800000    # 1048576.0f

    mul-int v19, v16, v17

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    div-float v18, v18, v19

    move/from16 v0, v18

    invoke-static {v5, v0}, Ljava/lang/Math;->min(FF)F

    move-result v5

    .line 2087
    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    mul-float v16, v16, v5

    move/from16 v0, v16

    float-to-int v0, v0

    move/from16 v16, v0

    .line 2088
    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    mul-float v17, v17, v5

    move/from16 v0, v17

    float-to-int v0, v0

    move/from16 v17, v0

    .line 2089
    iget v0, v11, Landroid/graphics/RectF;->left:F

    move/from16 v18, v0

    move/from16 v0, v18

    neg-float v0, v0

    move/from16 v18, v0

    iget v11, v11, Landroid/graphics/RectF;->top:F

    neg-float v11, v11

    move/from16 v0, v18

    invoke-virtual {v10, v0, v11}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 2090
    invoke-virtual {v10, v5, v5}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 2091
    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-static {v0, v1, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 2092
    new-instance v11, Landroid/graphics/Canvas;

    invoke-direct {v11, v5}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 2093
    invoke-virtual {v11, v10}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    .line 2094
    invoke-virtual {v6, v11}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 2057
    :cond_9
    if-eqz v5, :cond_a

    .line 2058
    invoke-virtual {v7, v5}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 2060
    :cond_a
    sub-int v5, v14, v12

    const/high16 v6, 0x40000000    # 2.0f

    invoke-static {v5, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    .line 2061
    sub-int v6, v15, v13

    const/high16 v10, 0x40000000    # 2.0f

    invoke-static {v6, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    .line 2062
    invoke-virtual {v7, v5, v6}, Landroid/widget/ImageView;->measure(II)V

    .line 2063
    invoke-virtual {v7, v12, v13, v14, v15}, Landroid/widget/ImageView;->layout(IIII)V

    move-object v6, v8

    .line 1359
    goto/16 :goto_3

    .line 1361
    :cond_b
    invoke-virtual {v5}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v10

    if-nez v10, :cond_14

    .line 1362
    invoke-virtual {v5}, Landroid/view/View;->getId()I

    move-result v5

    .line 1363
    const/4 v10, -0x1

    if-eq v5, v10, :cond_14

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v5

    if-eqz v5, :cond_14

    move-object/from16 v0, p0

    iget-boolean v5, v0, Landroid/support/transition/Visibility;->mCanRemoveViews:Z

    if-eqz v5, :cond_14

    move-object v5, v6

    :goto_4
    move-object v6, v8

    move-object v7, v5

    .line 1371
    goto/16 :goto_3

    .line 1375
    :cond_c
    const/4 v10, 0x4

    if-ne v9, v10, :cond_d

    move-object v6, v5

    .line 1376
    goto/16 :goto_3

    .line 1379
    :cond_d
    if-ne v6, v5, :cond_e

    move-object v6, v5

    .line 1380
    goto/16 :goto_3

    :cond_e
    move-object v7, v6

    move-object v6, v8

    .line 1382
    goto/16 :goto_3

    .line 1404
    :cond_f
    new-instance v8, Landroid/support/transition/Visibility$1;

    move-object/from16 v0, p0

    invoke-direct {v8, v0, v6, v7}, Landroid/support/transition/Visibility$1;-><init>(Landroid/support/transition/Visibility;Lbm;Landroid/view/View;)V

    invoke-virtual {v5, v8}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    goto/16 :goto_0

    .line 1414
    :cond_10
    if-eqz v6, :cond_12

    .line 1415
    invoke-virtual {v6}, Landroid/view/View;->getVisibility()I

    move-result v7

    .line 1416
    const/4 v5, 0x0

    invoke-static {v6, v5}, Lbs;->a(Landroid/view/View;I)V

    .line 1417
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v6, v2}, Landroid/support/transition/Visibility;->a(Landroid/view/ViewGroup;Landroid/view/View;Lbh;)Landroid/animation/Animator;

    move-result-object v5

    .line 1418
    if-eqz v5, :cond_11

    .line 1419
    new-instance v7, Landroid/support/transition/Visibility$a;

    const/4 v8, 0x1

    invoke-direct {v7, v6, v9, v8}, Landroid/support/transition/Visibility$a;-><init>(Landroid/view/View;IZ)V

    .line 1421
    invoke-virtual {v5, v7}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1422
    invoke-static {v5, v7}, Laa;->a(Landroid/animation/Animator;Landroid/animation/AnimatorListenerAdapter;)V

    .line 1423
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Landroid/support/transition/Visibility;->addListener(Landroid/support/transition/Transition$d;)Landroid/support/transition/Transition;

    goto/16 :goto_0

    .line 1425
    :cond_11
    invoke-static {v6, v7}, Lbs;->a(Landroid/view/View;I)V

    goto/16 :goto_0

    .line 1429
    :cond_12
    const/4 v5, 0x0

    .line 249
    goto/16 :goto_0

    .line 254
    :cond_13
    const/4 v5, 0x0

    goto/16 :goto_0

    :cond_14
    move-object v5, v7

    goto :goto_4

    :cond_15
    move-object v6, v8

    goto/16 :goto_3
.end method

.method public getTransitionProperties()[Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 138
    sget-object v0, Landroid/support/transition/Visibility;->b:[Ljava/lang/String;

    return-object v0
.end method

.method public isTransitionRequired(Lbh;Lbh;)Z
    .locals 5
    .param p1, "startValues"    # Lbh;
    .param p2, "newValues"    # Lbh;

    .prologue
    const/4 v1, 0x0

    .line 455
    if-nez p1, :cond_1

    if-nez p2, :cond_1

    .line 466
    :cond_0
    :goto_0
    return v1

    .line 458
    :cond_1
    if-eqz p1, :cond_2

    if-eqz p2, :cond_2

    iget-object v2, p2, Lbh;->a:Ljava/util/Map;

    const-string/jumbo v3, "android:visibility:visibility"

    .line 459
    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    iget-object v3, p1, Lbh;->a:Ljava/util/Map;

    const-string/jumbo v4, "android:visibility:visibility"

    .line 460
    invoke-interface {v3, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-ne v2, v3, :cond_0

    .line 465
    :cond_2
    invoke-static {p1, p2}, Landroid/support/transition/Visibility;->a(Lbh;Lbh;)Landroid/support/transition/Visibility$b;

    move-result-object v0

    .line 466
    .local v0, "changeInfo":Landroid/support/transition/Visibility$b;
    iget-boolean v2, v0, Landroid/support/transition/Visibility$b;->a:Z

    if-eqz v2, :cond_0

    iget v2, v0, Landroid/support/transition/Visibility$b;->c:I

    if-eqz v2, :cond_3

    iget v2, v0, Landroid/support/transition/Visibility$b;->d:I

    if-nez v2, :cond_0

    :cond_3
    const/4 v1, 0x1

    goto :goto_0
.end method
