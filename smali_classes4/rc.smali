.class public final Lrc;
.super Ljava/lang/Object;
.source "ImapModelConvertUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Lvs;Ljava/util/List;Ljava/util/List;)Lcom/alibaba/alimei/restfulapi/data/Attach;
    .locals 31
    .param p0, "attachmentPart"    # Lvs;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lvs;",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/restfulapi/data/Attach;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/restfulapi/data/Attach;",
            ">;)",
            "Lcom/alibaba/alimei/restfulapi/data/Attach;"
        }
    .end annotation

    .prologue
    .line 341
    .local p1, "resourceList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/restfulapi/data/Attach;>;"
    .local p2, "attachList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/restfulapi/data/Attach;>;"
    new-instance v2, Lcom/alibaba/alimei/restfulapi/data/Attach;

    invoke-direct {v2}, Lcom/alibaba/alimei/restfulapi/data/Attach;-><init>()V

    .line 343
    .local v2, "attach":Lcom/alibaba/alimei/restfulapi/data/Attach;
    const-wide/16 v22, 0x0

    .line 349
    .local v22, "size":J
    const/16 v16, -0x1

    .line 351
    .local v16, "mulitPartType":I
    :try_start_0
    move-object/from16 v0, p0

    instance-of v0, v0, Lvq;

    move/from16 v26, v0

    if-eqz v26, :cond_0

    .line 352
    move-object/from16 v0, p0

    check-cast v0, Lvq;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Lvj;->a(Lvq;)I

    move-result v16

    .line 356
    :cond_0
    const/4 v7, 0x0

    .line 357
    .local v7, "description":Ljava/lang/String;
    if-eqz p0, :cond_1

    .line 358
    const-string/jumbo v26, "Content-Description"

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-interface {v0, v1}, Lvs;->a(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .line 359
    .local v8, "descriptions":[Ljava/lang/String;
    if-eqz v8, :cond_1

    array-length v0, v8

    move/from16 v26, v0

    if-lez v26, :cond_1

    .line 360
    const/16 v26, 0x0

    aget-object v7, v8, v26

    .line 361
    const/16 v26, 0x0

    move-object/from16 v0, v26

    invoke-static {v7, v0}, Lvj;->a(Ljava/lang/String;Lcom/alibaba/alimei/emailcommon/mail/Message;)Ljava/lang/String;

    move-result-object v7

    .line 366
    .end local v8    # "descriptions":[Ljava/lang/String;
    :cond_1
    invoke-interface/range {p0 .. p0}, Lvs;->c()Ljava/lang/String;

    move-result-object v9

    .line 368
    .local v9, "disposition":Ljava/lang/String;
    if-eqz v9, :cond_2

    .line 369
    const-string/jumbo v26, "size"

    move-object/from16 v0, v26

    invoke-static {v9, v0}, Lvj;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lcom/alibaba/alimei/emailcommon/mail/MessagingException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v21

    .line 371
    .local v21, "s":Ljava/lang/String;
    if-eqz v21, :cond_2

    .line 373
    :try_start_1
    invoke-static/range {v21 .. v21}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/alibaba/alimei/emailcommon/mail/MessagingException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-wide v22

    .line 380
    .end local v21    # "s":Ljava/lang/String;
    :cond_2
    :goto_0
    const-wide/16 v26, -0x1

    cmp-long v26, v22, v26

    if-nez v26, :cond_3

    .line 381
    const-wide/16 v22, 0x0

    .line 385
    :cond_3
    :try_start_2
    invoke-interface/range {p0 .. p0}, Lvs;->b()Ljava/lang/String;

    move-result-object v26

    const-string/jumbo v27, "name"

    .line 384
    invoke-static/range {v26 .. v27}, Lvj;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 387
    .local v17, "name":Ljava/lang/String;
    invoke-interface/range {p0 .. p0}, Lvs;->d()Ljava/lang/String;

    move-result-object v26

    const/16 v27, 0x0

    .line 386
    invoke-static/range {v26 .. v27}, Lvj;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 392
    .local v4, "contentId":Ljava/lang/String;
    invoke-interface/range {p0 .. p0}, Lvs;->c()Ljava/lang/String;

    move-result-object v26

    .line 391
    invoke-static/range {v26 .. v26}, Lvj;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 394
    .local v3, "contentDisposition":Ljava/lang/String;
    if-eqz v4, :cond_e

    move-object/from16 v20, v4

    .line 395
    .local v20, "printContentId":Ljava/lang/String;
    :goto_1
    const-string/jumbo v26, "ImapModelCOnvertutils"

    const/16 v27, 0x8

    move/from16 v0, v27

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    const-string/jumbo v29, "<IMAP> build attachment: "

    aput-object v29, v27, v28

    const/16 v28, 0x1

    aput-object v3, v27, v28

    const/16 v28, 0x2

    const-string/jumbo v29, " contentId: "

    aput-object v29, v27, v28

    const/16 v28, 0x3

    aput-object v20, v27, v28

    const/16 v28, 0x4

    const-string/jumbo v29, " multitype: "

    aput-object v29, v27, v28

    const/16 v28, 0x5

    .line 397
    invoke-static/range {v16 .. v16}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v29

    aput-object v29, v27, v28

    const/16 v28, 0x6

    const-string/jumbo v29, " description:"

    aput-object v29, v27, v28

    const/16 v28, 0x7

    aput-object v7, v27, v28

    .line 395
    invoke-static/range {v27 .. v27}, Lzc;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Lyx;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 401
    move-object v10, v3

    .local v10, "dispositionType":Ljava/lang/String;
    if-eqz v3, :cond_4

    .line 402
    const/16 v26, 0x3b

    move/from16 v0, v26

    invoke-virtual {v10, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v19

    .line 403
    .local v19, "pos":I
    const/16 v26, -0x1

    move/from16 v0, v19

    move/from16 v1, v26

    if-eq v0, v1, :cond_4

    .line 407
    const/16 v26, 0x0

    .line 408
    move/from16 v0, v26

    move/from16 v1, v19

    invoke-virtual {v10, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    .line 413
    .end local v19    # "pos":I
    :cond_4
    const/4 v15, 0x0

    .line 414
    .local v15, "isInsertIntoResource":Z
    const/4 v14, 0x0

    .line 415
    .local v14, "isInsertIntoAttachList":Z
    const-string/jumbo v26, "inline"

    move-object/from16 v0, v26

    invoke-virtual {v0, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v26

    if-eqz v26, :cond_f

    .line 416
    const/16 v26, 0x1

    move/from16 v0, v16

    move/from16 v1, v26

    if-eq v0, v1, :cond_5

    .line 417
    const/4 v14, 0x1

    .line 420
    :cond_5
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v26

    if-nez v26, :cond_6

    .line 421
    const/4 v15, 0x1

    .line 438
    :cond_6
    :goto_2
    if-eqz v3, :cond_7

    .line 439
    const-string/jumbo v26, "filename"

    move-object/from16 v0, v26

    invoke-static {v3, v0}, Lvj;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 440
    .local v13, "fileName":Ljava/lang/String;
    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v26

    if-nez v26, :cond_7

    .line 441
    move-object/from16 v17, v13

    .line 445
    .end local v13    # "fileName":Ljava/lang/String;
    :cond_7
    invoke-static/range {v17 .. v17}, Lvj;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 448
    invoke-static/range {v17 .. v17}, Lxb;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    .line 449
    .local v24, "suffix1":Ljava/lang/String;
    invoke-static {v7}, Lxb;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    .line 450
    .local v25, "suffix2":Ljava/lang/String;
    if-eqz v24, :cond_8

    invoke-virtual/range {v24 .. v24}, Ljava/lang/String;->length()I

    move-result v26

    if-lez v26, :cond_8

    invoke-virtual/range {v24 .. v25}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_8

    .line 451
    move-object/from16 v17, v7

    .line 455
    :cond_8
    invoke-static/range {v17 .. v17}, Lair;->u(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v2, v0}, Lcom/alibaba/alimei/restfulapi/data/Attach;->setId(Ljava/lang/String;)V

    .line 456
    move-wide/from16 v0, v22

    long-to-int v0, v0

    move/from16 v26, v0

    move/from16 v0, v26

    invoke-virtual {v2, v0}, Lcom/alibaba/alimei/restfulapi/data/Attach;->setSize(I)V

    .line 457
    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Lcom/alibaba/alimei/restfulapi/data/Attach;->setName(Ljava/lang/String;)V

    .line 458
    invoke-virtual {v2, v4}, Lcom/alibaba/alimei/restfulapi/data/Attach;->setContentId(Ljava/lang/String;)V

    .line 461
    const-string/jumbo v26, "Content-Type"

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-interface {v0, v1}, Lvs;->a(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 462
    .local v6, "contentTypes":[Ljava/lang/String;
    if-eqz v6, :cond_9

    array-length v0, v6

    move/from16 v26, v0

    if-lez v26, :cond_9

    .line 463
    const/16 v26, 0x0

    aget-object v26, v6, v26

    invoke-static/range {v26 .. v26}, Lvj;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 464
    .local v5, "contentType":Ljava/lang/String;
    invoke-virtual {v2, v5}, Lcom/alibaba/alimei/restfulapi/data/Attach;->setContentType(Ljava/lang/String;)V

    .line 467
    .end local v5    # "contentType":Ljava/lang/String;
    :cond_9
    const-string/jumbo v26, "X-Android-Attachment-StoreData"

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-interface {v0, v1}, Lvs;->a(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v18

    .line 468
    .local v18, "partIds":[Ljava/lang/String;
    if-eqz v18, :cond_a

    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v26, v0

    if-lez v26, :cond_a

    .line 469
    const/16 v26, 0x0

    aget-object v26, v18, v26

    move-object/from16 v0, v26

    invoke-virtual {v2, v0}, Lcom/alibaba/alimei/restfulapi/data/Attach;->setPartId(Ljava/lang/String;)V

    .line 472
    :cond_a
    const-string/jumbo v26, "Content-Transfer-Encoding"

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-interface {v0, v1}, Lvs;->a(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v12

    .line 473
    .local v12, "encodings":[Ljava/lang/String;
    if-eqz v12, :cond_b

    array-length v0, v12

    move/from16 v26, v0

    if-lez v26, :cond_b

    .line 474
    const/16 v26, 0x0

    aget-object v26, v12, v26

    move-object/from16 v0, v26

    invoke-virtual {v2, v0}, Lcom/alibaba/alimei/restfulapi/data/Attach;->setEncoding(Ljava/lang/String;)V

    .line 477
    :cond_b
    if-eqz v15, :cond_c

    .line 479
    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 483
    :cond_c
    if-eqz v14, :cond_d

    .line 485
    move-object/from16 v0, p2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 497
    .end local v2    # "attach":Lcom/alibaba/alimei/restfulapi/data/Attach;
    .end local v3    # "contentDisposition":Ljava/lang/String;
    .end local v4    # "contentId":Ljava/lang/String;
    .end local v6    # "contentTypes":[Ljava/lang/String;
    .end local v7    # "description":Ljava/lang/String;
    .end local v9    # "disposition":Ljava/lang/String;
    .end local v10    # "dispositionType":Ljava/lang/String;
    .end local v12    # "encodings":[Ljava/lang/String;
    .end local v14    # "isInsertIntoAttachList":Z
    .end local v15    # "isInsertIntoResource":Z
    .end local v17    # "name":Ljava/lang/String;
    .end local v18    # "partIds":[Ljava/lang/String;
    .end local v20    # "printContentId":Ljava/lang/String;
    .end local v24    # "suffix1":Ljava/lang/String;
    .end local v25    # "suffix2":Ljava/lang/String;
    :cond_d
    :goto_3
    return-object v2

    .line 374
    .restart local v2    # "attach":Lcom/alibaba/alimei/restfulapi/data/Attach;
    .restart local v7    # "description":Ljava/lang/String;
    .restart local v9    # "disposition":Ljava/lang/String;
    .restart local v21    # "s":Ljava/lang/String;
    :catch_0
    move-exception v11

    .line 375
    .local v11, "e":Ljava/lang/NumberFormatException;
    const-string/jumbo v26, "ImapModelCOnvertutils"

    const/16 v27, 0x2

    move/from16 v0, v27

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    invoke-virtual {v11}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    move-result-object v29

    aput-object v29, v27, v28

    const/16 v28, 0x1

    const-string/jumbo v29, ", imap build attach size error."

    aput-object v29, v27, v28

    invoke-static/range {v27 .. v27}, Lzc;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Lyp;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Lcom/alibaba/alimei/emailcommon/mail/MessagingException; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_0

    .line 490
    .end local v7    # "description":Ljava/lang/String;
    .end local v9    # "disposition":Ljava/lang/String;
    .end local v11    # "e":Ljava/lang/NumberFormatException;
    .end local v21    # "s":Ljava/lang/String;
    :catch_1
    move-exception v11

    .line 491
    .local v11, "e":Lcom/alibaba/alimei/emailcommon/mail/MessagingException;
    invoke-virtual {v11}, Lcom/alibaba/alimei/emailcommon/mail/MessagingException;->printStackTrace()V

    .line 493
    const-string/jumbo v26, "buildRpcAttach"

    const-string/jumbo v27, ""

    const-string/jumbo v28, ""

    invoke-virtual {v11}, Lcom/alibaba/alimei/emailcommon/mail/MessagingException;->getError()Lcom/alibaba/alimei/framework/SDKError;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Lcom/alibaba/alimei/framework/SDKError;->getErrorCode()Ljava/lang/String;

    move-result-object v29

    invoke-virtual {v11}, Lcom/alibaba/alimei/emailcommon/mail/MessagingException;->getMessage()Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v26 .. v30}, Lyp;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 495
    const-string/jumbo v26, "ImapModelCOnvertutils"

    const/16 v27, 0x2

    move/from16 v0, v27

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    invoke-virtual {v11}, Lcom/alibaba/alimei/emailcommon/mail/MessagingException;->getMessage()Ljava/lang/String;

    move-result-object v29

    aput-object v29, v27, v28

    const/16 v28, 0x1

    const-string/jumbo v29, ", imap build message attach rpc error."

    aput-object v29, v27, v28

    invoke-static/range {v27 .. v27}, Lzc;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Lyp;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 497
    const/4 v2, 0x0

    goto :goto_3

    .line 394
    .end local v11    # "e":Lcom/alibaba/alimei/emailcommon/mail/MessagingException;
    .restart local v3    # "contentDisposition":Ljava/lang/String;
    .restart local v4    # "contentId":Ljava/lang/String;
    .restart local v7    # "description":Ljava/lang/String;
    .restart local v9    # "disposition":Ljava/lang/String;
    .restart local v17    # "name":Ljava/lang/String;
    :cond_e
    :try_start_3
    const-string/jumbo v20, ""

    goto/16 :goto_1

    .line 424
    .restart local v10    # "dispositionType":Ljava/lang/String;
    .restart local v14    # "isInsertIntoAttachList":Z
    .restart local v15    # "isInsertIntoResource":Z
    .restart local v20    # "printContentId":Ljava/lang/String;
    :cond_f
    const-string/jumbo v26, "attachment"

    move-object/from16 v0, v26

    invoke-virtual {v0, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v26

    if-eqz v26, :cond_11

    .line 425
    const/16 v26, 0x1

    move/from16 v0, v16

    move/from16 v1, v26

    if-eq v0, v1, :cond_10

    .line 426
    const/4 v14, 0x1

    .line 429
    :cond_10
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v26

    if-nez v26, :cond_6

    .line 430
    const/4 v15, 0x1

    goto/16 :goto_2

    .line 433
    :cond_11
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_3
    .catch Lcom/alibaba/alimei/emailcommon/mail/MessagingException; {:try_start_3 .. :try_end_3} :catch_1

    move-result v26

    if-nez v26, :cond_6

    .line 434
    const/4 v15, 0x1

    goto/16 :goto_2
.end method

.method public static a(JJLcom/alibaba/alimei/emailcommon/mail/Message;Lcom/alibaba/alimei/sdk/datasource/MessageDatasource;Ljava/util/HashMap;)Lcom/alibaba/alimei/restfulapi/data/Mail;
    .locals 20
    .param p0, "accountId"    # J
    .param p2, "folderId"    # J
    .param p4, "mimeMessage"    # Lcom/alibaba/alimei/emailcommon/mail/Message;
    .param p5, "messageDatasource"    # Lcom/alibaba/alimei/sdk/datasource/MessageDatasource;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ",
            "Lcom/alibaba/alimei/emailcommon/mail/Message;",
            "Lcom/alibaba/alimei/sdk/datasource/MessageDatasource;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/alibaba/alimei/restfulapi/data/Mail;"
        }
    .end annotation

    .prologue
    .line 162
    .local p6, "existReferences":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v6, Lcom/alibaba/alimei/restfulapi/data/Mail;

    invoke-direct {v6}, Lcom/alibaba/alimei/restfulapi/data/Mail;-><init>()V

    .line 163
    .local v6, "mail":Lcom/alibaba/alimei/restfulapi/data/Mail;
    invoke-virtual/range {p4 .. p4}, Lcom/alibaba/alimei/emailcommon/mail/Message;->o()Ljava/lang/String;

    move-result-object v16

    move-wide/from16 v0, p2

    move-object/from16 v2, v16

    invoke-static {v0, v1, v2}, Lair;->a(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v6, v0}, Lcom/alibaba/alimei/restfulapi/data/Mail;->setItemId(Ljava/lang/String;)V

    .line 165
    :try_start_0
    invoke-virtual/range {p4 .. p4}, Lcom/alibaba/alimei/emailcommon/mail/Message;->o()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v16

    move-wide/from16 v0, v16

    invoke-virtual {v6, v0, v1}, Lcom/alibaba/alimei/restfulapi/data/Mail;->setUid(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 172
    :goto_0
    invoke-virtual/range {p4 .. p4}, Lcom/alibaba/alimei/emailcommon/mail/Message;->j()[Lvo;

    move-result-object v17

    .line 4502
    new-instance v16, Lcom/alibaba/alimei/restfulapi/data/AliAddress;

    invoke-direct/range {v16 .. v16}, Lcom/alibaba/alimei/restfulapi/data/AliAddress;-><init>()V

    .line 4503
    if-eqz v17, :cond_b

    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v18, v0

    if-lez v18, :cond_b

    .line 4504
    const/16 v18, 0x0

    aget-object v17, v17, v18

    .line 5075
    move-object/from16 v0, v17

    iget-object v0, v0, Lvo;->a:Ljava/lang/String;

    move-object/from16 v18, v0

    .line 4505
    move-object/from16 v0, v18

    move-object/from16 v1, v16

    iput-object v0, v1, Lcom/alibaba/alimei/restfulapi/data/AliAddress;->address:Ljava/lang/String;

    .line 5085
    move-object/from16 v0, v17

    iget-object v0, v0, Lvo;->b:Ljava/lang/String;

    move-object/from16 v17, v0

    .line 4506
    move-object/from16 v0, v17

    move-object/from16 v1, v16

    iput-object v0, v1, Lcom/alibaba/alimei/restfulapi/data/AliAddress;->alias:Ljava/lang/String;

    .line 172
    :goto_1
    move-object/from16 v0, v16

    invoke-virtual {v6, v0}, Lcom/alibaba/alimei/restfulapi/data/Mail;->setFrom(Lcom/alibaba/alimei/restfulapi/data/AliAddress;)V

    .line 174
    sget-object v16, Lcom/alibaba/alimei/emailcommon/mail/Flag;->SEEN:Lcom/alibaba/alimei/emailcommon/mail/Flag;

    move-object/from16 v0, p4

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/alibaba/alimei/emailcommon/mail/Message;->a(Lcom/alibaba/alimei/emailcommon/mail/Flag;)Z

    move-result v16

    move/from16 v0, v16

    invoke-virtual {v6, v0}, Lcom/alibaba/alimei/restfulapi/data/Mail;->setRead(Z)V

    .line 176
    sget-object v16, Lcom/alibaba/alimei/emailcommon/mail/Flag;->FLAGGED:Lcom/alibaba/alimei/emailcommon/mail/Flag;

    move-object/from16 v0, p4

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/alibaba/alimei/emailcommon/mail/Message;->a(Lcom/alibaba/alimei/emailcommon/mail/Flag;)Z

    move-result v16

    if-eqz v16, :cond_0

    .line 177
    new-instance v15, Ljava/util/ArrayList;

    const/16 v16, 0x1

    invoke-direct/range {v15 .. v16}, Ljava/util/ArrayList;-><init>(I)V

    .line 178
    .local v15, "tags":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string/jumbo v16, "1"

    invoke-interface/range {v15 .. v16}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 179
    invoke-virtual {v6, v15}, Lcom/alibaba/alimei/restfulapi/data/Mail;->setTags(Ljava/util/List;)V

    .line 184
    .end local v15    # "tags":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_0
    :try_start_1
    sget-object v16, Lcom/alibaba/alimei/emailcommon/mail/Message$RecipientType;->TO:Lcom/alibaba/alimei/emailcommon/mail/Message$RecipientType;

    move-object/from16 v0, p4

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/alibaba/alimei/emailcommon/mail/Message;->a(Lcom/alibaba/alimei/emailcommon/mail/Message$RecipientType;)[Lvo;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Lrc;->a([Lvo;)Ljava/util/List;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v6, v0}, Lcom/alibaba/alimei/restfulapi/data/Mail;->setTo(Ljava/util/List;)V
    :try_end_1
    .catch Lcom/alibaba/alimei/emailcommon/mail/MessagingException; {:try_start_1 .. :try_end_1} :catch_1

    .line 193
    :goto_2
    :try_start_2
    sget-object v16, Lcom/alibaba/alimei/emailcommon/mail/Message$RecipientType;->CC:Lcom/alibaba/alimei/emailcommon/mail/Message$RecipientType;

    move-object/from16 v0, p4

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/alibaba/alimei/emailcommon/mail/Message;->a(Lcom/alibaba/alimei/emailcommon/mail/Message$RecipientType;)[Lvo;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Lrc;->a([Lvo;)Ljava/util/List;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v6, v0}, Lcom/alibaba/alimei/restfulapi/data/Mail;->setCc(Ljava/util/List;)V
    :try_end_2
    .catch Lcom/alibaba/alimei/emailcommon/mail/MessagingException; {:try_start_2 .. :try_end_2} :catch_2

    .line 202
    :goto_3
    :try_start_3
    sget-object v16, Lcom/alibaba/alimei/emailcommon/mail/Message$RecipientType;->BCC:Lcom/alibaba/alimei/emailcommon/mail/Message$RecipientType;

    move-object/from16 v0, p4

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/alibaba/alimei/emailcommon/mail/Message;->a(Lcom/alibaba/alimei/emailcommon/mail/Message$RecipientType;)[Lvo;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Lrc;->a([Lvo;)Ljava/util/List;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v6, v0}, Lcom/alibaba/alimei/restfulapi/data/Mail;->setBcc(Ljava/util/List;)V
    :try_end_3
    .catch Lcom/alibaba/alimei/emailcommon/mail/MessagingException; {:try_start_3 .. :try_end_3} :catch_3

    .line 210
    :goto_4
    invoke-virtual/range {p4 .. p4}, Lcom/alibaba/alimei/emailcommon/mail/Message;->i()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v6, v0}, Lcom/alibaba/alimei/restfulapi/data/Mail;->setSubject(Ljava/lang/String;)V

    .line 211
    invoke-virtual/range {p4 .. p4}, Lcom/alibaba/alimei/emailcommon/mail/Message;->h()Ljava/util/Date;

    move-result-object v16

    if-nez v16, :cond_c

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    :goto_5
    move-wide/from16 v0, v16

    invoke-virtual {v6, v0, v1}, Lcom/alibaba/alimei/restfulapi/data/Mail;->setDate(J)V

    .line 213
    const/4 v7, 0x0

    .line 215
    .local v7, "messageId":Ljava/lang/String;
    :try_start_4
    invoke-virtual/range {p4 .. p4}, Lcom/alibaba/alimei/emailcommon/mail/Message;->l()Ljava/lang/String;

    move-result-object v8

    .line 216
    .local v8, "mimemessageId":Ljava/lang/String;
    invoke-static {v8}, Lair;->s(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 217
    invoke-virtual {v6, v7}, Lcom/alibaba/alimei/restfulapi/data/Mail;->setMessageId(Ljava/lang/String;)V
    :try_end_4
    .catch Lcom/alibaba/alimei/emailcommon/mail/MessagingException; {:try_start_4 .. :try_end_4} :catch_4

    .line 223
    .end local v8    # "mimemessageId":Ljava/lang/String;
    :goto_6
    if-eqz p6, :cond_a

    .line 226
    :try_start_5
    invoke-virtual/range {p4 .. p4}, Lcom/alibaba/alimei/emailcommon/mail/Message;->n()[Ljava/lang/String;

    move-result-object v12

    .line 227
    .local v12, "references":[Ljava/lang/String;
    const/4 v14, 0x0

    .line 228
    .local v14, "sessionId":Ljava/lang/String;
    const/4 v10, 0x0

    .line 229
    .local v10, "referenceList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v13, 0x0

    .line 230
    .local v13, "referencesJoin":Ljava/lang/String;
    if-eqz v12, :cond_1

    array-length v0, v12

    move/from16 v16, v0

    if-lez v16, :cond_1

    .line 231
    const-string/jumbo v16, ""

    move-object/from16 v0, v16

    invoke-static {v0, v12}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v13

    .line 232
    invoke-virtual {v6, v13}, Lcom/alibaba/alimei/restfulapi/data/Mail;->setReferences(Ljava/lang/String;)V

    .line 233
    invoke-static {v13}, Lrc;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object v10

    .line 235
    :cond_1
    if-nez v10, :cond_2

    .line 236
    new-instance v10, Ljava/util/ArrayList;

    .end local v10    # "referenceList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 238
    .restart local v10    # "referenceList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_2
    invoke-interface {v10, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 239
    invoke-virtual/range {p6 .. p6}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v16

    invoke-interface/range {v16 .. v16}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v17

    :cond_3
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_6

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/Map$Entry;

    .line 240
    .local v9, "reference":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v5, 0x0

    .line 241
    .local v5, "exist":Z
    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v18

    :cond_4
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_5

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 242
    .local v11, "referenceNew":Ljava/lang/String;
    invoke-interface {v9}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/String;

    move-object/from16 v0, v16

    invoke-virtual {v0, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v16

    if-eqz v16, :cond_4

    .line 243
    invoke-interface {v9}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v14

    .end local v14    # "sessionId":Ljava/lang/String;
    check-cast v14, Ljava/lang/String;

    .line 244
    .restart local v14    # "sessionId":Ljava/lang/String;
    const/4 v5, 0x1

    .line 248
    .end local v11    # "referenceNew":Ljava/lang/String;
    :cond_5
    if-eqz v5, :cond_3

    .line 252
    .end local v5    # "exist":Z
    .end local v9    # "reference":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_6
    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v16

    if-eqz v16, :cond_7

    .line 253
    move-object/from16 v0, p5

    move-wide/from16 v1, p0

    invoke-interface {v0, v1, v2, v10}, Lcom/alibaba/alimei/sdk/datasource/MessageDatasource;->querySessionIdByMessageIds(JLjava/util/List;)Ljava/lang/String;

    move-result-object v14

    .line 255
    :cond_7
    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v16

    if-eqz v16, :cond_8

    .line 257
    invoke-static {v7}, Lair;->t(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 259
    :cond_8
    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v16

    if-nez v16, :cond_9

    .line 260
    invoke-virtual/range {p4 .. p4}, Lcom/alibaba/alimei/emailcommon/mail/Message;->l()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, p6

    move-object/from16 v1, v16

    invoke-virtual {v0, v1, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 262
    :cond_9
    invoke-virtual {v6, v14}, Lcom/alibaba/alimei/restfulapi/data/Mail;->setSessionId(Ljava/lang/String;)V
    :try_end_5
    .catch Lcom/alibaba/alimei/emailcommon/mail/MessagingException; {:try_start_5 .. :try_end_5} :catch_5

    .line 271
    .end local v10    # "referenceList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v12    # "references":[Ljava/lang/String;
    .end local v13    # "referencesJoin":Ljava/lang/String;
    .end local v14    # "sessionId":Ljava/lang/String;
    :cond_a
    :goto_7
    move-object/from16 v0, p4

    invoke-static {v6, v0}, Lrc;->a(Lcom/alibaba/alimei/restfulapi/data/Mail;Lcom/alibaba/alimei/emailcommon/mail/Message;)V

    .line 273
    return-object v6

    .line 166
    .end local v7    # "messageId":Ljava/lang/String;
    :catch_0
    move-exception v4

    .line 167
    .local v4, "e":Ljava/lang/Exception;
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    .line 168
    const-string/jumbo v16, " imap can not get uid "

    invoke-static/range {v16 .. v16}, Lzb;->e(Ljava/lang/String;)I

    .line 169
    const-string/jumbo v16, "ImapModelCOnvertutils"

    move-object/from16 v0, v16

    invoke-static {v0, v4}, Lzb;->d(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 170
    const-string/jumbo v16, "ImapModelCOnvertutils"

    const/16 v17, 0x2

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-virtual {v4}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v19

    aput-object v19, v17, v18

    const/16 v18, 0x1

    const-string/jumbo v19, ", imap can not get uid."

    aput-object v19, v17, v18

    invoke-static/range {v17 .. v17}, Lzc;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Lyp;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 4509
    .end local v4    # "e":Ljava/lang/Exception;
    :cond_b
    const/16 v16, 0x0

    goto/16 :goto_1

    .line 185
    :catch_1
    move-exception v4

    .line 186
    .local v4, "e":Lcom/alibaba/alimei/emailcommon/mail/MessagingException;
    invoke-virtual {v4}, Lcom/alibaba/alimei/emailcommon/mail/MessagingException;->printStackTrace()V

    .line 187
    const-string/jumbo v16, " imap can not get to "

    invoke-static/range {v16 .. v16}, Lzb;->e(Ljava/lang/String;)I

    .line 188
    const-string/jumbo v16, "ImapModelCOnvertutils"

    move-object/from16 v0, v16

    invoke-static {v0, v4}, Lzb;->d(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 189
    const-string/jumbo v16, "ImapModelCOnvertutils"

    const/16 v17, 0x2

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-virtual {v4}, Lcom/alibaba/alimei/emailcommon/mail/MessagingException;->getMessage()Ljava/lang/String;

    move-result-object v19

    aput-object v19, v17, v18

    const/16 v18, 0x1

    const-string/jumbo v19, ", imap can not get to."

    aput-object v19, v17, v18

    invoke-static/range {v17 .. v17}, Lzc;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Lyp;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 194
    .end local v4    # "e":Lcom/alibaba/alimei/emailcommon/mail/MessagingException;
    :catch_2
    move-exception v4

    .line 195
    .restart local v4    # "e":Lcom/alibaba/alimei/emailcommon/mail/MessagingException;
    invoke-virtual {v4}, Lcom/alibaba/alimei/emailcommon/mail/MessagingException;->printStackTrace()V

    .line 196
    const-string/jumbo v16, " imap can not get cc "

    invoke-static/range {v16 .. v16}, Lzb;->e(Ljava/lang/String;)I

    .line 197
    const-string/jumbo v16, "ImapModelCOnvertutils"

    move-object/from16 v0, v16

    invoke-static {v0, v4}, Lzb;->d(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 198
    const-string/jumbo v16, "ImapModelCOnvertutils"

    const/16 v17, 0x2

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-virtual {v4}, Lcom/alibaba/alimei/emailcommon/mail/MessagingException;->getMessage()Ljava/lang/String;

    move-result-object v19

    aput-object v19, v17, v18

    const/16 v18, 0x1

    const-string/jumbo v19, ", imap can not get cc."

    aput-object v19, v17, v18

    invoke-static/range {v17 .. v17}, Lzc;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Lyp;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 203
    .end local v4    # "e":Lcom/alibaba/alimei/emailcommon/mail/MessagingException;
    :catch_3
    move-exception v4

    .line 204
    .restart local v4    # "e":Lcom/alibaba/alimei/emailcommon/mail/MessagingException;
    invoke-virtual {v4}, Lcom/alibaba/alimei/emailcommon/mail/MessagingException;->printStackTrace()V

    .line 205
    const-string/jumbo v16, " imap can not get Bcc "

    invoke-static/range {v16 .. v16}, Lzb;->e(Ljava/lang/String;)I

    .line 206
    const-string/jumbo v16, "ImapModelCOnvertutils"

    move-object/from16 v0, v16

    invoke-static {v0, v4}, Lzb;->d(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 207
    const-string/jumbo v16, "ImapModelCOnvertutils"

    const/16 v17, 0x2

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-virtual {v4}, Lcom/alibaba/alimei/emailcommon/mail/MessagingException;->getMessage()Ljava/lang/String;

    move-result-object v19

    aput-object v19, v17, v18

    const/16 v18, 0x1

    const-string/jumbo v19, ", imap can not get Bcc."

    aput-object v19, v17, v18

    invoke-static/range {v17 .. v17}, Lzc;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Lyp;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4

    .line 211
    .end local v4    # "e":Lcom/alibaba/alimei/emailcommon/mail/MessagingException;
    :cond_c
    invoke-virtual/range {p4 .. p4}, Lcom/alibaba/alimei/emailcommon/mail/Message;->h()Ljava/util/Date;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/util/Date;->getTime()J

    move-result-wide v16

    goto/16 :goto_5

    .line 218
    .restart local v7    # "messageId":Ljava/lang/String;
    :catch_4
    move-exception v4

    .line 219
    .restart local v4    # "e":Lcom/alibaba/alimei/emailcommon/mail/MessagingException;
    invoke-virtual {v4}, Lcom/alibaba/alimei/emailcommon/mail/MessagingException;->printStackTrace()V

    .line 220
    const-string/jumbo v16, "ImapModelCOnvertutils"

    const/16 v17, 0x2

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-virtual {v4}, Lcom/alibaba/alimei/emailcommon/mail/MessagingException;->getMessage()Ljava/lang/String;

    move-result-object v19

    aput-object v19, v17, v18

    const/16 v18, 0x1

    const-string/jumbo v19, ", imap build messageId error."

    aput-object v19, v17, v18

    invoke-static/range {v17 .. v17}, Lzc;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Lyp;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_6

    .line 264
    .end local v4    # "e":Lcom/alibaba/alimei/emailcommon/mail/MessagingException;
    :catch_5
    move-exception v4

    .line 265
    .restart local v4    # "e":Lcom/alibaba/alimei/emailcommon/mail/MessagingException;
    invoke-virtual {v4}, Lcom/alibaba/alimei/emailcommon/mail/MessagingException;->printStackTrace()V

    .line 266
    const-string/jumbo v16, "ImapModelCOnvertutils"

    const/16 v17, 0x2

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-virtual {v4}, Lcom/alibaba/alimei/emailcommon/mail/MessagingException;->getMessage()Ljava/lang/String;

    move-result-object v19

    aput-object v19, v17, v18

    const/16 v18, 0x1

    const-string/jumbo v19, ", imap build reference error."

    aput-object v19, v17, v18

    invoke-static/range {v17 .. v17}, Lzc;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Lyp;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_7
.end method

.method public static a(JJLjava/util/List;Lcom/alibaba/alimei/sdk/datasource/MessageDatasource;)Lcom/alibaba/alimei/restfulapi/response/data/itemssync/SyncMailResult;
    .locals 18
    .param p0, "accountId"    # J
    .param p2, "folderId"    # J
    .param p5, "messageDatasource"    # Lcom/alibaba/alimei/sdk/datasource/MessageDatasource;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/emailcommon/mail/Message;",
            ">;",
            "Lcom/alibaba/alimei/sdk/datasource/MessageDatasource;",
            ")",
            "Lcom/alibaba/alimei/restfulapi/response/data/itemssync/SyncMailResult;"
        }
    .end annotation

    .prologue
    .line 46
    .local p4, "mimeMessages":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/emailcommon/mail/Message;>;"
    new-instance v16, Lcom/alibaba/alimei/restfulapi/response/data/itemssync/SyncMailResult;

    invoke-direct/range {v16 .. v16}, Lcom/alibaba/alimei/restfulapi/response/data/itemssync/SyncMailResult;-><init>()V

    .line 47
    .local v16, "syncMailResult":Lcom/alibaba/alimei/restfulapi/response/data/itemssync/SyncMailResult;
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 48
    .local v12, "mails":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/restfulapi/data/Mail;>;"
    if-eqz p4, :cond_3

    invoke-interface/range {p4 .. p4}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_3

    .line 49
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    .line 50
    .local v8, "messageReferences":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    .line 51
    .local v14, "oldestMailDate":J
    const/4 v13, 0x0

    .line 52
    .local v13, "oldestMail":Lcom/alibaba/alimei/restfulapi/data/Mail;
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_0
    invoke-interface/range {p4 .. p4}, Ljava/util/List;->size()I

    move-result v2

    if-ge v9, v2, :cond_1

    .line 53
    add-int/lit8 v10, v9, 0x1

    .line 54
    .local v10, "index":I
    invoke-interface/range {p4 .. p4}, Ljava/util/List;->size()I

    move-result v2

    sub-int/2addr v2, v10

    move-object/from16 v0, p4

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/alibaba/alimei/emailcommon/mail/Message;

    .local v6, "mimeMessage":Lcom/alibaba/alimei/emailcommon/mail/Message;
    move-wide/from16 v2, p0

    move-wide/from16 v4, p2

    move-object/from16 v7, p5

    .line 55
    invoke-static/range {v2 .. v8}, Lrc;->a(JJLcom/alibaba/alimei/emailcommon/mail/Message;Lcom/alibaba/alimei/sdk/datasource/MessageDatasource;Ljava/util/HashMap;)Lcom/alibaba/alimei/restfulapi/data/Mail;

    move-result-object v11

    .line 56
    .local v11, "mail":Lcom/alibaba/alimei/restfulapi/data/Mail;
    const/4 v2, 0x1

    invoke-virtual {v11, v2}, Lcom/alibaba/alimei/restfulapi/data/Mail;->setAction(I)V

    .line 57
    invoke-interface {v12, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 58
    invoke-virtual {v11}, Lcom/alibaba/alimei/restfulapi/data/Mail;->getDate()J

    move-result-wide v2

    cmp-long v2, v2, v14

    if-gez v2, :cond_0

    .line 59
    invoke-virtual {v11}, Lcom/alibaba/alimei/restfulapi/data/Mail;->getDate()J

    move-result-wide v14

    .line 60
    move-object v13, v11

    .line 52
    :cond_0
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 64
    .end local v6    # "mimeMessage":Lcom/alibaba/alimei/emailcommon/mail/Message;
    .end local v10    # "index":I
    .end local v11    # "mail":Lcom/alibaba/alimei/restfulapi/data/Mail;
    :cond_1
    if-eqz v13, :cond_2

    .line 65
    invoke-virtual {v13}, Lcom/alibaba/alimei/restfulapi/data/Mail;->getItemId()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Lcom/alibaba/alimei/restfulapi/response/data/itemssync/SyncMailResult;->setOldestItemId(Ljava/lang/String;)V

    .line 68
    :cond_2
    move-object/from16 v0, v16

    invoke-virtual {v0, v12}, Lcom/alibaba/alimei/restfulapi/response/data/itemssync/SyncMailResult;->setMails(Ljava/util/List;)V

    .line 70
    .end local v8    # "messageReferences":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v9    # "i":I
    .end local v13    # "oldestMail":Lcom/alibaba/alimei/restfulapi/data/Mail;
    .end local v14    # "oldestMailDate":J
    :cond_3
    return-object v16
.end method

.method public static a(Lcom/alibaba/alimei/restfulapi/response/data/itemssync/SyncMailResult;JJJJ[Lcom/alibaba/alimei/emailcommon/mail/Message;Lcom/alibaba/alimei/sdk/datasource/MessageDatasource;Ljava/util/List;)Lcom/alibaba/alimei/restfulapi/response/data/itemssync/SyncMailResult;
    .locals 31
    .param p0, "syncMailResult"    # Lcom/alibaba/alimei/restfulapi/response/data/itemssync/SyncMailResult;
    .param p1, "accountId"    # J
    .param p3, "folderId"    # J
    .param p5, "startUid"    # J
    .param p7, "endUid"    # J
    .param p9, "mimeMessages"    # [Lcom/alibaba/alimei/emailcommon/mail/Message;
    .param p10, "messageDatasource"    # Lcom/alibaba/alimei/sdk/datasource/MessageDatasource;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/alimei/restfulapi/response/data/itemssync/SyncMailResult;",
            "JJJJ[",
            "Lcom/alibaba/alimei/emailcommon/mail/Message;",
            "Lcom/alibaba/alimei/sdk/datasource/MessageDatasource;",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/emailcommon/mail/Message;",
            ">;)",
            "Lcom/alibaba/alimei/restfulapi/response/data/itemssync/SyncMailResult;"
        }
    .end annotation

    .prologue
    .line 97
    .local p11, "unSyncedMessages":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/emailcommon/mail/Message;>;"
    if-nez p0, :cond_0

    .line 98
    new-instance p0, Lcom/alibaba/alimei/restfulapi/response/data/itemssync/SyncMailResult;

    .end local p0    # "syncMailResult":Lcom/alibaba/alimei/restfulapi/response/data/itemssync/SyncMailResult;
    invoke-direct/range {p0 .. p0}, Lcom/alibaba/alimei/restfulapi/response/data/itemssync/SyncMailResult;-><init>()V

    .line 100
    .restart local p0    # "syncMailResult":Lcom/alibaba/alimei/restfulapi/response/data/itemssync/SyncMailResult;
    :cond_0
    new-instance v22, Ljava/util/ArrayList;

    invoke-direct/range {v22 .. v22}, Ljava/util/ArrayList;-><init>()V

    .line 101
    .local v22, "mails":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/restfulapi/data/Mail;>;"
    if-eqz p9, :cond_7

    .line 103
    new-instance v25, Ljava/util/ArrayList;

    invoke-direct/range {v25 .. v25}, Ljava/util/ArrayList;-><init>()V

    .line 104
    .local v25, "serverUids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v26, Ljava/util/ArrayList;

    invoke-direct/range {v26 .. v26}, Ljava/util/ArrayList;-><init>()V

    .line 105
    .local v26, "serverValidMessage":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/emailcommon/mail/Message;>;"
    const/16 v18, 0x0

    .local v18, "i":I
    :goto_0
    move-object/from16 v0, p9

    array-length v4, v0

    move/from16 v0, v18

    if-ge v0, v4, :cond_2

    .line 106
    aget-object v8, p9, v18

    .line 107
    .local v8, "mimeMessage":Lcom/alibaba/alimei/emailcommon/mail/Message;
    sget-object v4, Lcom/alibaba/alimei/emailcommon/mail/Flag;->DELETED:Lcom/alibaba/alimei/emailcommon/mail/Flag;

    invoke-virtual {v8, v4}, Lcom/alibaba/alimei/emailcommon/mail/Message;->a(Lcom/alibaba/alimei/emailcommon/mail/Flag;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 108
    const/4 v10, 0x0

    move-wide/from16 v4, p1

    move-wide/from16 v6, p3

    move-object/from16 v9, p10

    invoke-static/range {v4 .. v10}, Lrc;->a(JJLcom/alibaba/alimei/emailcommon/mail/Message;Lcom/alibaba/alimei/sdk/datasource/MessageDatasource;Ljava/util/HashMap;)Lcom/alibaba/alimei/restfulapi/data/Mail;

    move-result-object v21

    .line 109
    .local v21, "mail":Lcom/alibaba/alimei/restfulapi/data/Mail;
    const/4 v4, 0x3

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Lcom/alibaba/alimei/restfulapi/data/Mail;->setAction(I)V

    .line 110
    move-object/from16 v0, v22

    move-object/from16 v1, v21

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 105
    .end local v21    # "mail":Lcom/alibaba/alimei/restfulapi/data/Mail;
    :goto_1
    add-int/lit8 v18, v18, 0x1

    goto :goto_0

    .line 112
    :cond_1
    invoke-virtual {v8}, Lcom/alibaba/alimei/emailcommon/mail/Message;->o()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v25

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 113
    move-object/from16 v0, v26

    invoke-interface {v0, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 117
    .end local v8    # "mimeMessage":Lcom/alibaba/alimei/emailcommon/mail/Message;
    :cond_2
    invoke-static/range {p5 .. p8}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v14

    .line 118
    .local v14, "start":J
    invoke-static/range {p5 .. p8}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v16

    .local v16, "end":J
    move-object/from16 v9, p10

    move-wide/from16 v10, p1

    move-wide/from16 v12, p3

    .line 119
    invoke-interface/range {v9 .. v17}, Lcom/alibaba/alimei/sdk/datasource/MessageDatasource;->queryImapMesssageUids(JJJJ)Ljava/util/List;

    move-result-object v19

    .line 121
    .local v19, "localMessageList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    new-instance v20, Ljava/util/HashMap;

    invoke-direct/range {v20 .. v20}, Ljava/util/HashMap;-><init>()V

    .line 123
    .local v20, "localValidList":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz v19, :cond_4

    .line 124
    const/16 v18, 0x0

    :goto_2
    invoke-interface/range {v19 .. v19}, Ljava/util/List;->size()I

    move-result v4

    move/from16 v0, v18

    if-ge v0, v4, :cond_4

    .line 125
    move-object/from16 v0, v19

    move/from16 v1, v18

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v28

    .line 126
    .local v28, "uid":J
    invoke-static/range {v28 .. v29}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v24

    .line 128
    .local v24, "sUid":Ljava/lang/String;
    move-object/from16 v0, v25

    move-object/from16 v1, v24

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 130
    new-instance v21, Lcom/alibaba/alimei/restfulapi/data/Mail;

    invoke-direct/range {v21 .. v21}, Lcom/alibaba/alimei/restfulapi/data/Mail;-><init>()V

    .line 131
    .restart local v21    # "mail":Lcom/alibaba/alimei/restfulapi/data/Mail;
    move-wide/from16 v0, p3

    move-object/from16 v2, v24

    invoke-static {v0, v1, v2}, Lair;->a(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Lcom/alibaba/alimei/restfulapi/data/Mail;->setItemId(Ljava/lang/String;)V

    .line 132
    move-object/from16 v0, v21

    move-wide/from16 v1, v28

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/alimei/restfulapi/data/Mail;->setUid(J)V

    .line 133
    const/4 v4, 0x3

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Lcom/alibaba/alimei/restfulapi/data/Mail;->setAction(I)V

    .line 134
    move-object/from16 v0, v22

    move-object/from16 v1, v21

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 124
    .end local v21    # "mail":Lcom/alibaba/alimei/restfulapi/data/Mail;
    :goto_3
    add-int/lit8 v18, v18, 0x1

    goto :goto_2

    .line 136
    :cond_3
    move-object/from16 v0, v20

    move-object/from16 v1, v24

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 143
    .end local v24    # "sUid":Ljava/lang/String;
    .end local v28    # "uid":J
    :cond_4
    const/16 v18, 0x0

    :goto_4
    invoke-interface/range {v26 .. v26}, Ljava/util/List;->size()I

    move-result v4

    move/from16 v0, v18

    if-ge v0, v4, :cond_6

    .line 144
    move-object/from16 v0, v26

    move/from16 v1, v18

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Lcom/alibaba/alimei/emailcommon/mail/Message;

    .line 145
    .local v23, "message":Lcom/alibaba/alimei/emailcommon/mail/Message;
    if-eqz v23, :cond_5

    invoke-virtual/range {v23 .. v23}, Lcom/alibaba/alimei/emailcommon/mail/Message;->o()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 146
    move-object/from16 v0, p11

    move-object/from16 v1, v23

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 143
    :cond_5
    add-int/lit8 v18, v18, 0x1

    goto :goto_4

    .line 151
    .end local v23    # "message":Lcom/alibaba/alimei/emailcommon/mail/Message;
    :cond_6
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/alibaba/alimei/restfulapi/response/data/itemssync/SyncMailResult;->setMails(Ljava/util/List;)V

    .line 153
    .end local v14    # "start":J
    .end local v16    # "end":J
    .end local v18    # "i":I
    .end local v19    # "localMessageList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    .end local v20    # "localValidList":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v25    # "serverUids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v26    # "serverValidMessage":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/emailcommon/mail/Message;>;"
    :cond_7
    return-object p0
.end method

.method private static a(Ljava/lang/String;)Ljava/util/List;
    .locals 7
    .param p0, "references"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 277
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 294
    :cond_0
    return-object v3

    .line 280
    :cond_1
    const-string/jumbo v4, "<"

    const-string/jumbo v5, ","

    invoke-virtual {p0, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 281
    .local v1, "referenceTemp":Ljava/lang/String;
    const-string/jumbo v4, ">"

    const-string/jumbo v5, ","

    invoke-virtual {v1, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 282
    const-string/jumbo v4, " "

    const-string/jumbo v5, ","

    invoke-virtual {v1, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 283
    const-string/jumbo v4, ","

    invoke-virtual {v1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 284
    .local v2, "tempArray":[Ljava/lang/String;
    if-eqz v2, :cond_0

    array-length v4, v2

    if-lez v4, :cond_0

    .line 285
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 286
    .local v3, "tempList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    array-length v5, v2

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v5, :cond_0

    aget-object v0, v2, v4

    .line 287
    .local v0, "refItem":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 288
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 289
    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 286
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0
.end method

.method private static a([Lvo;)Ljava/util/List;
    .locals 6
    .param p0, "commonAddresses"    # [Lvo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lvo;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/restfulapi/data/AliAddress;",
            ">;"
        }
    .end annotation

    .prologue
    .line 513
    if-eqz p0, :cond_0

    array-length v3, p0

    if-lez v3, :cond_0

    .line 514
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 515
    .local v2, "aliAddresses":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/restfulapi/data/AliAddress;>;"
    array-length v4, p0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v4, :cond_1

    aget-object v0, p0, v3

    .line 516
    .local v0, "address":Lvo;
    new-instance v1, Lcom/alibaba/alimei/restfulapi/data/AliAddress;

    invoke-direct {v1}, Lcom/alibaba/alimei/restfulapi/data/AliAddress;-><init>()V

    .line 10075
    .local v1, "aliAddress":Lcom/alibaba/alimei/restfulapi/data/AliAddress;
    iget-object v5, v0, Lvo;->a:Ljava/lang/String;

    .line 517
    iput-object v5, v1, Lcom/alibaba/alimei/restfulapi/data/AliAddress;->address:Ljava/lang/String;

    .line 10085
    iget-object v5, v0, Lvo;->b:Ljava/lang/String;

    .line 518
    iput-object v5, v1, Lcom/alibaba/alimei/restfulapi/data/AliAddress;->alias:Ljava/lang/String;

    .line 519
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 515
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 523
    .end local v0    # "address":Lvo;
    .end local v1    # "aliAddress":Lcom/alibaba/alimei/restfulapi/data/AliAddress;
    .end local v2    # "aliAddresses":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/restfulapi/data/AliAddress;>;"
    :cond_0
    const/4 v2, 0x0

    :cond_1
    return-object v2
.end method

.method private static a(Lcom/alibaba/alimei/restfulapi/data/Mail;Lcom/alibaba/alimei/emailcommon/mail/Message;)V
    .locals 14
    .param p0, "mail"    # Lcom/alibaba/alimei/restfulapi/data/Mail;
    .param p1, "mimeMessage"    # Lcom/alibaba/alimei/emailcommon/mail/Message;

    .prologue
    const/4 v13, 0x2

    const/4 v12, 0x1

    const/4 v11, 0x0

    const/4 v6, 0x0

    .line 306
    :try_start_0
    invoke-static {}, Lafv;->b()Landroid/content/Context;

    move-result-object v7

    .line 305
    invoke-static {v7, p1}, Lvj;->a(Landroid/content/Context;Lcom/alibaba/alimei/emailcommon/mail/Message;)Lvj$i;

    move-result-object v3

    .line 308
    .local v3, "container":Lvj$i;
    iget-object v7, v3, Lvj$i;->d:Lvj$e;

    if-nez v7, :cond_0

    move-object v7, v6

    :goto_0
    invoke-virtual {p0, v7}, Lcom/alibaba/alimei/restfulapi/data/Mail;->setHtmlPartId(Ljava/lang/String;)V

    .line 309
    iget-object v7, v3, Lvj$i;->b:Lvj$e;

    if-nez v7, :cond_1

    move-object v7, v6

    :goto_1
    invoke-virtual {p0, v7}, Lcom/alibaba/alimei/restfulapi/data/Mail;->setTextPartId(Ljava/lang/String;)V

    .line 311
    iget-object v7, v3, Lvj$i;->d:Lvj$e;

    if-nez v7, :cond_2

    move-object v7, v6

    :goto_2
    invoke-virtual {p0, v7}, Lcom/alibaba/alimei/restfulapi/data/Mail;->setHtmlEncoding(Ljava/lang/String;)V

    .line 312
    iget-object v7, v3, Lvj$i;->b:Lvj$e;

    if-nez v7, :cond_3

    move-object v7, v6

    :goto_3
    invoke-virtual {p0, v7}, Lcom/alibaba/alimei/restfulapi/data/Mail;->setTextEncoding(Ljava/lang/String;)V

    .line 314
    iget-object v7, v3, Lvj$i;->d:Lvj$e;

    if-nez v7, :cond_4

    move-object v7, v6

    :goto_4
    invoke-virtual {p0, v7}, Lcom/alibaba/alimei/restfulapi/data/Mail;->setHtmlContentType(Ljava/lang/String;)V

    .line 315
    iget-object v7, v3, Lvj$i;->b:Lvj$e;

    if-nez v7, :cond_5

    move-object v7, v6

    :goto_5
    invoke-virtual {p0, v7}, Lcom/alibaba/alimei/restfulapi/data/Mail;->setTextContentType(Ljava/lang/String;)V

    .line 317
    iget-object v7, v3, Lvj$i;->f:Lvj$e;

    if-nez v7, :cond_6

    move-object v7, v6

    :goto_6
    invoke-virtual {p0, v7}, Lcom/alibaba/alimei/restfulapi/data/Mail;->setCalendarPartId(Ljava/lang/String;)V

    .line 318
    iget-object v7, v3, Lvj$i;->f:Lvj$e;

    if-nez v7, :cond_7

    move-object v7, v6

    :goto_7
    invoke-virtual {p0, v7}, Lcom/alibaba/alimei/restfulapi/data/Mail;->setCalendarEncoding(Ljava/lang/String;)V

    .line 319
    iget-object v7, v3, Lvj$i;->f:Lvj$e;

    if-nez v7, :cond_8

    :goto_8
    invoke-virtual {p0, v6}, Lcom/alibaba/alimei/restfulapi/data/Mail;->setCalendarContentType(Ljava/lang/String;)V

    .line 321
    const-string/jumbo v6, "ImapModelCOnvertutils"

    const/16 v7, 0x8

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    const-string/jumbo v9, "mail(uid:"

    aput-object v9, v7, v8

    const/4 v8, 0x1

    invoke-virtual {p1}, Lcom/alibaba/alimei/emailcommon/mail/Message;->o()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x2

    const-string/jumbo v9, ") buildAttachmentPart html:"

    aput-object v9, v7, v8

    const/4 v8, 0x3

    invoke-virtual {p0}, Lcom/alibaba/alimei/restfulapi/data/Mail;->getHtmlPartId()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x4

    const-string/jumbo v9, " text: "

    aput-object v9, v7, v8

    const/4 v8, 0x5

    .line 322
    invoke-virtual {p0}, Lcom/alibaba/alimei/restfulapi/data/Mail;->getTextPartId()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x6

    const-string/jumbo v9, " calendar: "

    aput-object v9, v7, v8

    const/4 v8, 0x7

    .line 323
    invoke-virtual {p0}, Lcom/alibaba/alimei/restfulapi/data/Mail;->getCalendarPartId()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    .line 321
    invoke-static {v7}, Lzc;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lyx;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 325
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 326
    .local v5, "resourceList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/restfulapi/data/Attach;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 327
    .local v0, "attachList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/restfulapi/data/Attach;>;"
    iget-object v2, v3, Lvj$i;->g:Ljava/util/List;

    .line 328
    .local v2, "attachments":Ljava/util/List;, "Ljava/util/List<Lvs;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_9
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_9

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lvs;

    .line 329
    .local v1, "attachment":Lvs;
    invoke-static {v1, v5, v0}, Lrc;->a(Lvs;Ljava/util/List;Ljava/util/List;)Lcom/alibaba/alimei/restfulapi/data/Attach;
    :try_end_0
    .catch Lcom/alibaba/alimei/emailcommon/mail/MessagingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_9

    .line 333
    .end local v0    # "attachList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/restfulapi/data/Attach;>;"
    .end local v1    # "attachment":Lvs;
    .end local v2    # "attachments":Ljava/util/List;, "Ljava/util/List<Lvs;>;"
    .end local v3    # "container":Lvj$i;
    .end local v5    # "resourceList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/restfulapi/data/Attach;>;"
    :catch_0
    move-exception v4

    .line 334
    .local v4, "e":Lcom/alibaba/alimei/emailcommon/mail/MessagingException;
    const-string/jumbo v6, "buildAttachmentPart"

    const-string/jumbo v7, ""

    const-string/jumbo v8, ""

    invoke-virtual {v4}, Lcom/alibaba/alimei/emailcommon/mail/MessagingException;->getError()Lcom/alibaba/alimei/framework/SDKError;

    move-result-object v9

    invoke-virtual {v9}, Lcom/alibaba/alimei/framework/SDKError;->getErrorCode()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4}, Lcom/alibaba/alimei/emailcommon/mail/MessagingException;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-static {v6, v7, v8, v9, v10}, Lyp;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 335
    const-string/jumbo v6, "ImapModelCOnvertutils"

    new-array v7, v13, [Ljava/lang/String;

    invoke-virtual {v4}, Lcom/alibaba/alimei/emailcommon/mail/MessagingException;->getMessage()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v11

    const-string/jumbo v8, ", imap build attachment part error."

    aput-object v8, v7, v12

    invoke-static {v7}, Lzc;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lyp;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 336
    invoke-virtual {v4}, Lcom/alibaba/alimei/emailcommon/mail/MessagingException;->printStackTrace()V

    .line 338
    .end local v4    # "e":Lcom/alibaba/alimei/emailcommon/mail/MessagingException;
    :goto_a
    return-void

    .line 308
    .restart local v3    # "container":Lvj$i;
    :cond_0
    :try_start_1
    iget-object v7, v3, Lvj$i;->d:Lvj$e;

    .line 5932
    iget-object v7, v7, Lvj$e;->a:Ljava/lang/String;

    goto/16 :goto_0

    .line 309
    :cond_1
    iget-object v7, v3, Lvj$i;->b:Lvj$e;

    .line 6932
    iget-object v7, v7, Lvj$e;->a:Ljava/lang/String;

    goto/16 :goto_1

    .line 311
    :cond_2
    iget-object v7, v3, Lvj$i;->d:Lvj$e;

    .line 6940
    iget-object v7, v7, Lvj$e;->b:Ljava/lang/String;

    goto/16 :goto_2

    .line 312
    :cond_3
    iget-object v7, v3, Lvj$i;->b:Lvj$e;

    .line 7940
    iget-object v7, v7, Lvj$e;->b:Ljava/lang/String;

    goto/16 :goto_3

    .line 314
    :cond_4
    iget-object v7, v3, Lvj$i;->d:Lvj$e;

    .line 7948
    iget-object v7, v7, Lvj$e;->c:Ljava/lang/String;

    goto/16 :goto_4

    .line 315
    :cond_5
    iget-object v7, v3, Lvj$i;->b:Lvj$e;

    .line 8948
    iget-object v7, v7, Lvj$e;->c:Ljava/lang/String;

    goto/16 :goto_5

    .line 317
    :cond_6
    iget-object v7, v3, Lvj$i;->f:Lvj$e;

    .line 9932
    iget-object v7, v7, Lvj$e;->a:Ljava/lang/String;

    goto/16 :goto_6

    .line 318
    :cond_7
    iget-object v7, v3, Lvj$i;->f:Lvj$e;

    .line 9940
    iget-object v7, v7, Lvj$e;->b:Ljava/lang/String;

    goto/16 :goto_7

    .line 319
    :cond_8
    iget-object v6, v3, Lvj$i;->f:Lvj$e;

    .line 9948
    iget-object v6, v6, Lvj$e;->c:Ljava/lang/String;

    goto/16 :goto_8

    .line 331
    .restart local v0    # "attachList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/restfulapi/data/Attach;>;"
    .restart local v2    # "attachments":Ljava/util/List;, "Ljava/util/List<Lvs;>;"
    .restart local v5    # "resourceList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/restfulapi/data/Attach;>;"
    :cond_9
    invoke-virtual {p0, v0}, Lcom/alibaba/alimei/restfulapi/data/Mail;->setAttachList(Ljava/util/List;)V

    .line 332
    invoke-virtual {p0, v5}, Lcom/alibaba/alimei/restfulapi/data/Mail;->setResourceList(Ljava/util/List;)V
    :try_end_1
    .catch Lcom/alibaba/alimei/emailcommon/mail/MessagingException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_a
.end method
