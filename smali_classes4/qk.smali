.class public abstract Lqk;
.super Lql;
.source "AbsSaveDraftOrSendTask.java"


# instance fields
.field protected d:J

.field protected e:J

.field protected f:J

.field protected g:Z

.field protected h:Lcom/alibaba/alimei/sdk/model/MailSnippetModel;

.field protected i:Ljava/lang/String;

.field protected j:Ljava/lang/String;

.field protected k:Lcom/alibaba/alimei/adpater/message/QuotedTextMode;

.field protected l:Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;

.field protected m:Lyc;

.field protected n:Z

.field protected o:Lcom/alibaba/alimei/sdk/db/mail/entry/Message;


# direct methods
.method protected constructor <init>()V
    .locals 1

    .prologue
    .line 77
    invoke-direct {p0}, Lql;-><init>()V

    .line 78
    sget-object v0, Lcom/alibaba/alimei/adpater/message/QuotedTextMode;->NONE:Lcom/alibaba/alimei/adpater/message/QuotedTextMode;

    iput-object v0, p0, Lqk;->k:Lcom/alibaba/alimei/adpater/message/QuotedTextMode;

    .line 79
    const/4 v0, 0x1

    iput-boolean v0, p0, Lqk;->n:Z

    .line 80
    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;JJJZ)V
    .locals 4
    .param p1, "accountName"    # Ljava/lang/String;
    .param p2, "accountId"    # J
    .param p4, "messageId"    # J
    .param p6, "sourceId"    # J
    .param p8, "isDraft"    # Z

    .prologue
    .line 83
    invoke-direct {p0, p1, p4, p5}, Lql;-><init>(Ljava/lang/String;J)V

    .line 1050
    iput-wide p2, p0, Lyr;->x:J

    .line 85
    iput-wide p4, p0, Lqk;->d:J

    .line 86
    iput-wide p2, p0, Lqk;->e:J

    .line 87
    iput-wide p6, p0, Lqk;->f:J

    .line 88
    iput-boolean p8, p0, Lqk;->g:Z

    .line 89
    sget-object v0, Lcom/alibaba/alimei/adpater/message/QuotedTextMode;->NONE:Lcom/alibaba/alimei/adpater/message/QuotedTextMode;

    iput-object v0, p0, Lqk;->k:Lcom/alibaba/alimei/adpater/message/QuotedTextMode;

    .line 90
    const/4 v0, 0x0

    iput-boolean v0, p0, Lqk;->n:Z

    .line 91
    const-string/jumbo v0, "AbsSaveDraftOrSendTask"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "==AbsSaveDraftOrSendTask==, messageId:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lyx;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    return-void
.end method

