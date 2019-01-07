.class public Lcom/alibaba/alimei/mail/activity/CMailCameraActivity;
.super Lcom/alibaba/alimei/mail/activity/MailBaseActivity;
.source "CMailCameraActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/alibaba/alimei/mail/widget/MediaPreviewView$a;
.implements Lzp$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/alimei/mail/activity/CMailCameraActivity$a;
    }
.end annotation


# instance fields
.field private a:I

.field private b:I

.field private c:J

.field private d:Landroid/view/SurfaceView;

.field private e:Landroid/view/SurfaceView;

.field private f:Landroid/view/View;

.field private g:Landroid/view/View;

.field private h:Landroid/widget/TextView;

.field private i:Lzp;

.field private j:Landroid/view/View;

.field private k:Landroid/widget/TextView;

.field private l:Landroid/view/View;

.field private m:Landroid/widget/TextView;

.field private n:Lcom/alibaba/alimei/mail/widget/MediaPreviewView;

.field private o:I

.field private p:Landroid/os/Handler;

.field private q:Ljava/io/File;

.field private r:Landroid/net/Uri;

.field private s:Lrz;

.field private t:Landroid/view/View$OnTouchListener;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/alibaba/alimei/mail/activity/MailBaseActivity;-><init>()V

    .line 101
    const v0, 0x7fffffff

    iput v0, p0, Lcom/alibaba/alimei/mail/activity/CMailCameraActivity;->a:I

    .line 111
    const-wide v0, 0x7fffffffffffffffL

    iput-wide v0, p0, Lcom/alibaba/alimei/mail/activity/CMailCameraActivity;->c:J

    .line 171
    const/4 v0, 0x0

    iput v0, p0, Lcom/alibaba/alimei/mail/activity/CMailCameraActivity;->o:I

    .line 191
    new-instance v0, Lrz;

    invoke-direct {v0}, Lrz;-><init>()V

    iput-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailCameraActivity;->s:Lrz;

    .line 193
    new-instance v0, Lcom/alibaba/alimei/mail/activity/CMailCameraActivity$1;

    invoke-direct {v0, p0}, Lcom/alibaba/alimei/mail/activity/CMailCameraActivity$1;-><init>(Lcom/alibaba/alimei/mail/activity/CMailCameraActivity;)V

    iput-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailCameraActivity;->t:Landroid/view/View$OnTouchListener;

    .line 208
    return-void
.end method

.method static synthetic a(Lcom/alibaba/alimei/mail/activity/CMailCameraActivity;)Lzp;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/activity/CMailCameraActivity;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailCameraActivity;->i:Lzp;

    return-object v0
.end method

