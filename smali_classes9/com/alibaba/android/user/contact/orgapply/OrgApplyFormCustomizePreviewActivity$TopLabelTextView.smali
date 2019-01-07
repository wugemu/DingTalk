.class public Lcom/alibaba/android/user/contact/orgapply/OrgApplyFormCustomizePreviewActivity$TopLabelTextView;
.super Lcom/alibaba/android/dingtalkui/widget/text/font/DtFootnoteTextView;
.source "OrgApplyFormCustomizePreviewActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/user/contact/orgapply/OrgApplyFormCustomizePreviewActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TopLabelTextView"
.end annotation


# static fields
.field private static final a:I

.field private static final b:I

.field private static final c:I


# instance fields
.field private d:Landroid/graphics/Paint;

.field private e:Landroid/graphics/Path;

.field private f:Landroid/graphics/RectF;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 335
    sget v0, Lezg$f;->dp3:I

    invoke-static {v0}, Leda;->d(I)I

    move-result v0

    sput v0, Lcom/alibaba/android/user/contact/orgapply/OrgApplyFormCustomizePreviewActivity$TopLabelTextView;->a:I

    .line 336
    sget v0, Lezg$f;->dp2:I

    invoke-static {v0}, Leda;->d(I)I

    move-result v0

    sput v0, Lcom/alibaba/android/user/contact/orgapply/OrgApplyFormCustomizePreviewActivity$TopLabelTextView;->b:I

    .line 338
    sget v0, Lezg$e;->ui_common_green1_color:I

    invoke-static {v0}, Leda;->b(I)I

    move-result v0

    sput v0, Lcom/alibaba/android/user/contact/orgapply/OrgApplyFormCustomizePreviewActivity$TopLabelTextView;->c:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 346
    invoke-direct {p0, p1}, Lcom/alibaba/android/dingtalkui/widget/text/font/DtFootnoteTextView;-><init>(Landroid/content/Context;)V

    .line 347
    invoke-direct {p0}, Lcom/alibaba/android/user/contact/orgapply/OrgApplyFormCustomizePreviewActivity$TopLabelTextView;->b()V

    .line 348
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 351
    invoke-direct {p0, p1, p2}, Lcom/alibaba/android/dingtalkui/widget/text/font/DtFootnoteTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 352
    invoke-direct {p0}, Lcom/alibaba/android/user/contact/orgapply/OrgApplyFormCustomizePreviewActivity$TopLabelTextView;->b()V

    .line 353
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 356
    invoke-direct {p0, p1, p2, p3}, Lcom/alibaba/android/dingtalkui/widget/text/font/DtFootnoteTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 357
    invoke-direct {p0}, Lcom/alibaba/android/user/contact/orgapply/OrgApplyFormCustomizePreviewActivity$TopLabelTextView;->b()V

    .line 358
    return-void
.end method

