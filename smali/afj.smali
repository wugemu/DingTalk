.class public final Lafj;
.super Ljava/lang/Object;
.source "DragControl.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lafj$a;
    }
.end annotation


# static fields
.field private static r:Lafj;


# instance fields
.field public a:I

.field public b:F

.field public c:F

.field public d:F

.field public e:F

.field public f:Lcom/alibaba/alimei/mail/widget/DragContainer;

.field public g:Lafj$a;

.field public h:Landroid/view/VelocityTracker;

.field private i:F

.field private j:F

.field private k:F

.field private l:F

.field private m:Lcom/alibaba/alimei/cmail/widget/mail/SingleAddressBar;

.field private n:Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel;

.field private o:I

.field private p:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel;",
            ">;"
        }
    .end annotation
.end field

.field private q:Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel;

.field private s:Lcom/alibaba/alimei/cmail/widget/mail/SingleAddressBar;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lafj;->p:Ljava/util/List;

    .line 453
    return-void
.end method

.method static synthetic a(Lafj;F)F
    .locals 0
    .param p0, "x0"    # Lafj;
    .param p1, "x1"    # F

    .prologue
    .line 20
    iput p1, p0, Lafj;->k:F

    return p1
.end method

.method static synthetic a(Lafj;Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel;)I
    .locals 1
    .param p0, "x0"    # Lafj;
    .param p1, "x1"    # Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel;

    .prologue
    .line 20
    invoke-direct {p0, p1}, Lafj;->b(Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel;)I

    move-result v0

    return v0
.end method

.method public static a()Lafj;
    .locals 1

    .prologue
    .line 114
    sget-object v0, Lafj;->r:Lafj;

    if-nez v0, :cond_0

    .line 115
    new-instance v0, Lafj;

    invoke-direct {v0}, Lafj;-><init>()V

    sput-object v0, Lafj;->r:Lafj;

    .line 117
    :cond_0
    sget-object v0, Lafj;->r:Lafj;

    return-object v0
.end method

.method static synthetic a(Lafj;)Lcom/alibaba/alimei/cmail/widget/mail/SingleAddressBar;
    .locals 1
    .param p0, "x0"    # Lafj;

    .prologue
    .line 20
    iget-object v0, p0, Lafj;->m:Lcom/alibaba/alimei/cmail/widget/mail/SingleAddressBar;

    return-object v0
.end method