.method private a(IIIIIIIII)V
    .locals 22
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I
    .param p5, "radius"    # I
    .param p6, "distance"    # I
    .param p7, "color"    # I
    .param p8, "delay"    # I
    .param p9, "duration"    # I

    .prologue
    .line 455
    sub-int v3, p3, p1

    move/from16 v0, p5

    if-le v3, v0, :cond_2

    .line 456
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alibaba/alimei/mail/activity/CMailCameraActivity;->p:Landroid/os/Handler;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 457
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alibaba/alimei/mail/activity/CMailCameraActivity;->e:Landroid/view/SurfaceView;

    invoke-virtual {v3}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v19

    .line 458
    .local v19, "holder":Landroid/view/SurfaceHolder;
    if-nez v19, :cond_1

    .line 490
    .end local v19    # "holder":Landroid/view/SurfaceHolder;
    :cond_0
    :goto_0
    return-void

    .line 461
    .restart local v19    # "holder":Landroid/view/SurfaceHolder;
    :cond_1
    const/4 v3, 0x0

    move-object/from16 v0, v19

    invoke-interface {v0, v3}, Landroid/view/SurfaceHolder;->lockCanvas(Landroid/graphics/Rect;)Landroid/graphics/Canvas;

    move-result-object v2

    .line 462
    .local v2, "canvas":Landroid/graphics/Canvas;
    if-eqz v2, :cond_0

    .line 465
    const/4 v3, 0x0

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 467
    new-instance v7, Landroid/graphics/Paint;

    invoke-direct {v7}, Landroid/graphics/Paint;-><init>()V

    .line 468
    .local v7, "paint":Landroid/graphics/Paint;
    sget-object v3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v7, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 469
    move/from16 v0, p7

    invoke-virtual {v7, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 470
    const/high16 v3, 0x40400000    # 3.0f

    invoke-virtual {v7, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 471
    move/from16 v0, p1

    int-to-float v3, v0

    move/from16 v0, p2

    int-to-float v4, v0

    move/from16 v0, p3

    int-to-float v5, v0

    move/from16 v0, p4

    int-to-float v6, v0

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 472
    move-object/from16 v0, v19

    invoke-interface {v0, v2}, Landroid/view/SurfaceHolder;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V

    .line 473
    move/from16 v0, p8

    int-to-double v4, v0

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    mul-double/2addr v4, v8

    move/from16 v0, p9

    int-to-double v8, v0

    div-double/2addr v4, v8

    move/from16 v0, p6

    int-to-double v8, v0

    mul-double v20, v4, v8

    .line 474
    .local v20, "deltaDistance":D
    move/from16 v0, p1

    int-to-double v4, v0

    add-double v4, v4, v20

    double-to-int v10, v4

    .line 475
    .local v10, "startLeft":I
    move/from16 v0, p2

    int-to-double v4, v0

    add-double v4, v4, v20

    double-to-int v11, v4

    .line 476
    .local v11, "startTop":I
    move/from16 v0, p3

    int-to-double v4, v0

    sub-double v4, v4, v20

    double-to-int v12, v4

    .line 477
    .local v12, "startRight":I
    move/from16 v0, p4

    int-to-double v4, v0

    sub-double v4, v4, v20

    double-to-int v13, v4

    .line 478
    .local v13, "startBottom":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alibaba/alimei/mail/activity/CMailCameraActivity;->p:Landroid/os/Handler;

    new-instance v8, Lcom/alibaba/alimei/mail/activity/CMailCameraActivity$3;

    move-object/from16 v9, p0

    move/from16 v14, p5

    move/from16 v15, p6

    move/from16 v16, p7

    move/from16 v17, p8

    move/from16 v18, p9

    invoke-direct/range {v8 .. v18}, Lcom/alibaba/alimei/mail/activity/CMailCameraActivity$3;-><init>(Lcom/alibaba/alimei/mail/activity/CMailCameraActivity;IIIIIIIII)V

    move/from16 v0, p8

    int-to-long v4, v0

    invoke-virtual {v3, v8, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 488
    .end local v2    # "canvas":Landroid/graphics/Canvas;
    .end local v7    # "paint":Landroid/graphics/Paint;
    .end local v10    # "startLeft":I
    .end local v11    # "startTop":I
    .end local v12    # "startRight":I
    .end local v13    # "startBottom":I
    .end local v19    # "holder":Landroid/view/SurfaceHolder;
    .end local v20    # "deltaDistance":D
    :cond_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alibaba/alimei/mail/activity/CMailCameraActivity;->p:Landroid/os/Handler;

    const/4 v4, 0x0

    const-wide/16 v8, 0x7d0

    invoke-virtual {v3, v4, v8, v9}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0
.end method

.method static synthetic a(Lcom/alibaba/alimei/mail/activity/CMailCameraActivity;IIIIIII)V
    .locals 10
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/activity/CMailCameraActivity;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # I
    .param p4, "x4"    # I
    .param p5, "x5"    # I
    .param p6, "x6"    # I
    .param p7, "x7"    # I

    .prologue
    .line 39
    const/16 v5, 0x64

    const/16 v9, 0x64

    const v7, -0xffff01

    .line 18449
    sub-int v0, p3, p1

    shr-int/lit8 v0, v0, 0x1

    sub-int v6, v0, v5

    .line 18450
    const/16 v8, 0x10

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v9}, Lcom/alibaba/alimei/mail/activity/CMailCameraActivity;->a(IIIIIIIII)V

    .line 39
    return-void
.end method

.method static synthetic a(Lcom/alibaba/alimei/mail/activity/CMailCameraActivity;IIIIIIIII)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/activity/CMailCameraActivity;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # I
    .param p4, "x4"    # I
    .param p5, "x5"    # I
    .param p6, "x6"    # I
    .param p7, "x7"    # I
    .param p8, "x8"    # I
    .param p9, "x9"    # I

    .prologue
    .line 39
    invoke-direct/range {p0 .. p9}, Lcom/alibaba/alimei/mail/activity/CMailCameraActivity;->a(IIIIIIIII)V

    return-void
.end method

.method static synthetic a(Lcom/alibaba/alimei/mail/activity/CMailCameraActivity;Z)V
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/activity/CMailCameraActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 39
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/alibaba/alimei/mail/activity/CMailCameraActivity;->b(Z)V

    return-void
.end method

.method private b(I)V
    .locals 6
    .param p1, "state"    # I

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/high16 v1, -0x10000

    const/16 v5, 0x18

    const/16 v4, 0x8

    const/4 v3, 0x0

    .line 394
    iget v0, p0, Lcom/alibaba/alimei/mail/activity/CMailCameraActivity;->o:I

    if-ne v0, p1, :cond_1

    .line 445
    :cond_0
    :goto_0
    return-void

    .line 398
    :cond_1
    iput p1, p0, Lcom/alibaba/alimei/mail/activity/CMailCameraActivity;->o:I

    .line 399
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 401
    :pswitch_0
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailCameraActivity;->k:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/alibaba/alimei/mail/activity/CMailCameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Laxo$c;->ui_common_content_fg_color:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 402
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailCameraActivity;->k:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/alibaba/alimei/mail/activity/CMailCameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Laxo$d;->alm_cmail_font_size_s24:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v3, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 403
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailCameraActivity;->k:Landroid/widget/TextView;

    sget v1, Laxo$i;->icon_camera_fill:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 404
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailCameraActivity;->m:Landroid/widget/TextView;

    sget v1, Laxo$i;->icon_video_fill:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 405
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailCameraActivity;->f:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 406
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailCameraActivity;->g:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 407
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v0, v5, :cond_0

    .line 408
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailCameraActivity;->l:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 412
    :pswitch_1
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailCameraActivity;->k:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/alibaba/alimei/mail/activity/CMailCameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Laxo$c;->ui_common_content_fg_color:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 413
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailCameraActivity;->k:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/alibaba/alimei/mail/activity/CMailCameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Laxo$d;->alm_cmail_font_size_s24:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v3, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 414
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailCameraActivity;->k:Landroid/widget/TextView;

    sget v1, Laxo$i;->icon_video_fill:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 415
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailCameraActivity;->m:Landroid/widget/TextView;

    sget v1, Laxo$i;->icon_camera_fill:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 416
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailCameraActivity;->f:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 417
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailCameraActivity;->g:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 418
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v0, v5, :cond_0

    .line 419
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailCameraActivity;->l:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    .line 423
    :pswitch_2
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailCameraActivity;->k:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 424
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailCameraActivity;->k:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/alibaba/alimei/mail/activity/CMailCameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Laxo$d;->alm_cmail_font_size_s12:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v3, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 425
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailCameraActivity;->k:Landroid/widget/TextView;

    sget v1, Laxo$i;->icon_btn:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 426
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailCameraActivity;->m:Landroid/widget/TextView;

    sget v1, Laxo$i;->icon_dingstop_fill:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 427
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailCameraActivity;->f:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 428
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailCameraActivity;->g:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 429
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v0, v5, :cond_0

    .line 430
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailCameraActivity;->l:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    .line 434
    :pswitch_3
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailCameraActivity;->k:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 435
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailCameraActivity;->k:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/alibaba/alimei/mail/activity/CMailCameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Laxo$d;->alm_cmail_font_size_s12:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v3, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 436
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailCameraActivity;->k:Landroid/widget/TextView;

    sget v1, Laxo$i;->icon_btn:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 437
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailCameraActivity;->m:Landroid/widget/TextView;

    sget v1, Laxo$i;->icon_dingplay_fill:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 438
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailCameraActivity;->f:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 439
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailCameraActivity;->g:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 440
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v0, v5, :cond_0

    .line 441
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailCameraActivity;->l:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    .line 399
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method static synthetic b(Lcom/alibaba/alimei/mail/activity/CMailCameraActivity;)V
    .locals 3
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/activity/CMailCameraActivity;

    .prologue
    .line 39
    .line 18493
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailCameraActivity;->e:Landroid/view/SurfaceView;

    invoke-virtual {v0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->lockCanvas(Landroid/graphics/Rect;)Landroid/graphics/Canvas;

    move-result-object v0

    .line 18494
    if-nez v0, :cond_0

    .line 18495
    :goto_0
    return-void

    .line 18497
    :cond_0
    const/4 v1, 0x0

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 18498
    iget-object v1, p0, Lcom/alibaba/alimei/mail/activity/CMailCameraActivity;->e:Landroid/view/SurfaceView;

    invoke-virtual {v1}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v1

    invoke-interface {v1, v0}, Landroid/view/SurfaceHolder;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V

    goto :goto_0
.end method

.method private b(Z)V
    .locals 1
    .param p1, "enable"    # Z

    .prologue
    .line 362
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailCameraActivity;->j:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailCameraActivity;->j:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->isEnabled()Z

    move-result v0

    if-eq v0, p1, :cond_0

    .line 363
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailCameraActivity;->j:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 366
    :cond_0
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailCameraActivity;->l:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailCameraActivity;->l:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->isEnabled()Z

    move-result v0

    if-eq v0, p1, :cond_1

    .line 367
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailCameraActivity;->l:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 369
    :cond_1
    return-void
.end method

.method static synthetic c(Lcom/alibaba/alimei/mail/activity/CMailCameraActivity;)Lcom/alibaba/alimei/mail/widget/MediaPreviewView;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/activity/CMailCameraActivity;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailCameraActivity;->n:Lcom/alibaba/alimei/mail/widget/MediaPreviewView;

    return-object v0
.end method

.method static synthetic d(Lcom/alibaba/alimei/mail/activity/CMailCameraActivity;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/activity/CMailCameraActivity;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailCameraActivity;->h:Landroid/widget/TextView;

    return-object v0
.end method


# virtual methods
.method public final a(I)V
    .locals 2
    .param p1, "ticket"    # I

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 579
    iget v0, p0, Lcom/alibaba/alimei/mail/activity/CMailCameraActivity;->a:I

    if-ge v0, p1, :cond_1

    .line 580
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailCameraActivity;->i:Lzp;

    invoke-virtual {v0}, Lzp;->a()V

    .line 603
    :cond_0
    :goto_0
    return-void

    .line 584
    :cond_1
    invoke-static {}, Lss;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 585
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailCameraActivity;->h:Landroid/widget/TextView;

    invoke-static {p1}, Lsc;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 586
    const/4 v0, 0x2

    if-le p1, v0, :cond_0

    .line 587
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/alibaba/alimei/mail/activity/CMailCameraActivity;->b(Z)V

    goto :goto_0

    .line 590
    :cond_2
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailCameraActivity;->p:Landroid/os/Handler;

    new-instance v1, Lcom/alibaba/alimei/mail/activity/CMailCameraActivity$5;

    invoke-direct {v1, p0, p1}, Lcom/alibaba/alimei/mail/activity/CMailCameraActivity$5;-><init>(Lcom/alibaba/alimei/mail/activity/CMailCameraActivity;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public final a(ILandroid/net/Uri;)V
    .locals 2
    .param p1, "type"    # I
    .param p2, "uri"    # Landroid/net/Uri;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v1, 0x0

    .line 527
    iput-object p2, p0, Lcom/alibaba/alimei/mail/activity/CMailCameraActivity;->r:Landroid/net/Uri;

    .line 528
    packed-switch p1, :pswitch_data_0

    .line 561
    :cond_0
    :goto_0
    return-void

    .line 531
    :pswitch_0
    invoke-static {}, Lss;->a()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 532
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailCameraActivity;->n:Lcom/alibaba/alimei/mail/widget/MediaPreviewView;

    if-eqz v0, :cond_1

    .line 533
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailCameraActivity;->n:Lcom/alibaba/alimei/mail/widget/MediaPreviewView;

    invoke-virtual {v0, v1}, Lcom/alibaba/alimei/mail/widget/MediaPreviewView;->setVisibility(I)V

    .line 534
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailCameraActivity;->n:Lcom/alibaba/alimei/mail/widget/MediaPreviewView;

    invoke-virtual {v0, p2}, Lcom/alibaba/alimei/mail/widget/MediaPreviewView;->setUri(Landroid/net/Uri;)V

    .line 536
    :cond_1
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailCameraActivity;->n:Lcom/alibaba/alimei/mail/widget/MediaPreviewView;

    if-eqz v0, :cond_2

    .line 537
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailCameraActivity;->n:Lcom/alibaba/alimei/mail/widget/MediaPreviewView;

    invoke-virtual {v0, v1}, Lcom/alibaba/alimei/mail/widget/MediaPreviewView;->setVisibility(I)V

    .line 538
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailCameraActivity;->n:Lcom/alibaba/alimei/mail/widget/MediaPreviewView;

    invoke-virtual {v0, p2}, Lcom/alibaba/alimei/mail/widget/MediaPreviewView;->setUri(Landroid/net/Uri;)V

    .line 540
    :cond_2
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/alibaba/alimei/mail/activity/CMailCameraActivity;->b(Z)V

    goto :goto_0

    .line 542
    :cond_3
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailCameraActivity;->p:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 543
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailCameraActivity;->p:Landroid/os/Handler;

    new-instance v1, Lcom/alibaba/alimei/mail/activity/CMailCameraActivity$4;

    invoke-direct {v1, p0, p2}, Lcom/alibaba/alimei/mail/activity/CMailCameraActivity$4;-><init>(Lcom/alibaba/alimei/mail/activity/CMailCameraActivity;Landroid/net/Uri;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 528
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public final a(Z)V
    .locals 0
    .param p1, "isReady"    # Z

    .prologue
    .line 607
    invoke-direct {p0, p1}, Lcom/alibaba/alimei/mail/activity/CMailCameraActivity;->b(Z)V

    .line 608
    return-void
.end method

.method public final b()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/16 v1, 0x8

    .line 612
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailCameraActivity;->n:Lcom/alibaba/alimei/mail/widget/MediaPreviewView;

    if-eqz v0, :cond_0

    .line 613
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailCameraActivity;->n:Lcom/alibaba/alimei/mail/widget/MediaPreviewView;

    invoke-virtual {v0}, Lcom/alibaba/alimei/mail/widget/MediaPreviewView;->getVisibility()I

    move-result v0

    if-eq v0, v1, :cond_0

    .line 614
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailCameraActivity;->n:Lcom/alibaba/alimei/mail/widget/MediaPreviewView;

    invoke-virtual {v0, v1}, Lcom/alibaba/alimei/mail/widget/MediaPreviewView;->setVisibility(I)V

    .line 617
    :cond_0
    return-void
.end method

.method public final g_()V
    .locals 1

    .prologue
    .line 574
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/alibaba/alimei/mail/activity/CMailCameraActivity;->b(Z)V

    .line 575
    return-void
.end method

.method public final h_()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 621
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 622
    .local v0, "intent":Landroid/content/Intent;
    iget-object v3, p0, Lcom/alibaba/alimei/mail/activity/CMailCameraActivity;->r:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    .line 623
    .local v1, "path":Ljava/lang/String;
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 624
    .local v2, "uri":Landroid/net/Uri;
    invoke-virtual {v0, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 625
    const/4 v3, -0x1

    invoke-virtual {p0, v3, v0}, Lcom/alibaba/alimei/mail/activity/CMailCameraActivity;->setResult(ILandroid/content/Intent;)V

    .line 626
    invoke-virtual {p0}, Lcom/alibaba/alimei/mail/activity/CMailCameraActivity;->finish()V

    .line 627
    return-void
.end method

.method public onBackPressed()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 565
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailCameraActivity;->n:Lcom/alibaba/alimei/mail/widget/MediaPreviewView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailCameraActivity;->n:Lcom/alibaba/alimei/mail/widget/MediaPreviewView;

    invoke-virtual {v0}, Lcom/alibaba/alimei/mail/widget/MediaPreviewView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 566
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailCameraActivity;->n:Lcom/alibaba/alimei/mail/widget/MediaPreviewView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/alibaba/alimei/mail/widget/MediaPreviewView;->setVisibility(I)V

    .line 570
    :goto_0
    return-void

    .line 568
    :cond_0
    invoke-super {p0}, Lcom/alibaba/alimei/mail/activity/MailBaseActivity;->onBackPressed()V

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 10
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/16 v4, 0x18

    const/4 v9, 0x2

    const/4 v8, 0x0

    const/4 v1, 0x0

    const/4 v7, 0x1

    .line 319
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailCameraActivity;->s:Lrz;

    invoke-virtual {v0}, Lrz;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 17202
    :cond_0
    :goto_0
    return-void

    .line 323
    :cond_1
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailCameraActivity;->s:Lrz;

    .line 14041
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v0, Lrz;->a:J

    .line 325
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v6

    .line 326
    .local v6, "id":I
    sget v0, Laxo$f;->camera_action:I

    if-ne v0, v6, :cond_2

    .line 14336
    iget v0, p0, Lcom/alibaba/alimei/mail/activity/CMailCameraActivity;->o:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 14338
    :pswitch_0
    invoke-direct {p0, v1}, Lcom/alibaba/alimei/mail/activity/CMailCameraActivity;->b(Z)V

    .line 14339
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailCameraActivity;->i:Lzp;

    iget-object v1, p0, Lcom/alibaba/alimei/mail/activity/CMailCameraActivity;->q:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v7}, Lajp;->b(I)Ljava/lang/String;

    move-result-object v2

    .line 14397
    iget-object v3, v0, Lzp;->b:Landroid/hardware/Camera;

    new-instance v4, Lzp$b;

    invoke-direct {v4, v0, v1, v2}, Lzp$b;-><init>(Lzp;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v8, v8, v4}, Landroid/hardware/Camera;->takePicture(Landroid/hardware/Camera$ShutterCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;)V

    goto :goto_0

    .line 14342
    :pswitch_1
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailCameraActivity;->i:Lzp;

    iget-object v2, p0, Lcom/alibaba/alimei/mail/activity/CMailCameraActivity;->q:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v9}, Lajp;->b(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lzp;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 14343
    invoke-direct {p0, v9}, Lcom/alibaba/alimei/mail/activity/CMailCameraActivity;->b(I)V

    .line 14344
    invoke-direct {p0, v1}, Lcom/alibaba/alimei/mail/activity/CMailCameraActivity;->b(Z)V

    goto :goto_0

    .line 14347
    :pswitch_2
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailCameraActivity;->i:Lzp;

    invoke-virtual {v0}, Lzp;->a()V

    .line 14348
    invoke-direct {p0, v7}, Lcom/alibaba/alimei/mail/activity/CMailCameraActivity;->b(I)V

    goto :goto_0

    .line 14351
    :pswitch_3
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailCameraActivity;->i:Lzp;

    invoke-virtual {v0}, Lzp;->a()V

    .line 14352
    invoke-direct {p0, v7}, Lcom/alibaba/alimei/mail/activity/CMailCameraActivity;->b(I)V

    goto :goto_0

    .line 328
    :cond_2
    sget v0, Laxo$f;->change_action:I

    if-ne v0, v6, :cond_5

    .line 15375
    iget v0, p0, Lcom/alibaba/alimei/mail/activity/CMailCameraActivity;->o:I

    packed-switch v0, :pswitch_data_1

    goto :goto_0

    .line 15377
    :pswitch_4
    invoke-direct {p0, v7}, Lcom/alibaba/alimei/mail/activity/CMailCameraActivity;->b(I)V

    goto :goto_0

    .line 15380
    :pswitch_5
    invoke-direct {p0, v1}, Lcom/alibaba/alimei/mail/activity/CMailCameraActivity;->b(I)V

    goto :goto_0

    .line 15383
    :pswitch_6
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailCameraActivity;->i:Lzp;

    .line 16235
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v1, v4, :cond_3

    .line 16236
    iget-object v1, v0, Lzp;->a:Landroid/media/MediaRecorder;

    if-eqz v1, :cond_3

    iget-object v1, v0, Lzp;->b:Landroid/hardware/Camera;

    if-eqz v1, :cond_3

    .line 16237
    iget-object v1, v0, Lzp;->a:Landroid/media/MediaRecorder;

    invoke-virtual {v1}, Landroid/media/MediaRecorder;->pause()V

    .line 16238
    iget-object v0, v0, Lzp;->k:Ljava/util/TimerTask;

    invoke-virtual {v0}, Ljava/util/TimerTask;->cancel()Z

    .line 15384
    :cond_3
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/alibaba/alimei/mail/activity/CMailCameraActivity;->b(I)V

    goto/16 :goto_0

    .line 15387
    :pswitch_7
    iget-object v2, p0, Lcom/alibaba/alimei/mail/activity/CMailCameraActivity;->i:Lzp;

    .line 16244
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v4, :cond_4

    .line 16245
    iget-object v0, v2, Lzp;->a:Landroid/media/MediaRecorder;

    if-eqz v0, :cond_4

    iget-object v0, v2, Lzp;->b:Landroid/hardware/Camera;

    if-eqz v0, :cond_4

    .line 16246
    iget-object v0, v2, Lzp;->a:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->resume()V

    .line 16247
    new-instance v0, Lzp$c;

    invoke-direct {v0, v2, v1}, Lzp$c;-><init>(Lzp;B)V

    iput-object v0, v2, Lzp;->k:Ljava/util/TimerTask;

    .line 16248
    iget-object v0, v2, Lzp;->i:Ljava/util/Timer;

    iget-object v1, v2, Lzp;->k:Ljava/util/TimerTask;

    const-wide/16 v2, 0x3e8

    const-wide/16 v4, 0x3e8

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    .line 15388
    :cond_4
    invoke-direct {p0, v9}, Lcom/alibaba/alimei/mail/activity/CMailCameraActivity;->b(I)V

    goto/16 :goto_0

    .line 330
    :cond_5
    sget v0, Laxo$f;->switch_camera:I

    if-ne v0, v6, :cond_0

    .line 331
    iget-object v2, p0, Lcom/alibaba/alimei/mail/activity/CMailCameraActivity;->i:Lzp;

    .line 17165
    new-instance v3, Landroid/hardware/Camera$CameraInfo;

    invoke-direct {v3}, Landroid/hardware/Camera$CameraInfo;-><init>()V

    .line 17166
    invoke-static {}, Landroid/hardware/Camera;->getNumberOfCameras()I

    move-result v4

    move v0, v1

    .line 17167
    :goto_1
    if-ge v0, v4, :cond_0

    .line 17168
    invoke-static {v0, v3}, Landroid/hardware/Camera;->getCameraInfo(ILandroid/hardware/Camera$CameraInfo;)V

    .line 17169
    iget v5, v3, Landroid/hardware/Camera$CameraInfo;->facing:I

    if-ne v5, v7, :cond_7

    iget v5, v2, Lzp;->c:I

    if-nez v5, :cond_7

    .line 17170
    iget-object v1, v2, Lzp;->b:Landroid/hardware/Camera;

    if-eqz v1, :cond_6

    .line 17171
    iget-object v1, v2, Lzp;->b:Landroid/hardware/Camera;

    invoke-virtual {v1}, Landroid/hardware/Camera;->stopPreview()V

    .line 17172
    iget-object v1, v2, Lzp;->b:Landroid/hardware/Camera;

    invoke-virtual {v1}, Landroid/hardware/Camera;->release()V

    .line 17173
    iput-object v8, v2, Lzp;->b:Landroid/hardware/Camera;

    .line 17175
    :cond_6
    invoke-static {v0}, Landroid/hardware/Camera;->open(I)Landroid/hardware/Camera;

    move-result-object v0

    iput-object v0, v2, Lzp;->b:Landroid/hardware/Camera;

    .line 17177
    :try_start_0
    iget-object v0, v2, Lzp;->b:Landroid/hardware/Camera;

    iget-object v1, v2, Lzp;->f:Landroid/view/SurfaceView;

    invoke-virtual {v1}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->setPreviewDisplay(Landroid/view/SurfaceHolder;)V

    .line 17178
    iget-object v0, v2, Lzp;->b:Landroid/hardware/Camera;

    const/16 v1, 0x5a

    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->setDisplayOrientation(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 17183
    :goto_2
    iput v7, v2, Lzp;->c:I

    .line 17184
    iget-object v0, v2, Lzp;->b:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->startPreview()V

    goto/16 :goto_0

    .line 17179
    :catch_0
    move-exception v0

    .line 17180
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 17181
    const-string/jumbo v1, "CameraHelper"

    const-string/jumbo v3, "3"

    const-string/jumbo v4, "changeCamera error"

    invoke-static {v1, v3, v4, v0}, Lafg;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    .line 17186
    :cond_7
    iget v5, v3, Landroid/hardware/Camera$CameraInfo;->facing:I

    if-nez v5, :cond_9

    iget v5, v2, Lzp;->c:I

    if-ne v5, v7, :cond_9

    .line 17187
    iget-object v3, v2, Lzp;->b:Landroid/hardware/Camera;

    if-eqz v3, :cond_8

    .line 17188
    iget-object v3, v2, Lzp;->b:Landroid/hardware/Camera;

    invoke-virtual {v3}, Landroid/hardware/Camera;->stopPreview()V

    .line 17189
    iget-object v3, v2, Lzp;->b:Landroid/hardware/Camera;

    invoke-virtual {v3}, Landroid/hardware/Camera;->release()V

    .line 17190
    iput-object v8, v2, Lzp;->b:Landroid/hardware/Camera;

    .line 17192
    :cond_8
    invoke-static {v0}, Landroid/hardware/Camera;->open(I)Landroid/hardware/Camera;

    move-result-object v0

    iput-object v0, v2, Lzp;->b:Landroid/hardware/Camera;

    .line 17194
    :try_start_1
    iget-object v0, v2, Lzp;->b:Landroid/hardware/Camera;

    iget-object v3, v2, Lzp;->f:Landroid/view/SurfaceView;

    invoke-virtual {v3}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/hardware/Camera;->setPreviewDisplay(Landroid/view/SurfaceHolder;)V

    .line 17195
    iget-object v0, v2, Lzp;->b:Landroid/hardware/Camera;

    const/16 v3, 0x5a

    invoke-virtual {v0, v3}, Landroid/hardware/Camera;->setDisplayOrientation(I)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 17200
    :goto_3
    iget-object v0, v2, Lzp;->b:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->startPreview()V

    .line 17201
    iput v1, v2, Lzp;->c:I

    goto/16 :goto_0

    .line 17196
    :catch_1
    move-exception v0

    .line 17197
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 17198
    const-string/jumbo v3, "CameraHelper"

    const-string/jumbo v4, "3"

    const-string/jumbo v5, "changeCamera setPreviewDisplay error"

    invoke-static {v3, v4, v5, v0}, Lafg;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3

    .line 17167
    :cond_9
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_1

    .line 14336
    .line 15375
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v6, 0x3

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 238
    invoke-super {p0, p1}, Lcom/alibaba/alimei/mail/activity/MailBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 1254
    invoke-virtual {p0}, Lcom/alibaba/alimei/mail/activity/CMailCameraActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 1255
    if-nez v0, :cond_0

    move v0, v1

    .line 240
    :goto_0
    if-nez v0, :cond_1

    .line 241
    const-string/jumbo v0, "CMailCameraActivity"

    const-string/jumbo v1, "init args fail, so return!!!"

    invoke-static {v0, v1}, Lafg;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 242
    invoke-virtual {p0}, Lcom/alibaba/alimei/mail/activity/CMailCameraActivity;->finish()V

    .line 251
    :goto_1
    return-void

    .line 1259
    :cond_0
    const-string/jumbo v3, "duration"

    const v4, 0x7fffffff

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/alibaba/alimei/mail/activity/CMailCameraActivity;->a:I

    .line 1260
    const-string/jumbo v3, "quality"

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/alibaba/alimei/mail/activity/CMailCameraActivity;->b:I

    .line 1261
    const-string/jumbo v3, "max_length"

    const-wide v4, 0x7fffffffffffffffL

    invoke-virtual {v0, v3, v4, v5}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/alibaba/alimei/mail/activity/CMailCameraActivity;->c:J

    move v0, v2

    .line 1263
    goto :goto_0

    .line 246
    :cond_1
    new-instance v0, Lcom/alibaba/alimei/mail/activity/CMailCameraActivity$a;

    invoke-direct {v0, p0}, Lcom/alibaba/alimei/mail/activity/CMailCameraActivity$a;-><init>(Lcom/alibaba/alimei/mail/activity/CMailCameraActivity;)V

    iput-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailCameraActivity;->p:Landroid/os/Handler;

    .line 247
    sget v0, Laxo$g;->cmail_activity_camera:I

    invoke-virtual {p0, v0}, Lcom/alibaba/alimei/mail/activity/CMailCameraActivity;->setContentView(I)V

    .line 1267
    sget v0, Laxo$f;->surfaceView:I

    .line 1372
    invoke-virtual {p0, v0}, Lcom/alibaba/alimei/mail/activity/MailBaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 1267
    check-cast v0, Landroid/view/SurfaceView;

    iput-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailCameraActivity;->d:Landroid/view/SurfaceView;

    .line 1268
    sget v0, Laxo$f;->transparentView:I

    .line 2372
    invoke-virtual {p0, v0}, Lcom/alibaba/alimei/mail/activity/MailBaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 1268
    check-cast v0, Landroid/view/SurfaceView;

    iput-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailCameraActivity;->e:Landroid/view/SurfaceView;

    .line 1269
    sget v0, Laxo$f;->switch_camera:I

    .line 3372
    invoke-virtual {p0, v0}, Lcom/alibaba/alimei/mail/activity/MailBaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 1269
    iput-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailCameraActivity;->f:Landroid/view/View;

    .line 1270
    sget v0, Laxo$f;->camera_action:I

    .line 4372
    invoke-virtual {p0, v0}, Lcom/alibaba/alimei/mail/activity/MailBaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 1270
    iput-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailCameraActivity;->j:Landroid/view/View;

    .line 1271
    sget v0, Laxo$f;->action_icon:I

    .line 5372
    invoke-virtual {p0, v0}, Lcom/alibaba/alimei/mail/activity/MailBaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 1271
    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailCameraActivity;->k:Landroid/widget/TextView;

    .line 1272
    sget v0, Laxo$f;->change_action:I

    .line 6372
    invoke-virtual {p0, v0}, Lcom/alibaba/alimei/mail/activity/MailBaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 1272
    iput-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailCameraActivity;->l:Landroid/view/View;

    .line 1273
    sget v0, Laxo$f;->change_icon:I

    .line 7372
    invoke-virtual {p0, v0}, Lcom/alibaba/alimei/mail/activity/MailBaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 1273
    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailCameraActivity;->m:Landroid/widget/TextView;

    .line 1274
    sget v0, Laxo$f;->preview:I

    .line 8372
    invoke-virtual {p0, v0}, Lcom/alibaba/alimei/mail/activity/MailBaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 1274
    check-cast v0, Lcom/alibaba/alimei/mail/widget/MediaPreviewView;

    iput-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailCameraActivity;->n:Lcom/alibaba/alimei/mail/widget/MediaPreviewView;

    .line 1275
    sget v0, Laxo$f;->timer_layout:I

    .line 9372
    invoke-virtual {p0, v0}, Lcom/alibaba/alimei/mail/activity/MailBaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 1275
    iput-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailCameraActivity;->g:Landroid/view/View;

    .line 1276
    sget v0, Laxo$f;->timer:I

    .line 10372
    invoke-virtual {p0, v0}, Lcom/alibaba/alimei/mail/activity/MailBaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 1276
    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailCameraActivity;->h:Landroid/widget/TextView;

    .line 1278
    invoke-direct {p0, v1}, Lcom/alibaba/alimei/mail/activity/CMailCameraActivity;->b(Z)V

    .line 11282
    new-instance v0, Lzp;

    invoke-direct {v0}, Lzp;-><init>()V

    iput-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailCameraActivity;->i:Lzp;

    .line 11283
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailCameraActivity;->e:Landroid/view/SurfaceView;

    invoke-virtual {v0, v2}, Landroid/view/SurfaceView;->setZOrderMediaOverlay(Z)V

    .line 11284
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailCameraActivity;->e:Landroid/view/SurfaceView;

    invoke-virtual {v0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    .line 11285
    const/4 v3, -0x2

    invoke-interface {v0, v3}, Landroid/view/SurfaceHolder;->setFormat(I)V

    .line 11286
    invoke-interface {v0, v6}, Landroid/view/SurfaceHolder;->setType(I)V

    .line 11287
    new-instance v3, Lcom/alibaba/alimei/mail/activity/CMailCameraActivity$2;

    invoke-direct {v3, p0}, Lcom/alibaba/alimei/mail/activity/CMailCameraActivity$2;-><init>(Lcom/alibaba/alimei/mail/activity/CMailCameraActivity;)V

    invoke-interface {v0, v3}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 11303
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailCameraActivity;->i:Lzp;

    iget-object v3, p0, Lcom/alibaba/alimei/mail/activity/CMailCameraActivity;->d:Landroid/view/SurfaceView;

    iget v4, p0, Lcom/alibaba/alimei/mail/activity/CMailCameraActivity;->b:I

    .line 12097
    iput-object p0, v0, Lzp;->e:Landroid/content/Context;

    .line 12098
    iput-object v3, v0, Lzp;->f:Landroid/view/SurfaceView;

    .line 12099
    iput v4, v0, Lzp;->l:I

    .line 12100
    invoke-virtual {v3}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v4

    invoke-interface {v4, v6}, Landroid/view/SurfaceHolder;->setType(I)V

    .line 12101
    invoke-virtual {v3, v2}, Landroid/view/SurfaceView;->setKeepScreenOn(Z)V

    .line 12102
    new-instance v2, Lzp$1;

    invoke-direct {v2, v0}, Lzp$1;-><init>(Lzp;)V

    iput-object v2, v0, Lzp;->d:Landroid/view/SurfaceHolder$Callback;

    .line 12137
    invoke-virtual {v3}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v2

    iget-object v3, v0, Lzp;->d:Landroid/view/SurfaceHolder$Callback;

    invoke-interface {v2, v3}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 12138
    new-instance v2, Ljava/util/Timer;

    invoke-direct {v2}, Ljava/util/Timer;-><init>()V

    iput-object v2, v0, Lzp;->i:Ljava/util/Timer;

    .line 12139
    new-instance v2, Lzp$c;

    invoke-direct {v2, v0, v1}, Lzp$c;-><init>(Lzp;B)V

    iput-object v2, v0, Lzp;->k:Ljava/util/TimerTask;

    .line 11304
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailCameraActivity;->i:Lzp;

    .line 12143
    iput-object p0, v0, Lzp;->g:Lzp$a;

    .line 11306
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailCameraActivity;->j:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 11307
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailCameraActivity;->l:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 11308
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailCameraActivity;->e:Landroid/view/SurfaceView;

    iget-object v1, p0, Lcom/alibaba/alimei/mail/activity/CMailCameraActivity;->t:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Landroid/view/SurfaceView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 11309
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailCameraActivity;->f:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 11310
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailCameraActivity;->n:Lcom/alibaba/alimei/mail/widget/MediaPreviewView;

    invoke-virtual {v0, p0}, Lcom/alibaba/alimei/mail/widget/MediaPreviewView;->setClickListener(Lcom/alibaba/alimei/mail/widget/MediaPreviewView$a;)V

    .line 13071
    new-instance v0, Ljava/io/File;

    sget-object v1, Landroid/os/Environment;->DIRECTORY_PICTURES:Ljava/lang/String;

    invoke-static {v1}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    const-string/jumbo v2, "temp"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 13077
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_2

    .line 13078
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v1

    if-nez v1, :cond_2

    .line 13079
    const-string/jumbo v0, "MediaFileUtils"

    const-string/jumbo v1, "failed to create directory"

    invoke-static {v0, v1}, Lafg;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 13080
    const/4 v0, 0x0

    .line 12314
    :cond_2
    iput-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailCameraActivity;->q:Ljava/io/File;

    goto/16 :goto_1
.end method

.method protected onDestroy()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v2, 0x0

    .line 514
    invoke-super {p0}, Lcom/alibaba/alimei/mail/activity/MailBaseActivity;->onDestroy()V

    .line 515
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailCameraActivity;->p:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 516
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailCameraActivity;->p:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 519
    :cond_0
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailCameraActivity;->i:Lzp;

    if-eqz v0, :cond_1

    .line 520
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailCameraActivity;->i:Lzp;

    .line 18143
    iput-object v2, v0, Lzp;->g:Lzp$a;

    .line 521
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailCameraActivity;->i:Lzp;

    .line 18265
    iget-object v1, v0, Lzp;->a:Landroid/media/MediaRecorder;

    if-eqz v1, :cond_1

    iget-object v1, v0, Lzp;->b:Landroid/hardware/Camera;

    if-eqz v1, :cond_1

    .line 18266
    iget-object v1, v0, Lzp;->a:Landroid/media/MediaRecorder;

    invoke-virtual {v1}, Landroid/media/MediaRecorder;->release()V

    .line 18267
    iget-object v1, v0, Lzp;->b:Landroid/hardware/Camera;

    invoke-virtual {v1}, Landroid/hardware/Camera;->stopPreview()V

    .line 18268
    iget-object v1, v0, Lzp;->b:Landroid/hardware/Camera;

    invoke-virtual {v1}, Landroid/hardware/Camera;->release()V

    .line 18269
    iput-object v2, v0, Lzp;->a:Landroid/media/MediaRecorder;

    .line 18270
    iget-object v1, v0, Lzp;->k:Ljava/util/TimerTask;

    invoke-virtual {v1}, Ljava/util/TimerTask;->cancel()Z

    .line 18271
    iput-object v2, v0, Lzp;->b:Landroid/hardware/Camera;

    .line 523
    :cond_1
    return-void
.end method

.method protected onPause()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 503
    invoke-super {p0}, Lcom/alibaba/alimei/mail/activity/MailBaseActivity;->onPause()V

    .line 504
    iget v0, p0, Lcom/alibaba/alimei/mail/activity/CMailCameraActivity;->o:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/4 v0, 0x3

    iget v1, p0, Lcom/alibaba/alimei/mail/activity/CMailCameraActivity;->o:I

    if-ne v0, v1, :cond_1

    .line 505
    :cond_0
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailCameraActivity;->i:Lzp;

    if-eqz v0, :cond_1

    .line 506
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailCameraActivity;->i:Lzp;

    invoke-virtual {v0}, Lzp;->a()V

    .line 507
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/alibaba/alimei/mail/activity/CMailCameraActivity;->b(I)V

    .line 510
    :cond_1
    return-void
.end method