.method private b()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v2, 0x0

    .line 361
    sget v1, Lezg$l;->dt_org_apply_form_in_use:I

    invoke-static {v1}, Leda;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/alibaba/android/user/contact/orgapply/OrgApplyFormCustomizePreviewActivity$TopLabelTextView;->setText(Ljava/lang/CharSequence;)V

    .line 362
    const/16 v1, 0x11

    invoke-virtual {p0, v1}, Lcom/alibaba/android/user/contact/orgapply/OrgApplyFormCustomizePreviewActivity$TopLabelTextView;->setGravity(I)V

    .line 363
    sget v1, Lezg$e;->ui_common_content_bg_color:I

    invoke-static {v1}, Leda;->b(I)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/alibaba/android/user/contact/orgapply/OrgApplyFormCustomizePreviewActivity$TopLabelTextView;->setTextColor(I)V

    .line 364
    sget v1, Lezg$f;->dp23:I

    invoke-static {v1}, Leda;->d(I)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/alibaba/android/user/contact/orgapply/OrgApplyFormCustomizePreviewActivity$TopLabelTextView;->setMaxHeight(I)V

    .line 365
    sget v1, Lezg$f;->dp12:I

    invoke-static {v1}, Leda;->d(I)I

    move-result v0

    .line 366
    .local v0, "paddingHorizontal":I
    invoke-virtual {p0, v0, v2, v0, v2}, Lcom/alibaba/android/user/contact/orgapply/OrgApplyFormCustomizePreviewActivity$TopLabelTextView;->setPadding(IIII)V

    .line 368
    new-instance v1, Landroid/graphics/Paint;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v1, p0, Lcom/alibaba/android/user/contact/orgapply/OrgApplyFormCustomizePreviewActivity$TopLabelTextView;->d:Landroid/graphics/Paint;

    .line 369
    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    iput-object v1, p0, Lcom/alibaba/android/user/contact/orgapply/OrgApplyFormCustomizePreviewActivity$TopLabelTextView;->e:Landroid/graphics/Path;

    .line 370
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    iput-object v1, p0, Lcom/alibaba/android/user/contact/orgapply/OrgApplyFormCustomizePreviewActivity$TopLabelTextView;->f:Landroid/graphics/RectF;

    .line 371
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 14
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v13

    invoke-static {v13}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/high16 v13, -0x3d4c0000    # -90.0f

    const/4 v12, 0x0

    .line 378
    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/orgapply/OrgApplyFormCustomizePreviewActivity$TopLabelTextView;->getWidth()I

    move-result v7

    .line 379
    .local v7, "width":I
    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/orgapply/OrgApplyFormCustomizePreviewActivity$TopLabelTextView;->getHeight()I

    move-result v2

    .line 381
    .local v2, "height":I
    iget-object v4, p0, Lcom/alibaba/android/user/contact/orgapply/OrgApplyFormCustomizePreviewActivity$TopLabelTextView;->d:Landroid/graphics/Paint;

    .line 382
    .local v4, "paint":Landroid/graphics/Paint;
    iget-object v5, p0, Lcom/alibaba/android/user/contact/orgapply/OrgApplyFormCustomizePreviewActivity$TopLabelTextView;->e:Landroid/graphics/Path;

    .line 383
    .local v5, "path":Landroid/graphics/Path;
    iget-object v0, p0, Lcom/alibaba/android/user/contact/orgapply/OrgApplyFormCustomizePreviewActivity$TopLabelTextView;->f:Landroid/graphics/RectF;

    .line 385
    .local v0, "arcAssistant":Landroid/graphics/RectF;
    sget-object v8, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v4, v8}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 387
    const v8, -0xcb849d

    invoke-virtual {v4, v8}, Landroid/graphics/Paint;->setColor(I)V

    .line 389
    invoke-virtual {v5}, Landroid/graphics/Path;->reset()V

    .line 390
    sget v8, Lcom/alibaba/android/user/contact/orgapply/OrgApplyFormCustomizePreviewActivity$TopLabelTextView;->a:I

    int-to-float v8, v8

    invoke-virtual {v5, v12, v8}, Landroid/graphics/Path;->moveTo(FF)V

    .line 391
    sget v8, Lcom/alibaba/android/user/contact/orgapply/OrgApplyFormCustomizePreviewActivity$TopLabelTextView;->a:I

    int-to-float v8, v8

    sget v9, Lcom/alibaba/android/user/contact/orgapply/OrgApplyFormCustomizePreviewActivity$TopLabelTextView;->a:I

    int-to-float v9, v9

    invoke-virtual {v5, v8, v9}, Landroid/graphics/Path;->lineTo(FF)V

    .line 392
    sget v8, Lcom/alibaba/android/user/contact/orgapply/OrgApplyFormCustomizePreviewActivity$TopLabelTextView;->a:I

    int-to-float v8, v8

    invoke-virtual {v5, v8, v12}, Landroid/graphics/Path;->lineTo(FF)V

    .line 393
    invoke-virtual {v5}, Landroid/graphics/Path;->close()V

    .line 394
    invoke-virtual {p1, v5, v4}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 396
    invoke-virtual {v5}, Landroid/graphics/Path;->reset()V

    .line 397
    int-to-float v8, v7

    sget v9, Lcom/alibaba/android/user/contact/orgapply/OrgApplyFormCustomizePreviewActivity$TopLabelTextView;->a:I

    int-to-float v9, v9

    invoke-virtual {v5, v8, v9}, Landroid/graphics/Path;->moveTo(FF)V

    .line 398
    sget v8, Lcom/alibaba/android/user/contact/orgapply/OrgApplyFormCustomizePreviewActivity$TopLabelTextView;->a:I

    sub-int v8, v7, v8

    int-to-float v8, v8

    sget v9, Lcom/alibaba/android/user/contact/orgapply/OrgApplyFormCustomizePreviewActivity$TopLabelTextView;->a:I

    int-to-float v9, v9

    invoke-virtual {v5, v8, v9}, Landroid/graphics/Path;->lineTo(FF)V

    .line 399
    sget v8, Lcom/alibaba/android/user/contact/orgapply/OrgApplyFormCustomizePreviewActivity$TopLabelTextView;->a:I

    sub-int v8, v7, v8

    int-to-float v8, v8

    invoke-virtual {v5, v8, v12}, Landroid/graphics/Path;->lineTo(FF)V

    .line 400
    invoke-virtual {v5}, Landroid/graphics/Path;->close()V

    .line 401
    invoke-virtual {p1, v5, v4}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 403
    sget v8, Lcom/alibaba/android/user/contact/orgapply/OrgApplyFormCustomizePreviewActivity$TopLabelTextView;->c:I

    invoke-virtual {v4, v8}, Landroid/graphics/Paint;->setColor(I)V

    .line 405
    sget v3, Lcom/alibaba/android/user/contact/orgapply/OrgApplyFormCustomizePreviewActivity$TopLabelTextView;->a:I

    .line 406
    .local v3, "left":I
    sget v8, Lcom/alibaba/android/user/contact/orgapply/OrgApplyFormCustomizePreviewActivity$TopLabelTextView;->a:I

    sub-int v6, v7, v8

    .line 407
    .local v6, "right":I
    invoke-virtual {v5}, Landroid/graphics/Path;->reset()V

    .line 408
    int-to-float v8, v3

    invoke-virtual {v5, v8, v12}, Landroid/graphics/Path;->moveTo(FF)V

    .line 409
    int-to-float v8, v3

    sget v9, Lcom/alibaba/android/user/contact/orgapply/OrgApplyFormCustomizePreviewActivity$TopLabelTextView;->b:I

    sub-int v9, v2, v9

    int-to-float v9, v9

    invoke-virtual {v5, v8, v9}, Landroid/graphics/Path;->lineTo(FF)V

    .line 410
    sget v8, Lcom/alibaba/android/user/contact/orgapply/OrgApplyFormCustomizePreviewActivity$TopLabelTextView;->b:I

    mul-int/lit8 v1, v8, 0x2

    .line 411
    .local v1, "assistantSize":I
    int-to-float v8, v3

    sub-int v9, v2, v1

    int-to-float v9, v9

    add-int v10, v3, v1

    int-to-float v10, v10

    int-to-float v11, v2

    invoke-virtual {v0, v8, v9, v10, v11}, Landroid/graphics/RectF;->set(FFFF)V

    .line 412
    const/high16 v8, 0x43340000    # 180.0f

    invoke-virtual {v5, v0, v8, v13}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FF)V

    .line 413
    sget v8, Lcom/alibaba/android/user/contact/orgapply/OrgApplyFormCustomizePreviewActivity$TopLabelTextView;->b:I

    sub-int v8, v6, v8

    int-to-float v8, v8

    int-to-float v9, v2

    invoke-virtual {v5, v8, v9}, Landroid/graphics/Path;->lineTo(FF)V

    .line 414
    sub-int v8, v6, v1

    int-to-float v8, v8

    sub-int v9, v2, v1

    int-to-float v9, v9

    int-to-float v10, v6

    int-to-float v11, v2

    invoke-virtual {v0, v8, v9, v10, v11}, Landroid/graphics/RectF;->set(FFFF)V

    .line 415
    const/high16 v8, 0x42b40000    # 90.0f

    invoke-virtual {v5, v0, v8, v13}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FF)V

    .line 416
    int-to-float v8, v6

    invoke-virtual {v5, v8, v12}, Landroid/graphics/Path;->lineTo(FF)V

    .line 417
    invoke-virtual {v5}, Landroid/graphics/Path;->close()V

    .line 418
    invoke-virtual {p1, v5, v4}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 420
    invoke-super {p0, p1}, Lcom/alibaba/android/dingtalkui/widget/text/font/DtFootnoteTextView;->draw(Landroid/graphics/Canvas;)V

    .line 421
    return-void
.end method