.method static synthetic a(Lafj;FF)V
    .locals 12
    .param p0, "x0"    # Lafj;
    .param p1, "x1"    # F
    .param p2, "x2"    # F

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    const/4 v2, 0x0

    .line 20
    .line 4330
    cmpl-float v0, p1, v2

    if-nez v0, :cond_0

    .line 4331
    const p1, 0x322bcc77    # 1.0E-8f

    .line 4333
    .end local p1    # "x1":F
    :cond_0
    div-float v5, p2, p1

    .line 4335
    iget-object v0, p0, Lafj;->m:Lcom/alibaba/alimei/cmail/widget/mail/SingleAddressBar;

    invoke-virtual {v0}, Lcom/alibaba/alimei/cmail/widget/mail/SingleAddressBar;->getWidth()I

    move-result v0

    neg-int v0, v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v3, v0

    .line 4336
    iget-object v0, p0, Lafj;->m:Lcom/alibaba/alimei/cmail/widget/mail/SingleAddressBar;

    invoke-virtual {v0}, Lcom/alibaba/alimei/cmail/widget/mail/SingleAddressBar;->getHeight()I

    move-result v0

    neg-int v0, v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    .line 4337
    iget-object v1, p0, Lafj;->f:Lcom/alibaba/alimei/mail/widget/DragContainer;

    invoke-virtual {v1}, Lcom/alibaba/alimei/mail/widget/DragContainer;->getWidth()I

    move-result v1

    iget-object v4, p0, Lafj;->m:Lcom/alibaba/alimei/cmail/widget/mail/SingleAddressBar;

    invoke-virtual {v4}, Lcom/alibaba/alimei/cmail/widget/mail/SingleAddressBar;->getWidth()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    sub-int/2addr v1, v4

    int-to-float v4, v1

    .line 4338
    iget-object v1, p0, Lafj;->f:Lcom/alibaba/alimei/mail/widget/DragContainer;

    invoke-virtual {v1}, Lcom/alibaba/alimei/mail/widget/DragContainer;->getHeight()I

    move-result v1

    iget-object v6, p0, Lafj;->m:Lcom/alibaba/alimei/cmail/widget/mail/SingleAddressBar;

    invoke-virtual {v6}, Lcom/alibaba/alimei/cmail/widget/mail/SingleAddressBar;->getHeight()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    sub-int/2addr v1, v6

    int-to-float v1, v1

    .line 4339
    iget-object v6, p0, Lafj;->m:Lcom/alibaba/alimei/cmail/widget/mail/SingleAddressBar;

    invoke-virtual {v6}, Lcom/alibaba/alimei/cmail/widget/mail/SingleAddressBar;->getX()F

    move-result v6

    .line 4340
    iget-object v7, p0, Lafj;->m:Lcom/alibaba/alimei/cmail/widget/mail/SingleAddressBar;

    invoke-virtual {v7}, Lcom/alibaba/alimei/cmail/widget/mail/SingleAddressBar;->getY()F

    move-result v7

    .line 4342
    cmpg-float v8, p1, v2

    if-gtz v8, :cond_2

    cmpg-float v8, p2, v2

    if-gtz v8, :cond_2

    .line 4344
    sub-float v1, v6, v3

    mul-float/2addr v1, v5

    sub-float v1, v7, v1

    .line 4345
    cmpg-float v4, v1, v0

    if-gez v4, :cond_a

    .line 4347
    sub-float v1, v7, v0

    div-float/2addr v1, v5

    sub-float v1, v6, v1

    .line 4372
    :goto_0
    iget-object v3, p0, Lafj;->m:Lcom/alibaba/alimei/cmail/widget/mail/SingleAddressBar;

    const-string/jumbo v4, "translationX"

    new-array v5, v10, [F

    aput v1, v5, v9

    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    .line 4373
    iget-object v4, p0, Lafj;->m:Lcom/alibaba/alimei/cmail/widget/mail/SingleAddressBar;

    const-string/jumbo v5, "translationY"

    new-array v6, v10, [F

    aput v0, v6, v9

    invoke-static {v4, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    .line 4374
    new-instance v5, Landroid/animation/AnimatorSet;

    invoke-direct {v5}, Landroid/animation/AnimatorSet;-><init>()V

    .line 4375
    iget-object v6, p0, Lafj;->m:Lcom/alibaba/alimei/cmail/widget/mail/SingleAddressBar;

    invoke-virtual {v6}, Lcom/alibaba/alimei/cmail/widget/mail/SingleAddressBar;->getX()F

    move-result v6

    sub-float v1, v6, v1

    .line 4376
    iget-object v6, p0, Lafj;->m:Lcom/alibaba/alimei/cmail/widget/mail/SingleAddressBar;

    invoke-virtual {v6}, Lcom/alibaba/alimei/cmail/widget/mail/SingleAddressBar;->getY()F

    move-result v6

    sub-float/2addr v6, v0

    .line 4377
    const/16 v0, 0x64

    .line 4378
    cmpl-float v7, v1, v2

    if-eqz v7, :cond_5

    .line 4379
    div-float v0, v1, p1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    float-to-int v0, v0

    .line 4383
    :cond_1
    :goto_1
    int-to-long v0, v0

    invoke-virtual {v5, v0, v1}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 4384
    const/4 v0, 0x2

    new-array v0, v0, [Landroid/animation/Animator;

    aput-object v3, v0, v9

    aput-object v4, v0, v10

    invoke-virtual {v5, v0}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 4385
    new-instance v0, Lafj$4;

    invoke-direct {v0, p0}, Lafj$4;-><init>(Lafj;)V

    invoke-virtual {v5, v0}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 4405
    invoke-virtual {v5}, Landroid/animation/AnimatorSet;->start()V

    .line 20
    return-void

    .line 4349
    :cond_2
    cmpg-float v8, p1, v2

    if-gtz v8, :cond_3

    cmpl-float v8, p2, v2

    if-ltz v8, :cond_3

    .line 4351
    sub-float v0, v6, v3

    mul-float/2addr v0, v5

    sub-float v0, v7, v0

    .line 4352
    cmpl-float v4, v0, v1

    if-lez v4, :cond_9

    .line 4354
    sub-float v0, v7, v1

    div-float/2addr v0, v5

    sub-float v0, v6, v0

    move v11, v1

    move v1, v0

    move v0, v11

    goto :goto_0

    .line 4356
    :cond_3
    cmpl-float v3, p1, v2

    if-ltz v3, :cond_4

    cmpg-float v3, p2, v2

    if-gtz v3, :cond_4

    .line 4358
    sub-float v1, v4, v6

    mul-float/2addr v1, v5

    add-float/2addr v1, v7

    .line 4359
    cmpg-float v3, v1, v0

    if-gez v3, :cond_8

    .line 4361
    sub-float v1, v7, v0

    div-float/2addr v1, v5

    sub-float v1, v6, v1

    goto/16 :goto_0

    .line 4363
    :cond_4
    cmpl-float v0, p1, v2

    if-ltz v0, :cond_7

    cmpl-float v0, p2, v2

    if-ltz v0, :cond_7

    .line 4365
    sub-float v0, v4, v6

    mul-float/2addr v0, v5

    add-float/2addr v0, v7

    .line 4366
    cmpl-float v3, v0, v1

    if-lez v3, :cond_6

    .line 4368
    sub-float v0, v7, v1

    div-float/2addr v0, v5

    sub-float v0, v6, v0

    move v11, v1

    move v1, v0

    move v0, v11

    goto/16 :goto_0

    .line 4380
    :cond_5
    cmpl-float v1, v6, v2

    if-eqz v1, :cond_1

    .line 4381
    div-float v0, v6, p2

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    float-to-int v0, v0

    goto :goto_1

    :cond_6
    move v1, v4

    goto/16 :goto_0

    :cond_7
    move v0, v2

    move v1, v2

    goto/16 :goto_0

    :cond_8
    move v0, v1

    move v1, v4

    goto/16 :goto_0

    :cond_9
    move v1, v3

    goto/16 :goto_0

    :cond_a
    move v0, v1

    move v1, v3

    goto/16 :goto_0
.end method

.method public static a(Lcom/alibaba/alimei/cmail/widget/mail/SingleAddressBar;)V
    .locals 2
    .param p0, "v"    # Lcom/alibaba/alimei/cmail/widget/mail/SingleAddressBar;

    .prologue
    .line 270
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/alibaba/alimei/cmail/widget/mail/SingleAddressBar;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 271
    invoke-virtual {p0}, Lcom/alibaba/alimei/cmail/widget/mail/SingleAddressBar;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel;

    .line 272
    .local v0, "panel":Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel;
    invoke-virtual {p0}, Lcom/alibaba/alimei/cmail/widget/mail/SingleAddressBar;->getAddressModel()Lcom/alibaba/alimei/sdk/model/AddressModel;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel;->a(Lcom/alibaba/alimei/sdk/model/AddressModel;)V

    .line 273
    invoke-virtual {v0, p0}, Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel;->removeView(Landroid/view/View;)V

    .line 275
    .end local v0    # "panel":Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel;
    :cond_0
    return-void
.end method

.method private a(Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel;I)V
    .locals 2
    .param p1, "panel"    # Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel;
    .param p2, "index"    # I

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 220
    iget-object v0, p0, Lafj;->s:Lcom/alibaba/alimei/cmail/widget/mail/SingleAddressBar;

    invoke-static {v0}, Lafj;->a(Lcom/alibaba/alimei/cmail/widget/mail/SingleAddressBar;)V

    .line 222
    iget-object v0, p0, Lafj;->m:Lcom/alibaba/alimei/cmail/widget/mail/SingleAddressBar;

    invoke-virtual {v0}, Lcom/alibaba/alimei/cmail/widget/mail/SingleAddressBar;->getAddressModel()Lcom/alibaba/alimei/sdk/model/AddressModel;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p1, v0, p2, v1}, Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel;->a(Lcom/alibaba/alimei/sdk/model/AddressModel;IZ)Lcom/alibaba/alimei/cmail/widget/mail/SingleAddressBar;

    move-result-object v0

    iput-object v0, p0, Lafj;->s:Lcom/alibaba/alimei/cmail/widget/mail/SingleAddressBar;

    .line 223
    iget-object v0, p0, Lafj;->s:Lcom/alibaba/alimei/cmail/widget/mail/SingleAddressBar;

    invoke-virtual {v0}, Lcom/alibaba/alimei/cmail/widget/mail/SingleAddressBar;->a()V

    .line 226
    return-void
.end method

.method private a(Z)V
    .locals 3
    .param p1, "isSingleLine"    # Z

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 95
    iget-object v1, p0, Lafj;->p:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel;

    .line 96
    .local v0, "p":Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel;
    invoke-virtual {v0, p1}, Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel;->setDragMode(Z)V

    goto :goto_0

    .line 98
    .end local v0    # "p":Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel;
    :cond_0
    return-void
.end method

.method static synthetic b(Lafj;F)F
    .locals 0
    .param p0, "x0"    # Lafj;
    .param p1, "x1"    # F

    .prologue
    .line 20
    iput p1, p0, Lafj;->l:F

    return p1
.end method

.method private b(Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel;)I
    .locals 12
    .param p1, "targetPanel"    # Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel;

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v11

    invoke-static {v11}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 229
    invoke-virtual {p1}, Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel;->getChildCount()I

    move-result v1

    .line 230
    .local v1, "childCount":I
    const/4 v2, 0x0

    .line 231
    .local v2, "frontContainsSelf":Z
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v1, :cond_6

    .line 232
    invoke-virtual {p1, v3}, Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    instance-of v6, v6, Lcom/alibaba/alimei/cmail/widget/mail/SingleAddressBar;

    if-eqz v6, :cond_5

    .line 233
    invoke-virtual {p1, v3}, Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/alimei/cmail/widget/mail/SingleAddressBar;

    .line 234
    .local v0, "bar":Lcom/alibaba/alimei/cmail/widget/mail/SingleAddressBar;
    iget-object v6, p0, Lafj;->m:Lcom/alibaba/alimei/cmail/widget/mail/SingleAddressBar;

    invoke-virtual {v6}, Lcom/alibaba/alimei/cmail/widget/mail/SingleAddressBar;->getAddressModel()Lcom/alibaba/alimei/sdk/model/AddressModel;

    move-result-object v6

    invoke-virtual {v0}, Lcom/alibaba/alimei/cmail/widget/mail/SingleAddressBar;->getAddressModel()Lcom/alibaba/alimei/sdk/model/AddressModel;

    move-result-object v7

    if-ne v6, v7, :cond_0

    .line 235
    const/4 v2, 0x1

    .line 237
    :cond_0
    iget-object v6, p0, Lafj;->m:Lcom/alibaba/alimei/cmail/widget/mail/SingleAddressBar;

    .line 3250
    invoke-virtual {v6}, Lcom/alibaba/alimei/cmail/widget/mail/SingleAddressBar;->getAddressModel()Lcom/alibaba/alimei/sdk/model/AddressModel;

    move-result-object v7

    invoke-virtual {v0}, Lcom/alibaba/alimei/cmail/widget/mail/SingleAddressBar;->getAddressModel()Lcom/alibaba/alimei/sdk/model/AddressModel;

    move-result-object v8

    if-eq v7, v8, :cond_4

    .line 3253
    invoke-virtual {v6}, Lcom/alibaba/alimei/cmail/widget/mail/SingleAddressBar;->getHeight()I

    move-result v7

    .line 3254
    const/4 v8, 0x2

    new-array v8, v8, [I

    .line 3255
    invoke-virtual {v6, v8}, Lcom/alibaba/alimei/cmail/widget/mail/SingleAddressBar;->getLocationOnScreen([I)V

    .line 3256
    const/4 v9, 0x2

    new-array v9, v9, [I

    .line 3257
    invoke-virtual {v0, v9}, Lcom/alibaba/alimei/cmail/widget/mail/SingleAddressBar;->getLocationOnScreen([I)V

    .line 3259
    const/4 v10, 0x1

    aget v10, v8, v10

    const/4 v11, 0x1

    aget v11, v9, v11

    sub-int/2addr v10, v11

    invoke-static {v10}, Ljava/lang/Math;->abs(I)I

    move-result v10

    div-int/lit8 v7, v7, 0x2

    if-ge v10, v7, :cond_3

    .line 3260
    const/4 v7, 0x0

    aget v7, v8, v7

    invoke-virtual {v6}, Lcom/alibaba/alimei/cmail/widget/mail/SingleAddressBar;->getWidth()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    add-int/2addr v6, v7

    .line 3261
    const/4 v7, 0x0

    aget v7, v9, v7

    invoke-virtual {v0}, Lcom/alibaba/alimei/cmail/widget/mail/SingleAddressBar;->getWidth()I

    move-result v8

    div-int/lit8 v8, v8, 0x2

    add-int/2addr v7, v8

    int-to-float v7, v7

    invoke-virtual {p0}, Lafj;->e()Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel;

    move-result-object v8

    invoke-virtual {v8}, Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel;->getX()F

    move-result v8

    add-float/2addr v7, v8

    float-to-int v7, v7

    .line 3263
    if-ge v6, v7, :cond_2

    const/4 v4, 0x1

    .line 239
    .local v4, "isFrontOf":Z
    :goto_1
    if-eqz v4, :cond_5

    .line 240
    invoke-virtual {v0}, Lcom/alibaba/alimei/cmail/widget/mail/SingleAddressBar;->getAddressModel()Lcom/alibaba/alimei/sdk/model/AddressModel;

    move-result-object v6

    invoke-virtual {p1, v6}, Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel;->b(Lcom/alibaba/alimei/sdk/model/AddressModel;)I

    move-result v5

    .line 241
    .local v5, "result":I
    if-eqz v2, :cond_1

    if-lez v5, :cond_1

    add-int/lit8 v5, v5, -0x1

    .line 246
    .end local v0    # "bar":Lcom/alibaba/alimei/cmail/widget/mail/SingleAddressBar;
    .end local v4    # "isFrontOf":Z
    .end local v5    # "result":I
    :cond_1
    :goto_2
    return v5

    .line 3263
    .restart local v0    # "bar":Lcom/alibaba/alimei/cmail/widget/mail/SingleAddressBar;
    :cond_2
    const/4 v4, 0x0

    goto :goto_1

    .line 3265
    :cond_3
    const/4 v6, 0x1

    aget v6, v8, v6

    const/4 v7, 0x1

    aget v7, v9, v7

    if-ge v6, v7, :cond_4

    const/4 v4, 0x1

    goto :goto_1

    :cond_4
    const/4 v4, 0x0

    goto :goto_1

    .line 231
    .end local v0    # "bar":Lcom/alibaba/alimei/cmail/widget/mail/SingleAddressBar;
    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    .line 246
    :cond_6
    const/4 v5, -0x1

    goto :goto_2
.end method

.method public static b()V
    .locals 2

    .prologue
    .line 120
    sget-object v0, Lafj;->r:Lafj;

    if-eqz v0, :cond_0

    .line 121
    sget-object v0, Lafj;->r:Lafj;

    const/4 v1, 0x2

    iput v1, v0, Lafj;->a:I

    .line 122
    sget-object v0, Lafj;->r:Lafj;

    invoke-direct {v0}, Lafj;->h()V

    .line 124
    :cond_0
    return-void
.end method

.method static synthetic b(Lafj;)V
    .locals 0
    .param p0, "x0"    # Lafj;

    .prologue
    .line 20
    invoke-direct {p0}, Lafj;->g()V

    return-void
.end method

.method private b(Z)V
    .locals 3
    .param p1, "b"    # Z

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 101
    iget-object v1, p0, Lafj;->p:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel;

    .line 102
    .local v0, "p":Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel;
    invoke-virtual {v0, p1}, Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel;->setCursorVisible(Z)V

    goto :goto_0

    .line 104
    .end local v0    # "p":Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel;
    :cond_0
    return-void
.end method

.method static synthetic c(Lafj;)Lcom/alibaba/alimei/mail/widget/DragContainer;
    .locals 1
    .param p0, "x0"    # Lafj;

    .prologue
    .line 20
    iget-object v0, p0, Lafj;->f:Lcom/alibaba/alimei/mail/widget/DragContainer;

    return-object v0
.end method

.method public static c()V
    .locals 2

    .prologue
    .line 126
    sget-object v0, Lafj;->r:Lafj;

    if-eqz v0, :cond_0

    .line 127
    sget-object v0, Lafj;->r:Lafj;

    const/4 v1, 0x0

    iput v1, v0, Lafj;->a:I

    .line 129
    :cond_0
    return-void
.end method

.method static synthetic d(Lafj;)V
    .locals 0
    .param p0, "x0"    # Lafj;

    .prologue
    .line 20
    invoke-direct {p0}, Lafj;->h()V

    return-void
.end method

.method static synthetic e(Lafj;)Lcom/alibaba/alimei/cmail/widget/mail/SingleAddressBar;
    .locals 1
    .param p0, "x0"    # Lafj;

    .prologue
    .line 20
    iget-object v0, p0, Lafj;->s:Lcom/alibaba/alimei/cmail/widget/mail/SingleAddressBar;

    return-object v0
.end method

.method public static f()V
    .locals 1

    .prologue
    .line 446
    const/4 v0, 0x0

    sput-object v0, Lafj;->r:Lafj;

    .line 447
    return-void
.end method

.method private g()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 107
    iget-object v0, p0, Lafj;->m:Lcom/alibaba/alimei/cmail/widget/mail/SingleAddressBar;

    if-eqz v0, :cond_0

    .line 108
    iget-object v0, p0, Lafj;->m:Lcom/alibaba/alimei/cmail/widget/mail/SingleAddressBar;

    iget v1, p0, Lafj;->b:F

    iget v2, p0, Lafj;->i:F

    add-float/2addr v1, v2

    iget v2, p0, Lafj;->k:F

    sub-float/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/alibaba/alimei/cmail/widget/mail/SingleAddressBar;->setX(F)V

    .line 109
    iget-object v0, p0, Lafj;->m:Lcom/alibaba/alimei/cmail/widget/mail/SingleAddressBar;

    iget v1, p0, Lafj;->c:F

    iget v2, p0, Lafj;->j:F

    add-float/2addr v1, v2

    iget v2, p0, Lafj;->l:F

    sub-float/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/alibaba/alimei/cmail/widget/mail/SingleAddressBar;->setY(F)V

    .line 111
    :cond_0
    return-void
.end method

.method private h()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    const/4 v3, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    .line 410
    iget-object v0, p0, Lafj;->m:Lcom/alibaba/alimei/cmail/widget/mail/SingleAddressBar;

    if-eqz v0, :cond_0

    .line 411
    iget-object v0, p0, Lafj;->m:Lcom/alibaba/alimei/cmail/widget/mail/SingleAddressBar;

    invoke-virtual {v0, v2}, Lcom/alibaba/alimei/cmail/widget/mail/SingleAddressBar;->setScaleX(F)V

    .line 412
    iget-object v0, p0, Lafj;->m:Lcom/alibaba/alimei/cmail/widget/mail/SingleAddressBar;

    invoke-virtual {v0, v2}, Lcom/alibaba/alimei/cmail/widget/mail/SingleAddressBar;->setScaleY(F)V

    .line 413
    iget-object v0, p0, Lafj;->m:Lcom/alibaba/alimei/cmail/widget/mail/SingleAddressBar;

    invoke-virtual {v0, v1}, Lcom/alibaba/alimei/cmail/widget/mail/SingleAddressBar;->setX(F)V

    .line 414
    iget-object v0, p0, Lafj;->m:Lcom/alibaba/alimei/cmail/widget/mail/SingleAddressBar;

    invoke-virtual {v0, v1}, Lcom/alibaba/alimei/cmail/widget/mail/SingleAddressBar;->setY(F)V

    .line 416
    :cond_0
    iget-object v0, p0, Lafj;->s:Lcom/alibaba/alimei/cmail/widget/mail/SingleAddressBar;

    if-eqz v0, :cond_1

    .line 417
    iget-object v0, p0, Lafj;->s:Lcom/alibaba/alimei/cmail/widget/mail/SingleAddressBar;

    .line 4161
    iget-object v1, v0, Lcom/alibaba/alimei/cmail/widget/mail/SingleAddressBar;->b:Lcom/alibaba/alimei/sdk/model/AddressModel;

    iget-object v1, v1, Lcom/alibaba/alimei/sdk/model/AddressModel;->address:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alibaba/alimei/cmail/widget/mail/SingleAddressBar;->a(Ljava/lang/String;)V

    .line 419
    :cond_1
    iput v3, p0, Lafj;->a:I

    .line 420
    iget-object v0, p0, Lafj;->g:Lafj$a;

    if-eqz v0, :cond_2

    .line 421
    iget-object v0, p0, Lafj;->g:Lafj$a;

    invoke-interface {v0}, Lafj$a;->b()V

    .line 423
    :cond_2
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lafj;->b(Z)V

    .line 424
    invoke-direct {p0, v3}, Lafj;->a(Z)V

    .line 425
    return-void
.end method


# virtual methods
.method public final a(Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel;)V
    .locals 1
    .param p1, "panel"    # Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel;

    .prologue
    .line 432
    iget-object v0, p0, Lafj;->p:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 433
    iget-object v0, p0, Lafj;->p:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 435
    :cond_0
    return-void
.end method

.method public d()V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    const/4 v2, 0x1

    .line 190
    iget v0, p0, Lafj;->a:I

    if-ne v0, v2, :cond_1

    iget-object v0, p0, Lafj;->m:Lcom/alibaba/alimei/cmail/widget/mail/SingleAddressBar;

    if-eqz v0, :cond_1

    .line 191
    invoke-direct {p0}, Lafj;->g()V

    .line 2197
    iget-object v0, p0, Lafj;->p:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel;

    .line 2198
    iget-object v1, p0, Lafj;->m:Lcom/alibaba/alimei/cmail/widget/mail/SingleAddressBar;

    .line 2278
    if-eqz v0, :cond_2

    .line 2281
    const/4 v4, 0x2

    new-array v4, v4, [I

    .line 2282
    invoke-virtual {v0, v4}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 2283
    aget v5, v4, v2

    .line 2286
    invoke-virtual {v1, v4}, Lcom/alibaba/alimei/cmail/widget/mail/SingleAddressBar;->getLocationOnScreen([I)V

    .line 2287
    aget v4, v4, v2

    invoke-virtual {v1}, Lcom/alibaba/alimei/cmail/widget/mail/SingleAddressBar;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v1, v4

    .line 2288
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    add-int/2addr v4, v5

    .line 2290
    if-lt v1, v5, :cond_2

    if-gt v1, v4, :cond_2

    move v1, v2

    .line 2198
    :goto_0
    if-eqz v1, :cond_0

    .line 2204
    iput-object v0, p0, Lafj;->q:Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel;

    .line 2207
    iget-object v0, p0, Lafj;->q:Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel;

    invoke-virtual {p0}, Lafj;->e()Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel;

    move-result-object v1

    invoke-direct {p0, v1}, Lafj;->b(Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel;)I

    move-result v1

    invoke-direct {p0, v0, v1}, Lafj;->a(Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel;I)V

    .line 2209
    :cond_1
    :goto_1
    return-void

    .line 2293
    :cond_2
    const/4 v1, 0x0

    goto :goto_0

    .line 2215
    :cond_3
    iget-object v0, p0, Lafj;->n:Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel;

    iput-object v0, p0, Lafj;->q:Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel;

    .line 2216
    iget-object v0, p0, Lafj;->n:Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel;

    iget v1, p0, Lafj;->o:I

    invoke-direct {p0, v0, v1}, Lafj;->a(Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel;I)V

    goto :goto_1
.end method

.method public final e()Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel;
    .locals 1

    .prologue
    .line 438
    iget-object v0, p0, Lafj;->q:Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel;

    if-eqz v0, :cond_0

    .line 439
    iget-object v0, p0, Lafj;->q:Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel;

    .line 441
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lafj;->n:Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel;

    goto :goto_0
.end method

.method public final onLongClick(Landroid/view/View;)Z
    .locals 7
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    const/4 v5, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 42
    iget v4, p0, Lafj;->a:I

    if-ne v4, v5, :cond_1

    .line 51
    :cond_0
    :goto_0
    return v2

    .line 45
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 46
    .local v0, "view1":Landroid/view/ViewParent;
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    invoke-interface {v4}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    .line 47
    .local v1, "view2":Landroid/view/ViewParent;
    iget-object v4, p0, Lafj;->f:Lcom/alibaba/alimei/mail/widget/DragContainer;

    if-eqz v4, :cond_0

    instance-of v4, v0, Lcom/alibaba/alimei/cmail/widget/mail/SingleAddressBar;

    if-eqz v4, :cond_0

    instance-of v4, v1, Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel;

    if-eqz v4, :cond_0

    .line 48
    check-cast v0, Lcom/alibaba/alimei/cmail/widget/mail/SingleAddressBar;

    .end local v0    # "view1":Landroid/view/ViewParent;
    check-cast v1, Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel;

    .line 1055
    .end local v1    # "view2":Landroid/view/ViewParent;
    iget-object v4, p0, Lafj;->g:Lafj$a;

    if-eqz v4, :cond_2

    .line 1056
    iget-object v4, p0, Lafj;->g:Lafj$a;

    invoke-interface {v4}, Lafj$a;->a()V

    .line 1058
    :cond_2
    iput v3, p0, Lafj;->a:I

    .line 1059
    iput-object v1, p0, Lafj;->n:Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel;

    .line 1060
    invoke-virtual {v0}, Lcom/alibaba/alimei/cmail/widget/mail/SingleAddressBar;->getAddressModel()Lcom/alibaba/alimei/sdk/model/AddressModel;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel;->b(Lcom/alibaba/alimei/sdk/model/AddressModel;)I

    move-result v4

    .line 1061
    invoke-virtual {v1, v4}, Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel;->setSelectedIndex(I)V

    .line 1817
    const/4 v4, -0x1

    invoke-virtual {v1, v4}, Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel;->setSelectedIndex(I)V

    .line 1063
    invoke-virtual {v0, v3}, Lcom/alibaba/alimei/cmail/widget/mail/SingleAddressBar;->setSelected(Z)V

    .line 1064
    iput-object v0, p0, Lafj;->m:Lcom/alibaba/alimei/cmail/widget/mail/SingleAddressBar;

    .line 1066
    new-array v4, v5, [I

    .line 1067
    iget-object v5, p0, Lafj;->m:Lcom/alibaba/alimei/cmail/widget/mail/SingleAddressBar;

    invoke-virtual {v5, v4}, Lcom/alibaba/alimei/cmail/widget/mail/SingleAddressBar;->getLocationOnScreen([I)V

    .line 1068
    aget v5, v4, v2

    int-to-float v5, v5

    iget v6, p0, Lafj;->b:F

    sub-float/2addr v5, v6

    iput v5, p0, Lafj;->i:F

    .line 1069
    aget v4, v4, v3

    int-to-float v4, v4

    iget v5, p0, Lafj;->c:F

    sub-float/2addr v4, v5

    iput v4, p0, Lafj;->j:F

    .line 1070
    iget-object v4, p0, Lafj;->m:Lcom/alibaba/alimei/cmail/widget/mail/SingleAddressBar;

    const/4 v5, 0x4

    invoke-virtual {v4, v5}, Lcom/alibaba/alimei/cmail/widget/mail/SingleAddressBar;->setVisibility(I)V

    .line 1072
    iget-object v4, p0, Lafj;->n:Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel;

    iget-object v5, p0, Lafj;->m:Lcom/alibaba/alimei/cmail/widget/mail/SingleAddressBar;

    invoke-virtual {v5}, Lcom/alibaba/alimei/cmail/widget/mail/SingleAddressBar;->getAddressModel()Lcom/alibaba/alimei/sdk/model/AddressModel;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel;->b(Lcom/alibaba/alimei/sdk/model/AddressModel;)I

    move-result v4

    iput v4, p0, Lafj;->o:I

    .line 1073
    iget-object v4, p0, Lafj;->n:Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel;

    iget-object v5, p0, Lafj;->m:Lcom/alibaba/alimei/cmail/widget/mail/SingleAddressBar;

    invoke-virtual {v5}, Lcom/alibaba/alimei/cmail/widget/mail/SingleAddressBar;->getAddressModel()Lcom/alibaba/alimei/sdk/model/AddressModel;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel;->a(Lcom/alibaba/alimei/sdk/model/AddressModel;)V

    .line 1074
    iget-object v4, p0, Lafj;->n:Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel;

    iget-object v5, p0, Lafj;->m:Lcom/alibaba/alimei/cmail/widget/mail/SingleAddressBar;

    invoke-virtual {v5}, Lcom/alibaba/alimei/cmail/widget/mail/SingleAddressBar;->getAddressModel()Lcom/alibaba/alimei/sdk/model/AddressModel;

    move-result-object v5

    iget v6, p0, Lafj;->o:I

    invoke-virtual {v4, v5, v6, v3}, Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel;->a(Lcom/alibaba/alimei/sdk/model/AddressModel;IZ)Lcom/alibaba/alimei/cmail/widget/mail/SingleAddressBar;

    move-result-object v4

    iput-object v4, p0, Lafj;->s:Lcom/alibaba/alimei/cmail/widget/mail/SingleAddressBar;

    .line 1077
    iget-object v4, p0, Lafj;->s:Lcom/alibaba/alimei/cmail/widget/mail/SingleAddressBar;

    invoke-virtual {v4}, Lcom/alibaba/alimei/cmail/widget/mail/SingleAddressBar;->a()V

    .line 1079
    iget-object v4, p0, Lafj;->f:Lcom/alibaba/alimei/mail/widget/DragContainer;

    iget-object v5, p0, Lafj;->m:Lcom/alibaba/alimei/cmail/widget/mail/SingleAddressBar;

    invoke-virtual {v4, v5}, Lcom/alibaba/alimei/mail/widget/DragContainer;->addView(Landroid/view/View;)V

    .line 1080
    iget-object v4, p0, Lafj;->f:Lcom/alibaba/alimei/mail/widget/DragContainer;

    new-instance v5, Lafj$1;

    invoke-direct {v5, p0}, Lafj$1;-><init>(Lafj;)V

    invoke-virtual {v4, v5}, Lcom/alibaba/alimei/mail/widget/DragContainer;->post(Ljava/lang/Runnable;)Z

    .line 1089
    invoke-virtual {p0}, Lafj;->d()V

    .line 1090
    invoke-direct {p0, v2}, Lafj;->b(Z)V

    .line 1091
    invoke-direct {p0, v3}, Lafj;->a(Z)V

    move v2, v3

    .line 49
    goto/16 :goto_0
.end method
