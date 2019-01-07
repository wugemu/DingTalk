.class public Lcom/alibaba/laiwang/photokit/picker/edit/activity/picedit_activity;
.super Landroid/app/Activity;
.source "picedit_activity.java"


# instance fields
.field private a:Landroid/view/View;

.field private b:Landroid/widget/ImageView;

.field private c:Landroid/widget/TextView;

.field private d:Landroid/widget/TextView;

.field private e:Landroid/widget/TextView;

.field private f:Landroid/widget/TextView;

.field private g:Landroid/view/View;

.field private h:Landroid/view/View;

.field private i:Landroid/view/View;

.field private j:Landroid/widget/TextView;

.field private k:Landroid/widget/TextView;

.field private l:Landroid/net/Uri;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/alibaba/laiwang/photokit/picker/edit/activity/picedit_activity;)Landroid/net/Uri;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/laiwang/photokit/picker/edit/activity/picedit_activity;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/alibaba/laiwang/photokit/picker/edit/activity/picedit_activity;->l:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic a(Lcom/alibaba/laiwang/photokit/picker/edit/activity/picedit_activity;Landroid/net/Uri;)Landroid/net/Uri;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/laiwang/photokit/picker/edit/activity/picedit_activity;
    .param p1, "x1"    # Landroid/net/Uri;

    .prologue
    .line 32
    iput-object p1, p0, Lcom/alibaba/laiwang/photokit/picker/edit/activity/picedit_activity;->l:Landroid/net/Uri;

    return-object p1
.end method

