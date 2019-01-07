.class public final Ljsx;
.super Ljsw;
.source "ProGuard"


# instance fields
.field public k:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljsv;)V
    .locals 1

    .prologue
    .line 72
    invoke-direct {p0, p1}, Ljsw;-><init>(Ljsv;)V

    .line 69
    const-string/jumbo v0, ""

    iput-object v0, p0, Ljsx;->k:Ljava/lang/String;

    .line 73
    return-void
.end method

.method static synthetic a(Ljsx;)Ljsv;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Ljsx;->b:Ljsv;

    return-object v0
.end method

.method static synthetic a(Ljsx;Landroid/app/Activity;Landroid/os/Bundle;Ljuc;)V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0, p1, p2, p3}, Ljsx;->b(Landroid/app/Activity;Landroid/os/Bundle;Ljuc;)V

    return-void
.end method

.method static synthetic b(Ljsx;)Ljsv;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Ljsx;->b:Ljsv;

    return-object v0
.end method

.method private b(Landroid/app/Activity;Landroid/os/Bundle;Ljuc;)V
    .locals 20

    .prologue
    .line 321
    const-string/jumbo v4, "openSDK_LOG"

    const-string/jumbo v5, "doShareToQQ() -- start"

    invoke-static {v4, v5}, Ljtg;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 323
    new-instance v5, Ljava/lang/StringBuffer;

    const-string/jumbo v4, "mqqapi://share/to_fri?src_type=app&version=1&file_type=news"

    invoke-direct {v5, v4}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 324
    const-string/jumbo v4, "imageUrl"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 325
    const-string/jumbo v4, "title"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 326
    const-string/jumbo v4, "summary"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 327
    const-string/jumbo v4, "targetUrl"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 328
    const-string/jumbo v4, "audio_url"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 329
    const-string/jumbo v4, "req_type"

    const/4 v11, 0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v4, v11}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v11

    .line 332
    const-string/jumbo v4, "cflag"

    const/4 v12, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v4, v12}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v12

    .line 333
    const-string/jumbo v4, "share_qq_ext_str"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 335
    invoke-static/range {p1 .. p1}, Ljtx;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    .line 336
    if-nez v4, :cond_0

    .line 338
    const-string/jumbo v4, "appName"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 340
    :cond_0
    const-string/jumbo v14, "imageLocalUrl"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 342
    move-object/from16 v0, p0

    iget-object v15, v0, Ljsx;->b:Ljsv;

    .line 11023
    iget-object v15, v15, Ljsv;->a:Ljava/lang/String;

    .line 343
    move-object/from16 v0, p0

    iget-object v0, v0, Ljsx;->b:Ljsv;

    move-object/from16 v16, v0

    .line 11045
    move-object/from16 v0, v16

    iget-object v0, v0, Ljsv;->c:Ljava/lang/String;

    move-object/from16 v16, v0

    .line 345
    const-string/jumbo v17, "openSDK_LOG.QQShare"

    new-instance v18, Ljava/lang/StringBuilder;

    const-string/jumbo v19, "doShareToQQ -- openid: "

    invoke-direct/range {v18 .. v19}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Ljtg;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 347
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v17

    if-nez v17, :cond_1

    .line 348
    new-instance v17, Ljava/lang/StringBuilder;

    const-string/jumbo v18, "&image_url="

    invoke-direct/range {v17 .. v18}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v6}, Ljtx;->j(Ljava/lang/String;)[B

    move-result-object v6

    const/16 v18, 0x2

    move/from16 v0, v18

    invoke-static {v6, v0}, Lhv;->b([BI)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v17

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 350
    :cond_1
    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 351
    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v17, "&file_data="

    move-object/from16 v0, v17

    invoke-direct {v6, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v14}, Ljtx;->j(Ljava/lang/String;)[B

    move-result-object v14

    const/16 v17, 0x2

    move/from16 v0, v17

    invoke-static {v14, v0}, Lhv;->b([BI)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 353
    :cond_2
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 354
    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v14, "&title="

    invoke-direct {v6, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v7}, Ljtx;->j(Ljava/lang/String;)[B

    move-result-object v7

    const/4 v14, 0x2

    invoke-static {v7, v14}, Lhv;->b([BI)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 356
    :cond_3
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_4

    .line 357
    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "&description="

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v8}, Ljtx;->j(Ljava/lang/String;)[B

    move-result-object v7

    const/4 v8, 0x2

    invoke-static {v7, v8}, Lhv;->b([BI)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 359
    :cond_4
    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_5

    .line 360
    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "&share_id="

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 362
    :cond_5
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_6

    .line 363
    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "&url="

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v9}, Ljtx;->j(Ljava/lang/String;)[B

    move-result-object v7

    const/4 v8, 0x2

    invoke-static {v7, v8}, Lhv;->b([BI)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 365
    :cond_6
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_8

    .line 367
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    const/16 v7, 0x14

    if-le v6, v7, :cond_7

    .line 368
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v7, 0x0

    const/16 v8, 0x14

    invoke-virtual {v4, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v6, "..."

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 370
    :cond_7
    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "&app_name="

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v4}, Ljtx;->j(Ljava/lang/String;)[B

    move-result-object v4

    const/4 v7, 0x2

    invoke-static {v4, v7}, Lhv;->b([BI)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 373
    :cond_8
    invoke-static/range {v16 .. v16}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_9

    .line 374
    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "&open_id="

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static/range {v16 .. v16}, Ljtx;->j(Ljava/lang/String;)[B

    move-result-object v6

    const/4 v7, 0x2

    invoke-static {v6, v7}, Lhv;->b([BI)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 378
    :cond_9
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_a

    .line 379
    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "&audioUrl="

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v10}, Ljtx;->j(Ljava/lang/String;)[B

    move-result-object v6

    const/4 v7, 0x2

    invoke-static {v6, v7}, Lhv;->b([BI)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 382
    :cond_a
    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "&req_type="

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v11}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljtx;->j(Ljava/lang/String;)[B

    move-result-object v6

    const/4 v7, 0x2

    invoke-static {v6, v7}, Lhv;->b([BI)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 385
    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_b

    .line 386
    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "&share_qq_ext_str="

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v13}, Ljtx;->j(Ljava/lang/String;)[B

    move-result-object v6

    const/4 v7, 0x2

    invoke-static {v6, v7}, Lhv;->b([BI)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 388
    :cond_b
    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "&cflag="

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v12}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljtx;->j(Ljava/lang/String;)[B

    move-result-object v6

    const/4 v7, 0x2

    invoke-static {v6, v7}, Lhv;->b([BI)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 389
    const-string/jumbo v4, "openSDK_LOG.QQShare"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "doShareToQQ -- url: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Ljtg;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 391
    invoke-static {}, Ljtr;->a()Landroid/content/Context;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v6, v0, Ljsx;->b:Ljsv;

    const-string/jumbo v7, "requireApi"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/String;

    const/4 v9, 0x0

    const-string/jumbo v10, "shareToNativeQQ"

    aput-object v10, v8, v9

    invoke-static {v4, v6, v7, v8}, Ljsr;->a(Landroid/content/Context;Ljsv;Ljava/lang/String;[Ljava/lang/String;)V

    .line 393
    new-instance v4, Landroid/content/Intent;

    const-string/jumbo v6, "android.intent.action.VIEW"

    invoke-direct {v4, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iput-object v4, v0, Ljsx;->d:Landroid/content/Intent;

    .line 394
    move-object/from16 v0, p0

    iget-object v4, v0, Ljsx;->d:Landroid/content/Intent;

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 397
    move-object/from16 v0, p0

    iget-object v4, v0, Ljsx;->d:Landroid/content/Intent;

    const-string/jumbo v5, "pkg_name"

    invoke-virtual/range {p1 .. p1}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 398
    const-string/jumbo v4, "4.6.0"

    move-object/from16 v0, p1

    invoke-static {v0, v4}, Ljtu;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v4

    if-gez v4, :cond_d

    .line 399
    const-string/jumbo v4, "openSDK_LOG.QQShare"

    const-string/jumbo v5, "doShareToQQ, qqver below 4.6."

    invoke-static {v4, v5}, Ljtg;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 400
    invoke-virtual/range {p0 .. p0}, Ljsx;->b()Z

    move-result v4

    if-eqz v4, :cond_c

    .line 401
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    invoke-virtual {v0, v1, v2}, Ljsx;->a(Landroid/app/Activity;Ljuc;)V

    .line 415
    :cond_c
    :goto_0
    invoke-virtual/range {p0 .. p0}, Ljsx;->b()Z

    move-result v4

    if-eqz v4, :cond_f

    .line 416
    invoke-static {}, Ljtm;->a()Ljtm;

    move-object/from16 v0, p0

    iget-object v4, v0, Ljsx;->b:Ljsv;

    .line 12045
    iget-object v4, v4, Ljsv;->c:Ljava/lang/String;

    .line 416
    move-object/from16 v0, p0

    iget-object v5, v0, Ljsx;->b:Ljsv;

    .line 13023
    iget-object v5, v5, Ljsv;->a:Ljava/lang/String;

    .line 416
    const-string/jumbo v6, "ANDROIDQQ.SHARETOQQ.XX"

    const-string/jumbo v7, "10"

    const-string/jumbo v8, "3"

    const-string/jumbo v9, "0"

    move-object/from16 v0, p0

    iget-object v10, v0, Ljsx;->k:Ljava/lang/String;

    const-string/jumbo v11, "0"

    const-string/jumbo v12, "1"

    const-string/jumbo v13, "0"

    invoke-static/range {v4 .. v13}, Ljtm;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 419
    invoke-static {}, Ljtm;->a()Ljtm;

    const/4 v4, 0x0

    const-string/jumbo v5, "SHARE_CHECK_SDK"

    const-string/jumbo v6, "1000"

    move-object/from16 v0, p0

    iget-object v7, v0, Ljsx;->b:Ljsv;

    .line 14023
    iget-object v7, v7, Ljsv;->a:Ljava/lang/String;

    .line 419
    const-string/jumbo v8, "0"

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    const/4 v10, 0x0

    const/4 v11, 0x1

    const-string/jumbo v12, ""

    invoke-static/range {v4 .. v12}, Ljtm;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;IILjava/lang/String;)V

    .line 429
    :goto_1
    const-string/jumbo v4, "openSDK_LOG"

    const-string/jumbo v5, "doShareToQQ() --end"

    invoke-static {v4, v5}, Ljtg;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 430
    return-void

    .line 404
    :cond_d
    const-string/jumbo v4, "shareToQQ"

    move-object/from16 v0, p3

    invoke-static {v4, v0}, Ljtv;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 405
    if-eqz v4, :cond_e

    .line 407
    const-string/jumbo v4, "openSDK_LOG.QQShare"

    const-string/jumbo v5, "doShareToQQ, last listener is not null, cancel it."

    invoke-static {v4, v5}, Ljtg;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 409
    :cond_e
    invoke-virtual/range {p0 .. p0}, Ljsx;->b()Z

    move-result v4

    if-eqz v4, :cond_c

    .line 410
    const/4 v4, 0x1

    sput-boolean v4, Lcom/tencent/connect/common/AssistActivity;->a:Z

    .line 411
    const/16 v4, 0x2777

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v4}, Ljsx;->a(Landroid/app/Activity;I)V

    goto/16 :goto_0

    .line 422
    :cond_f
    invoke-static {}, Ljtm;->a()Ljtm;

    move-object/from16 v0, p0

    iget-object v4, v0, Ljsx;->b:Ljsv;

    .line 14045
    iget-object v4, v4, Ljsv;->c:Ljava/lang/String;

    .line 422
    move-object/from16 v0, p0

    iget-object v5, v0, Ljsx;->b:Ljsv;

    .line 15023
    iget-object v5, v5, Ljsv;->a:Ljava/lang/String;

    .line 422
    const-string/jumbo v6, "ANDROIDQQ.SHARETOQQ.XX"

    const-string/jumbo v7, "10"

    const-string/jumbo v8, "3"

    const-string/jumbo v9, "1"

    move-object/from16 v0, p0

    iget-object v10, v0, Ljsx;->k:Ljava/lang/String;

    const-string/jumbo v11, "0"

    const-string/jumbo v12, "1"

    const-string/jumbo v13, "0"

    invoke-static/range {v4 .. v13}, Ljtm;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 425
    invoke-static {}, Ljtm;->a()Ljtm;

    const/4 v4, 0x1

    const-string/jumbo v5, "SHARE_CHECK_SDK"

    const-string/jumbo v6, "1000"

    move-object/from16 v0, p0

    iget-object v7, v0, Ljsx;->b:Ljsv;

    .line 16023
    iget-object v7, v7, Ljsv;->a:Ljava/lang/String;

    .line 425
    const-string/jumbo v8, "0"

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    const/4 v10, 0x0

    const/4 v11, 0x1

    const-string/jumbo v12, "hasActivityForIntent fail"

    invoke-static/range {v4 .. v12}, Ljtm;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;IILjava/lang/String;)V

    goto/16 :goto_1
.end method


# virtual methods
.method public final a(Landroid/app/Activity;IILandroid/content/Intent;)V
    .locals 0

    .prologue
    .line 508
    return-void
.end method

.method public final a(Landroid/app/Activity;Landroid/os/Bundle;Ljuc;)V
    .locals 9

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 76
    const-string/jumbo v0, "openSDK_LOG.QQShare"

    const-string/jumbo v1, "shareToQQ() -- start."

    invoke-static {v0, v1}, Ljtg;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    const-string/jumbo v0, "imageUrl"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 78
    const-string/jumbo v0, "title"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 79
    const-string/jumbo v0, "summary"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 80
    const-string/jumbo v0, "targetUrl"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 81
    const-string/jumbo v4, "imageLocalUrl"

    invoke-virtual {p2, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 82
    const-string/jumbo v5, "req_type"

    const/4 v6, 0x1

    invoke-virtual {p2, v5, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v5

    .line 83
    const-string/jumbo v6, "openSDK_LOG.QQShare"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "shareToQQ -- type: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Ljtg;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    packed-switch v5, :pswitch_data_0

    .line 99
    :goto_0
    :pswitch_0
    const/4 v6, 0x6

    if-ne v5, v6, :cond_1

    .line 101
    const-string/jumbo v0, "5.0.0"

    invoke-static {p1, v0}, Ljtu;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-gez v0, :cond_0

    .line 102
    new-instance v0, Ljue;

    const/16 v1, -0xf

    const-string/jumbo v2, "\u624bQ\u7248\u672c\u8fc7\u4f4e\uff0c\u5e94\u7528\u5206\u4eab\u53ea\u652f\u6301\u624bQ5.0\u53ca\u5176\u4ee5\u4e0a\u7248\u672c"

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Ljue;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-interface {p3, v0}, Ljuc;->a(Ljue;)V

    .line 103
    const-string/jumbo v0, "openSDK_LOG.QQShare"

    const-string/jumbo v1, "shareToQQ, app share is not support below qq5.0."

    invoke-static {v0, v1}, Ljtg;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    invoke-static {}, Ljtm;->a()Ljtm;

    const/4 v0, 0x1

    const-string/jumbo v1, "SHARE_CHECK_SDK"

    const-string/jumbo v2, "1000"

    iget-object v3, p0, Ljsx;->b:Ljsv;

    .line 1023
    iget-object v3, v3, Ljsv;->a:Ljava/lang/String;

    .line 104
    const-string/jumbo v4, "0"

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x1

    const-string/jumbo v8, "shareToQQ, app share is not support below qq5.0."

    invoke-static/range {v0 .. v8}, Ljtm;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;IILjava/lang/String;)V

    .line 208
    :goto_1
    return-void

    .line 86
    :pswitch_1
    const-string/jumbo v6, "1"

    iput-object v6, p0, Ljsx;->k:Ljava/lang/String;

    goto :goto_0

    .line 89
    :pswitch_2
    const-string/jumbo v6, "3"

    iput-object v6, p0, Ljsx;->k:Ljava/lang/String;

    goto :goto_0

    .line 92
    :pswitch_3
    const-string/jumbo v6, "2"

    iput-object v6, p0, Ljsx;->k:Ljava/lang/String;

    goto :goto_0

    .line 95
    :pswitch_4
    const-string/jumbo v6, "4"

    iput-object v6, p0, Ljsx;->k:Ljava/lang/String;

    goto :goto_0

    .line 109
    :cond_0
    const-string/jumbo v0, "http://fusion.qq.com/cgi-bin/qzapps/unified_jump?appid=%1$s&from=%2$s&isOpenAppID=1"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    iget-object v8, p0, Ljsx;->b:Ljsv;

    .line 2023
    iget-object v8, v8, Ljsv;->a:Ljava/lang/String;

    .line 109
    aput-object v8, v6, v7

    const/4 v7, 0x1

    const-string/jumbo v8, "mqq"

    aput-object v8, v6, v7

    invoke-static {v0, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 110
    const-string/jumbo v6, "targetUrl"

    invoke-virtual {p2, v6, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    :cond_1
    invoke-static {}, Ljtx;->a()Z

    move-result v6

    if-nez v6, :cond_2

    .line 118
    const-string/jumbo v6, "4.5.0"

    invoke-static {p1, v6}, Ljtu;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v6

    if-gez v6, :cond_2

    .line 119
    new-instance v0, Ljue;

    const/4 v1, -0x6

    const-string/jumbo v2, "\u5206\u4eab\u56fe\u7247\u5931\u8d25\uff0c\u68c0\u6d4b\u4e0d\u5230SD\u5361!"

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Ljue;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-interface {p3, v0}, Ljuc;->a(Ljue;)V

    .line 120
    const-string/jumbo v0, "openSDK_LOG.QQShare"

    const-string/jumbo v1, "shareToQQ sdcard is null--end"

    invoke-static {v0, v1}, Ljtg;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    invoke-static {}, Ljtm;->a()Ljtm;

    const/4 v0, 0x1

    const-string/jumbo v1, "SHARE_CHECK_SDK"

    const-string/jumbo v2, "1000"

    iget-object v3, p0, Ljsx;->b:Ljsv;

    .line 3023
    iget-object v3, v3, Ljsv;->a:Ljava/lang/String;

    .line 121
    const-string/jumbo v4, "0"

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x1

    const-string/jumbo v8, "shareToQQ sdcard is null"

    invoke-static/range {v0 .. v8}, Ljtm;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;IILjava/lang/String;)V

    goto/16 :goto_1

    .line 129
    :cond_2
    const/4 v6, 0x5

    if-ne v5, v6, :cond_4

    .line 131
    const-string/jumbo v6, "4.3.0"

    invoke-static {p1, v6}, Ljtu;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v6

    if-gez v6, :cond_3

    .line 132
    new-instance v0, Ljue;

    const/4 v1, -0x6

    const-string/jumbo v2, "\u4f4e\u7248\u672c\u624bQ\u4e0d\u652f\u6301\u8be5\u9879\u529f\u80fd!"

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Ljue;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-interface {p3, v0}, Ljuc;->a(Ljue;)V

    .line 134
    const-string/jumbo v0, "openSDK_LOG.QQShare"

    const-string/jumbo v1, "shareToQQ, version below 4.3 is not support."

    invoke-static {v0, v1}, Ljtg;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    invoke-static {}, Ljtm;->a()Ljtm;

    const/4 v0, 0x1

    const-string/jumbo v1, "SHARE_CHECK_SDK"

    const-string/jumbo v2, "1000"

    iget-object v3, p0, Ljsx;->b:Ljsv;

    .line 4023
    iget-object v3, v3, Ljsv;->a:Ljava/lang/String;

    .line 135
    const-string/jumbo v4, "0"

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x1

    const-string/jumbo v8, "shareToQQ, version below 4.3 is not support."

    invoke-static/range {v0 .. v8}, Ljtm;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;IILjava/lang/String;)V

    goto/16 :goto_1

    .line 141
    :cond_3
    invoke-static {v4}, Ljtx;->i(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 142
    new-instance v0, Ljue;

    const/4 v1, -0x6

    const-string/jumbo v2, "\u975e\u6cd5\u7684\u56fe\u7247\u5730\u5740!"

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Ljue;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-interface {p3, v0}, Ljuc;->a(Ljue;)V

    .line 144
    const-string/jumbo v0, "openSDK_LOG.QQShare"

    const-string/jumbo v1, "shareToQQ -- error: \u975e\u6cd5\u7684\u56fe\u7247\u5730\u5740!"

    invoke-static {v0, v1}, Ljtg;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    invoke-static {}, Ljtm;->a()Ljtm;

    const/4 v0, 0x1

    const-string/jumbo v1, "SHARE_CHECK_SDK"

    const-string/jumbo v2, "1000"

    iget-object v3, p0, Ljsx;->b:Ljsv;

    .line 5023
    iget-object v3, v3, Ljsv;->a:Ljava/lang/String;

    .line 145
    const-string/jumbo v4, "0"

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x1

    const-string/jumbo v8, "\u975e\u6cd5\u7684\u56fe\u7247\u5730\u5740!"

    invoke-static/range {v0 .. v8}, Ljtm;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;IILjava/lang/String;)V

    goto/16 :goto_1

    .line 152
    :cond_4
    const/4 v4, 0x5

    if-eq v5, v4, :cond_7

    .line 154
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_5

    const-string/jumbo v4, "http://"

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_6

    const-string/jumbo v4, "https://"

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 155
    :cond_5
    new-instance v0, Ljue;

    const/4 v1, -0x6

    const-string/jumbo v2, "\u4f20\u5165\u53c2\u6570\u6709\u8bef!"

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Ljue;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-interface {p3, v0}, Ljuc;->a(Ljue;)V

    .line 157
    const-string/jumbo v0, "openSDK_LOG.QQShare"

    const-string/jumbo v1, "shareToQQ, targetUrl is empty or illegal.."

    invoke-static {v0, v1}, Ljtg;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    invoke-static {}, Ljtm;->a()Ljtm;

    const/4 v0, 0x1

    const-string/jumbo v1, "SHARE_CHECK_SDK"

    const-string/jumbo v2, "1000"

    iget-object v3, p0, Ljsx;->b:Ljsv;

    .line 6023
    iget-object v3, v3, Ljsv;->a:Ljava/lang/String;

    .line 158
    const-string/jumbo v4, "0"

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x1

    const-string/jumbo v8, "shareToQQ, targetUrl is empty or illegal.."

    invoke-static/range {v0 .. v8}, Ljtm;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;IILjava/lang/String;)V

    goto/16 :goto_1

    .line 163
    :cond_6
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 164
    new-instance v0, Ljue;

    const/4 v1, -0x6

    const-string/jumbo v2, "title\u4e0d\u80fd\u4e3a\u7a7a!"

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Ljue;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-interface {p3, v0}, Ljuc;->a(Ljue;)V

    .line 166
    const-string/jumbo v0, "openSDK_LOG.QQShare"

    const-string/jumbo v1, "shareToQQ, title is empty."

    invoke-static {v0, v1}, Ljtg;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    invoke-static {}, Ljtm;->a()Ljtm;

    const/4 v0, 0x1

    const-string/jumbo v1, "SHARE_CHECK_SDK"

    const-string/jumbo v2, "1000"

    iget-object v3, p0, Ljsx;->b:Ljsv;

    .line 7023
    iget-object v3, v3, Ljsv;->a:Ljava/lang/String;

    .line 167
    const-string/jumbo v4, "0"

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x1

    const-string/jumbo v8, "shareToQQ, title is empty."

    invoke-static/range {v0 .. v8}, Ljtm;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;IILjava/lang/String;)V

    goto/16 :goto_1

    .line 175
    :cond_7
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_8

    const-string/jumbo v0, "http://"

    invoke-virtual {v1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_8

    const-string/jumbo v0, "https://"

    invoke-virtual {v1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 177
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 178
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_8

    .line 180
    new-instance v0, Ljue;

    const/4 v1, -0x6

    const-string/jumbo v2, "\u975e\u6cd5\u7684\u56fe\u7247\u5730\u5740!"

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Ljue;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-interface {p3, v0}, Ljuc;->a(Ljue;)V

    .line 182
    const-string/jumbo v0, "openSDK_LOG.QQShare"

    const-string/jumbo v1, " shareToQQ, image url is emprty or illegal."

    invoke-static {v0, v1}, Ljtg;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 183
    invoke-static {}, Ljtm;->a()Ljtm;

    const/4 v0, 0x1

    const-string/jumbo v1, "SHARE_CHECK_SDK"

    const-string/jumbo v2, "1000"

    iget-object v3, p0, Ljsx;->b:Ljsv;

    .line 8023
    iget-object v3, v3, Ljsv;->a:Ljava/lang/String;

    .line 183
    const-string/jumbo v4, "0"

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x1

    const-string/jumbo v8, "shareToQQ, image url is emprty or illegal."

    invoke-static/range {v0 .. v8}, Ljtm;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;IILjava/lang/String;)V

    goto/16 :goto_1

    .line 190
    :cond_8
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_9

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x2d

    if-le v0, v1, :cond_9

    .line 192
    const/16 v0, 0x2d

    const/4 v1, 0x0

    const/4 v4, 0x0

    invoke-static {v2, v0, v1, v4}, Ljtx;->a(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 193
    const-string/jumbo v1, "title"

    invoke-virtual {p2, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 195
    :cond_9
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_a

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x3c

    if-le v0, v1, :cond_a

    .line 197
    const/16 v0, 0x3c

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {v3, v0, v1, v2}, Ljtx;->a(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 198
    const-string/jumbo v1, "summary"

    invoke-virtual {p2, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 201
    :cond_a
    invoke-static {p1}, Ljtx;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 8214
    const-string/jumbo v0, "openSDK_LOG"

    const-string/jumbo v1, "shareToMobileQQ() -- start."

    invoke-static {v0, v1}, Ljtg;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 8215
    const-string/jumbo v0, "imageUrl"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 8216
    const-string/jumbo v0, "title"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 8217
    const-string/jumbo v0, "summary"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 8218
    const-string/jumbo v0, "openSDK_LOG.QQShare"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "shareToMobileQQ -- imageUrl: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ljtg;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 8221
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_11

    .line 8222
    invoke-static {v7}, Ljtx;->g(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 8224
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 8225
    if-eqz p3, :cond_b

    .line 8226
    new-instance v0, Ljue;

    const/4 v1, -0x6

    const-string/jumbo v2, "\u5206\u4eab\u56fe\u7247\u5931\u8d25\uff0c\u68c0\u6d4b\u4e0d\u5230SD\u5361!"

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Ljue;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-interface {p3, v0}, Ljuc;->a(Ljue;)V

    .line 8228
    const-string/jumbo v0, "openSDK_LOG.QQShare"

    const-string/jumbo v1, "\u5206\u4eab\u56fe\u7247\u5931\u8d25\uff0c\u68c0\u6d4b\u4e0d\u5230SD\u5361!"

    invoke-static {v0, v1}, Ljtg;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 8230
    :cond_b
    invoke-static {}, Ljtm;->a()Ljtm;

    const/4 v0, 0x1

    const-string/jumbo v1, "SHARE_CHECK_SDK"

    const-string/jumbo v2, "1000"

    iget-object v3, p0, Ljsx;->b:Ljsv;

    .line 9023
    iget-object v3, v3, Ljsv;->a:Ljava/lang/String;

    .line 8230
    const-string/jumbo v4, "0"

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x1

    const-string/jumbo v8, "\u5206\u4eab\u56fe\u7247\u5931\u8d25\uff0c\u68c0\u6d4b\u4e0d\u5230SD\u5361!"

    invoke-static/range {v0 .. v8}, Ljtm;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;IILjava/lang/String;)V

    .line 207
    :goto_2
    const-string/jumbo v0, "openSDK_LOG.QQShare"

    const-string/jumbo v1, "shareToQQ() -- end."

    invoke-static {v0, v1}, Ljtg;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 8235
    :cond_c
    const-string/jumbo v0, "4.3.0"

    invoke-static {p1, v0}, Ljtu;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-gez v0, :cond_11

    .line 8240
    new-instance v8, Ljtp;

    invoke-direct {v8, p1}, Ljtp;-><init>(Landroid/app/Activity;)V

    .line 8241
    new-instance v0, Ljsx$1;

    move-object v1, p0

    move-object v2, p2

    move-object v5, p3

    move-object v6, p1

    invoke-direct/range {v0 .. v6}, Ljsx$1;-><init>(Ljsx;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;Ljuc;Landroid/app/Activity;)V

    .line 9060
    const-string/jumbo v1, "AsynLoadImg"

    const-string/jumbo v2, "--save---"

    invoke-static {v1, v2}, Ljtg;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 9061
    if-eqz v7, :cond_d

    const-string/jumbo v1, ""

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 9062
    :cond_d
    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Ljtq;->a(ILjava/lang/String;)V

    .line 8317
    :goto_3
    const-string/jumbo v0, "openSDK_LOG"

    const-string/jumbo v1, "shareToMobileQQ() -- end"

    invoke-static {v0, v1}, Ljtg;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 9065
    :cond_e
    invoke-static {}, Ljtx;->a()Z

    move-result v1

    if-nez v1, :cond_f

    .line 9066
    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Ljtq;->a(ILjava/lang/String;)V

    goto :goto_3

    .line 9069
    :cond_f
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "/tmp/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Ljtp;->c:Ljava/lang/String;

    .line 9071
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v8, Ljtp;->d:J

    .line 9073
    iput-object v7, v8, Ljtp;->a:Ljava/lang/String;

    .line 9074
    iput-object v0, v8, Ljtp;->b:Ljtq;

    .line 9075
    new-instance v0, Ljava/lang/Thread;

    iget-object v1, v8, Ljtp;->f:Ljava/lang/Runnable;

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_3

    .line 8274
    :cond_10
    const-string/jumbo v0, "imageUrl"

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 8275
    const-string/jumbo v0, "4.3.0"

    invoke-static {p1, v0}, Ljtu;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-gez v0, :cond_12

    .line 8278
    const-string/jumbo v0, "openSDK_LOG.QQShare"

    const-string/jumbo v1, "shareToMobileQQ -- QQ Version is < 4.3.0 "

    invoke-static {v0, v1}, Ljtg;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 8315
    :cond_11
    invoke-direct {p0, p1, p2, p3}, Ljsx;->b(Landroid/app/Activity;Landroid/os/Bundle;Ljuc;)V

    goto :goto_3

    .line 8283
    :cond_12
    const-string/jumbo v0, "openSDK_LOG.QQShare"

    const-string/jumbo v1, "shareToMobileQQ -- QQ Version is > 4.3.0 "

    invoke-static {v0, v1}, Ljtg;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 8284
    new-instance v0, Ljsx$2;

    move-object v1, p0

    move-object v2, p2

    move-object v5, p3

    move-object v6, p1

    invoke-direct/range {v0 .. v6}, Ljsx$2;-><init>(Ljsx;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;Ljuc;Landroid/app/Activity;)V

    .line 10047
    const-string/jumbo v1, "AsynScaleCompressImage"

    const-string/jumbo v2, "scaleCompressImage"

    invoke-static {v1, v2}, Ljtg;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 10048
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 10050
    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Ljtq;->a(ILjava/lang/String;)V

    goto/16 :goto_3

    .line 10053
    :cond_13
    invoke-static {}, Ljtx;->a()Z

    move-result v1

    if-nez v1, :cond_14

    .line 10055
    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Ljtq;->a(ILjava/lang/String;)V

    goto/16 :goto_3

    .line 10058
    :cond_14
    new-instance v1, Ljsz$1;

    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljsz$1;-><init>(Landroid/os/Looper;Ljtq;)V

    .line 10076
    new-instance v0, Ljava/lang/Thread;

    new-instance v2, Ljsz$2;

    invoke-direct {v2, v7, v1}, Ljsz$2;-><init>(Ljava/lang/String;Landroid/os/Handler;)V

    invoke-direct {v0, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto/16 :goto_3

    .line 205
    :cond_15
    new-instance v0, Lcom/tencent/open/TDialog;

    const-string/jumbo v2, ""

    const-string/jumbo v1, ""

    invoke-virtual {p0, v1}, Ljsx;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    iget-object v5, p0, Ljsx;->b:Ljsv;

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/tencent/open/TDialog;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljuc;Ljsv;)V

    invoke-virtual {v0}, Lcom/tencent/open/TDialog;->show()V

    goto/16 :goto_2

    .line 84
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
