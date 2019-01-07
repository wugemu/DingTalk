.class public Lcom/alibaba/alimei/cmail/widget/mail/MultiLineRelativeLayout;
.super Landroid/widget/RelativeLayout;
.source "MultiLineRelativeLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/alimei/cmail/widget/mail/MultiLineRelativeLayout$LayoutMode;
    }
.end annotation


# static fields
.field private static final c:[I


# instance fields
.field private a:I

.field private b:I

.field private d:Lcom/alibaba/alimei/cmail/widget/mail/MultiLineRelativeLayout$LayoutMode;

.field private e:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/view/View;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/alibaba/alimei/cmail/widget/mail/MultiLineRelativeLayout;->c:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x1010115
        0x1010114
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 26
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 17
    iput v0, p0, Lcom/alibaba/alimei/cmail/widget/mail/MultiLineRelativeLayout;->a:I

    .line 18
    iput v0, p0, Lcom/alibaba/alimei/cmail/widget/mail/MultiLineRelativeLayout;->b:I

    .line 120
    sget-object v0, Lcom/alibaba/alimei/cmail/widget/mail/MultiLineRelativeLayout$LayoutMode;->DEFAULT:Lcom/alibaba/alimei/cmail/widget/mail/MultiLineRelativeLayout$LayoutMode;

    iput-object v0, p0, Lcom/alibaba/alimei/cmail/widget/mail/MultiLineRelativeLayout;->d:Lcom/alibaba/alimei/cmail/widget/mail/MultiLineRelativeLayout$LayoutMode;

    .line 27
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/alibaba/alimei/cmail/widget/mail/MultiLineRelativeLayout;->a(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 28
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v0, 0x0

    .line 31
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 17
    iput v0, p0, Lcom/alibaba/alimei/cmail/widget/mail/MultiLineRelativeLayout;->a:I

    .line 18
    iput v0, p0, Lcom/alibaba/alimei/cmail/widget/mail/MultiLineRelativeLayout;->b:I

    .line 120
    sget-object v0, Lcom/alibaba/alimei/cmail/widget/mail/MultiLineRelativeLayout$LayoutMode;->DEFAULT:Lcom/alibaba/alimei/cmail/widget/mail/MultiLineRelativeLayout$LayoutMode;

    iput-object v0, p0, Lcom/alibaba/alimei/cmail/widget/mail/MultiLineRelativeLayout;->d:Lcom/alibaba/alimei/cmail/widget/mail/MultiLineRelativeLayout$LayoutMode;

    .line 32
    invoke-direct {p0, p1, p2}, Lcom/alibaba/alimei/cmail/widget/mail/MultiLineRelativeLayout;->a(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 33
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v0, 0x0

    .line 37
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 17
    iput v0, p0, Lcom/alibaba/alimei/cmail/widget/mail/MultiLineRelativeLayout;->a:I

    .line 18
    iput v0, p0, Lcom/alibaba/alimei/cmail/widget/mail/MultiLineRelativeLayout;->b:I

    .line 120
    sget-object v0, Lcom/alibaba/alimei/cmail/widget/mail/MultiLineRelativeLayout$LayoutMode;->DEFAULT:Lcom/alibaba/alimei/cmail/widget/mail/MultiLineRelativeLayout$LayoutMode;

    iput-object v0, p0, Lcom/alibaba/alimei/cmail/widget/mail/MultiLineRelativeLayout;->d:Lcom/alibaba/alimei/cmail/widget/mail/MultiLineRelativeLayout$LayoutMode;

    .line 38
    invoke-direct {p0, p1, p2}, Lcom/alibaba/alimei/cmail/widget/mail/MultiLineRelativeLayout;->a(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 39
    return-void
.end method

.method private a(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v5, -0x1

    .line 42
    if-nez p2, :cond_1

    .line 58
    :cond_0
    return-void

    .line 45
    :cond_1
    sget-object v4, Lcom/alibaba/alimei/cmail/widget/mail/MultiLineRelativeLayout;->c:[I

    invoke-virtual {p1, p2, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 46
    .local v0, "a":Landroid/content/res/TypedArray;
    const/4 v3, 0x0

    .local v3, "index":I
    :goto_0
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v4

    if-ge v3, v4, :cond_0

    .line 47
    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v1

    .line 48
    .local v1, "attrIndex":I
    sget-object v4, Lcom/alibaba/alimei/cmail/widget/mail/MultiLineRelativeLayout;->c:[I

    aget v2, v4, v1

    .line 49
    .local v2, "attrValue":I
    packed-switch v2, :pswitch_data_0

    .line 46
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 51
    :pswitch_0
    invoke-virtual {v0, v1, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    invoke-virtual {p0, v4}, Lcom/alibaba/alimei/cmail/widget/mail/MultiLineRelativeLayout;->setHorizonalSpacing(I)V

    goto :goto_1

    .line 54
    :pswitch_1
    invoke-virtual {v0, v1, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    invoke-virtual {p0, v4}, Lcom/alibaba/alimei/cmail/widget/mail/MultiLineRelativeLayout;->setVerticalSpacing(I)V

    goto :goto_1

    .line 49
    :pswitch_data_0
    .packed-switch 0x1010114
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private a(Z)V
    .locals 12
    .param p1, "needMeasure"    # Z

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v11

    invoke-static {v11}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 273
    invoke-virtual {p0}, Lcom/alibaba/alimei/cmail/widget/mail/MultiLineRelativeLayout;->getChildCount()I

    move-result v10

    if-nez v10, :cond_1

    .line 366
    :cond_0
    return-void

    .line 276
    :cond_1
    new-instance v10, Ljava/lang/StringBuilder;

    const-string/jumbo v11, "count = "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/alibaba/alimei/cmail/widget/mail/MultiLineRelativeLayout;->getChildCount()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 278
    if-eqz p1, :cond_2

    .line 279
    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual {p0, v10, v11}, Lcom/alibaba/alimei/cmail/widget/mail/MultiLineRelativeLayout;->measure(II)V

    .line 282
    :cond_2
    const/4 v6, -0x1

    .line 283
    .local v6, "positionTopAt":I
    const/4 v5, -0x1

    .line 286
    .local v5, "positionLeftAt":I
    invoke-virtual {p0}, Lcom/alibaba/alimei/cmail/widget/mail/MultiLineRelativeLayout;->getWidth()I

    move-result v10

    invoke-virtual {p0}, Lcom/alibaba/alimei/cmail/widget/mail/MultiLineRelativeLayout;->getPaddingLeft()I

    move-result v11

    sub-int/2addr v10, v11

    invoke-virtual {p0}, Lcom/alibaba/alimei/cmail/widget/mail/MultiLineRelativeLayout;->getPaddingRight()I

    move-result v11

    sub-int/2addr v10, v11

    add-int/lit8 v7, v10, 0x0

    .line 287
    .local v7, "totloLenth":I
    if-lez v7, :cond_0

    .line 290
    move v3, v7

    .line 293
    .local v3, "leftLength":I
    const/4 v2, -0x1

    .line 294
    .local v2, "lastlineChips":I
    invoke-virtual {p0}, Lcom/alibaba/alimei/cmail/widget/mail/MultiLineRelativeLayout;->getChildCount()I

    move-result v0

    .line 296
    .local v0, "childCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 297
    invoke-virtual {p0, v1}, Lcom/alibaba/alimei/cmail/widget/mail/MultiLineRelativeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    .line 298
    .local v8, "view":Landroid/view/View;
    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/RelativeLayout$LayoutParams;

    .line 299
    .local v4, "lp":Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {v8}, Landroid/view/View;->getMeasuredWidth()I

    move-result v10

    iget v11, v4, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    add-int/2addr v10, v11

    iget v11, v4, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    add-int v9, v10, v11

    .line 300
    .local v9, "view_length":I
    if-ge v3, v9, :cond_8

    .line 301
    const/4 v10, -0x1

    if-ne v2, v10, :cond_6

    .line 302
    const/4 v10, -0x1

    if-ne v6, v10, :cond_5

    .line 303
    const/16 v10, 0xa

    const/4 v11, -0x1

    invoke-virtual {v4, v10, v11}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 312
    :goto_1
    if-lt v9, v7, :cond_7

    .line 313
    move v3, v7

    .line 314
    const/4 v5, -0x1

    .line 315
    add-int/lit8 v6, v6, 0x1

    .line 321
    :goto_2
    add-int/lit8 v2, v5, 0x1

    .line 322
    add-int/lit8 v6, v6, 0x1

    .line 323
    const/16 v10, 0x9

    const/4 v11, -0x1

    invoke-virtual {v4, v10, v11}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 350
    :goto_3
    instance-of v10, v8, Landroid/widget/AutoCompleteTextView;

    if-eqz v10, :cond_4

    .line 351
    if-lez v6, :cond_c

    .line 352
    const/16 v10, 0xa

    const/4 v11, 0x0

    invoke-virtual {v4, v10, v11}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 356
    :cond_3
    :goto_4
    if-lez v5, :cond_d

    .line 357
    const/16 v10, 0x9

    const/4 v11, 0x0

    invoke-virtual {v4, v10, v11}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 296
    :cond_4
    :goto_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 305
    :cond_5
    const/4 v10, 0x3

    sub-int v11, v1, v5

    add-int/lit8 v11, v11, -0x1

    invoke-virtual {p0, v11}, Lcom/alibaba/alimei/cmail/widget/mail/MultiLineRelativeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v11

    invoke-virtual {v11}, Landroid/view/View;->getId()I

    move-result v11

    invoke-virtual {v4, v10, v11}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    goto :goto_1

    .line 309
    :cond_6
    const/4 v10, 0x3

    sub-int v11, v1, v5

    add-int/lit8 v11, v11, -0x1

    invoke-virtual {p0, v11}, Lcom/alibaba/alimei/cmail/widget/mail/MultiLineRelativeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v11

    invoke-virtual {v11}, Landroid/view/View;->getId()I

    move-result v11

    invoke-virtual {v4, v10, v11}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    goto :goto_1

    .line 317
    :cond_7
    sub-int v3, v7, v9

    .line 318
    const/4 v5, 0x0

    goto :goto_2

    .line 325
    :cond_8
    const/4 v10, -0x1

    if-ne v2, v10, :cond_a

    .line 326
    const/4 v10, -0x1

    if-ne v6, v10, :cond_9

    .line 327
    const/4 v6, 0x0

    .line 328
    const/16 v10, 0xa

    const/4 v11, -0x1

    invoke-virtual {v4, v10, v11}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 329
    const/16 v10, 0x9

    const/4 v11, -0x1

    invoke-virtual {v4, v10, v11}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 346
    :goto_6
    add-int/lit8 v5, v5, 0x1

    .line 347
    sub-int/2addr v3, v9

    goto :goto_3

    .line 332
    :cond_9
    const/16 v10, 0xa

    const/4 v11, -0x1

    invoke-virtual {v4, v10, v11}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 333
    const/4 v10, 0x1

    add-int/lit8 v11, v1, -0x1

    invoke-virtual {p0, v11}, Lcom/alibaba/alimei/cmail/widget/mail/MultiLineRelativeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v11

    invoke-virtual {v11}, Landroid/view/View;->getId()I

    move-result v11

    invoke-virtual {v4, v10, v11}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    goto :goto_6

    .line 338
    :cond_a
    const/4 v10, -0x1

    if-ne v5, v10, :cond_b

    .line 339
    const/16 v10, 0x9

    const/4 v11, -0x1

    invoke-virtual {v4, v10, v11}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 340
    const/4 v10, 0x3

    sub-int v11, v1, v2

    add-int/lit8 v11, v11, -0x1

    invoke-virtual {p0, v11}, Lcom/alibaba/alimei/cmail/widget/mail/MultiLineRelativeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v11

    invoke-virtual {v11}, Landroid/view/View;->getId()I

    move-result v11

    invoke-virtual {v4, v10, v11}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    goto :goto_6

    .line 342
    :cond_b
    const/4 v10, 0x1

    add-int/lit8 v11, v1, -0x1

    invoke-virtual {p0, v11}, Lcom/alibaba/alimei/cmail/widget/mail/MultiLineRelativeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v11

    invoke-virtual {v11}, Landroid/view/View;->getId()I

    move-result v11

    invoke-virtual {v4, v10, v11}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 343
    const/4 v10, 0x3

    sub-int v11, v1, v5

    add-int/lit8 v11, v11, -0x2

    invoke-virtual {p0, v11}, Lcom/alibaba/alimei/cmail/widget/mail/MultiLineRelativeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v11

    invoke-virtual {v11}, Landroid/view/View;->getId()I

    move-result v11

    invoke-virtual {v4, v10, v11}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    goto :goto_6

    .line 353
    :cond_c
    if-nez v5, :cond_3

    .line 354
    const/16 v10, 0xa

    const/4 v11, -0x1

    invoke-virtual {v4, v10, v11}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    goto/16 :goto_4

    .line 358
    :cond_d
    if-nez v5, :cond_e

    .line 359
    const/16 v10, 0x9

    const/4 v11, -0x1

    invoke-virtual {v4, v10, v11}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    goto/16 :goto_5

    .line 361
    :cond_e
    const/4 v10, 0x1

    const/4 v11, 0x0

    invoke-virtual {v4, v10, v11}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    goto/16 :goto_5
.end method

.method private a()Z
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 109
    sget-object v0, Lcom/alibaba/alimei/cmail/widget/mail/MultiLineRelativeLayout$LayoutMode;->SINGLE_LINE:Lcom/alibaba/alimei/cmail/widget/mail/MultiLineRelativeLayout$LayoutMode;

    iget-object v1, p0, Lcom/alibaba/alimei/cmail/widget/mail/MultiLineRelativeLayout;->d:Lcom/alibaba/alimei/cmail/widget/mail/MultiLineRelativeLayout$LayoutMode;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private b()V
    .locals 1

    .prologue
    .line 136
    iget-object v0, p0, Lcom/alibaba/alimei/cmail/widget/mail/MultiLineRelativeLayout;->e:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    .line 137
    iget-object v0, p0, Lcom/alibaba/alimei/cmail/widget/mail/MultiLineRelativeLayout;->e:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 138
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alibaba/alimei/cmail/widget/mail/MultiLineRelativeLayout;->e:Ljava/util/HashMap;

    .line 140
    :cond_0
    return-void
.end method

.method private c()V
    .locals 1

    .prologue
    .line 215
    invoke-direct {p0}, Lcom/alibaba/alimei/cmail/widget/mail/MultiLineRelativeLayout;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 216
    invoke-direct {p0}, Lcom/alibaba/alimei/cmail/widget/mail/MultiLineRelativeLayout;->d()V

    .line 217
    invoke-direct {p0}, Lcom/alibaba/alimei/cmail/widget/mail/MultiLineRelativeLayout;->e()V

    .line 219
    :cond_0
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/alibaba/alimei/cmail/widget/mail/MultiLineRelativeLayout;->a(Z)V

    .line 220
    return-void
.end method

.method private d()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 247
    iget-object v2, p0, Lcom/alibaba/alimei/cmail/widget/mail/MultiLineRelativeLayout;->e:Ljava/util/HashMap;

    if-eqz v2, :cond_1

    .line 248
    iget-object v2, p0, Lcom/alibaba/alimei/cmail/widget/mail/MultiLineRelativeLayout;->e:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 249
    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/view/View;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 250
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 251
    .local v1, "view":Landroid/view/View;
    iget-object v2, p0, Lcom/alibaba/alimei/cmail/widget/mail/MultiLineRelativeLayout;->e:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 253
    .end local v1    # "view":Landroid/view/View;
    :cond_0
    invoke-direct {p0}, Lcom/alibaba/alimei/cmail/widget/mail/MultiLineRelativeLayout;->b()V

    .line 255
    .end local v0    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/view/View;>;"
    :cond_1
    return-void
.end method

.method private e()V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 259
    invoke-direct {p0}, Lcom/alibaba/alimei/cmail/widget/mail/MultiLineRelativeLayout;->b()V

    .line 260
    invoke-direct {p0}, Lcom/alibaba/alimei/cmail/widget/mail/MultiLineRelativeLayout;->getSecondLineFrom()I

    move-result v0

    .line 261
    .local v0, "i":I
    if-ltz v0, :cond_0

    .line 262
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, p0, Lcom/alibaba/alimei/cmail/widget/mail/MultiLineRelativeLayout;->e:Ljava/util/HashMap;

    .line 263
    move v1, v0

    .local v1, "j":I
    :goto_0
    invoke-virtual {p0}, Lcom/alibaba/alimei/cmail/widget/mail/MultiLineRelativeLayout;->getChildCount()I

    move-result v3

    if-ge v1, v3, :cond_0

    .line 264
    invoke-virtual {p0, v1}, Lcom/alibaba/alimei/cmail/widget/mail/MultiLineRelativeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 265
    .local v2, "view":Landroid/view/View;
    iget-object v3, p0, Lcom/alibaba/alimei/cmail/widget/mail/MultiLineRelativeLayout;->e:Ljava/util/HashMap;

    .line 266
    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 265
    invoke-virtual {v3, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 267
    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 263
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 270
    .end local v1    # "j":I
    .end local v2    # "view":Landroid/view/View;
    :cond_0
    return-void
.end method

.method private getSecondLineFrom()I
    .locals 9

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v5, -0x1

    const/4 v8, 0x0

    .line 152
    invoke-virtual {p0}, Lcom/alibaba/alimei/cmail/widget/mail/MultiLineRelativeLayout;->getChildCount()I

    move-result v6

    if-nez v6, :cond_1

    move v0, v5

    .line 173
    :cond_0
    :goto_0
    return v0

    .line 154
    :cond_1
    invoke-virtual {p0, v8, v8}, Lcom/alibaba/alimei/cmail/widget/mail/MultiLineRelativeLayout;->measure(II)V

    .line 157
    invoke-virtual {p0}, Lcom/alibaba/alimei/cmail/widget/mail/MultiLineRelativeLayout;->getWidth()I

    move-result v6

    invoke-virtual {p0}, Lcom/alibaba/alimei/cmail/widget/mail/MultiLineRelativeLayout;->getPaddingLeft()I

    move-result v7

    sub-int/2addr v6, v7

    invoke-virtual {p0}, Lcom/alibaba/alimei/cmail/widget/mail/MultiLineRelativeLayout;->getPaddingRight()I

    move-result v7

    sub-int/2addr v6, v7

    add-int/lit8 v1, v6, 0x0

    .line 160
    .local v1, "leftLength":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    invoke-virtual {p0}, Lcom/alibaba/alimei/cmail/widget/mail/MultiLineRelativeLayout;->getChildCount()I

    move-result v6

    if-ge v0, v6, :cond_2

    .line 161
    invoke-virtual {p0, v0}, Lcom/alibaba/alimei/cmail/widget/mail/MultiLineRelativeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 162
    .local v3, "view":Landroid/view/View;
    invoke-virtual {v3, v8, v8}, Landroid/view/View;->measure(II)V

    .line 164
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout$LayoutParams;

    .line 165
    .local v2, "lp":Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    iget v7, v2, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    add-int/2addr v6, v7

    iget v7, v2, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    add-int v4, v6, v7

    .line 169
    .local v4, "view_length":I
    if-lt v1, v4, :cond_0

    .line 171
    sub-int/2addr v1, v4

    .line 160
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .end local v2    # "lp":Landroid/widget/RelativeLayout$LayoutParams;
    .end local v3    # "view":Landroid/view/View;
    .end local v4    # "view_length":I
    :cond_2
    move v0, v5

    .line 173
    goto :goto_0
.end method

.method private setLayoutMode(Lcom/alibaba/alimei/cmail/widget/mail/MultiLineRelativeLayout$LayoutMode;)V
    .locals 1
    .param p1, "mode"    # Lcom/alibaba/alimei/cmail/widget/mail/MultiLineRelativeLayout$LayoutMode;

    .prologue
    .line 124
    iget-object v0, p0, Lcom/alibaba/alimei/cmail/widget/mail/MultiLineRelativeLayout;->d:Lcom/alibaba/alimei/cmail/widget/mail/MultiLineRelativeLayout$LayoutMode;

    if-ne p1, v0, :cond_0

    .line 133
    :goto_0
    return-void

    .line 126
    :cond_0
    sget-object v0, Lcom/alibaba/alimei/cmail/widget/mail/MultiLineRelativeLayout$LayoutMode;->SINGLE_LINE:Lcom/alibaba/alimei/cmail/widget/mail/MultiLineRelativeLayout$LayoutMode;

    if-ne v0, p1, :cond_1

    .line 127
    invoke-direct {p0}, Lcom/alibaba/alimei/cmail/widget/mail/MultiLineRelativeLayout;->e()V

    .line 131
    :goto_1
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/alibaba/alimei/cmail/widget/mail/MultiLineRelativeLayout;->a(Z)V

    .line 132
    iput-object p1, p0, Lcom/alibaba/alimei/cmail/widget/mail/MultiLineRelativeLayout;->d:Lcom/alibaba/alimei/cmail/widget/mail/MultiLineRelativeLayout$LayoutMode;

    goto :goto_0

    .line 129
    :cond_1
    invoke-direct {p0}, Lcom/alibaba/alimei/cmail/widget/mail/MultiLineRelativeLayout;->d()V

    goto :goto_1
.end method


# virtual methods
.method protected onFinishInflate()V
    .locals 7

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v6, -0x2

    .line 62
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    .line 64
    invoke-virtual {p0}, Lcom/alibaba/alimei/cmail/widget/mail/MultiLineRelativeLayout;->getChildCount()I

    move-result v1

    .line 65
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_2

    .line 66
    invoke-virtual {p0, v2}, Lcom/alibaba/alimei/cmail/widget/mail/MultiLineRelativeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 67
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout$LayoutParams;

    .line 68
    .local v3, "lp":Landroid/widget/RelativeLayout$LayoutParams;
    if-nez v3, :cond_0

    .line 69
    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    .end local v3    # "lp":Landroid/widget/RelativeLayout$LayoutParams;
    invoke-direct {v3, v6, v6}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 71
    .restart local v3    # "lp":Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {v0, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 73
    :cond_0
    iget v4, v3, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    iget v5, p0, Lcom/alibaba/alimei/cmail/widget/mail/MultiLineRelativeLayout;->a:I

    add-int/2addr v4, v5

    iput v4, v3, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    .line 74
    add-int/lit8 v4, v2, 0x1

    if-ge v4, v1, :cond_1

    .line 75
    iget v4, p0, Lcom/alibaba/alimei/cmail/widget/mail/MultiLineRelativeLayout;->b:I

    iput v4, v3, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    .line 65
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 78
    .end local v0    # "child":Landroid/view/View;
    .end local v3    # "lp":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_2
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 15
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v14

    invoke-static {v14}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 370
    invoke-super/range {p0 .. p5}, Landroid/widget/RelativeLayout;->onLayout(ZIIII)V

    .line 371
    const/4 v10, 0x0

    invoke-direct {p0, v10}, Lcom/alibaba/alimei/cmail/widget/mail/MultiLineRelativeLayout;->a(Z)V

    .line 373
    invoke-direct {p0}, Lcom/alibaba/alimei/cmail/widget/mail/MultiLineRelativeLayout;->a()Z

    move-result v10

    if-eqz v10, :cond_0

    .line 374
    invoke-direct {p0}, Lcom/alibaba/alimei/cmail/widget/mail/MultiLineRelativeLayout;->d()V

    .line 375
    invoke-direct {p0}, Lcom/alibaba/alimei/cmail/widget/mail/MultiLineRelativeLayout;->e()V

    .line 378
    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/alimei/cmail/widget/mail/MultiLineRelativeLayout;->getPaddingLeft()I

    move-result v4

    .line 379
    .local v4, "layout_x":I
    invoke-virtual {p0}, Lcom/alibaba/alimei/cmail/widget/mail/MultiLineRelativeLayout;->getPaddingTop()I

    move-result v5

    .line 382
    .local v5, "layout_y":I
    const/4 v2, 0x0

    .line 386
    .local v2, "height_current_line":I
    invoke-virtual {p0}, Lcom/alibaba/alimei/cmail/widget/mail/MultiLineRelativeLayout;->getChildCount()I

    move-result v1

    .line 387
    .local v1, "childCount":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v1, :cond_4

    .line 388
    invoke-virtual {p0, v3}, Lcom/alibaba/alimei/cmail/widget/mail/MultiLineRelativeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 389
    .local v7, "view":Landroid/view/View;
    const/16 v10, 0x8

    invoke-virtual {v7}, Landroid/view/View;->getVisibility()I

    move-result v11

    if-eq v10, v11, :cond_2

    .line 393
    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/widget/RelativeLayout$LayoutParams;

    .line 396
    .local v6, "lp":Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {v7}, Landroid/view/View;->getWidth()I

    move-result v10

    iget v11, v6, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    add-int/2addr v10, v11

    iget v11, v6, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    add-int v9, v10, v11

    .line 397
    .local v9, "view_width":I
    invoke-virtual {v7}, Landroid/view/View;->getHeight()I

    move-result v10

    iget v11, v6, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v10, v11

    iget v11, v6, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    add-int v8, v10, v11

    .line 398
    .local v8, "view_height":I
    add-int v10, v4, v9

    invoke-virtual {p0}, Lcom/alibaba/alimei/cmail/widget/mail/MultiLineRelativeLayout;->getWidth()I

    move-result v11

    if-le v10, v11, :cond_1

    .line 399
    invoke-virtual {p0}, Lcom/alibaba/alimei/cmail/widget/mail/MultiLineRelativeLayout;->getPaddingLeft()I

    move-result v4

    .line 400
    add-int/2addr v5, v2

    .line 401
    const/4 v2, 0x0

    .line 404
    :cond_1
    instance-of v10, v7, Landroid/widget/AutoCompleteTextView;

    if-eqz v10, :cond_3

    .line 406
    iget v10, v6, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    add-int/2addr v10, v4

    iget v11, v6, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    add-int/2addr v11, v5

    iget v12, v6, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    add-int/2addr v12, v5

    .line 408
    invoke-virtual {v7}, Landroid/view/View;->getHeight()I

    move-result v13

    add-int/2addr v12, v13

    .line 406
    move/from16 v0, p4

    invoke-virtual {v7, v10, v11, v0, v12}, Landroid/view/View;->layout(IIII)V

    .line 416
    :goto_1
    add-int/2addr v4, v9

    .line 417
    if-le v8, v2, :cond_2

    .line 418
    move v2, v8

    .line 387
    .end local v6    # "lp":Landroid/widget/RelativeLayout$LayoutParams;
    .end local v8    # "view_height":I
    .end local v9    # "view_width":I
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 410
    .restart local v6    # "lp":Landroid/widget/RelativeLayout$LayoutParams;
    .restart local v8    # "view_height":I
    .restart local v9    # "view_width":I
    :cond_3
    iget v10, v6, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    add-int/2addr v10, v4

    iget v11, v6, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    add-int/2addr v11, v5

    iget v12, v6, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    add-int/2addr v12, v4

    .line 411
    invoke-virtual {v7}, Landroid/view/View;->getWidth()I

    move-result v13

    add-int/2addr v12, v13

    iget v13, v6, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    add-int/2addr v13, v5

    .line 412
    invoke-virtual {v7}, Landroid/view/View;->getHeight()I

    move-result v14

    add-int/2addr v13, v14

    .line 410
    invoke-virtual {v7, v10, v11, v12, v13}, Landroid/view/View;->layout(IIII)V

    goto :goto_1

    .line 423
    .end local v6    # "lp":Landroid/widget/RelativeLayout$LayoutParams;
    .end local v7    # "view":Landroid/view/View;
    .end local v8    # "view_height":I
    .end local v9    # "view_width":I
    :cond_4
    return-void
.end method

.method protected onMeasure(II)V
    .locals 5
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 427
    invoke-virtual {p0}, Lcom/alibaba/alimei/cmail/widget/mail/MultiLineRelativeLayout;->getChildCount()I

    move-result v0

    .line 428
    .local v0, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 429
    invoke-virtual {p0, v2}, Lcom/alibaba/alimei/cmail/widget/mail/MultiLineRelativeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 430
    .local v3, "view":Landroid/view/View;
    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v4

    .line 431
    .local v4, "width":I
    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v1

    .line 432
    .local v1, "height":I
    invoke-virtual {v3, v4, v1}, Landroid/view/View;->measure(II)V

    .line 428
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 434
    .end local v1    # "height":I
    .end local v3    # "view":Landroid/view/View;
    .end local v4    # "width":I
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/RelativeLayout;->onMeasure(II)V

    .line 435
    return-void
.end method

.method public removeView(Landroid/view/View;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 190
    if-nez p1, :cond_0

    .line 194
    :goto_0
    return-void

    .line 192
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    .line 193
    invoke-direct {p0}, Lcom/alibaba/alimei/cmail/widget/mail/MultiLineRelativeLayout;->c()V

    goto :goto_0
.end method

.method public removeViewAt(I)V
    .locals 0
    .param p1, "index"    # I

    .prologue
    .line 198
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->removeViewAt(I)V

    .line 199
    invoke-direct {p0}, Lcom/alibaba/alimei/cmail/widget/mail/MultiLineRelativeLayout;->c()V

    .line 200
    return-void
.end method

.method public removeViews(II)V
    .locals 0
    .param p1, "start"    # I
    .param p2, "count"    # I

    .prologue
    .line 204
    invoke-super {p0, p1, p2}, Landroid/widget/RelativeLayout;->removeViews(II)V

    .line 205
    invoke-direct {p0}, Lcom/alibaba/alimei/cmail/widget/mail/MultiLineRelativeLayout;->c()V

    .line 206
    return-void
.end method

.method public setHorizonalSpacing(I)V
    .locals 1
    .param p1, "space"    # I

    .prologue
    .line 81
    if-gtz p1, :cond_1

    .line 88
    :cond_0
    :goto_0
    return-void

    .line 84
    :cond_1
    iget v0, p0, Lcom/alibaba/alimei/cmail/widget/mail/MultiLineRelativeLayout;->a:I

    if-nez v0, :cond_0

    .line 87
    iput p1, p0, Lcom/alibaba/alimei/cmail/widget/mail/MultiLineRelativeLayout;->a:I

    goto :goto_0
.end method

.method public setVerticalSpacing(I)V
    .locals 1
    .param p1, "space"    # I

    .prologue
    .line 91
    if-gtz p1, :cond_1

    .line 98
    :cond_0
    :goto_0
    return-void

    .line 94
    :cond_1
    iget v0, p0, Lcom/alibaba/alimei/cmail/widget/mail/MultiLineRelativeLayout;->b:I

    if-nez v0, :cond_0

    .line 97
    iput p1, p0, Lcom/alibaba/alimei/cmail/widget/mail/MultiLineRelativeLayout;->b:I

    goto :goto_0
.end method