.method static synthetic b(Lcom/alibaba/laiwang/photokit/picker/edit/activity/picedit_activity;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/laiwang/photokit/picker/edit/activity/picedit_activity;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/alibaba/laiwang/photokit/picker/edit/activity/picedit_activity;->a:Landroid/view/View;

    return-object v0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 25
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 51
    invoke-super/range {p0 .. p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 53
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/laiwang/photokit/picker/edit/activity/picedit_activity;->getWindow()Landroid/view/Window;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/view/Window;->requestFeature(I)Z

    .line 54
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/laiwang/photokit/picker/edit/activity/picedit_activity;->getWindow()Landroid/view/Window;

    move-result-object v4

    const/16 v5, 0x400

    const/16 v6, 0x400

    invoke-virtual {v4, v5, v6}, Landroid/view/Window;->setFlags(II)V

    .line 56
    sget v4, Liff$e;->picedit_activity:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/alibaba/laiwang/photokit/picker/edit/activity/picedit_activity;->setContentView(I)V

    .line 58
    sget v4, Liff$d;->picedit_region:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/alibaba/laiwang/photokit/picker/edit/activity/picedit_activity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/alibaba/laiwang/photokit/picker/edit/activity/picedit_activity;->a:Landroid/view/View;

    .line 59
    sget v4, Liff$d;->picedit_photo:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/alibaba/laiwang/photokit/picker/edit/activity/picedit_activity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/alibaba/laiwang/photokit/picker/edit/activity/picedit_activity;->b:Landroid/widget/ImageView;

    .line 60
    sget v4, Liff$d;->picedit_time:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/alibaba/laiwang/photokit/picker/edit/activity/picedit_activity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/alibaba/laiwang/photokit/picker/edit/activity/picedit_activity;->c:Landroid/widget/TextView;

    .line 61
    sget v4, Liff$d;->picedit_year:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/alibaba/laiwang/photokit/picker/edit/activity/picedit_activity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/alibaba/laiwang/photokit/picker/edit/activity/picedit_activity;->d:Landroid/widget/TextView;

    .line 62
    sget v4, Liff$d;->picedit_username:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/alibaba/laiwang/photokit/picker/edit/activity/picedit_activity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/alibaba/laiwang/photokit/picker/edit/activity/picedit_activity;->e:Landroid/widget/TextView;

    .line 63
    sget v4, Liff$d;->picedit_location:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/alibaba/laiwang/photokit/picker/edit/activity/picedit_activity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/alibaba/laiwang/photokit/picker/edit/activity/picedit_activity;->f:Landroid/widget/TextView;

    .line 65
    sget v4, Liff$d;->picedit_location_lly:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/alibaba/laiwang/photokit/picker/edit/activity/picedit_activity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/alibaba/laiwang/photokit/picker/edit/activity/picedit_activity;->g:Landroid/view/View;

    .line 66
    sget v4, Liff$d;->picedit_username_lly:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/alibaba/laiwang/photokit/picker/edit/activity/picedit_activity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/alibaba/laiwang/photokit/picker/edit/activity/picedit_activity;->h:Landroid/view/View;

    .line 67
    sget v4, Liff$d;->picedit_location_info_lly:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/alibaba/laiwang/photokit/picker/edit/activity/picedit_activity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/alibaba/laiwang/photokit/picker/edit/activity/picedit_activity;->i:Landroid/view/View;

    .line 69
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/laiwang/photokit/picker/edit/activity/picedit_activity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/alibaba/laiwang/photokit/picker/edit/activity/picedit_activity;->l:Landroid/net/Uri;

    .line 70
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alibaba/laiwang/photokit/picker/edit/activity/picedit_activity;->l:Landroid/net/Uri;

    if-nez v4, :cond_6

    const-string/jumbo v13, ""

    .line 71
    .local v13, "imagePath":Ljava/lang/String;
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/laiwang/photokit/picker/edit/activity/picedit_activity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string/jumbo v5, "degree"

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v10

    #test 修改图片方向为0 不做旋转
    const/4 v10, 0x0

    .line 72
    .local v10, "degree":I
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/laiwang/photokit/picker/edit/activity/picedit_activity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string/jumbo v5, "nonfacingback"

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v14

    .line 74
    .local v14, "isNonFacingBack":Z
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/laiwang/photokit/picker/edit/activity/picedit_activity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string/jumbo v5, "surfaceview_resize"

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v12

    #test 修改surfaceview_resize为false
    const/4 v12, 0x0

    .line 77
    .local v12, "hasResize":Z
    new-instance v16, Landroid/graphics/BitmapFactory$Options;

    invoke-direct/range {v16 .. v16}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 79
    .local v16, "options":Landroid/graphics/BitmapFactory$Options;
    const/4 v4, 0x1

    move-object/from16 v0, v16

    iput-boolean v4, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 81
    move-object/from16 v0, v16

    invoke-static {v13, v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 83
    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    move/from16 v18, v0

    .line 84
    .local v18, "outWidth":I
    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    move/from16 v17, v0

    .line 86
    .local v17, "outHeight":I
    const/4 v4, 0x0

    move-object/from16 v0, v16

    iput-boolean v4, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 88
    new-instance v8, Landroid/graphics/Matrix;

    invoke-direct {v8}, Landroid/graphics/Matrix;-><init>()V

    .line 89
    .local v8, "matrix":Landroid/graphics/Matrix;
    const/16 v22, 0x0

    .line 91
    .local v22, "srcBitmap":Landroid/graphics/Bitmap;
    const/16 v4, 0x5a

    if-eq v10, v4, :cond_0

    const/16 v4, 0x10e

    if-eq v10, v4, :cond_0

    const/16 v4, -0x5a

    if-eq v10, v4, :cond_0

    const/16 v4, -0x10e

    if-ne v10, v4, :cond_7

    .line 92
    :cond_0
    const/high16 v4, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-static {v0, v1, v2, v4}, Lcom/alibaba/laiwang/photokit/utils/ImageUtils;->a(Landroid/content/Context;IIF)I

    move-result v4

    move-object/from16 v0, v16

    iput v4, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 93
    move-object/from16 v0, v16

    invoke-static {v13, v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 94
    .local v3, "tmpBitmap":Landroid/graphics/Bitmap;
    if-eqz v3, :cond_2

    .line 96
    int-to-float v4, v10

    invoke-virtual {v8, v4}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 97
    if-eqz v14, :cond_1

    .line 98
    const/high16 v4, -0x40800000    # -1.0f

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-virtual {v8, v4, v5}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 101
    :cond_1
    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    const/4 v9, 0x1

    invoke-static/range {v3 .. v9}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v22

    .line 103
    move-object/from16 v0, v22

    if-eq v0, v3, :cond_2

    .line 104
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V

    .line 108
    :cond_2
    if-eqz v12, :cond_3

    .line 109
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/laiwang/photokit/picker/edit/activity/picedit_activity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string/jumbo v5, "surfaceview_width"

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v24

    .line 110
    .local v24, "svWidth":I
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/laiwang/photokit/picker/edit/activity/picedit_activity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string/jumbo v5, "surfaceview_height"

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v23

    .line 112
    .local v23, "svHeight":I
    if-lez v24, :cond_3

    if-lez v23, :cond_3

    .line 113
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alibaba/laiwang/photokit/picker/edit/activity/picedit_activity;->b:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v19

    .line 114
    .local v19, "params":Landroid/view/ViewGroup$LayoutParams;
    move/from16 v0, v24

    move-object/from16 v1, v19

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 115
    move/from16 v0, v23

    move-object/from16 v1, v19

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 117
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alibaba/laiwang/photokit/picker/edit/activity/picedit_activity;->b:Landroid/widget/ImageView;

    move-object/from16 v0, v19

    invoke-virtual {v4, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 165
    .end local v19    # "params":Landroid/view/ViewGroup$LayoutParams;
    .end local v23    # "svHeight":I
    .end local v24    # "svWidth":I
    :cond_3
    :goto_1
    if-eqz v22, :cond_a

    .line 166
    const-string/jumbo v4, "Pick"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v9, "picedit_activity  degree=>"

    invoke-direct {v7, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v9, " srcBitmam=>"

    invoke-direct {v7, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Object;->hashCode()I

    move-result v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v5}, Lhda;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lhcw;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alibaba/laiwang/photokit/picker/edit/activity/picedit_activity;->b:Landroid/widget/ImageView;

    move-object/from16 v0, v22

    invoke-virtual {v4, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 174
    :goto_2
    sget v4, Liff$d;->picedit_retake:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/alibaba/laiwang/photokit/picker/edit/activity/picedit_activity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/alibaba/laiwang/photokit/picker/edit/activity/picedit_activity;->j:Landroid/widget/TextView;

    .line 175
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alibaba/laiwang/photokit/picker/edit/activity/picedit_activity;->j:Landroid/widget/TextView;

    new-instance v5, Lcom/alibaba/laiwang/photokit/picker/edit/activity/picedit_activity$1;

    move-object/from16 v0, p0

    invoke-direct {v5, v0}, Lcom/alibaba/laiwang/photokit/picker/edit/activity/picedit_activity$1;-><init>(Lcom/alibaba/laiwang/photokit/picker/edit/activity/picedit_activity;)V

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 188
    sget v4, Liff$d;->picedit_usephoto:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/alibaba/laiwang/photokit/picker/edit/activity/picedit_activity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/alibaba/laiwang/photokit/picker/edit/activity/picedit_activity;->k:Landroid/widget/TextView;

    .line 189
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alibaba/laiwang/photokit/picker/edit/activity/picedit_activity;->k:Landroid/widget/TextView;

    new-instance v5, Lcom/alibaba/laiwang/photokit/picker/edit/activity/picedit_activity$2;

    move-object/from16 v0, p0

    invoke-direct {v5, v0}, Lcom/alibaba/laiwang/photokit/picker/edit/activity/picedit_activity$2;-><init>(Lcom/alibaba/laiwang/photokit/picker/edit/activity/picedit_activity;)V

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1217
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alibaba/laiwang/photokit/picker/edit/activity/picedit_activity;->c:Landroid/widget/TextView;

    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/laiwang/photokit/picker/edit/activity/picedit_activity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    const-string/jumbo v6, "time"

    invoke-virtual {v5, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1218
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/laiwang/photokit/picker/edit/activity/picedit_activity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string/jumbo v5, "username"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1219
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/laiwang/photokit/picker/edit/activity/picedit_activity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string/jumbo v6, "address"

    invoke-virtual {v4, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1220
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/laiwang/photokit/picker/edit/activity/picedit_activity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string/jumbo v7, "i18nlogo"

    const/4 v9, 0x0

    invoke-virtual {v4, v7, v9}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    .line 1222
    if-eqz v4, :cond_4

    .line 1223
    sget v4, Liff$d;->iv_logo:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/alibaba/laiwang/photokit/picker/edit/activity/picedit_activity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    .line 1224
    sget v7, Liff$c;->camera_i18nlogo:I

    invoke-virtual {v4, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1227
    :cond_4
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_c

    .line 1228
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alibaba/laiwang/photokit/picker/edit/activity/picedit_activity;->h:Landroid/view/View;

    const/16 v7, 0x8

    invoke-virtual {v4, v7}, Landroid/view/View;->setVisibility(I)V

    .line 1233
    :goto_3
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_d

    .line 1234
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alibaba/laiwang/photokit/picker/edit/activity/picedit_activity;->i:Landroid/view/View;

    const/16 v7, 0x8

    invoke-virtual {v4, v7}, Landroid/view/View;->setVisibility(I)V

    .line 1239
    :goto_4
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 1240
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alibaba/laiwang/photokit/picker/edit/activity/picedit_activity;->g:Landroid/view/View;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    .line 1242
    :cond_5
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alibaba/laiwang/photokit/picker/edit/activity/picedit_activity;->d:Landroid/widget/TextView;

    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/laiwang/photokit/picker/edit/activity/picedit_activity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    const-string/jumbo v6, "dateWeather"

    invoke-virtual {v5, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 213
    return-void

    .line 70
    .end local v3    # "tmpBitmap":Landroid/graphics/Bitmap;
    .end local v8    # "matrix":Landroid/graphics/Matrix;
    .end local v10    # "degree":I
    .end local v12    # "hasResize":Z
    .end local v13    # "imagePath":Ljava/lang/String;
    .end local v14    # "isNonFacingBack":Z
    .end local v16    # "options":Landroid/graphics/BitmapFactory$Options;
    .end local v17    # "outHeight":I
    .end local v18    # "outWidth":I
    .end local v22    # "srcBitmap":Landroid/graphics/Bitmap;
    :cond_6
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alibaba/laiwang/photokit/picker/edit/activity/picedit_activity;->l:Landroid/net/Uri;

    invoke-virtual {v4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v13

    #test 修改拍照图片
    invoke-static {v13}, Lcom/langzu/baozha/ddutil/DDUtil;->getConfigImgUrl(Ljava/lang/String;)Ljava/lang/String;
    move-result-object v13

    goto/16 :goto_0

    .line 122
    .restart local v8    # "matrix":Landroid/graphics/Matrix;
    .restart local v10    # "degree":I
    .restart local v12    # "hasResize":Z
    .restart local v13    # "imagePath":Ljava/lang/String;
    .restart local v14    # "isNonFacingBack":Z
    .restart local v16    # "options":Landroid/graphics/BitmapFactory$Options;
    .restart local v17    # "outHeight":I
    .restart local v18    # "outWidth":I
    .restart local v22    # "srcBitmap":Landroid/graphics/Bitmap;
    :cond_7
    const/high16 v4, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    move/from16 v1, v18

    move/from16 v2, v17

    invoke-static {v0, v1, v2, v4}, Lcom/alibaba/laiwang/photokit/utils/ImageUtils;->a(Landroid/content/Context;IIF)I

    move-result v4

    move-object/from16 v0, v16

    iput v4, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 123
    move-object/from16 v0, v16

    invoke-static {v13, v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 124
    .restart local v3    # "tmpBitmap":Landroid/graphics/Bitmap;
    if-eqz v3, :cond_9

    .line 126
    int-to-float v4, v10

    invoke-virtual {v8, v4}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 127
    if-eqz v14, :cond_8

    .line 128
    const/high16 v4, -0x40800000    # -1.0f

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-virtual {v8, v4, v5}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 131
    :cond_8
    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    const/4 v9, 0x1

    invoke-static/range {v3 .. v9}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v22

    .line 133
    move-object/from16 v0, v22

    if-eq v0, v3, :cond_9

    .line 134
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V

    .line 138
    :cond_9
    if-eqz v12, :cond_3

    .line 139
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/laiwang/photokit/picker/edit/activity/picedit_activity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string/jumbo v5, "surfaceview_width"

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v24

    .line 140
    .restart local v24    # "svWidth":I
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/laiwang/photokit/picker/edit/activity/picedit_activity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string/jumbo v5, "surfaceview_height"

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v23

    .line 141
    .restart local v23    # "svHeight":I
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/laiwang/photokit/picker/edit/activity/picedit_activity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string/jumbo v5, "display_height"

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v11

    .line 143
    .local v11, "displayHeight":I
    if-lez v24, :cond_3

    if-lez v23, :cond_3

    if-lez v11, :cond_3

    .line 145
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/laiwang/photokit/picker/edit/activity/picedit_activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v4

    invoke-interface {v4}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/Display;->getWidth()I

    move-result v21

    .line 146
    .local v21, "screenWidth":I
    move/from16 v0, v21

    int-to-float v4, v0

    int-to-float v5, v11

    div-float v20, v4, v5

    .line 150
    .local v20, "rate":F
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alibaba/laiwang/photokit/picker/edit/activity/picedit_activity;->b:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v19

    check-cast v19, Landroid/widget/FrameLayout$LayoutParams;

    .line 151
    .local v19, "params":Landroid/widget/FrameLayout$LayoutParams;
    move/from16 v0, v23

    int-to-float v4, v0

    mul-float v4, v4, v20

    float-to-int v4, v4

    move-object/from16 v0, v19

    iput v4, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 152
    move/from16 v0, v24

    int-to-float v4, v0

    mul-float v4, v4, v20

    float-to-int v4, v4

    move-object/from16 v0, v19

    iput v4, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 153
    const/16 v4, 0x11

    move-object/from16 v0, v19

    iput v4, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 155
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alibaba/laiwang/photokit/picker/edit/activity/picedit_activity;->b:Landroid/widget/ImageView;

    move-object/from16 v0, v19

    invoke-virtual {v4, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 157
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alibaba/laiwang/photokit/picker/edit/activity/picedit_activity;->a:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v15

    check-cast v15, Landroid/widget/FrameLayout$LayoutParams;

    .line 158
    .local v15, "linearParas":Landroid/widget/FrameLayout$LayoutParams;
    const/16 v4, 0x11

    iput v4, v15, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 159
    move-object/from16 v0, v19

    iget v4, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    iput v4, v15, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 160
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alibaba/laiwang/photokit/picker/edit/activity/picedit_activity;->a:Landroid/view/View;

    invoke-virtual {v4, v15}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_1

    .line 169
    .end local v11    # "displayHeight":I
    .end local v15    # "linearParas":Landroid/widget/FrameLayout$LayoutParams;
    .end local v19    # "params":Landroid/widget/FrameLayout$LayoutParams;
    .end local v20    # "rate":F
    .end local v21    # "screenWidth":I
    .end local v23    # "svHeight":I
    .end local v24    # "svWidth":I
    :cond_a
    const-string/jumbo v5, "Pick"

    const/4 v4, 0x3

    new-array v6, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v9, "picedit_activity  degree=>"

    invoke-direct {v7, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v4

    const/4 v4, 0x1

    const-string/jumbo v7, " srcBitmam=>null "

    aput-object v7, v6, v4

    const/4 v7, 0x2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alibaba/laiwang/photokit/picker/edit/activity/picedit_activity;->l:Landroid/net/Uri;

    if-nez v4, :cond_b

    const-string/jumbo v4, ""

    :goto_5
    aput-object v4, v6, v7

    invoke-static {v6}, Lhda;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Lhcw;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alibaba/laiwang/photokit/picker/edit/activity/picedit_activity;->b:Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/alibaba/laiwang/photokit/picker/edit/activity/picedit_activity;->l:Landroid/net/Uri;

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageURI(Landroid/net/Uri;)V

    goto/16 :goto_2

    .line 169
    :cond_b
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alibaba/laiwang/photokit/picker/edit/activity/picedit_activity;->l:Landroid/net/Uri;

    invoke-virtual {v4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_5

    .line 1230
    :cond_c
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alibaba/laiwang/photokit/picker/edit/activity/picedit_activity;->e:Landroid/widget/TextView;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    .line 1236
    :cond_d
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alibaba/laiwang/photokit/picker/edit/activity/picedit_activity;->f:Landroid/widget/TextView;

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_4
.end method