.method private a(ZLcom/alibaba/alimei/sdk/db/mail/entry/Message;Ljava/util/List;Lcom/alibaba/alimei/sdk/db/mail/entry/Body;Lcom/alibaba/alimei/emailcommon/Account;)Lcom/alibaba/alimei/adpater/message/MessageBuilder;
    .locals 15
    .param p1, "isDraft"    # Z
    .param p2, "message"    # Lcom/alibaba/alimei/sdk/db/mail/entry/Message;
    .param p4, "body"    # Lcom/alibaba/alimei/sdk/db/mail/entry/Body;
    .param p5, "account"    # Lcom/alibaba/alimei/emailcommon/Account;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lcom/alibaba/alimei/sdk/db/mail/entry/Message;",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/sdk/db/mail/entry/Attachment;",
            ">;",
            "Lcom/alibaba/alimei/sdk/db/mail/entry/Body;",
            "Lcom/alibaba/alimei/emailcommon/Account;",
            ")",
            "Lcom/alibaba/alimei/adpater/message/MessageBuilder;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v14

    invoke-static {v14}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 293
    .local p3, "attachments":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/sdk/db/mail/entry/Attachment;>;"
    const-string/jumbo v8, "AbsSaveDraftOrSendTask"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string/jumbo v10, "createMsgBuilder msgId:"

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v10, p0, Lqk;->d:J

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lyx;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 294
    const-string/jumbo v2, ""

    .line 295
    .local v2, "bodyHtml":Ljava/lang/String;
    const/4 v6, 0x0

    .line 296
    .local v6, "isHtmlFormat":Z
    if-eqz p4, :cond_4

    .line 298
    move-object/from16 v0, p4

    iget-object v8, v0, Lcom/alibaba/alimei/sdk/db/mail/entry/Body;->mHtmlContent:Ljava/lang/String;

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_2

    .line 299
    move-object/from16 v0, p4

    iget-object v2, v0, Lcom/alibaba/alimei/sdk/db/mail/entry/Body;->mHtmlContent:Ljava/lang/String;

    .line 300
    const/4 v6, 0x1

    .line 309
    :goto_0
    :try_start_0
    new-instance v3, Lcom/alibaba/alimei/adpater/message/SimpleMessageBuilder;

    invoke-static {}, Lafv;->b()Landroid/content/Context;

    move-result-object v8

    invoke-direct {v3, v8}, Lcom/alibaba/alimei/adpater/message/SimpleMessageBuilder;-><init>(Landroid/content/Context;)V

    .line 310
    .local v3, "builder":Lcom/alibaba/alimei/adpater/message/MessageBuilder;
    move-object/from16 v0, p2

    iget-object v8, v0, Lcom/alibaba/alimei/sdk/db/mail/entry/Message;->mSubject:Ljava/lang/String;

    if-nez v8, :cond_5

    const-string/jumbo v8, ""

    .line 15320
    :goto_1
    iput-object v8, v3, Lcom/alibaba/alimei/adpater/message/MessageBuilder;->a:Ljava/lang/String;

    .line 310
    move-object/from16 v0, p2

    iget-object v8, v0, Lcom/alibaba/alimei/sdk/db/mail/entry/Message;->mTo:Ljava/lang/String;

    .line 311
    invoke-static {v8}, Lqk;->b(Ljava/lang/String;)[Lvo;

    move-result-object v8

    .line 15325
    iput-object v8, v3, Lcom/alibaba/alimei/adpater/message/MessageBuilder;->b:[Lvo;

    .line 311
    move-object/from16 v0, p2

    iget-object v8, v0, Lcom/alibaba/alimei/sdk/db/mail/entry/Message;->mCc:Ljava/lang/String;

    .line 312
    invoke-static {v8}, Lqk;->b(Ljava/lang/String;)[Lvo;

    move-result-object v8

    .line 15330
    iput-object v8, v3, Lcom/alibaba/alimei/adpater/message/MessageBuilder;->c:[Lvo;

    .line 312
    move-object/from16 v0, p2

    iget-object v8, v0, Lcom/alibaba/alimei/sdk/db/mail/entry/Message;->mBcc:Ljava/lang/String;

    .line 313
    invoke-static {v8}, Lqk;->b(Ljava/lang/String;)[Lvo;

    move-result-object v8

    .line 15335
    iput-object v8, v3, Lcom/alibaba/alimei/adpater/message/MessageBuilder;->d:[Lvo;

    .line 313
    iget-object v8, p0, Lqk;->i:Ljava/lang/String;

    .line 15340
    iput-object v8, v3, Lcom/alibaba/alimei/adpater/message/MessageBuilder;->e:Ljava/lang/String;

    .line 314
    iget-object v8, p0, Lqk;->j:Ljava/lang/String;

    .line 15345
    iput-object v8, v3, Lcom/alibaba/alimei/adpater/message/MessageBuilder;->f:Ljava/lang/String;

    .line 15350
    const/4 v8, 0x0

    iput-boolean v8, v3, Lcom/alibaba/alimei/adpater/message/MessageBuilder;->g:Z

    .line 316
    move-object/from16 v0, p2

    iget-object v8, v0, Lcom/alibaba/alimei/sdk/db/mail/entry/Message;->mFrom:Ljava/lang/String;

    .line 317
    move-object/from16 v0, p5

    invoke-direct {p0, v0, v8}, Lqk;->a(Lcom/alibaba/alimei/emailcommon/Account;Ljava/lang/String;)Lcom/alibaba/alimei/emailcommon/Identity;

    move-result-object v8

    .line 15355
    iput-object v8, v3, Lcom/alibaba/alimei/adpater/message/MessageBuilder;->h:Lcom/alibaba/alimei/emailcommon/Identity;

    .line 16041
    move-object/from16 v0, p5

    iget-object v8, v0, Lcom/alibaba/alimei/emailcommon/Account;->d:Lcom/alibaba/alimei/emailcommon/Account$MessageFormat;

    .line 16360
    iput-object v8, v3, Lcom/alibaba/alimei/adpater/message/MessageBuilder;->i:Lcom/alibaba/alimei/emailcommon/Account$MessageFormat;

    .line 16365
    iput-object v2, v3, Lcom/alibaba/alimei/adpater/message/MessageBuilder;->j:Ljava/lang/String;

    .line 16370
    iput-boolean v6, v3, Lcom/alibaba/alimei/adpater/message/MessageBuilder;->k:Z

    .line 321
    invoke-static/range {p3 .. p3}, Lqk;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v8

    .line 16375
    iput-object v8, v3, Lcom/alibaba/alimei/adpater/message/MessageBuilder;->l:Ljava/util/List;

    .line 321
    const-string/jumbo v8, ""

    .line 16380
    iput-object v8, v3, Lcom/alibaba/alimei/adpater/message/MessageBuilder;->m:Ljava/lang/String;

    .line 323
    invoke-virtual/range {p5 .. p5}, Lcom/alibaba/alimei/emailcommon/Account;->k()Z

    move-result v8

    .line 16410
    iput-boolean v8, v3, Lcom/alibaba/alimei/adpater/message/MessageBuilder;->s:Z

    .line 16415
    const/4 v8, 0x0

    iput-boolean v8, v3, Lcom/alibaba/alimei/adpater/message/MessageBuilder;->t:Z

    .line 16420
    const/4 v8, 0x0

    iput-boolean v8, v3, Lcom/alibaba/alimei/adpater/message/MessageBuilder;->u:Z

    .line 16425
    const/4 v8, 0x0

    iput v8, v3, Lcom/alibaba/alimei/adpater/message/MessageBuilder;->v:I

    .line 16430
    const/4 v8, 0x0

    iput-object v8, v3, Lcom/alibaba/alimei/adpater/message/MessageBuilder;->w:Lcom/alibaba/alimei/emailcommon/mail/MessageReference;

    .line 16435
    move/from16 v0, p1

    iput-boolean v0, v3, Lcom/alibaba/alimei/adpater/message/MessageBuilder;->x:Z

    .line 330
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 332
    .local v7, "stringBuilder":Ljava/lang/StringBuilder;
    if-eqz p4, :cond_0

    move-object/from16 v0, p4

    iget-object v8, v0, Lcom/alibaba/alimei/sdk/db/mail/entry/Body;->mHtmlReply:Ljava/lang/String;

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_0

    iget-object v8, p0, Lqk;->o:Lcom/alibaba/alimei/sdk/db/mail/entry/Message;

    if-eqz v8, :cond_0

    .line 333
    iget-object v8, p0, Lqk;->o:Lcom/alibaba/alimei/sdk/db/mail/entry/Message;

    move-object/from16 v0, p4

    iget-object v9, v0, Lcom/alibaba/alimei/sdk/db/mail/entry/Body;->mHtmlReply:Ljava/lang/String;

    .line 17424
    if-nez v8, :cond_6

    .line 17425
    const/4 v8, 0x0

    .line 333
    :goto_2
    move-object/from16 v0, p4

    iput-object v8, v0, Lcom/alibaba/alimei/sdk/db/mail/entry/Body;->mHtmlReply:Ljava/lang/String;

    .line 334
    move-object/from16 v0, p4

    iget-object v8, v0, Lcom/alibaba/alimei/sdk/db/mail/entry/Body;->mHtmlReply:Ljava/lang/String;

    if-nez v8, :cond_9

    const-string/jumbo v8, ""

    :goto_3
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 336
    :cond_0
    new-instance v5, Lcom/alibaba/alimei/adpater/message/InsertableHtmlContent;

    invoke-direct {v5}, Lcom/alibaba/alimei/adpater/message/InsertableHtmlContent;-><init>()V

    .line 337
    .local v5, "insertableHtmlContent":Lcom/alibaba/alimei/adpater/message/InsertableHtmlContent;
    invoke-virtual {v5, v7}, Lcom/alibaba/alimei/adpater/message/InsertableHtmlContent;->setQuotedContent(Ljava/lang/StringBuilder;)V

    .line 338
    sget-object v8, Lcom/alibaba/alimei/emailcommon/Account$QuoteStyle;->PREFIX:Lcom/alibaba/alimei/emailcommon/Account$QuoteStyle;

    .line 18385
    iput-object v8, v3, Lcom/alibaba/alimei/adpater/message/MessageBuilder;->n:Lcom/alibaba/alimei/emailcommon/Account$QuoteStyle;

    .line 338
    iget-object v8, p0, Lqk;->k:Lcom/alibaba/alimei/adpater/message/QuotedTextMode;

    .line 18390
    iput-object v8, v3, Lcom/alibaba/alimei/adpater/message/MessageBuilder;->o:Lcom/alibaba/alimei/adpater/message/QuotedTextMode;

    .line 339
    if-eqz p4, :cond_1

    .line 340
    move-object/from16 v0, p4

    iget-object v8, v0, Lcom/alibaba/alimei/sdk/db/mail/entry/Body;->mIntroText:Ljava/lang/String;

    if-nez v8, :cond_a

    const-string/jumbo v8, ""

    .line 18395
    :goto_4
    iput-object v8, v3, Lcom/alibaba/alimei/adpater/message/MessageBuilder;->p:Ljava/lang/String;

    .line 18400
    :cond_1
    iput-object v5, v3, Lcom/alibaba/alimei/adpater/message/MessageBuilder;->q:Lcom/alibaba/alimei/adpater/message/InsertableHtmlContent;

    .line 18405
    const/4 v8, 0x0

    iput-boolean v8, v3, Lcom/alibaba/alimei/adpater/message/MessageBuilder;->r:Z

    .line 343
    const-string/jumbo v8, "AbsSaveDraftOrSendTask"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string/jumbo v10, "createMsgBuilder finish msgId:"

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v10, p0, Lqk;->d:J

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lyx;->b(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 347
    .end local v3    # "builder":Lcom/alibaba/alimei/adpater/message/MessageBuilder;
    .end local v5    # "insertableHtmlContent":Lcom/alibaba/alimei/adpater/message/InsertableHtmlContent;
    .end local v7    # "stringBuilder":Ljava/lang/StringBuilder;
    :goto_5
    return-object v3

    .line 302
    :cond_2
    move-object/from16 v0, p4

    iget-object v8, v0, Lcom/alibaba/alimei/sdk/db/mail/entry/Body;->mTextContent:Ljava/lang/String;

    if-nez v8, :cond_3

    const-string/jumbo v2, ""

    .line 303
    :goto_6
    const/4 v6, 0x0

    goto/16 :goto_0

    .line 302
    :cond_3
    move-object/from16 v0, p4

    iget-object v2, v0, Lcom/alibaba/alimei/sdk/db/mail/entry/Body;->mTextContent:Ljava/lang/String;

    goto :goto_6

    .line 306
    :cond_4
    const-string/jumbo v8, "AbsSaveDraftOrSendTask"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string/jumbo v10, "createMsgBuilder body null, msgId:"

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v10, p0, Lqk;->d:J

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lyx;->a(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 310
    .restart local v3    # "builder":Lcom/alibaba/alimei/adpater/message/MessageBuilder;
    :cond_5
    :try_start_1
    move-object/from16 v0, p2

    iget-object v8, v0, Lcom/alibaba/alimei/sdk/db/mail/entry/Message;->mSubject:Ljava/lang/String;

    goto/16 :goto_1

    .line 17427
    .restart local v7    # "stringBuilder":Ljava/lang/StringBuilder;
    :cond_6
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 17428
    const-string/jumbo v11, "<blockquote>------------------------------------------------------------------<br><div style=\"font-size: 12px;background:#F5F5F5;padding:8px;\"><b>\u53d1\u4ef6\u4eba:</b>&nbsp;&nbsp;"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17429
    iget-object v11, v8, Lcom/alibaba/alimei/sdk/db/mail/entry/Message;->mFrom:Ljava/lang/String;

    invoke-static {v11}, Lqk;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17430
    const-string/jumbo v11, "<br><b>\u53d1\u9001\u65f6\u95f4:</b>&nbsp;&nbsp;"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17431
    iget-wide v12, v8, Lcom/alibaba/alimei/sdk/db/mail/entry/Message;->mTimeStamp:J

    .line 17476
    new-instance v11, Ljava/text/SimpleDateFormat;

    const-string/jumbo v14, "yyyy-MM-dd HH:mm"

    invoke-direct {v11, v14}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 17477
    new-instance v14, Ljava/util/Date;

    invoke-direct {v14, v12, v13}, Ljava/util/Date;-><init>(J)V

    .line 17478
    invoke-virtual {v11, v14}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v11

    .line 17431
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17432
    iget-object v11, v8, Lcom/alibaba/alimei/sdk/db/mail/entry/Message;->mTo:Ljava/lang/String;

    invoke-static {v11}, Lqk;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 17433
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_7

    .line 17434
    const-string/jumbo v12, "<br><b>\u6536\u4ef6\u4eba:</b>&nbsp;&nbsp;"

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17435
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17438
    :cond_7
    iget-object v11, v8, Lcom/alibaba/alimei/sdk/db/mail/entry/Message;->mCc:Ljava/lang/String;

    invoke-static {v11}, Lqk;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 17439
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_8

    .line 17440
    const-string/jumbo v12, "<br><b>\u6284&nbsp;&nbsp;&nbsp;&nbsp;\u9001:</b>&nbsp;&nbsp;"

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17441
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17444
    :cond_8
    const-string/jumbo v11, "<br><b>\u4e3b&nbsp;&nbsp;&nbsp;&nbsp;\u9898:</b>&nbsp;&nbsp;"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17445
    iget-object v8, v8, Lcom/alibaba/alimei/sdk/db/mail/entry/Message;->mSubject:Ljava/lang/String;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17446
    const-string/jumbo v8, "</div><br><br>"

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17448
    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17449
    const-string/jumbo v8, "</blockquote>"

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17450
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    goto/16 :goto_2

    .line 334
    :cond_9
    move-object/from16 v0, p4

    iget-object v8, v0, Lcom/alibaba/alimei/sdk/db/mail/entry/Body;->mHtmlReply:Ljava/lang/String;

    goto/16 :goto_3

    .line 340
    .restart local v5    # "insertableHtmlContent":Lcom/alibaba/alimei/adpater/message/InsertableHtmlContent;
    :cond_a
    move-object/from16 v0, p4

    iget-object v8, v0, Lcom/alibaba/alimei/sdk/db/mail/entry/Body;->mIntroText:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_4

    .line 345
    .end local v3    # "builder":Lcom/alibaba/alimei/adpater/message/MessageBuilder;
    .end local v5    # "insertableHtmlContent":Lcom/alibaba/alimei/adpater/message/InsertableHtmlContent;
    .end local v7    # "stringBuilder":Ljava/lang/StringBuilder;
    :catch_0
    move-exception v4

    .line 346
    .local v4, "e":Ljava/lang/Exception;
    const-string/jumbo v8, "AbsSaveDraftOrSendTask"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string/jumbo v10, "createMsgBuilder err "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v4}, Lyy;->a(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9, v4}, Lyx;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 347
    const/4 v3, 0x0

    goto/16 :goto_5
.end method

.method private a(Lcom/alibaba/alimei/emailcommon/Account;Ljava/lang/String;)Lcom/alibaba/alimei/emailcommon/Identity;
    .locals 5
    .param p1, "account"    # Lcom/alibaba/alimei/emailcommon/Account;
    .param p2, "from"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v3, 0x0

    .line 367
    new-instance v2, Lcom/alibaba/alimei/emailcommon/Identity;

    invoke-direct {v2}, Lcom/alibaba/alimei/emailcommon/Identity;-><init>()V

    .line 368
    .local v2, "identity":Lcom/alibaba/alimei/emailcommon/Identity;
    invoke-virtual {v2, v3}, Lcom/alibaba/alimei/emailcommon/Identity;->setSignatureUse(Z)V

    .line 370
    :try_start_0
    invoke-static {p2}, Lqk;->b(Ljava/lang/String;)[Lvo;

    move-result-object v0

    .line 371
    .local v0, "addresses":[Lvo;
    if-eqz v0, :cond_0

    array-length v3, v0

    if-lez v3, :cond_0

    .line 372
    const/4 v3, 0x0

    aget-object v3, v0, v3

    .line 19075
    iget-object v3, v3, Lvo;->a:Ljava/lang/String;

    .line 372
    invoke-virtual {v2, v3}, Lcom/alibaba/alimei/emailcommon/Identity;->setEmail(Ljava/lang/String;)V

    .line 373
    const/4 v3, 0x0

    aget-object v3, v0, v3

    .line 19085
    iget-object v3, v3, Lvo;->b:Ljava/lang/String;

    .line 373
    invoke-virtual {v2, v3}, Lcom/alibaba/alimei/emailcommon/Identity;->setName(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 381
    .end local v0    # "addresses":[Lvo;
    :goto_0
    invoke-virtual {p1}, Lcom/alibaba/alimei/emailcommon/Account;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/alibaba/alimei/emailcommon/Identity;->setDescription(Ljava/lang/String;)V

    .line 382
    return-object v2

    .line 375
    .restart local v0    # "addresses":[Lvo;
    :cond_0
    :try_start_1
    invoke-virtual {p1}, Lcom/alibaba/alimei/emailcommon/Account;->e()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "UTF-8"

    invoke-static {v3, v4}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/alibaba/alimei/emailcommon/Identity;->setEmail(Ljava/lang/String;)V

    .line 376
    invoke-virtual {p1}, Lcom/alibaba/alimei/emailcommon/Account;->d()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "UTF-8"

    invoke-static {v3, v4}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/alibaba/alimei/emailcommon/Identity;->setName(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 378
    .end local v0    # "addresses":[Lvo;
    :catch_0
    move-exception v1

    .line 379
    .local v1, "e":Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v1}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_0
.end method

.method private static a(Ljava/util/List;)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/sdk/db/mail/entry/Attachment;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/adpater/message/Attachment;",
            ">;"
        }
    .end annotation

    .prologue
    .line 386
    .local p0, "attachments":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/sdk/db/mail/entry/Attachment;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 387
    .local v2, "attachmentList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/adpater/message/Attachment;>;"
    if-eqz p0, :cond_4

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_4

    .line 388
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/alimei/sdk/db/mail/entry/Attachment;

    .line 389
    .local v1, "attachment":Lcom/alibaba/alimei/sdk/db/mail/entry/Attachment;
    if-eqz v1, :cond_0

    .line 392
    new-instance v0, Lcom/alibaba/alimei/adpater/message/Attachment;

    invoke-direct {v0}, Lcom/alibaba/alimei/adpater/message/Attachment;-><init>()V

    .line 394
    .local v0, "attach":Lcom/alibaba/alimei/adpater/message/Attachment;
    :try_start_0
    iget-object v4, v1, Lcom/alibaba/alimei/sdk/db/mail/entry/Attachment;->mContentUri:Ljava/lang/String;

    if-nez v4, :cond_2

    .line 395
    const-string/jumbo v6, "AbsSaveDraftOrSendTask"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "createAttachmentList uri is null, "

    invoke-direct {v7, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, v1, Lcom/alibaba/alimei/sdk/db/mail/entry/Attachment;->mFileName:Ljava/lang/String;

    if-nez v4, :cond_1

    const/4 v4, 0x0

    :goto_1
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Lyx;->b(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 415
    :catch_0
    move-exception v3

    .line 416
    .local v3, "e":Ljava/lang/Exception;
    const-string/jumbo v4, "AbsSaveDraftOrSendTask"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "createAttachmentList err uri:"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v7, v1, Lcom/alibaba/alimei/sdk/db/mail/entry/Attachment;->mContentUri:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v3}, Lyy;->a(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6, v3}, Lyx;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 395
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_1
    :try_start_1
    iget-object v4, v1, Lcom/alibaba/alimei/sdk/db/mail/entry/Attachment;->mFileName:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    goto :goto_1

    .line 398
    :cond_2
    iget-object v4, v1, Lcom/alibaba/alimei/sdk/db/mail/entry/Attachment;->mContentUri:Ljava/lang/String;

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    iput-object v4, v0, Lcom/alibaba/alimei/adpater/message/Attachment;->uri:Landroid/net/Uri;

    .line 399
    iget-object v4, v0, Lcom/alibaba/alimei/adpater/message/Attachment;->uri:Landroid/net/Uri;

    if-eqz v4, :cond_0

    .line 402
    sget-object v4, Lcom/alibaba/alimei/adpater/message/Attachment$LoadingState;->COMPLETE:Lcom/alibaba/alimei/adpater/message/Attachment$LoadingState;

    iput-object v4, v0, Lcom/alibaba/alimei/adpater/message/Attachment;->state:Lcom/alibaba/alimei/adpater/message/Attachment$LoadingState;

    .line 403
    iget-object v4, v1, Lcom/alibaba/alimei/sdk/db/mail/entry/Attachment;->mMimeType:Ljava/lang/String;

    iput-object v4, v0, Lcom/alibaba/alimei/adpater/message/Attachment;->contentType:Ljava/lang/String;

    .line 404
    iget-wide v6, v1, Lcom/alibaba/alimei/sdk/db/mail/entry/Attachment;->mId:J

    long-to-int v4, v6

    iput v4, v0, Lcom/alibaba/alimei/adpater/message/Attachment;->loaderId:I

    .line 405
    iget-wide v6, v1, Lcom/alibaba/alimei/sdk/db/mail/entry/Attachment;->mSize:J

    iput-wide v6, v0, Lcom/alibaba/alimei/adpater/message/Attachment;->size:J

    .line 406
    iget-object v4, v0, Lcom/alibaba/alimei/adpater/message/Attachment;->uri:Landroid/net/Uri;

    invoke-virtual {v4}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/alibaba/alimei/adpater/message/Attachment;->filename:Ljava/lang/String;

    .line 407
    iget-object v4, v1, Lcom/alibaba/alimei/sdk/db/mail/entry/Attachment;->mFileName:Ljava/lang/String;

    iput-object v4, v0, Lcom/alibaba/alimei/adpater/message/Attachment;->name:Ljava/lang/String;

    .line 409
    iget v4, v1, Lcom/alibaba/alimei/sdk/db/mail/entry/Attachment;->attachmentType:I

    const/4 v6, 0x1

    if-ne v4, v6, :cond_3

    .line 410
    iget-object v4, v1, Lcom/alibaba/alimei/sdk/db/mail/entry/Attachment;->mContentId:Ljava/lang/String;

    iput-object v4, v0, Lcom/alibaba/alimei/adpater/message/Attachment;->contentId:Ljava/lang/String;

    .line 414
    :goto_2
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 412
    :cond_3
    const-string/jumbo v4, ""

    iput-object v4, v0, Lcom/alibaba/alimei/adpater/message/Attachment;->contentId:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    .line 420
    .end local v0    # "attach":Lcom/alibaba/alimei/adpater/message/Attachment;
    .end local v1    # "attachment":Lcom/alibaba/alimei/sdk/db/mail/entry/Attachment;
    :cond_4
    return-object v2
.end method

.method private final a(JLcom/alibaba/alimei/sdk/db/mail/entry/Message;Ljava/util/List;Lcom/alibaba/alimei/emailcommon/Account;)Lvh;
    .locals 13
    .param p1, "accountId"    # J
    .param p3, "message"    # Lcom/alibaba/alimei/sdk/db/mail/entry/Message;
    .param p5, "account"    # Lcom/alibaba/alimei/emailcommon/Account;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lcom/alibaba/alimei/sdk/db/mail/entry/Message;",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/sdk/db/mail/entry/Attachment;",
            ">;",
            "Lcom/alibaba/alimei/emailcommon/Account;",
            ")",
            "Lvh;"
        }
    .end annotation

    .prologue
    .line 270
    .local p4, "attachments":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/sdk/db/mail/entry/Attachment;>;"
    const-string/jumbo v2, "AbsSaveDraftOrSendTask"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "buildMailByMsg msgId:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v4, p0, Lqk;->d:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lyx;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 273
    invoke-static {}, Lcom/alibaba/alimei/sdk/datasource/DatasourceCenter;->getMessageDatasource()Lcom/alibaba/alimei/sdk/datasource/MessageDatasource;

    move-result-object v2

    move-object/from16 v0, p3

    iget-wide v4, v0, Lcom/alibaba/alimei/sdk/db/mail/entry/Message;->mId:J

    invoke-interface {v2, p1, p2, v4, v5}, Lcom/alibaba/alimei/sdk/datasource/MessageDatasource;->queryMessageBodyById(JJ)Lcom/alibaba/alimei/sdk/db/mail/entry/Body;

    move-result-object v6

    .line 274
    .local v6, "body":Lcom/alibaba/alimei/sdk/db/mail/entry/Body;
    sget-object v2, Lcom/alibaba/alimei/emailcommon/Account$MessageFormat;->HTML:Lcom/alibaba/alimei/emailcommon/Account$MessageFormat;

    .line 5046
    move-object/from16 v0, p5

    iput-object v2, v0, Lcom/alibaba/alimei/emailcommon/Account;->d:Lcom/alibaba/alimei/emailcommon/Account$MessageFormat;

    .line 275
    iget-boolean v3, p0, Lqk;->g:Z

    move-object v2, p0

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v7, p5

    invoke-direct/range {v2 .. v7}, Lqk;->a(ZLcom/alibaba/alimei/sdk/db/mail/entry/Message;Ljava/util/List;Lcom/alibaba/alimei/sdk/db/mail/entry/Body;Lcom/alibaba/alimei/emailcommon/Account;)Lcom/alibaba/alimei/adpater/message/MessageBuilder;

    move-result-object v9

    .line 276
    .local v9, "messageBuilder":Lcom/alibaba/alimei/adpater/message/MessageBuilder;
    if-nez v9, :cond_0

    .line 277
    const/4 v10, 0x0

    .line 289
    :goto_0
    return-object v10

    .line 279
    :cond_0
    const/4 v10, 0x0

    .line 5064
    .local v10, "mimeMessage":Lvh;
    :try_start_0
    new-instance v11, Lvh;

    invoke-direct {v11}, Lvh;-><init>()V

    .line 5073
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v11, v2}, Lvh;->a(Ljava/util/Date;)V

    .line 5074
    new-instance v2, Lvo;

    iget-object v3, v9, Lcom/alibaba/alimei/adpater/message/MessageBuilder;->h:Lcom/alibaba/alimei/emailcommon/Identity;

    invoke-virtual {v3}, Lcom/alibaba/alimei/emailcommon/Identity;->getEmail()Ljava/lang/String;

    move-result-object v3

    iget-object v4, v9, Lcom/alibaba/alimei/adpater/message/MessageBuilder;->h:Lcom/alibaba/alimei/emailcommon/Identity;

    invoke-virtual {v4}, Lcom/alibaba/alimei/emailcommon/Identity;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lvo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 5075
    invoke-virtual {v11, v2}, Lvh;->a(Lvo;)V

    .line 5076
    sget-object v3, Lcom/alibaba/alimei/emailcommon/mail/Message$RecipientType;->TO:Lcom/alibaba/alimei/emailcommon/mail/Message$RecipientType;

    iget-object v4, v9, Lcom/alibaba/alimei/adpater/message/MessageBuilder;->b:[Lvo;

    invoke-virtual {v11, v3, v4}, Lvh;->a(Lcom/alibaba/alimei/emailcommon/mail/Message$RecipientType;[Lvo;)V

    .line 5077
    sget-object v3, Lcom/alibaba/alimei/emailcommon/mail/Message$RecipientType;->CC:Lcom/alibaba/alimei/emailcommon/mail/Message$RecipientType;

    iget-object v4, v9, Lcom/alibaba/alimei/adpater/message/MessageBuilder;->c:[Lvo;

    invoke-virtual {v11, v3, v4}, Lvh;->a(Lcom/alibaba/alimei/emailcommon/mail/Message$RecipientType;[Lvo;)V

    .line 5078
    sget-object v3, Lcom/alibaba/alimei/emailcommon/mail/Message$RecipientType;->BCC:Lcom/alibaba/alimei/emailcommon/mail/Message$RecipientType;

    iget-object v4, v9, Lcom/alibaba/alimei/adpater/message/MessageBuilder;->d:[Lvo;

    invoke-virtual {v11, v3, v4}, Lvh;->a(Lcom/alibaba/alimei/emailcommon/mail/Message$RecipientType;[Lvo;)V

    .line 5079
    iget-object v3, v9, Lcom/alibaba/alimei/adpater/message/MessageBuilder;->a:Ljava/lang/String;

    .line 5326
    const-string/jumbo v4, "Subject"

    invoke-virtual {v11, v4, v3}, Lvh;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 5081
    iget-boolean v3, v9, Lcom/alibaba/alimei/adpater/message/MessageBuilder;->g:Z

    if-eqz v3, :cond_1

    .line 5082
    const-string/jumbo v3, "Disposition-Notification-To"

    invoke-virtual {v2}, Lvo;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v11, v3, v4}, Lvh;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 5083
    const-string/jumbo v3, "X-Confirm-Reading-To"

    invoke-virtual {v2}, Lvo;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v11, v3, v4}, Lvh;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 5084
    const-string/jumbo v3, "Return-Receipt-To"

    invoke-virtual {v2}, Lvo;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v11, v3, v2}, Lvh;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 5087
    :cond_1
    iget-object v2, v9, Lcom/alibaba/alimei/adpater/message/MessageBuilder;->h:Lcom/alibaba/alimei/emailcommon/Identity;

    invoke-virtual {v2}, Lcom/alibaba/alimei/emailcommon/Identity;->getReplyTo()Ljava/lang/String;

    move-result-object v2

    .line 5088
    if-eqz v2, :cond_2

    .line 5089
    const/4 v3, 0x1

    new-array v3, v3, [Lvo;

    const/4 v4, 0x0

    new-instance v5, Lvo;

    invoke-direct {v5, v2}, Lvo;-><init>(Ljava/lang/String;)V

    aput-object v5, v3, v4

    invoke-virtual {v11, v3}, Lvh;->a([Lvo;)V

    .line 5092
    :cond_2
    iget-object v2, v9, Lcom/alibaba/alimei/adpater/message/MessageBuilder;->e:Ljava/lang/String;

    if-eqz v2, :cond_3

    .line 5093
    iget-object v2, v9, Lcom/alibaba/alimei/adpater/message/MessageBuilder;->e:Ljava/lang/String;

    .line 5429
    const-string/jumbo v3, "In-Reply-To"

    invoke-virtual {v11, v3, v2}, Lvh;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 5096
    :cond_3
    iget-object v2, v9, Lcom/alibaba/alimei/adpater/message/MessageBuilder;->f:Ljava/lang/String;

    if-eqz v2, :cond_5

    .line 5097
    iget-object v2, v9, Lcom/alibaba/alimei/adpater/message/MessageBuilder;->f:Ljava/lang/String;

    .line 5454
    const-string/jumbo v3, "\\s+"

    const-string/jumbo v4, " "

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 5462
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    .line 5463
    const/16 v4, 0x3d9

    if-lt v3, v4, :cond_4

    .line 5466
    const/16 v4, 0x3c

    invoke-virtual {v2, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    .line 5469
    const/16 v5, 0x3c

    add-int/lit8 v7, v4, 0x1

    .line 5470
    invoke-virtual {v2, v5, v7}, Ljava/lang/String;->indexOf(II)I

    move-result v5

    .line 5469
    invoke-virtual {v2, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 5473
    const/16 v5, 0x3c

    .line 5474
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v7

    add-int/2addr v3, v7

    add-int/lit16 v3, v3, -0x3d9

    .line 5473
    invoke-virtual {v2, v5, v3}, Ljava/lang/String;->indexOf(II)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 5476
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 5478
    :cond_4
    const-string/jumbo v3, "References"

    invoke-virtual {v11, v3, v2}, Lvh;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 5100
    :cond_5
    invoke-virtual {v11}, Lvh;->m()V

    .line 6107
    iget-boolean v2, v9, Lcom/alibaba/alimei/adpater/message/MessageBuilder;->x:Z

    .line 6248
    iget-object v3, v9, Lcom/alibaba/alimei/adpater/message/MessageBuilder;->i:Lcom/alibaba/alimei/emailcommon/Account$MessageFormat;

    invoke-virtual {v9, v2, v3}, Lcom/alibaba/alimei/adpater/message/MessageBuilder;->a(ZLcom/alibaba/alimei/emailcommon/Account$MessageFormat;)Lvn;

    move-result-object v4

    .line 6110
    const/4 v2, 0x0

    .line 6112
    iget-object v3, v9, Lcom/alibaba/alimei/adpater/message/MessageBuilder;->l:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_d

    const/4 v3, 0x1

    .line 6114
    :goto_1
    iget-object v5, v9, Lcom/alibaba/alimei/adpater/message/MessageBuilder;->i:Lcom/alibaba/alimei/emailcommon/Account$MessageFormat;

    sget-object v7, Lcom/alibaba/alimei/emailcommon/Account$MessageFormat;->HTML:Lcom/alibaba/alimei/emailcommon/Account$MessageFormat;

    if-ne v5, v7, :cond_f

    .line 6118
    new-instance v5, Lvi;

    invoke-direct {v5}, Lvi;-><init>()V

    .line 6119
    const-string/jumbo v2, "alternative"

    invoke-virtual {v5, v2}, Lvi;->c(Ljava/lang/String;)V

    .line 6120
    new-instance v2, Lvf;

    const-string/jumbo v7, "text/html"

    invoke-direct {v2, v4, v7}, Lvf;-><init>(Lvp;Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Lvi;->a(Lvq;)V

    .line 6121
    iget-boolean v2, v9, Lcom/alibaba/alimei/adpater/message/MessageBuilder;->x:Z

    sget-object v7, Lcom/alibaba/alimei/emailcommon/Account$MessageFormat;->TEXT:Lcom/alibaba/alimei/emailcommon/Account$MessageFormat;

    invoke-virtual {v9, v2, v7}, Lcom/alibaba/alimei/adpater/message/MessageBuilder;->a(ZLcom/alibaba/alimei/emailcommon/Account$MessageFormat;)Lvn;

    move-result-object v2

    .line 6122
    new-instance v7, Lvf;

    const-string/jumbo v12, "text/plain"

    invoke-direct {v7, v2, v12}, Lvf;-><init>(Lvp;Ljava/lang/String;)V

    invoke-virtual {v5, v7}, Lvi;->a(Lvq;)V

    .line 6124
    if-eqz v3, :cond_e

    .line 6129
    new-instance v3, Lvi;

    invoke-direct {v3}, Lvi;-><init>()V

    .line 6130
    new-instance v7, Lvf;

    invoke-direct {v7, v5}, Lvf;-><init>(Lvp;)V

    invoke-virtual {v3, v7}, Lvi;->a(Lvq;)V

    .line 6131
    invoke-virtual {v9, v3}, Lcom/alibaba/alimei/adpater/message/MessageBuilder;->a(Lvi;)V

    .line 6132
    invoke-static {v11, v3}, Lqd;->a(Lvs;Lvp;)V

    .line 6151
    :cond_6
    :goto_2
    iget-boolean v3, v9, Lcom/alibaba/alimei/adpater/message/MessageBuilder;->x:Z

    if-eqz v3, :cond_c

    .line 6153
    const-string/jumbo v3, "X-AliMail-Identity"

    .line 7158
    new-instance v5, Lqc;

    invoke-direct {v5}, Lqc;-><init>()V

    iget v7, v9, Lcom/alibaba/alimei/adpater/message/MessageBuilder;->v:I

    .line 8171
    iput v7, v5, Lqc;->l:I

    .line 7159
    iget-object v7, v9, Lcom/alibaba/alimei/adpater/message/MessageBuilder;->h:Lcom/alibaba/alimei/emailcommon/Identity;

    .line 9136
    iput-object v7, v5, Lqc;->d:Lcom/alibaba/alimei/emailcommon/Identity;

    .line 7160
    iget-boolean v7, v9, Lcom/alibaba/alimei/adpater/message/MessageBuilder;->t:Z

    .line 9141
    iput-boolean v7, v5, Lqc;->g:Z

    .line 7161
    iget-object v7, v9, Lcom/alibaba/alimei/adpater/message/MessageBuilder;->i:Lcom/alibaba/alimei/emailcommon/Account$MessageFormat;

    .line 10131
    iput-object v7, v5, Lqc;->c:Lcom/alibaba/alimei/emailcommon/Account$MessageFormat;

    .line 7162
    iget-object v7, v9, Lcom/alibaba/alimei/adpater/message/MessageBuilder;->w:Lcom/alibaba/alimei/emailcommon/mail/MessageReference;

    .line 10156
    iput-object v7, v5, Lqc;->i:Lcom/alibaba/alimei/emailcommon/mail/MessageReference;

    .line 7163
    iget-object v7, v9, Lcom/alibaba/alimei/adpater/message/MessageBuilder;->q:Lcom/alibaba/alimei/adpater/message/InsertableHtmlContent;

    .line 11116
    iput-object v7, v5, Lqc;->a:Lcom/alibaba/alimei/adpater/message/InsertableHtmlContent;

    .line 7164
    iget-object v7, v9, Lcom/alibaba/alimei/adpater/message/MessageBuilder;->n:Lcom/alibaba/alimei/emailcommon/Account$QuoteStyle;

    .line 11121
    iput-object v7, v5, Lqc;->b:Lcom/alibaba/alimei/emailcommon/Account$QuoteStyle;

    .line 7165
    iget-object v7, v9, Lcom/alibaba/alimei/adpater/message/MessageBuilder;->o:Lcom/alibaba/alimei/adpater/message/QuotedTextMode;

    .line 11126
    iput-object v7, v5, Lqc;->h:Lcom/alibaba/alimei/adpater/message/QuotedTextMode;

    .line 7166
    iget-object v7, v9, Lcom/alibaba/alimei/adpater/message/MessageBuilder;->m:Ljava/lang/String;

    .line 11146
    iput-object v7, v5, Lqc;->f:Ljava/lang/String;

    .line 7167
    iget-boolean v7, v9, Lcom/alibaba/alimei/adpater/message/MessageBuilder;->u:Z

    .line 11151
    iput-boolean v7, v5, Lqc;->e:Z

    .line 11161
    iput-object v4, v5, Lqc;->j:Lvn;

    .line 11166
    iput-object v2, v5, Lqc;->k:Lvn;

    .line 12041
    new-instance v2, Landroid/net/Uri$Builder;

    invoke-direct {v2}, Landroid/net/Uri$Builder;-><init>()V

    iput-object v2, v5, Lqc;->m:Landroid/net/Uri$Builder;

    .line 12043
    iget-object v2, v5, Lqc;->j:Lvn;

    .line 12100
    iget-object v2, v2, Lvn;->c:Ljava/lang/Integer;

    .line 12043
    if-eqz v2, :cond_11

    iget-object v2, v5, Lqc;->j:Lvn;

    .line 12110
    iget-object v2, v2, Lvn;->d:Ljava/lang/Integer;

    .line 12043
    if-eqz v2, :cond_11

    .line 12045
    sget-object v2, Lcom/alibaba/alimei/adpater/message/IdentityField;->LENGTH:Lcom/alibaba/alimei/adpater/message/IdentityField;

    iget-object v4, v5, Lqc;->j:Lvn;

    .line 13100
    iget-object v4, v4, Lvn;->c:Ljava/lang/Integer;

    .line 12045
    invoke-virtual {v5, v2, v4}, Lqc;->a(Lcom/alibaba/alimei/adpater/message/IdentityField;Ljava/lang/Integer;)V

    .line 12046
    sget-object v2, Lcom/alibaba/alimei/adpater/message/IdentityField;->OFFSET:Lcom/alibaba/alimei/adpater/message/IdentityField;

    iget-object v4, v5, Lqc;->j:Lvn;

    .line 13110
    iget-object v4, v4, Lvn;->d:Ljava/lang/Integer;

    .line 12046
    invoke-virtual {v5, v2, v4}, Lqc;->a(Lcom/alibaba/alimei/adpater/message/IdentityField;Ljava/lang/Integer;)V

    .line 12053
    :goto_3
    iget-object v2, v5, Lqc;->a:Lcom/alibaba/alimei/adpater/message/InsertableHtmlContent;

    if-eqz v2, :cond_7

    .line 12054
    sget-object v2, Lcom/alibaba/alimei/adpater/message/IdentityField;->FOOTER_OFFSET:Lcom/alibaba/alimei/adpater/message/IdentityField;

    iget-object v4, v5, Lqc;->a:Lcom/alibaba/alimei/adpater/message/InsertableHtmlContent;

    invoke-virtual {v4}, Lcom/alibaba/alimei/adpater/message/InsertableHtmlContent;->getFooterInsertionPoint()I

    move-result v4

    invoke-virtual {v5, v2, v4}, Lqc;->a(Lcom/alibaba/alimei/adpater/message/IdentityField;I)V

    .line 12057
    :cond_7
    iget-object v2, v5, Lqc;->k:Lvn;

    if-eqz v2, :cond_8

    .line 12058
    iget-object v2, v5, Lqc;->k:Lvn;

    .line 14100
    iget-object v2, v2, Lvn;->c:Ljava/lang/Integer;

    .line 12059
    iget-object v4, v5, Lqc;->k:Lvn;

    .line 14110
    iget-object v4, v4, Lvn;->d:Ljava/lang/Integer;

    .line 12060
    if-eqz v2, :cond_12

    if-eqz v4, :cond_12

    .line 12062
    sget-object v7, Lcom/alibaba/alimei/adpater/message/IdentityField;->PLAIN_LENGTH:Lcom/alibaba/alimei/adpater/message/IdentityField;

    invoke-virtual {v5, v7, v2}, Lqc;->a(Lcom/alibaba/alimei/adpater/message/IdentityField;Ljava/lang/Integer;)V

    .line 12063
    sget-object v2, Lcom/alibaba/alimei/adpater/message/IdentityField;->PLAIN_OFFSET:Lcom/alibaba/alimei/adpater/message/IdentityField;

    invoke-virtual {v5, v2, v4}, Lqc;->a(Lcom/alibaba/alimei/adpater/message/IdentityField;Ljava/lang/Integer;)V

    .line 12072
    :cond_8
    :goto_4
    sget-object v2, Lcom/alibaba/alimei/adpater/message/IdentityField;->QUOTE_STYLE:Lcom/alibaba/alimei/adpater/message/IdentityField;

    iget-object v4, v5, Lqc;->b:Lcom/alibaba/alimei/emailcommon/Account$QuoteStyle;

    invoke-virtual {v5, v2, v4}, Lqc;->a(Lcom/alibaba/alimei/adpater/message/IdentityField;Ljava/lang/Enum;)V

    .line 12075
    sget-object v2, Lcom/alibaba/alimei/adpater/message/IdentityField;->MESSAGE_FORMAT:Lcom/alibaba/alimei/adpater/message/IdentityField;

    iget-object v4, v5, Lqc;->c:Lcom/alibaba/alimei/emailcommon/Account$MessageFormat;

    invoke-virtual {v5, v2, v4}, Lqc;->a(Lcom/alibaba/alimei/adpater/message/IdentityField;Ljava/lang/Enum;)V

    .line 12078
    iget-object v2, v5, Lqc;->d:Lcom/alibaba/alimei/emailcommon/Identity;

    invoke-virtual {v2}, Lcom/alibaba/alimei/emailcommon/Identity;->getSignatureUse()Z

    move-result v2

    if-eqz v2, :cond_9

    iget-boolean v2, v5, Lqc;->e:Z

    if-eqz v2, :cond_9

    .line 12079
    sget-object v2, Lcom/alibaba/alimei/adpater/message/IdentityField;->SIGNATURE:Lcom/alibaba/alimei/adpater/message/IdentityField;

    iget-object v4, v5, Lqc;->f:Ljava/lang/String;

    invoke-virtual {v5, v2, v4}, Lqc;->a(Lcom/alibaba/alimei/adpater/message/IdentityField;Ljava/lang/String;)V

    .line 12082
    :cond_9
    iget-boolean v2, v5, Lqc;->g:Z

    if-eqz v2, :cond_a

    .line 12083
    sget-object v2, Lcom/alibaba/alimei/adpater/message/IdentityField;->NAME:Lcom/alibaba/alimei/adpater/message/IdentityField;

    iget-object v4, v5, Lqc;->d:Lcom/alibaba/alimei/emailcommon/Identity;

    invoke-virtual {v4}, Lcom/alibaba/alimei/emailcommon/Identity;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v2, v4}, Lqc;->a(Lcom/alibaba/alimei/adpater/message/IdentityField;Ljava/lang/String;)V

    .line 12084
    sget-object v2, Lcom/alibaba/alimei/adpater/message/IdentityField;->EMAIL:Lcom/alibaba/alimei/adpater/message/IdentityField;

    iget-object v4, v5, Lqc;->d:Lcom/alibaba/alimei/emailcommon/Identity;

    invoke-virtual {v4}, Lcom/alibaba/alimei/emailcommon/Identity;->getEmail()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v2, v4}, Lqc;->a(Lcom/alibaba/alimei/adpater/message/IdentityField;Ljava/lang/String;)V

    .line 12087
    :cond_a
    iget-object v2, v5, Lqc;->i:Lcom/alibaba/alimei/emailcommon/mail/MessageReference;

    if-eqz v2, :cond_b

    .line 12088
    sget-object v2, Lcom/alibaba/alimei/adpater/message/IdentityField;->ORIGINAL_MESSAGE:Lcom/alibaba/alimei/adpater/message/IdentityField;

    iget-object v4, v5, Lqc;->i:Lcom/alibaba/alimei/emailcommon/mail/MessageReference;

    invoke-virtual {v4}, Lcom/alibaba/alimei/emailcommon/mail/MessageReference;->toIdentityString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v2, v4}, Lqc;->a(Lcom/alibaba/alimei/adpater/message/IdentityField;Ljava/lang/String;)V

    .line 12091
    :cond_b
    sget-object v2, Lcom/alibaba/alimei/adpater/message/IdentityField;->CURSOR_POSITION:Lcom/alibaba/alimei/adpater/message/IdentityField;

    iget v4, v5, Lqc;->l:I

    invoke-virtual {v5, v2, v4}, Lqc;->a(Lcom/alibaba/alimei/adpater/message/IdentityField;I)V

    .line 12092
    sget-object v2, Lcom/alibaba/alimei/adpater/message/IdentityField;->QUOTED_TEXT_MODE:Lcom/alibaba/alimei/adpater/message/IdentityField;

    iget-object v4, v5, Lqc;->h:Lcom/alibaba/alimei/adpater/message/QuotedTextMode;

    invoke-virtual {v5, v2, v4}, Lqc;->a(Lcom/alibaba/alimei/adpater/message/IdentityField;Ljava/lang/Enum;)V

    .line 12094
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "!"

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, v5, Lqc;->m:Landroid/net/Uri$Builder;

    invoke-virtual {v4}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/Uri;->getEncodedQuery()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 6153
    invoke-virtual {v11, v3, v2}, Lvh;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/alibaba/alimei/emailcommon/mail/MessagingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 282
    .end local v10    # "mimeMessage":Lvh;
    .local v11, "mimeMessage":Lvh;
    :cond_c
    :try_start_1
    const-string/jumbo v2, "AbsSaveDraftOrSendTask"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "buildMailByMsg finish msgId:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v4, p0, Lqk;->d:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lyx;->b(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Lcom/alibaba/alimei/emailcommon/mail/MessagingException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    move-object v10, v11

    .line 287
    .end local v11    # "mimeMessage":Lvh;
    .restart local v10    # "mimeMessage":Lvh;
    goto/16 :goto_0

    .line 6112
    :cond_d
    const/4 v3, 0x0

    goto/16 :goto_1

    .line 6135
    :cond_e
    :try_start_2
    invoke-static {v11, v5}, Lqd;->a(Lvs;Lvp;)V
    :try_end_2
    .catch Lcom/alibaba/alimei/emailcommon/mail/MessagingException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_2

    .line 283
    :catch_0
    move-exception v8

    .line 284
    .local v8, "e":Lcom/alibaba/alimei/emailcommon/mail/MessagingException;
    :goto_5
    const-string/jumbo v2, "AbsSaveDraftOrSendTask"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "buildMailByMsg err "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v8}, Lyy;->a(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lyx;->a(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 6137
    .end local v8    # "e":Lcom/alibaba/alimei/emailcommon/mail/MessagingException;
    :cond_f
    :try_start_3
    iget-object v5, v9, Lcom/alibaba/alimei/adpater/message/MessageBuilder;->i:Lcom/alibaba/alimei/emailcommon/Account$MessageFormat;

    sget-object v7, Lcom/alibaba/alimei/emailcommon/Account$MessageFormat;->TEXT:Lcom/alibaba/alimei/emailcommon/Account$MessageFormat;

    if-ne v5, v7, :cond_6

    .line 6139
    if-eqz v3, :cond_10

    .line 6140
    new-instance v3, Lvi;

    invoke-direct {v3}, Lvi;-><init>()V

    .line 6141
    new-instance v5, Lvf;

    const-string/jumbo v7, "text/plain"

    invoke-direct {v5, v4, v7}, Lvf;-><init>(Lvp;Ljava/lang/String;)V

    invoke-virtual {v3, v5}, Lvi;->a(Lvq;)V

    .line 6142
    invoke-virtual {v9, v3}, Lcom/alibaba/alimei/adpater/message/MessageBuilder;->a(Lvi;)V

    .line 6143
    invoke-static {v11, v3}, Lqd;->a(Lvs;Lvp;)V
    :try_end_3
    .catch Lcom/alibaba/alimei/emailcommon/mail/MessagingException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_2

    .line 285
    :catch_1
    move-exception v8

    .line 286
    .local v8, "e":Ljava/lang/Exception;
    :goto_6
    const-string/jumbo v2, "AbsSaveDraftOrSendTask"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "buildMailByMsg\uff0cException: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v8}, Lyy;->a(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lyx;->a(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 6146
    .end local v8    # "e":Ljava/lang/Exception;
    :cond_10
    :try_start_4
    invoke-static {v11, v4}, Lqd;->a(Lvs;Lvp;)V

    goto/16 :goto_2

    .line 12049
    :cond_11
    sget-object v2, Lcom/alibaba/alimei/adpater/message/IdentityField;->LENGTH:Lcom/alibaba/alimei/adpater/message/IdentityField;

    iget-object v4, v5, Lqc;->j:Lvn;

    .line 14061
    iget-object v4, v4, Lvn;->a:Ljava/lang/String;

    .line 12049
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v5, v2, v4}, Lqc;->a(Lcom/alibaba/alimei/adpater/message/IdentityField;I)V

    .line 12050
    sget-object v2, Lcom/alibaba/alimei/adpater/message/IdentityField;->OFFSET:Lcom/alibaba/alimei/adpater/message/IdentityField;

    const/4 v4, 0x0

    invoke-virtual {v5, v2, v4}, Lqc;->a(Lcom/alibaba/alimei/adpater/message/IdentityField;I)V

    goto/16 :goto_3

    .line 12066
    :cond_12
    sget-object v2, Lcom/alibaba/alimei/adpater/message/IdentityField;->PLAIN_LENGTH:Lcom/alibaba/alimei/adpater/message/IdentityField;

    iget-object v4, v5, Lqc;->j:Lvn;

    .line 15061
    iget-object v4, v4, Lvn;->a:Ljava/lang/String;

    .line 12066
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v5, v2, v4}, Lqc;->a(Lcom/alibaba/alimei/adpater/message/IdentityField;I)V

    .line 12067
    sget-object v2, Lcom/alibaba/alimei/adpater/message/IdentityField;->PLAIN_OFFSET:Lcom/alibaba/alimei/adpater/message/IdentityField;

    const/4 v4, 0x0

    invoke-virtual {v5, v2, v4}, Lqc;->a(Lcom/alibaba/alimei/adpater/message/IdentityField;I)V
    :try_end_4
    .catch Lcom/alibaba/alimei/emailcommon/mail/MessagingException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto/16 :goto_4

    .line 285
    .end local v10    # "mimeMessage":Lvh;
    .restart local v11    # "mimeMessage":Lvh;
    :catch_2
    move-exception v8

    move-object v10, v11

    .end local v11    # "mimeMessage":Lvh;
    .restart local v10    # "mimeMessage":Lvh;
    goto :goto_6

    .line 283
    .end local v10    # "mimeMessage":Lvh;
    .restart local v11    # "mimeMessage":Lvh;
    :catch_3
    move-exception v8

    move-object v10, v11

    .end local v11    # "mimeMessage":Lvh;
    .restart local v10    # "mimeMessage":Lvh;
    goto/16 :goto_5
.end method

.method private static b(Ljava/lang/String;)[Lvo;
    .locals 7
    .param p0, "mailAddress"    # Ljava/lang/String;

    .prologue
    .line 352
    invoke-static {p0}, Lair;->i(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    .line 353
    .local v2, "addressModels":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/sdk/model/AddressModel;>;"
    if-eqz v2, :cond_0

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_0

    .line 354
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    new-array v3, v5, [Lvo;

    .line 355
    .local v3, "addresses":[Lvo;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_1

    .line 356
    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/alimei/sdk/model/AddressModel;

    .line 357
    .local v1, "addressModel":Lcom/alibaba/alimei/sdk/model/AddressModel;
    new-instance v0, Lvo;

    iget-object v5, v1, Lcom/alibaba/alimei/sdk/model/AddressModel;->address:Ljava/lang/String;

    iget-object v6, v1, Lcom/alibaba/alimei/sdk/model/AddressModel;->alias:Ljava/lang/String;

    invoke-direct {v0, v5, v6}, Lvo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 358
    .local v0, "address":Lvo;
    aput-object v0, v3, v4

    .line 355
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 362
    .end local v0    # "address":Lvo;
    .end local v1    # "addressModel":Lcom/alibaba/alimei/sdk/model/AddressModel;
    .end local v3    # "addresses":[Lvo;
    .end local v4    # "i":I
    :cond_0
    const/4 v3, 0x0

    :cond_1
    return-object v3
.end method

.method private static c(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p0, "mailStr"    # Ljava/lang/String;

    .prologue
    .line 454
    invoke-static {p0}, Lair;->i(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 455
    .local v1, "addressModels":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/sdk/model/AddressModel;>;"
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-nez v4, :cond_1

    .line 456
    :cond_0
    const-string/jumbo v4, ""

    .line 472
    :goto_0
    return-object v4

    .line 458
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 459
    .local v3, "sbMail":Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    .line 460
    .local v2, "index":I
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_2
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/alimei/sdk/model/AddressModel;

    .line 461
    .local v0, "addressModel":Lcom/alibaba/alimei/sdk/model/AddressModel;
    add-int/lit8 v2, v2, 0x1

    .line 462
    iget-object v4, v0, Lcom/alibaba/alimei/sdk/model/AddressModel;->alias:Ljava/lang/String;

    if-nez v4, :cond_3

    iget-object v4, v0, Lcom/alibaba/alimei/sdk/model/AddressModel;->address:Ljava/lang/String;

    :goto_2
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 463
    const-string/jumbo v4, "&nbsp;&nbsp;&lt;<a href=\"mailto:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 464
    iget-object v4, v0, Lcom/alibaba/alimei/sdk/model/AddressModel;->address:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 465
    const-string/jumbo v4, "\" target=\"_blank\">"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 466
    iget-object v4, v0, Lcom/alibaba/alimei/sdk/model/AddressModel;->address:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 467
    const-string/jumbo v4, "</a>&gt;"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 468
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v2, v4, :cond_2

    .line 469
    const-string/jumbo v4, ";"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 462
    :cond_3
    iget-object v4, v0, Lcom/alibaba/alimei/sdk/model/AddressModel;->alias:Ljava/lang/String;

    goto :goto_2

    .line 472
    .end local v0    # "addressModel":Lcom/alibaba/alimei/sdk/model/AddressModel;
    :cond_4
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_0
.end method


# virtual methods
.method protected abstract a(Lcom/alibaba/alimei/emailcommon/mail/Message;)V
.end method

.method protected final a(ZLcom/alibaba/alimei/emailcommon/Account;Ljava/lang/Exception;)V
    .locals 4
    .param p1, "success"    # Z
    .param p2, "account"    # Lcom/alibaba/alimei/emailcommon/Account;
    .param p3, "exception"    # Ljava/lang/Exception;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v3, 0x2

    .line 218
    if-eqz p1, :cond_1

    .line 219
    iget-object v1, p0, Lqk;->m:Lyc;

    const/4 v2, 0x1

    iput v2, v1, Lyc;->c:I

    .line 220
    iget-object v1, p0, Lqk;->h:Lcom/alibaba/alimei/sdk/model/MailSnippetModel;

    const/4 v2, 0x0

    iput v2, v1, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->statusCode:I

    .line 244
    .end local p3    # "exception":Ljava/lang/Exception;
    :cond_0
    :goto_0
    iget-object v1, p0, Lqk;->m:Lyc;

    iget-object v2, p0, Lqk;->h:Lcom/alibaba/alimei/sdk/model/MailSnippetModel;

    iput-object v2, v1, Lyc;->g:Ljava/lang/Object;

    .line 245
    invoke-static {}, Lafv;->d()Lya;

    move-result-object v1

    iget-object v2, p0, Lqk;->m:Lyc;

    invoke-interface {v1, v2}, Lya;->a(Lyc;)V

    .line 246
    return-void

    .line 222
    .restart local p3    # "exception":Ljava/lang/Exception;
    :cond_1
    iget-object v1, p0, Lqk;->m:Lyc;

    iput v3, v1, Lyc;->c:I

    .line 224
    if-eqz p2, :cond_2

    .line 225
    iget-object v1, p0, Lqk;->m:Lyc;

    invoke-virtual {p2}, Lcom/alibaba/alimei/emailcommon/Account;->o()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lyc;->f:Ljava/lang/String;

    .line 228
    :cond_2
    if-eqz p3, :cond_0

    .line 229
    invoke-virtual {p3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    .line 231
    .local v0, "errorMsg":Ljava/lang/String;
    instance-of v1, p3, Lcom/alibaba/alimei/emailcommon/mail/MessagingException;

    if-eqz v1, :cond_4

    .line 232
    iget-object v1, p0, Lqk;->m:Lyc;

    check-cast p3, Lcom/alibaba/alimei/emailcommon/mail/MessagingException;

    .end local p3    # "exception":Ljava/lang/Exception;
    invoke-static {p3}, Lrb;->a(Lcom/alibaba/alimei/emailcommon/mail/MessagingException;)Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    move-result-object v2

    iput-object v2, v1, Lyc;->h:Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    .line 237
    :goto_1
    if-eqz v0, :cond_5

    const-string/jumbo v1, "4"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string/jumbo v1, "5"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 238
    :cond_3
    iget-object v1, p0, Lqk;->h:Lcom/alibaba/alimei/sdk/model/MailSnippetModel;

    const/4 v2, 0x6

    iput v2, v1, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->statusCode:I

    goto :goto_0

    .line 234
    .restart local p3    # "exception":Ljava/lang/Exception;
    :cond_4
    iget-object v1, p0, Lqk;->m:Lyc;

    sget-object v2, Lcom/alibaba/alimei/framework/SDKError;->Unknown:Lcom/alibaba/alimei/framework/SDKError;

    invoke-static {v2, p3}, Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;->buildSdkException(Lcom/alibaba/alimei/framework/SDKError;Ljava/lang/Throwable;)Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    move-result-object v2

    iput-object v2, v1, Lyc;->h:Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    goto :goto_1

    .line 240
    .end local p3    # "exception":Ljava/lang/Exception;
    :cond_5
    iget-object v1, p0, Lqk;->h:Lcom/alibaba/alimei/sdk/model/MailSnippetModel;

    iput v3, v1, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->statusCode:I

    goto :goto_0
.end method

.method protected final b()J
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 96
    const-wide/32 v0, 0x1d4c0

    return-wide v0
.end method

.method protected final c()Z
    .locals 18

    .prologue
    .line 101
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lqk;->n:Z

    if-eqz v3, :cond_0

    move-object/from16 v0, p0

    iget-object v3, v0, Lqk;->p:Lql$a;

    if-eqz v3, :cond_0

    .line 102
    move-object/from16 v0, p0

    iget-object v3, v0, Lqk;->p:Lql$a;

    .line 1074
    const/4 v3, 0x0

    .line 102
    move-object/from16 v0, p0

    iput-boolean v3, v0, Lqk;->g:Z

    .line 103
    move-object/from16 v0, p0

    iget-object v3, v0, Lqk;->p:Lql$a;

    .line 2059
    iget-wide v4, v3, Lql$a;->b:J

    .line 103
    move-object/from16 v0, p0

    iput-wide v4, v0, Lqk;->d:J

    .line 104
    move-object/from16 v0, p0

    iget-object v3, v0, Lqk;->p:Lql$a;

    .line 2066
    const-wide/16 v4, 0x0

    .line 104
    move-object/from16 v0, p0

    iput-wide v4, v0, Lqk;->f:J

    .line 105
    move-object/from16 v0, p0

    iget-object v3, v0, Lqk;->p:Lql$a;

    .line 3053
    iget-object v3, v3, Lql$a;->a:Ljava/lang/String;

    .line 105
    move-object/from16 v0, p0

    iput-object v3, v0, Lqk;->a:Ljava/lang/String;

    .line 4046
    move-object/from16 v0, p0

    iget-wide v4, v0, Lyr;->x:J

    .line 106
    move-object/from16 v0, p0

    iput-wide v4, v0, Lqk;->e:J

    .line 107
    const-string/jumbo v3, "AbsSaveDraftOrSendTask"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "execute, isRetryTask, messageId:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-wide v0, v0, Lqk;->d:J

    move-wide/from16 v16, v0

    move-wide/from16 v0, v16

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lyx;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    :cond_0
    move-object/from16 v0, p0

    iget-wide v4, v0, Lqk;->f:J

    const-wide/16 v16, 0x0

    cmp-long v3, v4, v16

    if-nez v3, :cond_1

    const-wide/16 v4, -0x1

    :goto_0
    move-object/from16 v0, p0

    iput-wide v4, v0, Lqk;->f:J

    .line 110
    new-instance v4, Lyc;

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lqk;->g:Z

    if-eqz v3, :cond_2

    const-string/jumbo v3, "basic_SyncDraft"

    :goto_1
    move-object/from16 v0, p0

    iget-object v5, v0, Lqk;->a:Ljava/lang/String;

    const/4 v7, 0x0

    invoke-direct {v4, v3, v5, v7}, Lyc;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lqk;->m:Lyc;

    .line 111
    invoke-virtual/range {p0 .. p0}, Lqk;->a()Z

    move-result v3

    if-nez v3, :cond_3

    .line 112
    move-object/from16 v0, p0

    iget-object v3, v0, Lqk;->m:Lyc;

    sget-object v4, Lcom/alibaba/alimei/framework/SDKError;->AccountNotLogin:Lcom/alibaba/alimei/framework/SDKError;

    invoke-static {v4}, Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;->buildSdkException(Lcom/alibaba/alimei/framework/SDKError;)Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    move-result-object v4

    iput-object v4, v3, Lyc;->h:Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    .line 113
    move-object/from16 v0, p0

    iget-object v3, v0, Lqk;->m:Lyc;

    const/4 v4, 0x2

    iput v4, v3, Lyc;->c:I

    .line 114
    invoke-static {}, Lafv;->d()Lya;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lqk;->m:Lyc;

    invoke-interface {v3, v4}, Lya;->a(Lyc;)V

    .line 115
    const-string/jumbo v3, "AbsSaveDraftOrSendTask"

    const-string/jumbo v4, "execute, checkAccountStatus==false"

    invoke-static {v3, v4}, Lyx;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    const/4 v3, 0x0

    .line 190
    :goto_2
    return v3

    .line 109
    :cond_1
    move-object/from16 v0, p0

    iget-wide v4, v0, Lqk;->f:J

    goto :goto_0

    .line 110
    :cond_2
    const-string/jumbo v3, "basic_SendMail"

    goto :goto_1

    .line 120
    :cond_3
    invoke-static {}, Lcom/alibaba/alimei/sdk/datasource/DatasourceCenter;->getMessageDatasource()Lcom/alibaba/alimei/sdk/datasource/MessageDatasource;

    move-result-object v2

    .line 121
    .local v2, "ds":Lcom/alibaba/alimei/sdk/datasource/MessageDatasource;
    move-object/from16 v0, p0

    iget-wide v4, v0, Lqk;->e:J

    move-object/from16 v0, p0

    iget-wide v0, v0, Lqk;->d:J

    move-wide/from16 v16, v0

    move-wide/from16 v0, v16

    invoke-interface {v2, v4, v5, v0, v1}, Lcom/alibaba/alimei/sdk/datasource/MessageDatasource;->queryMessageById(JJ)Lcom/alibaba/alimei/sdk/db/mail/entry/Message;

    move-result-object v6

    .line 122
    .local v6, "message":Lcom/alibaba/alimei/sdk/db/mail/entry/Message;
    move-object/from16 v0, p0

    iget-wide v4, v0, Lqk;->f:J

    const-wide/16 v16, -0x1

    cmp-long v3, v4, v16

    if-eqz v3, :cond_4

    .line 123
    move-object/from16 v0, p0

    iget-wide v4, v0, Lqk;->e:J

    move-object/from16 v0, p0

    iget-wide v0, v0, Lqk;->f:J

    move-wide/from16 v16, v0

    move-wide/from16 v0, v16

    invoke-interface {v2, v4, v5, v0, v1}, Lcom/alibaba/alimei/sdk/datasource/MessageDatasource;->queryMessageById(JJ)Lcom/alibaba/alimei/sdk/db/mail/entry/Message;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lqk;->o:Lcom/alibaba/alimei/sdk/db/mail/entry/Message;

    .line 124
    move-object/from16 v0, p0

    iget-object v3, v0, Lqk;->o:Lcom/alibaba/alimei/sdk/db/mail/entry/Message;

    if-eqz v3, :cond_4

    move-object/from16 v0, p0

    iget-object v3, v0, Lqk;->o:Lcom/alibaba/alimei/sdk/db/mail/entry/Message;

    iget-object v3, v3, Lcom/alibaba/alimei/sdk/db/mail/entry/Message;->mMessageId:Ljava/lang/String;

    if-eqz v3, :cond_4

    move-object/from16 v0, p0

    iget-object v3, v0, Lqk;->o:Lcom/alibaba/alimei/sdk/db/mail/entry/Message;

    iget-object v3, v3, Lcom/alibaba/alimei/sdk/db/mail/entry/Message;->mMessageId:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_4

    .line 125
    sget-object v3, Lcom/alibaba/alimei/adpater/message/QuotedTextMode;->SHOW:Lcom/alibaba/alimei/adpater/message/QuotedTextMode;

    move-object/from16 v0, p0

    iput-object v3, v0, Lqk;->k:Lcom/alibaba/alimei/adpater/message/QuotedTextMode;

    .line 126
    move-object/from16 v0, p0

    iget-object v3, v0, Lqk;->o:Lcom/alibaba/alimei/sdk/db/mail/entry/Message;

    iget-object v3, v3, Lcom/alibaba/alimei/sdk/db/mail/entry/Message;->mMessageId:Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v3, v0, Lqk;->i:Ljava/lang/String;

    .line 128
    move-object/from16 v0, p0

    iget-object v3, v0, Lqk;->o:Lcom/alibaba/alimei/sdk/db/mail/entry/Message;

    iget-object v10, v3, Lcom/alibaba/alimei/sdk/db/mail/entry/Message;->mReferences:Ljava/lang/String;

    .line 129
    .local v10, "refs":Ljava/lang/String;
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 130
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 131
    .local v12, "sbRefer":Ljava/lang/StringBuilder;
    const-string/jumbo v3, " <"

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 132
    move-object/from16 v0, p0

    iget-object v3, v0, Lqk;->i:Ljava/lang/String;

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 133
    const-string/jumbo v3, ">"

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 134
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lqk;->j:Ljava/lang/String;

    .line 140
    .end local v10    # "refs":Ljava/lang/String;
    .end local v12    # "sbRefer":Ljava/lang/StringBuilder;
    :cond_4
    :goto_3
    invoke-static {}, Lcom/alibaba/alimei/sdk/datasource/DatasourceCenter;->getMailboxDatasource()Lcom/alibaba/alimei/sdk/datasource/MailboxDatasource;

    move-result-object v9

    .line 141
    .local v9, "mds":Lcom/alibaba/alimei/sdk/datasource/MailboxDatasource;
    invoke-static {}, Lcom/alibaba/alimei/sdk/datasource/DatasourceCenter;->getSettingDatasource()Lcom/alibaba/alimei/sdk/datasource/SettingDatasource;

    move-result-object v13

    .line 142
    .local v13, "settingDatasource":Lcom/alibaba/alimei/sdk/datasource/SettingDatasource;
    const/4 v14, 0x1

    .line 144
    .local v14, "sync2Server":Z
    if-nez v6, :cond_6

    .line 145
    const-string/jumbo v3, "AbsSaveDraftOrSendTask"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v5, v0, Lqk;->a:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " message has been deleted localId: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-wide v0, v0, Lqk;->d:J

    move-wide/from16 v16, v0

    move-wide/from16 v0, v16

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lzd;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    const-string/jumbo v3, "AbsSaveDraftOrSendTask"

    const-string/jumbo v4, "execute, message == null"

    invoke-static {v3, v4}, Lyx;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    const/4 v3, 0x1

    goto/16 :goto_2

    .line 136
    .end local v9    # "mds":Lcom/alibaba/alimei/sdk/datasource/MailboxDatasource;
    .end local v13    # "settingDatasource":Lcom/alibaba/alimei/sdk/datasource/SettingDatasource;
    .end local v14    # "sync2Server":Z
    .restart local v10    # "refs":Ljava/lang/String;
    :cond_5
    move-object/from16 v0, p0

    iget-object v3, v0, Lqk;->i:Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v3, v0, Lqk;->j:Ljava/lang/String;

    goto :goto_3

    .line 150
    .end local v10    # "refs":Ljava/lang/String;
    .restart local v9    # "mds":Lcom/alibaba/alimei/sdk/datasource/MailboxDatasource;
    .restart local v13    # "settingDatasource":Lcom/alibaba/alimei/sdk/datasource/SettingDatasource;
    .restart local v14    # "sync2Server":Z
    :cond_6
    move-object/from16 v0, p0

    iget-wide v4, v0, Lqk;->e:J

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lqk;->g:Z

    if-eqz v3, :cond_9

    const/4 v3, 0x3

    :goto_4
    invoke-interface {v9, v4, v5, v3}, Lcom/alibaba/alimei/sdk/datasource/MailboxDatasource;->queryMailboxByType(JI)Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lqk;->l:Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;

    .line 152
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lqk;->g:Z

    if-eqz v3, :cond_7

    .line 153
    move-object/from16 v0, p0

    iget-object v3, v0, Lqk;->a:Ljava/lang/String;

    const/4 v4, 0x3

    invoke-interface {v13, v3, v4}, Lcom/alibaba/alimei/sdk/datasource/SettingDatasource;->getIsFolderTypeSync2Server(Ljava/lang/String;I)Z

    move-result v14

    .line 154
    move-object/from16 v0, p0

    iget-object v3, v0, Lqk;->a:Ljava/lang/String;

    const/4 v4, 0x3

    invoke-interface {v13, v3, v4}, Lcom/alibaba/alimei/sdk/datasource/SettingDatasource;->getFolderByUserDefineType(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v15

    .line 155
    .local v15, "userDefineDraftServerId":Ljava/lang/String;
    if-eqz v14, :cond_7

    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_7

    .line 156
    move-object/from16 v0, p0

    iget-wide v4, v0, Lqk;->e:J

    invoke-interface {v9, v4, v5, v15}, Lcom/alibaba/alimei/sdk/datasource/MailboxDatasource;->queryMailboxByServerId(JLjava/lang/String;)Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lqk;->l:Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;

    .line 157
    const-string/jumbo v3, "AbsSaveDraftOrSendTask"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v7, v0, Lqk;->a:Ljava/lang/String;

    aput-object v7, v4, v5

    const/4 v5, 0x1

    const-string/jumbo v7, " use custom define draft box "

    aput-object v7, v4, v5

    const/4 v5, 0x2

    aput-object v15, v4, v5

    invoke-static {v4}, Lzc;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lyx;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    .end local v15    # "userDefineDraftServerId":Ljava/lang/String;
    :cond_7
    move-object/from16 v0, p0

    iget-object v3, v0, Lqk;->l:Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;

    if-eqz v3, :cond_8

    move-object/from16 v0, p0

    iget-object v3, v0, Lqk;->l:Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;

    if-eqz v3, :cond_a

    move-object/from16 v0, p0

    iget-object v3, v0, Lqk;->l:Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;

    iget-wide v4, v3, Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;->mId:J

    iget-wide v0, v6, Lcom/alibaba/alimei/sdk/db/mail/entry/Message;->mMailboxKey:J

    move-wide/from16 v16, v0

    cmp-long v3, v4, v16

    if-eqz v3, :cond_a

    .line 164
    :cond_8
    const-string/jumbo v3, "AbsSaveDraftOrSendTask"

    const-string/jumbo v4, "execute, mMailBox == null || mMailBox.mId != message.mMailboxKey"

    invoke-static {v3, v4}, Lyx;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    const/4 v3, 0x0

    goto/16 :goto_2

    .line 150
    :cond_9
    const/4 v3, 0x4

    goto :goto_4

    .line 169
    :cond_a
    move-object/from16 v0, p0

    iget-object v3, v0, Lqk;->m:Lyc;

    move-object/from16 v0, p0

    iget-wide v4, v0, Lqk;->d:J

    iput-wide v4, v3, Lyc;->e:J

    .line 170
    invoke-static {v6}, Lcom/alibaba/alimei/sdk/datasource/impl/MessageDatasourceImpl;->buildMailSnippetModel(Lcom/alibaba/alimei/sdk/db/mail/entry/Message;)Lcom/alibaba/alimei/sdk/model/MailSnippetModel;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lqk;->h:Lcom/alibaba/alimei/sdk/model/MailSnippetModel;

    .line 171
    move-object/from16 v0, p0

    iget-object v3, v0, Lqk;->h:Lcom/alibaba/alimei/sdk/model/MailSnippetModel;

    const/4 v4, 0x1

    iput v4, v3, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->statusCode:I

    .line 172
    move-object/from16 v0, p0

    iget-object v3, v0, Lqk;->m:Lyc;

    move-object/from16 v0, p0

    iget-object v4, v0, Lqk;->h:Lcom/alibaba/alimei/sdk/model/MailSnippetModel;

    iput-object v4, v3, Lyc;->g:Ljava/lang/Object;

    .line 173
    move-object/from16 v0, p0

    iget-object v3, v0, Lqk;->m:Lyc;

    const/4 v4, 0x0

    iput v4, v3, Lyc;->c:I

    .line 174
    invoke-static {}, Lafv;->d()Lya;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lqk;->m:Lyc;

    invoke-interface {v3, v4}, Lya;->a(Lyc;)V

    .line 175
    const-string/jumbo v4, "AbsSaveDraftOrSendTask"

    const/4 v3, 0x4

    new-array v5, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v7, "postEventMessage\uff0cEventStatus.StatusStart msgId:"

    aput-object v7, v5, v3

    const/4 v3, 0x1

    move-object/from16 v0, p0

    iget-wide v0, v0, Lqk;->d:J

    move-wide/from16 v16, v0

    invoke-static/range {v16 .. v17}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v3

    const/4 v3, 0x2

    const-string/jumbo v7, " subLen:"

    aput-object v7, v5, v3

    const/4 v7, 0x3

    move-object/from16 v0, p0

    iget-object v3, v0, Lqk;->h:Lcom/alibaba/alimei/sdk/model/MailSnippetModel;

    iget-object v3, v3, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->subject:Ljava/lang/String;

    if-nez v3, :cond_d

    const-string/jumbo v3, "0"

    .line 176
    :goto_5
    aput-object v3, v5, v7

    .line 175
    invoke-static {v5}, Lzc;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Lyx;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    if-eqz v14, :cond_f

    .line 4199
    const/4 v7, 0x0

    .line 4200
    iget-boolean v3, v6, Lcom/alibaba/alimei/sdk/db/mail/entry/Message;->mFlagAttachment:Z

    if-nez v3, :cond_b

    iget-boolean v3, v6, Lcom/alibaba/alimei/sdk/db/mail/entry/Message;->hasResourceAttach:Z

    if-eqz v3, :cond_c

    .line 4201
    :cond_b
    invoke-static {}, Lcom/alibaba/alimei/sdk/datasource/DatasourceCenter;->getAttachmentDatasource()Lcom/alibaba/alimei/sdk/datasource/AttachmentDatasource;

    move-result-object v3

    move-object/from16 v0, p0

    iget-wide v4, v0, Lqk;->e:J

    iget-wide v0, v6, Lcom/alibaba/alimei/sdk/db/mail/entry/Message;->mId:J

    move-wide/from16 v16, v0

    move-wide/from16 v0, v16

    invoke-interface {v3, v4, v5, v0, v1}, Lcom/alibaba/alimei/sdk/datasource/AttachmentDatasource;->queryAllInnerAttachment(JJ)Ljava/util/List;

    move-result-object v7

    .line 4203
    :cond_c
    move-object/from16 v0, p0

    iget-wide v4, v0, Lqk;->e:J

    move-object/from16 v0, p0

    iget-object v8, v0, Lqk;->c:Lcom/alibaba/alimei/emailcommon/Account;

    move-object/from16 v3, p0

    invoke-direct/range {v3 .. v8}, Lqk;->a(JLcom/alibaba/alimei/sdk/db/mail/entry/Message;Ljava/util/List;Lcom/alibaba/alimei/emailcommon/Account;)Lvh;

    move-result-object v3

    .line 4204
    if-nez v3, :cond_e

    .line 4205
    const/4 v11, 0x0

    .line 179
    .local v11, "ret":Z
    :goto_6
    if-nez v11, :cond_10

    .line 180
    const-string/jumbo v3, "AbsSaveDraftOrSendTask"

    const-string/jumbo v4, "buildMailByMessage fail"

    invoke-static {v3, v4}, Lyx;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    move-object/from16 v0, p0

    iget-object v3, v0, Lqk;->m:Lyc;

    sget-object v4, Lcom/alibaba/alimei/framework/SDKError;->Unknown:Lcom/alibaba/alimei/framework/SDKError;

    invoke-static {v4}, Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;->buildSdkException(Lcom/alibaba/alimei/framework/SDKError;)Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    move-result-object v4

    iput-object v4, v3, Lyc;->h:Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    .line 182
    move-object/from16 v0, p0

    iget-object v3, v0, Lqk;->m:Lyc;

    const/4 v4, 0x2

    iput v4, v3, Lyc;->c:I

    .line 183
    invoke-static {}, Lafv;->d()Lya;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lqk;->m:Lyc;

    invoke-interface {v3, v4}, Lya;->a(Lyc;)V

    .line 184
    const/4 v3, 0x0

    goto/16 :goto_2

    .line 175
    .end local v11    # "ret":Z
    :cond_d
    move-object/from16 v0, p0

    iget-object v3, v0, Lqk;->h:Lcom/alibaba/alimei/sdk/model/MailSnippetModel;

    iget-object v3, v3, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->subject:Ljava/lang/String;

    .line 176
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_5

    .line 4207
    :cond_e
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lqk;->a(Lcom/alibaba/alimei/emailcommon/mail/Message;)V

    .line 4208
    const/4 v11, 0x1

    goto :goto_6

    .line 187
    :cond_f
    const-string/jumbo v3, "AbsSaveDraftOrSendTask"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v7, v0, Lqk;->a:Ljava/lang/String;

    aput-object v7, v4, v5

    const/4 v5, 0x1

    const-string/jumbo v7, " save local draft"

    aput-object v7, v4, v5

    invoke-static {v4}, Lzc;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lyx;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    :cond_10
    const/4 v3, 0x1

    goto/16 :goto_2
.end method

.method protected final d()V
    .locals 8

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 252
    iget-object v2, p0, Lqk;->h:Lcom/alibaba/alimei/sdk/model/MailSnippetModel;

    if-eqz v2, :cond_0

    .line 253
    new-instance v1, Lcom/alibaba/alimei/sdk/model/MailGroupModel;

    iget-wide v2, p0, Lqk;->e:J

    iget-object v4, p0, Lqk;->a:Ljava/lang/String;

    const/16 v5, -0x9

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/alibaba/alimei/sdk/model/MailGroupModel;-><init>(JLjava/lang/String;I)V

    .line 254
    .local v1, "mailGroupModel":Lcom/alibaba/alimei/sdk/model/MailGroupModel;
    iget-object v2, p0, Lqk;->h:Lcom/alibaba/alimei/sdk/model/MailSnippetModel;

    invoke-virtual {v1, v2}, Lcom/alibaba/alimei/sdk/model/MailGroupModel;->addDeletedMails(Lcom/alibaba/alimei/sdk/model/MailSnippetModel;)V

    .line 255
    invoke-static {}, Lcom/alibaba/alimei/sdk/datasource/DatasourceCenter;->getInstance()Lcom/alibaba/alimei/sdk/datasource/DatasourceCenter;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/alibaba/alimei/sdk/datasource/DatasourceCenter;->notifyMailChanged(Lcom/alibaba/alimei/sdk/model/MailGroupModel;)V

    .line 257
    .end local v1    # "mailGroupModel":Lcom/alibaba/alimei/sdk/model/MailGroupModel;
    :cond_0
    new-instance v0, Lcom/alibaba/alimei/orm/query/Delete;

    const-class v2, Lcom/alibaba/alimei/sdk/db/mail/entry/Message;

    const-string/jumbo v3, "EmailProvider.db"

    const-string/jumbo v4, "Message"

    invoke-direct {v0, v2, v3, v4}, Lcom/alibaba/alimei/orm/query/Delete;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V

    .line 258
    .local v0, "delete":Lcom/alibaba/alimei/orm/query/Delete;
    const-string/jumbo v2, "_id=?"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-wide v6, p0, Lqk;->d:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v0, v2, v3}, Lcom/alibaba/alimei/orm/query/Delete;->where(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 259
    invoke-virtual {v0}, Lcom/alibaba/alimei/orm/query/Delete;->execute()I

    .line 260
    return-void
.end method
