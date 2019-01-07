.class public final Ljsy;
.super Ljsw;
.source "ProGuard"


# instance fields
.field public k:Ljava/lang/String;

.field private l:Z

.field private m:Z

.field private n:Z

.field private o:Z


# direct methods
.method public constructor <init>(Ljsv;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 75
    invoke-direct {p0, p1}, Ljsw;-><init>(Ljsv;)V

    .line 67
    const-string/jumbo v0, ""

    iput-object v0, p0, Ljsy;->k:Ljava/lang/String;

    .line 69
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljsy;->l:Z

    .line 70
    iput-boolean v1, p0, Ljsy;->m:Z

    .line 71
    iput-boolean v1, p0, Ljsy;->n:Z

    .line 72
    iput-boolean v1, p0, Ljsy;->o:Z

    .line 76
    return-void
.end method

.method static synthetic a(Ljsy;Landroid/app/Activity;Landroid/os/Bundle;Ljuc;)V
    .locals 20

    .prologue
    .line 31
    .line 10329
    const-string/jumbo v4, "openSDK_LOG"

    const-string/jumbo v5, "doshareToQzone() --start"

    invoke-static {v4, v5}, Ljtg;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 10331
    new-instance v7, Ljava/lang/StringBuffer;

    const-string/jumbo v4, "mqqapi://share/to_qzone?src_type=app&version=1&file_type=news"

    invoke-direct {v7, v4}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 10332
    const-string/jumbo v4, "imageUrl"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v8

    .line 10333
    const-string/jumbo v4, "title"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 10334
    const-string/jumbo v4, "summary"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 10335
    const-string/jumbo v4, "targetUrl"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 10336
    const-string/jumbo v4, "audio_url"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 10337
    const-string/jumbo v4, "req_type"

    const/4 v5, 0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v13

    .line 10338
    const-string/jumbo v4, "appName"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 10341
    const-string/jumbo v4, "cflag"

    const/4 v5, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v15

    .line 10342
    const-string/jumbo v4, "share_qq_ext_str"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 10344
    move-object/from16 v0, p0

    iget-object v4, v0, Ljsy;->b:Ljsv;

    .line 11023
    iget-object v0, v4, Ljsv;->a:Ljava/lang/String;

    move-object/from16 v17, v0

    .line 10345
    move-object/from16 v0, p0

    iget-object v4, v0, Ljsy;->b:Ljsv;

    .line 11045
    iget-object v0, v4, Ljsv;->c:Ljava/lang/String;

    move-object/from16 v18, v0

    .line 10347
    const-string/jumbo v4, "doshareToQzone"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "openId:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v18

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Ljtg;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 10349
    if-eqz v8, :cond_3

    .line 10350
    new-instance v19, Ljava/lang/StringBuffer;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuffer;-><init>()V

    .line 10351
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/16 v5, 0x9

    if-le v4, v5, :cond_1

    const/16 v4, 0x9

    move v5, v4

    .line 10352
    :goto_0
    const/4 v4, 0x0

    move v6, v4

    :goto_1
    if-ge v6, v5, :cond_2

    .line 10353
    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 10354
    add-int/lit8 v4, v5, -0x1

    if-eq v6, v4, :cond_0

    .line 10355
    const-string/jumbo v4, ";"

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 10352
    :cond_0
    add-int/lit8 v4, v6, 0x1

    move v6, v4

    goto :goto_1

    .line 10351
    :cond_1
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v4

    move v5, v4

    goto :goto_0

    .line 10358
    :cond_2
    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "&image_url="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljtx;->j(Ljava/lang/String;)[B

    move-result-object v5

    const/4 v6, 0x2

    invoke-static {v5, v6}, Lhv;->b([BI)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v7, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 10360
    :cond_3
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 10362
    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "&title="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v9}, Ljtx;->j(Ljava/lang/String;)[B

    move-result-object v5

    const/4 v6, 0x2

    invoke-static {v5, v6}, Lhv;->b([BI)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v7, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 10364
    :cond_4
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 10366
    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "&description="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v10}, Ljtx;->j(Ljava/lang/String;)[B

    move-result-object v5

    const/4 v6, 0x2

    invoke-static {v5, v6}, Lhv;->b([BI)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v7, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 10368
    :cond_5
    invoke-static/range {v17 .. v17}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_6

    .line 10369
    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "&share_id="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v7, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 10371
    :cond_6
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_7

    .line 10372
    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "&url="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v11}, Ljtx;->j(Ljava/lang/String;)[B

    move-result-object v5

    const/4 v6, 0x2

    invoke-static {v5, v6}, Lhv;->b([BI)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v7, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 10374
    :cond_7
    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_8

    .line 10375
    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "&app_name="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v14}, Ljtx;->j(Ljava/lang/String;)[B

    move-result-object v5

    const/4 v6, 0x2

    invoke-static {v5, v6}, Lhv;->b([BI)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v7, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 10378
    :cond_8
    invoke-static/range {v18 .. v18}, Ljtx;->e(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_9

    .line 10379
    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "&open_id="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static/range {v18 .. v18}, Ljtx;->j(Ljava/lang/String;)[B

    move-result-object v5

    const/4 v6, 0x2

    invoke-static {v5, v6}, Lhv;->b([BI)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v7, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 10383
    :cond_9
    invoke-static {v12}, Ljtx;->e(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_a

    .line 10384
    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "&audioUrl="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v12}, Ljtx;->j(Ljava/lang/String;)[B

    move-result-object v5

    const/4 v6, 0x2

    invoke-static {v5, v6}, Lhv;->b([BI)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v7, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 10387
    :cond_a
    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "&req_type="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v13}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljtx;->j(Ljava/lang/String;)[B

    move-result-object v5

    const/4 v6, 0x2

    invoke-static {v5, v6}, Lhv;->b([BI)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v7, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 10390
    invoke-static/range {v16 .. v16}, Ljtx;->e(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_b

    .line 10391
    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "&share_qq_ext_str="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static/range {v16 .. v16}, Ljtx;->j(Ljava/lang/String;)[B

    move-result-object v5

    const/4 v6, 0x2

    invoke-static {v5, v6}, Lhv;->b([BI)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v7, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 10393
    :cond_b
    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "&cflag="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v15}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljtx;->j(Ljava/lang/String;)[B

    move-result-object v5

    const/4 v6, 0x2

    invoke-static {v5, v6}, Lhv;->b([BI)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v7, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 10394
    const-string/jumbo v4, "doshareToQzone, url: "

    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Ljtg;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 10396
    invoke-static {}, Ljtr;->a()Landroid/content/Context;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Ljsy;->b:Ljsv;

    const-string/jumbo v6, "requireApi"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/String;

    const/4 v9, 0x0

    const-string/jumbo v10, "shareToNativeQQ"

    aput-object v10, v8, v9

    invoke-static {v4, v5, v6, v8}, Ljsr;->a(Landroid/content/Context;Ljsv;Ljava/lang/String;[Ljava/lang/String;)V

    .line 10398
    new-instance v4, Landroid/content/Intent;

    const-string/jumbo v5, "android.intent.action.VIEW"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iput-object v4, v0, Ljsy;->d:Landroid/content/Intent;

    .line 10399
    move-object/from16 v0, p0

    iget-object v4, v0, Ljsy;->d:Landroid/content/Intent;

    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 10401
    move-object/from16 v0, p0

    iget-object v4, v0, Ljsy;->d:Landroid/content/Intent;

    const-string/jumbo v5, "pkg_name"

    invoke-virtual/range {p1 .. p1}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 10403
    const-string/jumbo v4, "4.6.0"

    move-object/from16 v0, p1

    invoke-static {v0, v4}, Ljtu;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v4

    if-gez v4, :cond_e

    .line 10404
    invoke-virtual/range {p0 .. p0}, Ljsy;->b()Z

    move-result v4

    if-eqz v4, :cond_c

    .line 10405
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    invoke-virtual {v0, v1, v2}, Ljsy;->a(Landroid/app/Activity;Ljuc;)V

    .line 10407
    :cond_c
    const-string/jumbo v4, "openSDK_LOG"

    const-string/jumbo v5, "doShareToQzone() -- QQ Version is < 4.6.0"

    invoke-static {v4, v5}, Ljtg;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 10421
    :cond_d
    :goto_2
    invoke-virtual/range {p0 .. p0}, Ljsy;->b()Z

    move-result v4

    if-eqz v4, :cond_10

    .line 10422
    invoke-static {}, Ljtm;->a()Ljtm;

    move-object/from16 v0, p0

    iget-object v4, v0, Ljsy;->b:Ljsv;

    .line 12045
    iget-object v4, v4, Ljsv;->c:Ljava/lang/String;

    .line 10422
    move-object/from16 v0, p0

    iget-object v5, v0, Ljsy;->b:Ljsv;

    .line 13023
    iget-object v5, v5, Ljsv;->a:Ljava/lang/String;

    .line 10422
    const-string/jumbo v6, "ANDROIDQQ.SHARETOQZ.XX"

    const-string/jumbo v7, "11"

    const-string/jumbo v8, "3"

    const-string/jumbo v9, "0"

    move-object/from16 v0, p0

    iget-object v10, v0, Ljsy;->k:Ljava/lang/String;

    const-string/jumbo v11, "0"

    const-string/jumbo v12, "1"

    const-string/jumbo v13, "0"

    invoke-static/range {v4 .. v13}, Ljtm;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 10426
    invoke-static {}, Ljtm;->a()Ljtm;

    const/4 v4, 0x0

    const-string/jumbo v5, "SHARE_CHECK_SDK"

    const-string/jumbo v6, "1000"

    move-object/from16 v0, p0

    iget-object v7, v0, Ljsy;->b:Ljsv;

    .line 14023
    iget-object v7, v7, Ljsv;->a:Ljava/lang/String;

    .line 10426
    const-string/jumbo v8, "4"

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    const/4 v10, 0x0

    const/4 v11, 0x1

    const-string/jumbo v12, ""

    invoke-static/range {v4 .. v12}, Ljtm;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;IILjava/lang/String;)V

    .line 10436
    :goto_3
    const-string/jumbo v4, "openSDK_LOG"

    const-string/jumbo v5, "doShareToQzone() --end"

    invoke-static {v4, v5}, Ljtg;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    return-void

    .line 10409
    :cond_e
    const-string/jumbo v4, "openSDK_LOG"

    const-string/jumbo v5, "doShareToQzone() -- QQ Version is > 4.6.0"

    invoke-static {v4, v5}, Ljtg;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 10410
    const-string/jumbo v4, "shareToQzone"

    move-object/from16 v0, p3

    invoke-static {v4, v0}, Ljtv;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 10411
    if-eqz v4, :cond_f

    .line 10412
    const-string/jumbo v4, "openSDK_LOG"

    const-string/jumbo v5, "doShareToQzone() -- do listener onCancel()"

    invoke-static {v4, v5}, Ljtg;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 10416
    :cond_f
    invoke-virtual/range {p0 .. p0}, Ljsy;->b()Z

    move-result v4

    if-eqz v4, :cond_d

    .line 10417
    const/16 v4, 0x2778

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v4}, Ljsy;->a(Landroid/app/Activity;I)V

    goto/16 :goto_2

    .line 10429
    :cond_10
    invoke-static {}, Ljtm;->a()Ljtm;

    move-object/from16 v0, p0

    iget-object v4, v0, Ljsy;->b:Ljsv;

    .line 14045
    iget-object v4, v4, Ljsv;->c:Ljava/lang/String;

    .line 10429
    move-object/from16 v0, p0

    iget-object v5, v0, Ljsy;->b:Ljsv;

    .line 15023
    iget-object v5, v5, Ljsv;->a:Ljava/lang/String;

    .line 10429
    const-string/jumbo v6, "ANDROIDQQ.SHARETOQZ.XX"

    const-string/jumbo v7, "11"

    const-string/jumbo v8, "3"

    const-string/jumbo v9, "1"

    move-object/from16 v0, p0

    iget-object v10, v0, Ljsy;->k:Ljava/lang/String;

    const-string/jumbo v11, "0"

    const-string/jumbo v12, "1"

    const-string/jumbo v13, "0"

    invoke-static/range {v4 .. v13}, Ljtm;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 10433
    invoke-static {}, Ljtm;->a()Ljtm;

    const/4 v4, 0x1

    const-string/jumbo v5, "SHARE_CHECK_SDK"

    const-string/jumbo v6, "1000"

    move-object/from16 v0, p0

    iget-object v7, v0, Ljsy;->b:Ljsv;

    .line 16023
    iget-object v7, v7, Ljsv;->a:Ljava/lang/String;

    .line 10433
    const-string/jumbo v8, "4"

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    const/4 v10, 0x0

    const/4 v11, 0x1

    const-string/jumbo v12, "hasActivityForIntent fail"

    invoke-static/range {v4 .. v12}, Ljtm;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;IILjava/lang/String;)V

    goto/16 :goto_3
.end method


# virtual methods
.method public final a(Landroid/app/Activity;IILandroid/content/Intent;)V
    .locals 0

    .prologue
    .line 529
    return-void
.end method

.method public final a(Landroid/app/Activity;Landroid/os/Bundle;Ljuc;)V
    .locals 10

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 80
    const-string/jumbo v0, "openSDK_LOG"

    const-string/jumbo v1, "shareToQzone() -- start"

    invoke-static {v0, v1}, Ljtg;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    if-nez p2, :cond_0

    .line 82
    new-instance v0, Ljue;

    const/4 v1, -0x6

    const-string/jumbo v2, "\u4f20\u5165\u53c2\u6570\u4e0d\u53ef\u4ee5\u4e3a\u7a7a"

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Ljue;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-interface {p3, v0}, Ljuc;->a(Ljue;)V

    .line 84
    invoke-static {}, Ljtm;->a()Ljtm;

    const/4 v0, 0x1

    const-string/jumbo v1, "SHARE_CHECK_SDK"

    const-string/jumbo v2, "1000"

    iget-object v3, p0, Ljsy;->b:Ljsv;

    .line 1023
    iget-object v3, v3, Ljsv;->a:Ljava/lang/String;

    .line 84
    const-string/jumbo v4, "4"

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x1

    const-string/jumbo v8, "\u4f20\u5165\u53c2\u6570\u4e0d\u53ef\u4ee5\u4e3a\u7a7a"

    invoke-static/range {v0 .. v8}, Ljtm;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;IILjava/lang/String;)V

    .line 325
    :goto_0
    return-void

    .line 89
    :cond_0
    const-string/jumbo v0, "title"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 90
    const-string/jumbo v0, "summary"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 91
    const-string/jumbo v0, "targetUrl"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 92
    const-string/jumbo v0, "imageUrl"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v4

    .line 94
    invoke-static {p1}, Ljtx;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 95
    if-nez v0, :cond_2

    .line 97
    const-string/jumbo v0, "appName"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 104
    :cond_1
    :goto_1
    const-string/jumbo v5, "req_type"

    invoke-virtual {p2, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    .line 106
    packed-switch v5, :pswitch_data_0

    .line 118
    :pswitch_0
    const-string/jumbo v6, "1"

    iput-object v6, p0, Ljsy;->k:Ljava/lang/String;

    .line 122
    :goto_2
    packed-switch v5, :pswitch_data_1

    .line 157
    :pswitch_1
    invoke-static {v1}, Ljtx;->e(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-static {v3}, Ljtx;->e(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 160
    if-eqz v4, :cond_4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-eqz v6, :cond_4

    .line 161
    const/4 v6, 0x0

    iput-boolean v6, p0, Ljsy;->l:Z

    .line 170
    :goto_3
    const/4 v6, 0x0

    iput-boolean v6, p0, Ljsy;->m:Z

    .line 171
    const/4 v6, 0x1

    iput-boolean v6, p0, Ljsy;->n:Z

    .line 172
    const/4 v6, 0x0

    iput-boolean v6, p0, Ljsy;->o:Z

    move-object v9, v2

    move-object v2, v1

    move-object v1, v9

    .line 178
    :goto_4
    invoke-static {}, Ljtx;->a()Z

    move-result v6

    if-nez v6, :cond_6

    .line 179
    const-string/jumbo v6, "4.5.0"

    invoke-static {p1, v6}, Ljtu;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v6

    if-gez v6, :cond_6

    .line 180
    new-instance v0, Ljue;

    const/4 v1, -0x6

    const-string/jumbo v2, "\u5206\u4eab\u56fe\u7247\u5931\u8d25\uff0c\u68c0\u6d4b\u4e0d\u5230SD\u5361!"

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Ljue;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-interface {p3, v0}, Ljuc;->a(Ljue;)V

    .line 182
    const-string/jumbo v0, "openSDK_LOG"

    const-string/jumbo v1, "shareToQzone() sdcard is null--end"

    invoke-static {v0, v1}, Ljtg;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 184
    invoke-static {}, Ljtm;->a()Ljtm;

    const/4 v0, 0x1

    const-string/jumbo v1, "SHARE_CHECK_SDK"

    const-string/jumbo v2, "1000"

    iget-object v3, p0, Ljsy;->b:Ljsv;

    .line 5023
    iget-object v3, v3, Ljsv;->a:Ljava/lang/String;

    .line 184
    const-string/jumbo v4, "4"

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x1

    const-string/jumbo v8, "\u5206\u4eab\u56fe\u7247\u5931\u8d25\uff0c\u68c0\u6d4b\u4e0d\u5230SD\u5361!"

    invoke-static/range {v0 .. v8}, Ljtm;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;IILjava/lang/String;)V

    goto/16 :goto_0

    .line 99
    :cond_2
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    const/16 v6, 0x14

    if-le v5, v6, :cond_1

    .line 100
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v6, 0x0

    const/16 v7, 0x14

    invoke-virtual {v0, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v5, "..."

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    .line 108
    :pswitch_2
    const-string/jumbo v6, "4"

    iput-object v6, p0, Ljsy;->k:Ljava/lang/String;

    goto/16 :goto_2

    .line 111
    :pswitch_3
    const-string/jumbo v6, "1"

    iput-object v6, p0, Ljsy;->k:Ljava/lang/String;

    goto/16 :goto_2

    .line 114
    :pswitch_4
    const-string/jumbo v6, "2"

    iput-object v6, p0, Ljsy;->k:Ljava/lang/String;

    goto/16 :goto_2

    .line 125
    :pswitch_5
    const-string/jumbo v2, "5.0.0"

    invoke-static {p1, v2}, Ljtu;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    if-gez v2, :cond_3

    .line 126
    new-instance v0, Ljue;

    const/16 v1, -0xf

    const-string/jumbo v2, "\u624bQ\u7248\u672c\u8fc7\u4f4e\uff0c\u5e94\u7528\u5206\u4eab\u53ea\u652f\u6301\u624bQ5.0\u53ca\u5176\u4ee5\u4e0a\u7248\u672c"

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Ljue;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-interface {p3, v0}, Ljuc;->a(Ljue;)V

    .line 127
    const-string/jumbo v0, "openSDK_LOG"

    const-string/jumbo v1, "-->shareToQzone, app share is not support below qq5.0."

    invoke-static {v0, v1}, Ljtg;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    invoke-static {}, Ljtm;->a()Ljtm;

    const/4 v0, 0x1

    const-string/jumbo v1, "SHARE_CHECK_SDK"

    const-string/jumbo v2, "1000"

    iget-object v3, p0, Ljsy;->b:Ljsv;

    .line 2023
    iget-object v3, v3, Ljsv;->a:Ljava/lang/String;

    .line 128
    const-string/jumbo v4, "4"

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x1

    const-string/jumbo v8, "shareToQzone, app share is not support below qq5.0."

    invoke-static/range {v0 .. v8}, Ljtm;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;IILjava/lang/String;)V

    goto/16 :goto_0

    .line 133
    :cond_3
    const-string/jumbo v2, "http://fusion.qq.com/cgi-bin/qzapps/unified_jump?appid=%1$s&from=%2$s&isOpenAppID=1"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    iget-object v8, p0, Ljsy;->b:Ljsv;

    .line 3023
    iget-object v8, v8, Ljsv;->a:Ljava/lang/String;

    .line 133
    aput-object v8, v6, v7

    const/4 v7, 0x1

    const-string/jumbo v8, "mqq"

    aput-object v8, v6, v7

    invoke-static {v2, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 134
    const-string/jumbo v6, "targetUrl"

    invoke-virtual {p2, v6, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    move-object v9, v2

    move-object v2, v1

    move-object v1, v9

    .line 135
    goto/16 :goto_4

    .line 137
    :pswitch_6
    const/4 v6, 0x1

    iput-boolean v6, p0, Ljsy;->l:Z

    goto/16 :goto_3

    .line 143
    :pswitch_7
    new-instance v0, Ljue;

    const/4 v1, -0x5

    const-string/jumbo v2, "\u6682\u4e0d\u652f\u6301\u7eaf\u56fe\u7247\u5206\u4eab\u5230\u7a7a\u95f4\uff0c\u5efa\u8bae\u4f7f\u7528\u56fe\u6587\u5206\u4eab"

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Ljue;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-interface {p3, v0}, Ljuc;->a(Ljue;)V

    .line 145
    const-string/jumbo v0, "openSDK_LOG"

    const-string/jumbo v1, "shareToQzone() error--end\u6682\u4e0d\u652f\u6301\u7eaf\u56fe\u7247\u5206\u4eab\u5230\u7a7a\u95f4\uff0c\u5efa\u8bae\u4f7f\u7528\u56fe\u6587\u5206\u4eab"

    invoke-static {v0, v1}, Ljtg;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    invoke-static {}, Ljtm;->a()Ljtm;

    const/4 v0, 0x1

    const-string/jumbo v1, "SHARE_CHECK_SDK"

    const-string/jumbo v2, "1000"

    iget-object v3, p0, Ljsy;->b:Ljsv;

    .line 4023
    iget-object v3, v3, Ljsv;->a:Ljava/lang/String;

    .line 147
    const-string/jumbo v4, "4"

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x1

    const-string/jumbo v8, "shareToQzone() \u6682\u4e0d\u652f\u6301\u7eaf\u56fe\u7247\u5206\u4eab\u5230\u7a7a\u95f4\uff0c\u5efa\u8bae\u4f7f\u7528\u56fe\u6587\u5206\u4eab"

    invoke-static/range {v0 .. v8}, Ljtm;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;IILjava/lang/String;)V

    goto/16 :goto_0

    .line 163
    :cond_4
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "\u6765\u81ea"

    invoke-direct {v1, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v6, "\u7684\u5206\u4eab"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 168
    :cond_5
    const/4 v6, 0x1

    iput-boolean v6, p0, Ljsy;->l:Z

    goto/16 :goto_3

    .line 191
    :cond_6
    iget-boolean v6, p0, Ljsy;->l:Z

    if-eqz v6, :cond_8

    .line 192
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 193
    new-instance v0, Ljue;

    const/4 v1, -0x5

    const-string/jumbo v2, "targetUrl\u4e3a\u5fc5\u586b\u9879\uff0c\u8bf7\u8865\u5145\u540e\u5206\u4eab"

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Ljue;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-interface {p3, v0}, Ljuc;->a(Ljue;)V

    .line 195
    const-string/jumbo v0, "openSDK_LOG"

    const-string/jumbo v1, "shareToQzone() targetUrl null error--end"

    invoke-static {v0, v1}, Ljtg;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 196
    invoke-static {}, Ljtm;->a()Ljtm;

    const/4 v0, 0x1

    const-string/jumbo v1, "SHARE_CHECK_SDK"

    const-string/jumbo v2, "1000"

    iget-object v3, p0, Ljsy;->b:Ljsv;

    .line 6023
    iget-object v3, v3, Ljsv;->a:Ljava/lang/String;

    .line 196
    const-string/jumbo v4, "4"

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x1

    const-string/jumbo v8, "targetUrl\u4e3a\u5fc5\u586b\u9879\uff0c\u8bf7\u8865\u5145\u540e\u5206\u4eab"

    invoke-static/range {v0 .. v8}, Ljtm;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;IILjava/lang/String;)V

    goto/16 :goto_0

    .line 201
    :cond_7
    invoke-static {v1}, Ljtx;->g(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_8

    .line 202
    new-instance v0, Ljue;

    const/4 v1, -0x5

    const-string/jumbo v2, "targetUrl\u6709\u8bef"

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Ljue;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-interface {p3, v0}, Ljuc;->a(Ljue;)V

    .line 204
    const-string/jumbo v0, "openSDK_LOG"

    const-string/jumbo v1, "shareToQzone() targetUrl error--end"

    invoke-static {v0, v1}, Ljtg;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 205
    invoke-static {}, Ljtm;->a()Ljtm;

    const/4 v0, 0x1

    const-string/jumbo v1, "SHARE_CHECK_SDK"

    const-string/jumbo v2, "1000"

    iget-object v3, p0, Ljsy;->b:Ljsv;

    .line 7023
    iget-object v3, v3, Ljsv;->a:Ljava/lang/String;

    .line 205
    const-string/jumbo v4, "4"

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x1

    const-string/jumbo v8, "targetUrl\u6709\u8bef"

    invoke-static/range {v0 .. v8}, Ljtm;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;IILjava/lang/String;)V

    goto/16 :goto_0

    .line 218
    :cond_8
    iget-boolean v1, p0, Ljsy;->n:Z

    if-eqz v1, :cond_9

    invoke-static {v2}, Ljtx;->e(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 219
    new-instance v0, Ljue;

    const/4 v1, -0x6

    const-string/jumbo v2, "title\u4e0d\u80fd\u4e3a\u7a7a!"

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Ljue;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-interface {p3, v0}, Ljuc;->a(Ljue;)V

    .line 221
    const-string/jumbo v0, "openSDK_LOG"

    const-string/jumbo v1, "shareToQzone() title is null--end"

    invoke-static {v0, v1}, Ljtg;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 222
    invoke-static {}, Ljtm;->a()Ljtm;

    const/4 v0, 0x1

    const-string/jumbo v1, "SHARE_CHECK_SDK"

    const-string/jumbo v2, "1000"

    iget-object v3, p0, Ljsy;->b:Ljsv;

    .line 8023
    iget-object v3, v3, Ljsv;->a:Ljava/lang/String;

    .line 222
    const-string/jumbo v4, "4"

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x1

    const-string/jumbo v8, "shareToQzone() title is null"

    invoke-static/range {v0 .. v8}, Ljtm;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;IILjava/lang/String;)V

    goto/16 :goto_0

    .line 228
    :cond_9
    invoke-static {v2}, Ljtx;->e(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_a

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v6, 0xc8

    if-le v1, v6, :cond_a

    .line 230
    const/16 v1, 0xc8

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static {v2, v1, v6, v7}, Ljtx;->a(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 231
    const-string/jumbo v2, "title"

    invoke-virtual {p2, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 233
    :cond_a
    invoke-static {v3}, Ljtx;->e(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_b

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x258

    if-le v1, v2, :cond_b

    .line 235
    const/16 v1, 0x258

    const/4 v2, 0x0

    const/4 v6, 0x0

    invoke-static {v3, v1, v2, v6}, Ljtx;->a(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 236
    const-string/jumbo v2, "summary"

    invoke-virtual {p2, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 240
    :cond_b
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_c

    .line 241
    const-string/jumbo v1, "appName"

    invoke-virtual {p2, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 244
    :cond_c
    if-eqz v4, :cond_d

    if-eqz v4, :cond_e

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_e

    .line 276
    :cond_d
    :goto_5
    const-string/jumbo v0, "4.6.0"

    invoke-static {p1, v0}, Ljtu;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_13

    .line 278
    new-instance v0, Ljsy$1;

    invoke-direct {v0, p0, p2, p1, p3}, Ljsy$1;-><init>(Ljsy;Landroid/os/Bundle;Landroid/app/Activity;Ljuc;)V

    .line 9120
    const-string/jumbo v1, "AsynScaleCompressImage"

    const-string/jumbo v2, "batchScaleCompressImage"

    invoke-static {v1, v2}, Ljtg;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 9121
    if-nez v4, :cond_12

    .line 9123
    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Ljtq;->a(ILjava/lang/String;)V

    .line 324
    :goto_6
    const-string/jumbo v0, "openSDK_LOG"

    const-string/jumbo v1, "shareToQzone() --end"

    invoke-static {v0, v1}, Ljtg;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 256
    :cond_e
    const/4 v0, 0x0

    move v1, v0

    :goto_7
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_10

    .line 257
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 258
    invoke-static {v0}, Ljtx;->g(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_f

    invoke-static {v0}, Ljtx;->h(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_f

    .line 260
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 256
    :cond_f
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_7

    .line 263
    :cond_10
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_11

    .line 264
    new-instance v0, Ljue;

    const/4 v1, -0x6

    const-string/jumbo v2, "\u975e\u6cd5\u7684\u56fe\u7247\u5730\u5740!"

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Ljue;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-interface {p3, v0}, Ljuc;->a(Ljue;)V

    .line 266
    const-string/jumbo v0, "openSDK_LOG"

    const-string/jumbo v1, "shareToQzone() MSG_PARAM_IMAGE_URL_FORMAT_ERROR--end"

    invoke-static {v0, v1}, Ljtg;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 268
    invoke-static {}, Ljtm;->a()Ljtm;

    const/4 v0, 0x1

    const-string/jumbo v1, "SHARE_CHECK_SDK"

    const-string/jumbo v2, "1000"

    iget-object v3, p0, Ljsy;->b:Ljsv;

    .line 9023
    iget-object v3, v3, Ljsv;->a:Ljava/lang/String;

    .line 268
    const-string/jumbo v4, "4"

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x1

    const-string/jumbo v8, "shareToQzone() \u975e\u6cd5\u7684\u56fe\u7247\u5730\u5740!"

    invoke-static/range {v0 .. v8}, Ljtm;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;IILjava/lang/String;)V

    goto/16 :goto_0

    .line 273
    :cond_11
    const-string/jumbo v0, "imageUrl"

    invoke-virtual {p2, v0, v4}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    goto/16 :goto_5

    .line 9131
    :cond_12
    new-instance v1, Ljsz$3;

    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljsz$3;-><init>(Landroid/os/Looper;Ljtq;)V

    .line 9144
    new-instance v0, Ljava/lang/Thread;

    new-instance v2, Ljsz$4;

    invoke-direct {v2, v4, v1}, Ljsz$4;-><init>(Ljava/util/ArrayList;Landroid/os/Handler;)V

    invoke-direct {v0, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto/16 :goto_6

    .line 293
    :cond_13
    const-string/jumbo v0, "4.2.0"

    invoke-static {p1, v0}, Ljtu;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_17

    const-string/jumbo v0, "4.6.0"

    invoke-static {p1, v0}, Ljtu;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-gez v0, :cond_17

    .line 296
    new-instance v1, Ljsx;

    iget-object v0, p0, Ljsy;->b:Ljsv;

    invoke-direct {v1, v0}, Ljsx;-><init>(Ljsv;)V

    .line 297
    if-eqz v4, :cond_15

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_15

    .line 298
    const/4 v0, 0x0

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 300
    const/4 v2, 0x5

    if-ne v5, v2, :cond_14

    .line 301
    invoke-static {v0}, Ljtx;->i(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_14

    .line 302
    new-instance v0, Ljue;

    const/4 v1, -0x6

    const-string/jumbo v2, "\u624bQ\u7248\u672c\u8fc7\u4f4e\uff0c\u7eaf\u56fe\u5206\u4eab\u4e0d\u652f\u6301\u7f51\u8def\u56fe\u7247"

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Ljue;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-interface {p3, v0}, Ljuc;->a(Ljue;)V

    .line 304
    const-string/jumbo v0, "openSDK_LOG"

    const-string/jumbo v1, "shareToQzone()\u624bQ\u7248\u672c\u8fc7\u4f4e\uff0c\u7eaf\u56fe\u5206\u4eab\u4e0d\u652f\u6301\u7f51\u8def\u56fe\u7247"

    invoke-static {v0, v1}, Ljtg;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 306
    invoke-static {}, Ljtm;->a()Ljtm;

    const/4 v0, 0x1

    const-string/jumbo v1, "SHARE_CHECK_SDK"

    const-string/jumbo v2, "1000"

    iget-object v3, p0, Ljsy;->b:Ljsv;

    .line 10023
    iget-object v3, v3, Ljsv;->a:Ljava/lang/String;

    .line 306
    const-string/jumbo v4, "4"

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x1

    const-string/jumbo v8, "shareToQzone()\u624bQ\u7248\u672c\u8fc7\u4f4e\uff0c\u7eaf\u56fe\u5206\u4eab\u4e0d\u652f\u6301\u7f51\u8def\u56fe\u7247"

    invoke-static/range {v0 .. v8}, Ljtm;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;IILjava/lang/String;)V

    goto/16 :goto_0

    .line 313
    :cond_14
    const-string/jumbo v2, "imageLocalUrl"

    invoke-virtual {p2, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 316
    :cond_15
    const-string/jumbo v0, "4.5.0"

    invoke-static {p1, v0}, Ljtu;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_16

    .line 317
    const-string/jumbo v0, "cflag"

    const/4 v2, 0x1

    invoke-virtual {p2, v0, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 319
    :cond_16
    invoke-virtual {v1, p1, p2, p3}, Ljsx;->a(Landroid/app/Activity;Landroid/os/Bundle;Ljuc;)V

    goto/16 :goto_6

    .line 322
    :cond_17
    new-instance v0, Lcom/tencent/open/TDialog;

    const-string/jumbo v2, ""

    const-string/jumbo v1, ""

    invoke-virtual {p0, v1}, Ljsy;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    iget-object v5, p0, Ljsy;->b:Ljsv;

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/tencent/open/TDialog;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljuc;Ljsv;)V

    invoke-virtual {v0}, Lcom/tencent/open/TDialog;->show()V

    goto/16 :goto_6

    .line 106
    .line 122
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_2
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_6
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_7
        :pswitch_5
    .end packed-switch
.end method
