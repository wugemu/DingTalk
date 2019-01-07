.class public abstract Lahp;
.super Lyr;
.source "AbsSendMailOrSyncDraftTask.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lahp$a;
    }
.end annotation


# instance fields
.field protected a:Lahp$a;

.field private b:Lcom/alibaba/alimei/restfulapi/tracker/fullstatistics/model/AlimeiFullFlowUnifyStatisticsModel;

.field private c:Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;

.field private d:Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;

.field private e:Lcom/alibaba/alimei/restfulapi/service/RpcCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/alibaba/alimei/restfulapi/service/RpcCallback",
            "<",
            "Lcom/alibaba/alimei/restfulapi/response/data/itemsupdate/MailsUpdateResult;",
            ">;"
        }
    .end annotation
.end field

.field private f:Lcom/alibaba/alimei/sdk/db/mail/entry/MessageSync;

.field private g:Lcom/alibaba/alimei/sdk/model/MailSnippetModel;

.field private h:I

.field private i:I

.field private j:I

.field private k:Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

.field private l:Lcom/alibaba/alimei/restfulapi/response/data/itemsupdate/SingleMailUpdateResult;

.field private m:Z

.field private n:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/sdk/db/mail/entry/Attachment;",
            ">;"
        }
    .end annotation
.end field

.field private o:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/sdk/db/mail/entry/Attachment;",
            ">;"
        }
    .end annotation
.end field

.field private p:J

.field private q:J

.field private z:I


# direct methods
.method protected constructor <init>()V
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 83
    invoke-direct {p0}, Lyr;-><init>()V

    .line 80
    new-instance v0, Lcom/alibaba/alimei/restfulapi/tracker/fullstatistics/model/AlimeiFullFlowUnifyStatisticsModel;

    invoke-direct {v0}, Lcom/alibaba/alimei/restfulapi/tracker/fullstatistics/model/AlimeiFullFlowUnifyStatisticsModel;-><init>()V

    iput-object v0, p0, Lahp;->b:Lcom/alibaba/alimei/restfulapi/tracker/fullstatistics/model/AlimeiFullFlowUnifyStatisticsModel;

    .line 184
    iput-object v2, p0, Lahp;->e:Lcom/alibaba/alimei/restfulapi/service/RpcCallback;

    .line 408
    iput v1, p0, Lahp;->h:I

    .line 409
    iput v1, p0, Lahp;->i:I

    .line 410
    iput v3, p0, Lahp;->j:I

    .line 411
    iput-object v2, p0, Lahp;->k:Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    .line 412
    iput-object v2, p0, Lahp;->l:Lcom/alibaba/alimei/restfulapi/response/data/itemsupdate/SingleMailUpdateResult;

    .line 413
    iput-boolean v3, p0, Lahp;->m:Z

    .line 480
    iput-wide v4, p0, Lahp;->p:J

    .line 481
    iput-wide v4, p0, Lahp;->q:J

    .line 482
    iput v1, p0, Lahp;->z:I

    .line 84
    new-instance v0, Lahp$a;

    invoke-direct {v0}, Lahp$a;-><init>()V

    iput-object v0, p0, Lahp;->a:Lahp$a;

    .line 85
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;JJLjava/lang/String;)V
    .locals 6
    .param p1, "accountName"    # Ljava/lang/String;
    .param p2, "accountId"    # J
    .param p4, "messageId"    # J
    .param p6, "srcServerId"    # Ljava/lang/String;

    .prologue
    const-wide/16 v4, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 93
    invoke-direct {p0, p2, p3}, Lyr;-><init>(J)V

    .line 80
    new-instance v0, Lcom/alibaba/alimei/restfulapi/tracker/fullstatistics/model/AlimeiFullFlowUnifyStatisticsModel;

    invoke-direct {v0}, Lcom/alibaba/alimei/restfulapi/tracker/fullstatistics/model/AlimeiFullFlowUnifyStatisticsModel;-><init>()V

    iput-object v0, p0, Lahp;->b:Lcom/alibaba/alimei/restfulapi/tracker/fullstatistics/model/AlimeiFullFlowUnifyStatisticsModel;

    .line 184
    iput-object v2, p0, Lahp;->e:Lcom/alibaba/alimei/restfulapi/service/RpcCallback;

    .line 408
    iput v1, p0, Lahp;->h:I

    .line 409
    iput v1, p0, Lahp;->i:I

    .line 410
    iput v3, p0, Lahp;->j:I

    .line 411
    iput-object v2, p0, Lahp;->k:Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    .line 412
    iput-object v2, p0, Lahp;->l:Lcom/alibaba/alimei/restfulapi/response/data/itemsupdate/SingleMailUpdateResult;

    .line 413
    iput-boolean v3, p0, Lahp;->m:Z

    .line 480
    iput-wide v4, p0, Lahp;->p:J

    .line 481
    iput-wide v4, p0, Lahp;->q:J

    .line 482
    iput v1, p0, Lahp;->z:I

    .line 94
    new-instance v0, Lahp$a;

    invoke-direct {v0}, Lahp$a;-><init>()V

    iput-object v0, p0, Lahp;->a:Lahp$a;

    .line 95
    iget-object v0, p0, Lahp;->a:Lahp$a;

    iput-object p1, v0, Lahp$a;->a:Ljava/lang/String;

    .line 96
    iget-object v0, p0, Lahp;->a:Lahp$a;

    iput-wide p4, v0, Lahp$a;->b:J

    .line 97
    iget-object v0, p0, Lahp;->a:Lahp$a;

    iput-object p6, v0, Lahp$a;->c:Ljava/lang/String;

    .line 98
    return-void
.end method

.method static synthetic a(Lahp;I)I
    .locals 0
    .param p0, "x0"    # Lahp;
    .param p1, "x1"    # I

    .prologue
    .line 68
    iput p1, p0, Lahp;->h:I

    return p1
.end method

.method static synthetic a(Lahp;J)J
    .locals 1
    .param p0, "x0"    # Lahp;
    .param p1, "x1"    # J

    .prologue
    .line 68
    iput-wide p1, p0, Lahp;->p:J

    return-wide p1
.end method

.method static synthetic a(Lahp;Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;)Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;
    .locals 0
    .param p0, "x0"    # Lahp;
    .param p1, "x1"    # Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    .prologue
    .line 68
    iput-object p1, p0, Lahp;->k:Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    return-object p1
.end method

.method private final a(JLcom/alibaba/alimei/sdk/db/mail/entry/Message;Ljava/util/List;)Lcom/alibaba/alimei/restfulapi/data/Mail;
    .locals 33
    .param p1, "accountId"    # J
    .param p3, "message"    # Lcom/alibaba/alimei/sdk/db/mail/entry/Message;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lcom/alibaba/alimei/sdk/db/mail/entry/Message;",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/sdk/db/mail/entry/Attachment;",
            ">;)",
            "Lcom/alibaba/alimei/restfulapi/data/Mail;"
        }
    .end annotation

    .prologue
    .line 643
    .local p4, "attachments":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/sdk/db/mail/entry/Attachment;>;"
    new-instance v21, Lcom/alibaba/alimei/restfulapi/data/Mail;

    invoke-direct/range {v21 .. v21}, Lcom/alibaba/alimei/restfulapi/data/Mail;-><init>()V

    .line 646
    .local v21, "newMail":Lcom/alibaba/alimei/restfulapi/data/Mail;
    move-object/from16 v0, p3

    iget-object v0, v0, Lcom/alibaba/alimei/sdk/db/mail/entry/Message;->mServerId:Ljava/lang/String;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lair;->c(Ljava/lang/String;)Z

    move-result v27

    if-nez v27, :cond_0

    .line 647
    move-object/from16 v0, p3

    iget-object v0, v0, Lcom/alibaba/alimei/sdk/db/mail/entry/Message;->mServerId:Ljava/lang/String;

    move-object/from16 v27, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/alibaba/alimei/restfulapi/data/Mail;->setItemId(Ljava/lang/String;)V

    .line 649
    :cond_0
    move-object/from16 v0, p3

    iget-object v0, v0, Lcom/alibaba/alimei/sdk/db/mail/entry/Message;->mMessageId:Ljava/lang/String;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move-object/from16 v1, v21

    iput-object v0, v1, Lcom/alibaba/alimei/restfulapi/data/Mail;->messageId:Ljava/lang/String;

    .line 650
    move-object/from16 v0, p3

    iget-object v0, v0, Lcom/alibaba/alimei/sdk/db/mail/entry/Message;->mFrom:Ljava/lang/String;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lair;->g(Ljava/lang/String;)Lcom/alibaba/alimei/restfulapi/data/AliAddress;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, v21

    iput-object v0, v1, Lcom/alibaba/alimei/restfulapi/data/Mail;->from:Lcom/alibaba/alimei/restfulapi/data/AliAddress;

    .line 652
    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/alibaba/alimei/restfulapi/data/Mail;->from:Lcom/alibaba/alimei/restfulapi/data/AliAddress;

    move-object/from16 v27, v0

    if-eqz v27, :cond_4

    move-object/from16 v0, p3

    iget-object v0, v0, Lcom/alibaba/alimei/sdk/db/mail/entry/Message;->delegateByAccount:Ljava/lang/String;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v27

    if-nez v27, :cond_4

    .line 653
    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/alibaba/alimei/restfulapi/data/Mail;->from:Lcom/alibaba/alimei/restfulapi/data/AliAddress;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/alibaba/alimei/restfulapi/data/AliAddress;->address:Ljava/lang/String;

    move-object/from16 v18, v0

    .line 654
    .local v18, "fromMail":Ljava/lang/String;
    move-object/from16 v0, p3

    iget-object v0, v0, Lcom/alibaba/alimei/sdk/db/mail/entry/Message;->delegateByAccount:Ljava/lang/String;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-nez v27, :cond_3

    const/16 v27, 0x1

    :goto_0
    move/from16 v0, v27

    move-object/from16 v1, v21

    iput-boolean v0, v1, Lcom/alibaba/alimei/restfulapi/data/Mail;->proxySend:Z

    .line 658
    .end local v18    # "fromMail":Ljava/lang/String;
    :goto_1
    move-object/from16 v0, p3

    iget-object v0, v0, Lcom/alibaba/alimei/sdk/db/mail/entry/Message;->mCc:Ljava/lang/String;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lair;->m(Ljava/lang/String;)Ljava/util/List;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, v21

    iput-object v0, v1, Lcom/alibaba/alimei/restfulapi/data/Mail;->cc:Ljava/util/List;

    .line 659
    move-object/from16 v0, p3

    iget-object v0, v0, Lcom/alibaba/alimei/sdk/db/mail/entry/Message;->mBcc:Ljava/lang/String;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lair;->m(Ljava/lang/String;)Ljava/util/List;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, v21

    iput-object v0, v1, Lcom/alibaba/alimei/restfulapi/data/Mail;->bcc:Ljava/util/List;

    .line 660
    move-object/from16 v0, p3

    iget-object v0, v0, Lcom/alibaba/alimei/sdk/db/mail/entry/Message;->mTo:Ljava/lang/String;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lair;->m(Ljava/lang/String;)Ljava/util/List;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, v21

    iput-object v0, v1, Lcom/alibaba/alimei/restfulapi/data/Mail;->to:Ljava/util/List;

    .line 661
    move-object/from16 v0, p3

    iget-object v0, v0, Lcom/alibaba/alimei/sdk/db/mail/entry/Message;->mExtData:Ljava/lang/String;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lair;->h(Ljava/lang/String;)Lcom/alibaba/alimei/restfulapi/data/ExtData;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, v21

    iput-object v0, v1, Lcom/alibaba/alimei/restfulapi/data/Mail;->extData:Lcom/alibaba/alimei/restfulapi/data/ExtData;

    .line 662
    move-object/from16 v0, p3

    iget-object v0, v0, Lcom/alibaba/alimei/sdk/db/mail/entry/Message;->messageTags:Ljava/lang/String;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lair;->j(Ljava/lang/String;)Ljava/util/List;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, v21

    iput-object v0, v1, Lcom/alibaba/alimei/restfulapi/data/Mail;->tags:Ljava/util/List;

    .line 663
    move-object/from16 v0, p3

    iget-object v0, v0, Lcom/alibaba/alimei/sdk/db/mail/entry/Message;->mSubject:Ljava/lang/String;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move-object/from16 v1, v21

    iput-object v0, v1, Lcom/alibaba/alimei/restfulapi/data/Mail;->subject:Ljava/lang/String;

    .line 664
    move-object/from16 v0, p3

    iget-wide v0, v0, Lcom/alibaba/alimei/sdk/db/mail/entry/Message;->mTimeStamp:J

    move-wide/from16 v28, v0

    move-wide/from16 v0, v28

    move-object/from16 v2, v21

    iput-wide v0, v2, Lcom/alibaba/alimei/restfulapi/data/Mail;->date:J

    .line 666
    move-object/from16 v0, p3

    iget-object v0, v0, Lcom/alibaba/alimei/sdk/db/mail/entry/Message;->mServerId:Ljava/lang/String;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move-object/from16 v1, v21

    iput-object v0, v1, Lcom/alibaba/alimei/restfulapi/data/Mail;->clientId:Ljava/lang/String;

    .line 667
    move-object/from16 v0, p3

    iget-boolean v0, v0, Lcom/alibaba/alimei/sdk/db/mail/entry/Message;->separatedSend:Z

    move/from16 v27, v0

    move/from16 v0, v27

    move-object/from16 v1, v21

    iput-boolean v0, v1, Lcom/alibaba/alimei/restfulapi/data/Mail;->separatedSend:Z

    .line 668
    move-object/from16 v0, p3

    iget-object v0, v0, Lcom/alibaba/alimei/sdk/db/mail/entry/Message;->timingSend:Ljava/lang/String;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move-object/from16 v1, v21

    iput-object v0, v1, Lcom/alibaba/alimei/restfulapi/data/Mail;->timingSend:Ljava/lang/String;

    .line 669
    move-object/from16 v0, p3

    iget v0, v0, Lcom/alibaba/alimei/sdk/db/mail/entry/Message;->priority:I

    move/from16 v27, v0

    move/from16 v0, v27

    move-object/from16 v1, v21

    iput v0, v1, Lcom/alibaba/alimei/restfulapi/data/Mail;->priority:I

    .line 670
    move-object/from16 v0, p3

    iget-object v0, v0, Lcom/alibaba/alimei/sdk/db/mail/entry/Message;->extendHeader:Ljava/lang/String;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v27

    if-nez v27, :cond_1

    .line 671
    new-instance v27, Lcom/alibaba/alimei/restfulapi/data/MailExtHeader;

    move-object/from16 v0, p3

    iget-object v0, v0, Lcom/alibaba/alimei/sdk/db/mail/entry/Message;->extendHeader:Ljava/lang/String;

    move-object/from16 v28, v0

    invoke-direct/range {v27 .. v28}, Lcom/alibaba/alimei/restfulapi/data/MailExtHeader;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v27

    move-object/from16 v1, v21

    iput-object v0, v1, Lcom/alibaba/alimei/restfulapi/data/Mail;->extendHeaders:Lcom/alibaba/alimei/restfulapi/data/MailExtHeader;

    .line 676
    :cond_1
    invoke-static {}, Lcom/alibaba/alimei/sdk/datasource/DatasourceCenter;->getMessageDatasource()Lcom/alibaba/alimei/sdk/datasource/MessageDatasource;

    move-result-object v27

    move-object/from16 v0, p3

    iget-wide v0, v0, Lcom/alibaba/alimei/sdk/db/mail/entry/Message;->mId:J

    move-wide/from16 v28, v0

    move-object/from16 v0, v27

    move-wide/from16 v1, p1

    move-wide/from16 v3, v28

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/alibaba/alimei/sdk/datasource/MessageDatasource;->queryMessageBodyById(JJ)Lcom/alibaba/alimei/sdk/db/mail/entry/Body;

    move-result-object v9

    .line 678
    .local v9, "body":Lcom/alibaba/alimei/sdk/db/mail/entry/Body;
    if-eqz v9, :cond_7

    .line 680
    iget-object v0, v9, Lcom/alibaba/alimei/sdk/db/mail/entry/Body;->mHtmlContent:Ljava/lang/String;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v27

    if-nez v27, :cond_5

    .line 681
    iget-object v10, v9, Lcom/alibaba/alimei/sdk/db/mail/entry/Body;->mHtmlContent:Ljava/lang/String;

    .line 689
    .local v10, "bodyHtml":Ljava/lang/String;
    :goto_2
    const-string/jumbo v27, "SendMailORSyncDraft"

    const/16 v28, 0x2

    move/from16 v0, v28

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v28, v0

    const/16 v29, 0x0

    const-string/jumbo v30, "saveOrSend mail body des: "

    aput-object v30, v28, v29

    const/16 v29, 0x1

    invoke-virtual {v9}, Lcom/alibaba/alimei/sdk/db/mail/entry/Body;->getBodySizeDesc()Ljava/lang/String;

    move-result-object v30

    aput-object v30, v28, v29

    invoke-static/range {v28 .. v28}, Lzc;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Lyx;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 694
    :goto_3
    move-object/from16 v0, v21

    iput-object v10, v0, Lcom/alibaba/alimei/restfulapi/data/Mail;->bodyHTML:Ljava/lang/String;

    .line 696
    if-eqz p4, :cond_a

    invoke-interface/range {p4 .. p4}, Ljava/util/List;->size()I

    move-result v27

    if-lez v27, :cond_a

    .line 697
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 698
    .local v7, "attachList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/restfulapi/data/Attach;>;"
    new-instance v23, Ljava/util/ArrayList;

    invoke-direct/range {v23 .. v23}, Ljava/util/ArrayList;-><init>()V

    .line 699
    .local v23, "resourceList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/restfulapi/data/Attach;>;"
    new-instance v27, Ljava/util/ArrayList;

    invoke-direct/range {v27 .. v27}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    iput-object v0, v1, Lahp;->n:Ljava/util/List;

    .line 700
    new-instance v27, Ljava/util/ArrayList;

    invoke-direct/range {v27 .. v27}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    iput-object v0, v1, Lahp;->o:Ljava/util/List;

    .line 701
    invoke-interface/range {p4 .. p4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v29

    :cond_2
    :goto_4
    invoke-interface/range {v29 .. v29}, Ljava/util/Iterator;->hasNext()Z

    move-result v27

    if-eqz v27, :cond_9

    invoke-interface/range {v29 .. v29}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/alibaba/alimei/sdk/db/mail/entry/Attachment;

    .line 11835
    .local v8, "attachment":Lcom/alibaba/alimei/sdk/db/mail/entry/Attachment;
    new-instance v6, Lcom/alibaba/alimei/restfulapi/data/Attach;

    invoke-direct {v6}, Lcom/alibaba/alimei/restfulapi/data/Attach;-><init>()V

    .line 11837
    iget-object v0, v8, Lcom/alibaba/alimei/sdk/db/mail/entry/Attachment;->mFileName:Ljava/lang/String;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iput-object v0, v6, Lcom/alibaba/alimei/restfulapi/data/Attach;->name:Ljava/lang/String;

    .line 11838
    iget-object v0, v8, Lcom/alibaba/alimei/sdk/db/mail/entry/Attachment;->mTempLoaction:Ljava/lang/String;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iput-object v0, v6, Lcom/alibaba/alimei/restfulapi/data/Attach;->tempLocation:Ljava/lang/String;

    .line 11839
    iget-object v0, v8, Lcom/alibaba/alimei/sdk/db/mail/entry/Attachment;->mContentId:Ljava/lang/String;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iput-object v0, v6, Lcom/alibaba/alimei/restfulapi/data/Attach;->contentId:Ljava/lang/String;

    .line 11840
    iget-object v0, v8, Lcom/alibaba/alimei/sdk/db/mail/entry/Attachment;->mAttachmentId:Ljava/lang/String;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iput-object v0, v6, Lcom/alibaba/alimei/restfulapi/data/Attach;->id:Ljava/lang/String;

    .line 11843
    iget-object v0, v8, Lcom/alibaba/alimei/sdk/db/mail/entry/Attachment;->originId:Ljava/lang/String;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iput-object v0, v6, Lcom/alibaba/alimei/restfulapi/data/Attach;->originId:Ljava/lang/String;

    .line 11844
    iget-object v0, v8, Lcom/alibaba/alimei/sdk/db/mail/entry/Attachment;->originSpaceId:Ljava/lang/String;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iput-object v0, v6, Lcom/alibaba/alimei/restfulapi/data/Attach;->originSpaceId:Ljava/lang/String;

    .line 11846
    iget-object v0, v8, Lcom/alibaba/alimei/sdk/db/mail/entry/Attachment;->originToken:Ljava/lang/String;

    move-object/from16 v28, v0

    .line 11847
    iget-object v0, v8, Lcom/alibaba/alimei/sdk/db/mail/entry/Attachment;->originAccount:Ljava/lang/String;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v27

    if-nez v27, :cond_21

    .line 11848
    invoke-static {}, Lafv;->e()Lcom/alibaba/alimei/framework/account/AccountApi;

    move-result-object v27

    iget-object v0, v8, Lcom/alibaba/alimei/sdk/db/mail/entry/Attachment;->originAccount:Ljava/lang/String;

    move-object/from16 v30, v0

    move-object/from16 v0, v27

    move-object/from16 v1, v30

    invoke-interface {v0, v1}, Lcom/alibaba/alimei/framework/account/AccountApi;->getAccessToken(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    .line 11849
    invoke-static/range {v27 .. v27}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v30

    if-nez v30, :cond_21

    .line 11853
    :goto_5
    move-object/from16 v0, v27

    iput-object v0, v6, Lcom/alibaba/alimei/restfulapi/data/Attach;->originToken:Ljava/lang/String;

    .line 11854
    const-string/jumbo v27, "SendMailORSyncDraft"

    invoke-virtual {v6}, Lcom/alibaba/alimei/restfulapi/data/Attach;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Lyp;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 703
    .local v6, "attach":Lcom/alibaba/alimei/restfulapi/data/Attach;
    iget v0, v8, Lcom/alibaba/alimei/sdk/db/mail/entry/Attachment;->attachmentType:I

    move/from16 v27, v0

    const/16 v28, 0x1

    move/from16 v0, v27

    move/from16 v1, v28

    if-ne v0, v1, :cond_8

    .line 704
    move-object/from16 v0, v23

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 705
    move-object/from16 v0, p0

    iget-object v0, v0, Lahp;->o:Ljava/util/List;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    invoke-interface {v0, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 711
    :goto_6
    invoke-virtual {v6}, Lcom/alibaba/alimei/restfulapi/data/Attach;->getOriginSpaceId()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v27 .. v27}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v27

    if-eqz v27, :cond_2

    iget-object v0, v6, Lcom/alibaba/alimei/restfulapi/data/Attach;->tempLocation:Ljava/lang/String;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v27

    if-eqz v27, :cond_2

    iget-object v0, v6, Lcom/alibaba/alimei/restfulapi/data/Attach;->id:Ljava/lang/String;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v27

    if-eqz v27, :cond_2

    .line 712
    const/16 v27, 0x4

    move/from16 v0, v27

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    const-string/jumbo v30, "attachment is invalid, tempLocation: "

    aput-object v30, v27, v28

    const/16 v28, 0x1

    iget-object v0, v6, Lcom/alibaba/alimei/restfulapi/data/Attach;->tempLocation:Ljava/lang/String;

    move-object/from16 v30, v0

    aput-object v30, v27, v28

    const/16 v28, 0x2

    const-string/jumbo v30, ", attachmentId: "

    aput-object v30, v27, v28

    const/16 v28, 0x3

    iget-object v0, v6, Lcom/alibaba/alimei/restfulapi/data/Attach;->id:Ljava/lang/String;

    move-object/from16 v30, v0

    aput-object v30, v27, v28

    invoke-static/range {v27 .. v27}, Lzc;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 714
    .local v14, "errMsg":Ljava/lang/String;
    const-string/jumbo v27, "SendMailORSyncDraft"

    move-object/from16 v0, v27

    invoke-static {v0, v14}, Lyx;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 715
    const-string/jumbo v27, "SendMailORSyncDraft"

    const-string/jumbo v28, "send mail error"

    const/16 v30, 0x0

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    move-object/from16 v2, v30

    invoke-static {v0, v1, v14, v2}, Lyo;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4

    .line 654
    .end local v6    # "attach":Lcom/alibaba/alimei/restfulapi/data/Attach;
    .end local v7    # "attachList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/restfulapi/data/Attach;>;"
    .end local v8    # "attachment":Lcom/alibaba/alimei/sdk/db/mail/entry/Attachment;
    .end local v9    # "body":Lcom/alibaba/alimei/sdk/db/mail/entry/Body;
    .end local v10    # "bodyHtml":Ljava/lang/String;
    .end local v14    # "errMsg":Ljava/lang/String;
    .end local v23    # "resourceList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/restfulapi/data/Attach;>;"
    .restart local v18    # "fromMail":Ljava/lang/String;
    :cond_3
    const/16 v27, 0x0

    goto/16 :goto_0

    .line 656
    .end local v18    # "fromMail":Ljava/lang/String;
    :cond_4
    const/16 v27, 0x0

    move/from16 v0, v27

    move-object/from16 v1, v21

    iput-boolean v0, v1, Lcom/alibaba/alimei/restfulapi/data/Mail;->proxySend:Z

    goto/16 :goto_1

    .line 683
    .restart local v9    # "body":Lcom/alibaba/alimei/sdk/db/mail/entry/Body;
    :cond_5
    iget-object v0, v9, Lcom/alibaba/alimei/sdk/db/mail/entry/Body;->mTextContent:Ljava/lang/String;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v27

    if-nez v27, :cond_6

    .line 684
    iget-object v0, v9, Lcom/alibaba/alimei/sdk/db/mail/entry/Body;->mTextContent:Ljava/lang/String;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lair;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .restart local v10    # "bodyHtml":Ljava/lang/String;
    goto/16 :goto_2

    .line 686
    .end local v10    # "bodyHtml":Ljava/lang/String;
    :cond_6
    const/4 v10, 0x0

    .restart local v10    # "bodyHtml":Ljava/lang/String;
    goto/16 :goto_2

    .line 691
    .end local v10    # "bodyHtml":Ljava/lang/String;
    :cond_7
    const/4 v10, 0x0

    .line 692
    .restart local v10    # "bodyHtml":Ljava/lang/String;
    const-string/jumbo v27, "SendMailORSyncDraft"

    const/16 v28, 0x1

    move/from16 v0, v28

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v28, v0

    const/16 v29, 0x0

    const-string/jumbo v30, "saveOrSend mail body size is zero!!!"

    aput-object v30, v28, v29

    invoke-static/range {v28 .. v28}, Lzc;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Lyx;->b(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 707
    .restart local v6    # "attach":Lcom/alibaba/alimei/restfulapi/data/Attach;
    .restart local v7    # "attachList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/restfulapi/data/Attach;>;"
    .restart local v8    # "attachment":Lcom/alibaba/alimei/sdk/db/mail/entry/Attachment;
    .restart local v23    # "resourceList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/restfulapi/data/Attach;>;"
    :cond_8
    invoke-interface {v7, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 708
    move-object/from16 v0, p0

    iget-object v0, v0, Lahp;->n:Ljava/util/List;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    invoke-interface {v0, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_6

    .line 718
    .end local v6    # "attach":Lcom/alibaba/alimei/restfulapi/data/Attach;
    .end local v8    # "attachment":Lcom/alibaba/alimei/sdk/db/mail/entry/Attachment;
    :cond_9
    move-object/from16 v0, v21

    iput-object v7, v0, Lcom/alibaba/alimei/restfulapi/data/Mail;->attachList:Ljava/util/List;

    .line 719
    move-object/from16 v0, v23

    move-object/from16 v1, v21

    iput-object v0, v1, Lcom/alibaba/alimei/restfulapi/data/Mail;->resourceList:Ljava/util/List;

    .line 723
    .end local v7    # "attachList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/restfulapi/data/Attach;>;"
    .end local v23    # "resourceList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/restfulapi/data/Attach;>;"
    :cond_a
    move-object/from16 v0, p3

    iget v15, v0, Lcom/alibaba/alimei/sdk/db/mail/entry/Message;->mFlags:I

    .line 724
    .local v15, "flags":I
    and-int/lit8 v27, v15, 0x1

    if-eqz v27, :cond_10

    const/16 v22, 0x1

    .line 725
    .local v22, "reply":Z
    :goto_7
    and-int/lit8 v27, v15, 0x2

    if-eqz v27, :cond_11

    const/16 v16, 0x1

    .line 726
    .local v16, "forward":Z
    :goto_8
    const/high16 v27, 0x200000

    and-int v27, v27, v15

    if-eqz v27, :cond_12

    const/16 v17, 0x1

    .line 727
    .local v17, "forwardCal":Z
    :goto_9
    const/high16 v27, 0x20000

    and-int v27, v27, v15

    if-nez v27, :cond_13

    const/16 v19, 0x1

    .line 730
    .local v19, "includeQuotedText":Z
    :goto_a
    if-eqz v22, :cond_14

    .line 731
    const/16 v27, 0x2

    move/from16 v0, v27

    move-object/from16 v1, v21

    iput v0, v1, Lcom/alibaba/alimei/restfulapi/data/Mail;->referType:I

    .line 740
    :goto_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lahp;->f:Lcom/alibaba/alimei/sdk/db/mail/entry/MessageSync;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/alibaba/alimei/sdk/db/mail/entry/MessageSync;->extenddata:Ljava/lang/String;

    move-object/from16 v26, v0

    .line 741
    .local v26, "srcServerId":Ljava/lang/String;
    invoke-static {}, Lcom/alibaba/alimei/sdk/datasource/DatasourceCenter;->getMessageDatasource()Lcom/alibaba/alimei/sdk/datasource/MessageDatasource;

    move-result-object v11

    .line 742
    .local v11, "ds":Lcom/alibaba/alimei/sdk/datasource/MessageDatasource;
    const-wide/16 v12, -0x1

    .line 743
    .local v12, "bodySourceKey":J
    if-eqz v9, :cond_b

    .line 744
    iget-wide v12, v9, Lcom/alibaba/alimei/sdk/db/mail/entry/Body;->mSourceKey:J

    .line 746
    :cond_b
    const-string/jumbo v27, "SendMailORSyncDraft"

    const/16 v28, 0xa

    move/from16 v0, v28

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v28, v0

    const/16 v29, 0x0

    const-string/jumbo v30, "query sourceMsg for msgId: "

    aput-object v30, v28, v29

    const/16 v29, 0x1

    move-object/from16 v0, p3

    iget-wide v0, v0, Lcom/alibaba/alimei/sdk/db/mail/entry/Message;->mId:J

    move-wide/from16 v30, v0

    invoke-static/range {v30 .. v31}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v30

    aput-object v30, v28, v29

    const/16 v29, 0x2

    const-string/jumbo v30, ", message sourceKey: "

    aput-object v30, v28, v29

    const/16 v29, 0x3

    move-object/from16 v0, p3

    iget-wide v0, v0, Lcom/alibaba/alimei/sdk/db/mail/entry/Message;->sourceId:J

    move-wide/from16 v30, v0

    .line 747
    invoke-static/range {v30 .. v31}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v30

    aput-object v30, v28, v29

    const/16 v29, 0x4

    const-string/jumbo v30, ", body sourceKey: "

    aput-object v30, v28, v29

    const/16 v29, 0x5

    invoke-static {v12, v13}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v30

    aput-object v30, v28, v29

    const/16 v29, 0x6

    const-string/jumbo v30, ", isSaveDraft: "

    aput-object v30, v28, v29

    const/16 v29, 0x7

    invoke-virtual/range {p0 .. p0}, Lahp;->g()Z

    move-result v30

    invoke-static/range {v30 .. v30}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v30

    aput-object v30, v28, v29

    const/16 v29, 0x8

    const-string/jumbo v30, "\uff0c srcServerId: "

    aput-object v30, v28, v29

    const/16 v29, 0x9

    aput-object v26, v28, v29

    .line 746
    invoke-static/range {v28 .. v28}, Lzc;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Lyx;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 749
    move-object/from16 v0, p3

    iget-wide v0, v0, Lcom/alibaba/alimei/sdk/db/mail/entry/Message;->mId:J

    move-wide/from16 v28, v0

    move-wide/from16 v0, p1

    move-wide/from16 v2, v28

    invoke-interface {v11, v0, v1, v2, v3}, Lcom/alibaba/alimei/sdk/datasource/MessageDatasource;->queryMailSourceMessage(JJ)Lcom/alibaba/alimei/sdk/db/mail/entry/Message;

    move-result-object v24

    .line 751
    .local v24, "sourceMsg":Lcom/alibaba/alimei/sdk/db/mail/entry/Message;
    const-string/jumbo v27, "SendMailORSyncDraft"

    new-instance v28, Ljava/lang/StringBuilder;

    const-string/jumbo v29, "sourceMsg: "

    invoke-direct/range {v28 .. v29}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v28

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Lyx;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 753
    if-nez v22, :cond_c

    if-eqz v16, :cond_18

    .line 755
    :cond_c
    invoke-virtual/range {p0 .. p0}, Lahp;->g()Z

    move-result v27

    invoke-static/range {v27 .. v27}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v20

    .line 756
    .local v20, "isSaveDraft":Ljava/lang/String;
    if-eqz v19, :cond_e

    if-eqz v24, :cond_d

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/alibaba/alimei/sdk/db/mail/entry/Message;->mServerId:Ljava/lang/String;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v27

    if-eqz v27, :cond_e

    .line 757
    :cond_d
    const/16 v27, 0x2

    move/from16 v0, v27

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    const-string/jumbo v29, "reply or forward queryMailSourceMessage fail, quote may be dimiss, newMail:"

    aput-object v29, v27, v28

    const/16 v28, 0x1

    invoke-virtual/range {v21 .. v21}, Lcom/alibaba/alimei/restfulapi/data/Mail;->toString()Ljava/lang/String;

    move-result-object v29

    aput-object v29, v27, v28

    invoke-static/range {v27 .. v27}, Lzc;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 758
    .restart local v14    # "errMsg":Ljava/lang/String;
    const-string/jumbo v27, "SendMailORSyncDraft"

    const/16 v28, 0x2

    move/from16 v0, v28

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v28, v0

    const/16 v29, 0x0

    const-string/jumbo v30, "reply or forward queryMailSourceMessage fail, quote may be dimiss, newMail info:"

    aput-object v30, v28, v29

    const/16 v29, 0x1

    invoke-virtual/range {v21 .. v21}, Lcom/alibaba/alimei/restfulapi/data/Mail;->toJson()Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v30 .. v30}, Lyw;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v30

    aput-object v30, v28, v29

    invoke-static/range {v28 .. v28}, Lcom/alibaba/alimei/restfulapi/utils/StringUtils;->getAppendString([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Lyx;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 759
    const-string/jumbo v27, "sendMail"

    const-string/jumbo v28, "sendMail error"

    const/16 v29, 0x0

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    move-object/from16 v2, v29

    invoke-static {v0, v1, v14, v2}, Lyo;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 760
    move-object/from16 v0, p3

    iget-wide v0, v0, Lcom/alibaba/alimei/sdk/db/mail/entry/Message;->sourceId:J

    move-wide/from16 v28, v0

    const-wide/16 v30, 0x0

    cmp-long v27, v28, v30

    if-lez v27, :cond_e

    move-object/from16 v0, p3

    iget-object v0, v0, Lcom/alibaba/alimei/sdk/db/mail/entry/Message;->mServerId:Ljava/lang/String;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v27

    if-nez v27, :cond_e

    move-object/from16 v0, p3

    iget-object v0, v0, Lcom/alibaba/alimei/sdk/db/mail/entry/Message;->mServerId:Ljava/lang/String;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lair;->c(Ljava/lang/String;)Z

    move-result v27

    if-eqz v27, :cond_e

    .line 761
    move-object/from16 v0, p3

    iget-wide v0, v0, Lcom/alibaba/alimei/sdk/db/mail/entry/Message;->sourceId:J

    move-wide/from16 v28, v0

    move-wide/from16 v0, p1

    move-wide/from16 v2, v28

    invoke-interface {v11, v0, v1, v2, v3}, Lcom/alibaba/alimei/sdk/datasource/MessageDatasource;->queryMessageById(JJ)Lcom/alibaba/alimei/sdk/db/mail/entry/Message;

    move-result-object v24

    .line 762
    const-string/jumbo v27, "SendMailORSyncDraft"

    new-instance v28, Ljava/lang/StringBuilder;

    const-string/jumbo v29, "queryMessageById through message sourceId, sourceMsg: "

    invoke-direct/range {v28 .. v29}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v28

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Lyx;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 766
    .end local v14    # "errMsg":Ljava/lang/String;
    :cond_e
    if-eqz v19, :cond_18

    if-eqz v24, :cond_f

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/alibaba/alimei/sdk/db/mail/entry/Message;->mServerId:Ljava/lang/String;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v27

    if-eqz v27, :cond_18

    invoke-static/range {v26 .. v26}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v27

    if-eqz v27, :cond_18

    .line 768
    :cond_f
    if-nez v24, :cond_17

    const/16 v25, 0x1

    .line 769
    .local v25, "sourceNull":Z
    :goto_c
    const/16 v27, 0xa

    move/from16 v0, v27

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    const-string/jumbo v29, "forward or reply mail, include quote, but sourceMsg is null, message sourceKey: "

    aput-object v29, v27, v28

    const/16 v28, 0x1

    move-object/from16 v0, p3

    iget-wide v0, v0, Lcom/alibaba/alimei/sdk/db/mail/entry/Message;->sourceId:J

    move-wide/from16 v30, v0

    .line 770
    invoke-static/range {v30 .. v31}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v29

    aput-object v29, v27, v28

    const/16 v28, 0x2

    const-string/jumbo v29, ", body sourceKey: "

    aput-object v29, v27, v28

    const/16 v28, 0x3

    iget-wide v0, v9, Lcom/alibaba/alimei/sdk/db/mail/entry/Body;->mSourceKey:J

    move-wide/from16 v30, v0

    invoke-static/range {v30 .. v31}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v29

    aput-object v29, v27, v28

    const/16 v28, 0x4

    const-string/jumbo v29, ", isSaveDraft: "

    aput-object v29, v27, v28

    const/16 v28, 0x5

    aput-object v20, v27, v28

    const/16 v28, 0x6

    const-string/jumbo v29, "sourceMsg: "

    aput-object v29, v27, v28

    const/16 v28, 0x7

    invoke-static/range {v25 .. v25}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v29

    aput-object v29, v27, v28

    const/16 v28, 0x8

    const-string/jumbo v29, ", newMail: "

    aput-object v29, v27, v28

    const/16 v28, 0x9

    .line 771
    invoke-virtual/range {v21 .. v21}, Lcom/alibaba/alimei/restfulapi/data/Mail;->toString()Ljava/lang/String;

    move-result-object v29

    aput-object v29, v27, v28

    .line 769
    invoke-static/range {v27 .. v27}, Lzc;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 772
    .restart local v14    # "errMsg":Ljava/lang/String;
    const-string/jumbo v27, "SendMailORSyncDraft"

    move-object/from16 v0, v27

    invoke-static {v0, v14}, Lyx;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 773
    const-string/jumbo v27, "sendMail"

    const-string/jumbo v28, "sendMail error"

    const/16 v29, 0x0

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    move-object/from16 v2, v29

    invoke-static {v0, v1, v14, v2}, Lyo;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 774
    const-string/jumbo v27, "send mail(reply or forward) has quote, but sourceMsg is null, so throw Exception"

    .line 11884
    new-instance v28, Lyc;

    invoke-virtual/range {p0 .. p0}, Lahp;->f()Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, p0

    iget-object v0, v0, Lahp;->a:Lahp$a;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget-object v0, v0, Lahp$a;->a:Ljava/lang/String;

    move-object/from16 v30, v0

    const/16 v31, 0x2

    invoke-direct/range {v28 .. v31}, Lyc;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 11885
    const/16 v29, 0x2

    move/from16 v0, v29

    move-object/from16 v1, v28

    iput v0, v1, Lyc;->c:I

    .line 11886
    move-object/from16 v0, p0

    iget-object v0, v0, Lahp;->a:Lahp$a;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget-wide v0, v0, Lahp$a;->b:J

    move-wide/from16 v30, v0

    move-wide/from16 v0, v30

    move-object/from16 v2, v28

    iput-wide v0, v2, Lyc;->e:J

    .line 11887
    move-object/from16 v0, v27

    move-object/from16 v1, v28

    iput-object v0, v1, Lyc;->f:Ljava/lang/String;

    .line 11888
    move-object/from16 v0, p0

    iget-object v0, v0, Lahp;->g:Lcom/alibaba/alimei/sdk/model/MailSnippetModel;

    move-object/from16 v29, v0

    const/16 v30, 0x17

    invoke-static/range {v30 .. v30}, Laja;->f(I)I

    move-result v30

    move/from16 v0, v30

    move-object/from16 v1, v29

    iput v0, v1, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->statusCode:I

    .line 11889
    move-object/from16 v0, p0

    iget-object v0, v0, Lahp;->g:Lcom/alibaba/alimei/sdk/model/MailSnippetModel;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    move-object/from16 v1, v28

    iput-object v0, v1, Lyc;->g:Ljava/lang/Object;

    .line 11890
    new-instance v29, Lcom/alibaba/alimei/restfulapi/exception/ServiceException;

    const/16 v30, 0x17

    move-object/from16 v0, v29

    move/from16 v1, v30

    move-object/from16 v2, v27

    invoke-direct {v0, v1, v2}, Lcom/alibaba/alimei/restfulapi/exception/ServiceException;-><init>(ILjava/lang/String;)V

    invoke-static/range {v29 .. v29}, Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;->buildSdkException(Lcom/alibaba/alimei/restfulapi/exception/ServiceException;)Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    move-result-object v29

    move-object/from16 v0, v29

    move-object/from16 v1, v28

    iput-object v0, v1, Lyc;->h:Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    .line 11891
    invoke-static {}, Lafv;->d()Lya;

    move-result-object v29

    move-object/from16 v0, v29

    move-object/from16 v1, v28

    invoke-interface {v0, v1}, Lya;->a(Lyc;)V

    .line 11892
    new-instance v28, Lcom/alibaba/alimei/restfulapi/exception/ServiceException;

    const/16 v29, 0x17

    move-object/from16 v0, v28

    move/from16 v1, v29

    move-object/from16 v2, v27

    invoke-direct {v0, v1, v2}, Lcom/alibaba/alimei/restfulapi/exception/ServiceException;-><init>(ILjava/lang/String;)V

    invoke-static/range {v28 .. v28}, Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;->buildSdkException(Lcom/alibaba/alimei/restfulapi/exception/ServiceException;)Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    iput-object v0, v1, Lahp;->k:Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    .line 11893
    invoke-direct/range {p0 .. p0}, Lahp;->l()V

    .line 775
    new-instance v27, Ljava/lang/IllegalStateException;

    const-string/jumbo v28, "send mail(reply or forward) has quote, but sourceMsg is null, so throw Exception"

    invoke-direct/range {v27 .. v28}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v27

    .line 724
    .end local v11    # "ds":Lcom/alibaba/alimei/sdk/datasource/MessageDatasource;
    .end local v12    # "bodySourceKey":J
    .end local v14    # "errMsg":Ljava/lang/String;
    .end local v16    # "forward":Z
    .end local v17    # "forwardCal":Z
    .end local v19    # "includeQuotedText":Z
    .end local v20    # "isSaveDraft":Ljava/lang/String;
    .end local v22    # "reply":Z
    .end local v24    # "sourceMsg":Lcom/alibaba/alimei/sdk/db/mail/entry/Message;
    .end local v25    # "sourceNull":Z
    .end local v26    # "srcServerId":Ljava/lang/String;
    :cond_10
    const/16 v22, 0x0

    goto/16 :goto_7

    .line 725
    .restart local v22    # "reply":Z
    :cond_11
    const/16 v16, 0x0

    goto/16 :goto_8

    .line 726
    .restart local v16    # "forward":Z
    :cond_12
    const/16 v17, 0x0

    goto/16 :goto_9

    .line 727
    .restart local v17    # "forwardCal":Z
    :cond_13
    const/16 v19, 0x0

    goto/16 :goto_a

    .line 732
    .restart local v19    # "includeQuotedText":Z
    :cond_14
    if-eqz v16, :cond_15

    .line 733
    const/16 v27, 0x3

    move/from16 v0, v27

    move-object/from16 v1, v21

    iput v0, v1, Lcom/alibaba/alimei/restfulapi/data/Mail;->referType:I

    goto/16 :goto_b

    .line 734
    :cond_15
    if-eqz v17, :cond_16

    .line 735
    const/16 v27, 0x4

    move/from16 v0, v27

    move-object/from16 v1, v21

    iput v0, v1, Lcom/alibaba/alimei/restfulapi/data/Mail;->referType:I

    goto/16 :goto_b

    .line 737
    :cond_16
    const/16 v27, 0x1

    move/from16 v0, v27

    move-object/from16 v1, v21

    iput v0, v1, Lcom/alibaba/alimei/restfulapi/data/Mail;->referType:I

    goto/16 :goto_b

    .line 768
    .restart local v11    # "ds":Lcom/alibaba/alimei/sdk/datasource/MessageDatasource;
    .restart local v12    # "bodySourceKey":J
    .restart local v20    # "isSaveDraft":Ljava/lang/String;
    .restart local v24    # "sourceMsg":Lcom/alibaba/alimei/sdk/db/mail/entry/Message;
    .restart local v26    # "srcServerId":Ljava/lang/String;
    :cond_17
    const/16 v25, 0x0

    goto/16 :goto_c

    .line 779
    .end local v20    # "isSaveDraft":Ljava/lang/String;
    :cond_18
    if-eqz v24, :cond_1c

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/alibaba/alimei/sdk/db/mail/entry/Message;->mServerId:Ljava/lang/String;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v27

    if-nez v27, :cond_1c

    .line 780
    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/alibaba/alimei/sdk/db/mail/entry/Message;->mServerId:Ljava/lang/String;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move-object/from16 v1, v21

    iput-object v0, v1, Lcom/alibaba/alimei/restfulapi/data/Mail;->referItemId:Ljava/lang/String;

    .line 788
    :cond_19
    :goto_d
    move-object/from16 v0, p3

    iget-object v0, v0, Lcom/alibaba/alimei/sdk/db/mail/entry/Message;->mCalendarId:Ljava/lang/String;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v27

    if-nez v27, :cond_1a

    .line 789
    move-object/from16 v0, p3

    iget-object v0, v0, Lcom/alibaba/alimei/sdk/db/mail/entry/Message;->mCalendarId:Ljava/lang/String;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move-object/from16 v1, v21

    iput-object v0, v1, Lcom/alibaba/alimei/restfulapi/data/Mail;->referItemId:Ljava/lang/String;

    .line 793
    :cond_1a
    const/high16 v27, 0x100000

    and-int v27, v27, v15

    if-eqz v27, :cond_1e

    const/16 v27, 0x1

    :goto_e
    move/from16 v0, v27

    move-object/from16 v1, v21

    iput-boolean v0, v1, Lcom/alibaba/alimei/restfulapi/data/Mail;->isCovertToInlineImg:Z

    .line 798
    if-eqz v19, :cond_20

    .line 799
    const/16 v27, 0x1

    invoke-static/range {v27 .. v27}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, v21

    iput-object v0, v1, Lcom/alibaba/alimei/restfulapi/data/Mail;->autoQuote:Ljava/lang/Boolean;

    .line 800
    if-eqz v24, :cond_1f

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/alibaba/alimei/sdk/db/mail/entry/Message;->mServerId:Ljava/lang/String;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v27

    if-nez v27, :cond_1f

    .line 801
    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/alibaba/alimei/sdk/db/mail/entry/Message;->mServerId:Ljava/lang/String;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move-object/from16 v1, v21

    iput-object v0, v1, Lcom/alibaba/alimei/restfulapi/data/Mail;->referItemId:Ljava/lang/String;

    .line 826
    :cond_1b
    :goto_f
    invoke-virtual/range {p0 .. p0}, Lahp;->g()Z

    move-result v27

    invoke-static/range {v27 .. v27}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v20

    .line 827
    .restart local v20    # "isSaveDraft":Ljava/lang/String;
    const-string/jumbo v27, "SendMailORSyncDraft"

    const/16 v28, 0x4

    move/from16 v0, v28

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v28, v0

    const/16 v29, 0x0

    const-string/jumbo v30, "isSaveDraft: "

    aput-object v30, v28, v29

    const/16 v29, 0x1

    aput-object v20, v28, v29

    const/16 v29, 0x2

    const-string/jumbo v30, ", Mail info: "

    aput-object v30, v28, v29

    const/16 v29, 0x3

    invoke-virtual/range {v21 .. v21}, Lcom/alibaba/alimei/restfulapi/data/Mail;->toString()Ljava/lang/String;

    move-result-object v30

    aput-object v30, v28, v29

    invoke-static/range {v28 .. v28}, Lzc;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Lyx;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 830
    const/16 v27, 0x1

    move-object/from16 v0, v21

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/alibaba/alimei/restfulapi/data/Mail;->setAction(I)V

    .line 831
    return-object v21

    .line 781
    .end local v20    # "isSaveDraft":Ljava/lang/String;
    :cond_1c
    if-nez v22, :cond_1d

    if-eqz v16, :cond_19

    .line 782
    :cond_1d
    invoke-static/range {v26 .. v26}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v27

    if-nez v27, :cond_19

    .line 783
    new-instance v24, Lcom/alibaba/alimei/sdk/db/mail/entry/Message;

    .end local v24    # "sourceMsg":Lcom/alibaba/alimei/sdk/db/mail/entry/Message;
    invoke-direct/range {v24 .. v24}, Lcom/alibaba/alimei/sdk/db/mail/entry/Message;-><init>()V

    .line 784
    .restart local v24    # "sourceMsg":Lcom/alibaba/alimei/sdk/db/mail/entry/Message;
    move-object/from16 v0, v26

    move-object/from16 v1, v24

    iput-object v0, v1, Lcom/alibaba/alimei/sdk/db/mail/entry/Message;->mServerId:Ljava/lang/String;

    goto/16 :goto_d

    .line 793
    :cond_1e
    const/16 v27, 0x0

    goto/16 :goto_e

    .line 803
    :cond_1f
    const/16 v27, 0x0

    invoke-static/range {v27 .. v27}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, v21

    iput-object v0, v1, Lcom/alibaba/alimei/restfulapi/data/Mail;->autoQuote:Ljava/lang/Boolean;

    goto :goto_f

    .line 806
    :cond_20
    const/16 v27, 0x0

    invoke-static/range {v27 .. v27}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, v21

    iput-object v0, v1, Lcom/alibaba/alimei/restfulapi/data/Mail;->autoQuote:Ljava/lang/Boolean;

    .line 807
    if-eqz v24, :cond_1b

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/alibaba/alimei/sdk/db/mail/entry/Message;->mServerId:Ljava/lang/String;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v27

    if-nez v27, :cond_1b

    .line 808
    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/alibaba/alimei/sdk/db/mail/entry/Message;->mServerId:Ljava/lang/String;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move-object/from16 v1, v21

    iput-object v0, v1, Lcom/alibaba/alimei/restfulapi/data/Mail;->referItemId:Ljava/lang/String;

    goto/16 :goto_f

    .end local v11    # "ds":Lcom/alibaba/alimei/sdk/datasource/MessageDatasource;
    .end local v12    # "bodySourceKey":J
    .end local v15    # "flags":I
    .end local v16    # "forward":Z
    .end local v17    # "forwardCal":Z
    .end local v19    # "includeQuotedText":Z
    .end local v22    # "reply":Z
    .end local v24    # "sourceMsg":Lcom/alibaba/alimei/sdk/db/mail/entry/Message;
    .end local v26    # "srcServerId":Ljava/lang/String;
    .restart local v7    # "attachList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/restfulapi/data/Attach;>;"
    .restart local v8    # "attachment":Lcom/alibaba/alimei/sdk/db/mail/entry/Attachment;
    .restart local v23    # "resourceList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/restfulapi/data/Attach;>;"
    :cond_21
    move-object/from16 v27, v28

    goto/16 :goto_5
.end method

.method static synthetic a(Lahp;)Lcom/alibaba/alimei/restfulapi/response/data/itemsupdate/SingleMailUpdateResult;
    .locals 1
    .param p0, "x0"    # Lahp;

    .prologue
    .line 68
    iget-object v0, p0, Lahp;->l:Lcom/alibaba/alimei/restfulapi/response/data/itemsupdate/SingleMailUpdateResult;

    return-object v0
.end method

.method static synthetic a(Lahp;Lcom/alibaba/alimei/restfulapi/response/data/itemsupdate/SingleMailUpdateResult;)Lcom/alibaba/alimei/restfulapi/response/data/itemsupdate/SingleMailUpdateResult;
    .locals 0
    .param p0, "x0"    # Lahp;
    .param p1, "x1"    # Lcom/alibaba/alimei/restfulapi/response/data/itemsupdate/SingleMailUpdateResult;

    .prologue
    .line 68
    iput-object p1, p0, Lahp;->l:Lcom/alibaba/alimei/restfulapi/response/data/itemsupdate/SingleMailUpdateResult;

    return-object p1
.end method

.method private a(Landroid/content/Context;Ljava/io/File;Lcom/alibaba/alimei/sdk/db/mail/entry/Message;)Z
    .locals 26
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "cacheDir"    # Ljava/io/File;
    .param p3, "message"    # Lcom/alibaba/alimei/sdk/db/mail/entry/Message;

    .prologue
    .line 485
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput v5, v0, Lahp;->j:I

    .line 10046
    move-object/from16 v0, p0

    iget-wide v10, v0, Lyr;->x:J

    .line 488
    .local v10, "accountId":J
    const/4 v12, 0x0

    .line 490
    .local v12, "attachments":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/sdk/db/mail/entry/Attachment;>;"
    move-object/from16 v0, p0

    iget-object v5, v0, Lahp;->b:Lcom/alibaba/alimei/restfulapi/tracker/fullstatistics/model/AlimeiFullFlowUnifyStatisticsModel;

    const-string/jumbo v6, "1"

    invoke-virtual {v5, v6}, Lcom/alibaba/alimei/restfulapi/tracker/fullstatistics/model/AlimeiFullFlowUnifyStatisticsModel;->startSubFlow(Ljava/lang/String;)V

    .line 492
    move-object/from16 v0, p3

    iget-boolean v5, v0, Lcom/alibaba/alimei/sdk/db/mail/entry/Message;->mFlagAttachment:Z

    if-nez v5, :cond_0

    move-object/from16 v0, p3

    iget-boolean v5, v0, Lcom/alibaba/alimei/sdk/db/mail/entry/Message;->hasResourceAttach:Z

    if-eqz v5, :cond_5

    .line 493
    :cond_0
    const-wide/16 v22, 0x0

    move-wide/from16 v0, v22

    move-object/from16 v2, p0

    iput-wide v0, v2, Lahp;->p:J

    .line 494
    const-wide/16 v22, 0x0

    move-wide/from16 v0, v22

    move-object/from16 v2, p0

    iput-wide v0, v2, Lahp;->q:J

    .line 495
    const/4 v5, -0x1

    move-object/from16 v0, p0

    iput v5, v0, Lahp;->z:I

    .line 496
    invoke-static {}, Lcom/alibaba/alimei/sdk/datasource/DatasourceCenter;->getAttachmentDatasource()Lcom/alibaba/alimei/sdk/datasource/AttachmentDatasource;

    move-result-object v5

    move-object/from16 v0, p3

    iget-wide v0, v0, Lcom/alibaba/alimei/sdk/db/mail/entry/Message;->mId:J

    move-wide/from16 v22, v0

    move-wide/from16 v0, v22

    invoke-interface {v5, v10, v11, v0, v1}, Lcom/alibaba/alimei/sdk/datasource/AttachmentDatasource;->queryAllInnerAttachment(JJ)Ljava/util/List;

    move-result-object v12

    .line 497
    if-eqz v12, :cond_5

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_5

    .line 498
    invoke-static {}, Lafv;->d()Lya;

    move-result-object v13

    .line 499
    .local v13, "eventCenter":Lya;
    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_1
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/alibaba/alimei/sdk/db/mail/entry/Attachment;

    .line 500
    .local v8, "attachment":Lcom/alibaba/alimei/sdk/db/mail/entry/Attachment;
    if-eqz v8, :cond_1

    .line 504
    invoke-static {v8}, Lagb;->a(Lcom/alibaba/alimei/sdk/db/mail/entry/Attachment;)Z

    move-result v15

    .line 505
    .local v15, "hasWaitingUploadAttachment":Z
    if-eqz v15, :cond_1

    .line 509
    invoke-static {v8}, Lagb;->b(Lcom/alibaba/alimei/sdk/db/mail/entry/Attachment;)Ljava/io/File;

    move-result-object v7

    .line 515
    .local v7, "attachmentFile":Ljava/io/File;
    move-object/from16 v0, p0

    iget-wide v0, v0, Lahp;->q:J

    move-wide/from16 v22, v0

    invoke-virtual {v7}, Ljava/io/File;->length()J

    move-result-wide v24

    add-long v22, v22, v24

    move-wide/from16 v0, v22

    move-object/from16 v2, p0

    iput-wide v0, v2, Lahp;->q:J

    goto :goto_0

    .line 518
    .end local v7    # "attachmentFile":Ljava/io/File;
    .end local v8    # "attachment":Lcom/alibaba/alimei/sdk/db/mail/entry/Attachment;
    .end local v15    # "hasWaitingUploadAttachment":Z
    :cond_2
    move-object/from16 v0, p0

    iget-wide v0, v0, Lahp;->q:J

    move-wide/from16 v22, v0

    const-wide/16 v24, 0x400

    add-long v22, v22, v24

    move-wide/from16 v0, v22

    move-object/from16 v2, p0

    iput-wide v0, v2, Lahp;->q:J

    .line 521
    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v21

    :cond_3
    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/alibaba/alimei/sdk/db/mail/entry/Attachment;

    .line 523
    .restart local v8    # "attachment":Lcom/alibaba/alimei/sdk/db/mail/entry/Attachment;
    invoke-static {v8}, Lagb;->a(Lcom/alibaba/alimei/sdk/db/mail/entry/Attachment;)Z

    move-result v15

    .line 524
    .restart local v15    # "hasWaitingUploadAttachment":Z
    if-eqz v15, :cond_3

    .line 528
    invoke-static {v8}, Lagb;->b(Lcom/alibaba/alimei/sdk/db/mail/entry/Attachment;)Ljava/io/File;

    move-result-object v7

    .line 535
    .restart local v7    # "attachmentFile":Ljava/io/File;
    new-instance v9, Lahp$2;

    move-object/from16 v0, p0

    invoke-direct {v9, v0, v13}, Lahp$2;-><init>(Lahp;Lya;)V

    .line 562
    .local v9, "onProgressListener":Lcom/alibaba/alimei/restfulapi/spi/http/entity/listener/OnProgressListener;
    new-instance v4, Lagc;

    move-object/from16 v0, p0

    iget-object v5, v0, Lahp;->a:Lahp$a;

    iget-object v5, v5, Lahp$a;->a:Ljava/lang/String;

    const/4 v6, 0x1

    invoke-direct/range {v4 .. v9}, Lagc;-><init>(Ljava/lang/String;ZLjava/io/File;Lcom/alibaba/alimei/sdk/db/mail/entry/Attachment;Lcom/alibaba/alimei/restfulapi/spi/http/entity/listener/OnProgressListener;)V

    .line 10062
    .local v4, "uploader":Lagc;
    iget-object v5, v4, Lagc;->c:Ljava/lang/String;

    const/4 v6, 0x0

    invoke-static {v5, v6}, Lcom/alibaba/alimei/restfulapi/AlimeiResfulApi;->getAttachmentService(Ljava/lang/String;Z)Lcom/alibaba/alimei/restfulapi/service/RpcAttachmentService;

    move-result-object v5

    iget-object v6, v4, Lagc;->b:Ljava/io/File;

    iget-object v0, v4, Lagc;->g:Lcom/alibaba/alimei/restfulapi/spi/http/entity/listener/OnProgressListener;

    move-object/from16 v22, v0

    iget-object v0, v4, Lagc;->h:Lcom/alibaba/alimei/restfulapi/service/RpcCallback;

    move-object/from16 v23, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-interface {v5, v6, v0, v1}, Lcom/alibaba/alimei/restfulapi/service/RpcAttachmentService;->uploadAttachment(Ljava/io/File;Lcom/alibaba/alimei/restfulapi/spi/http/entity/listener/OnProgressListener;Lcom/alibaba/alimei/restfulapi/service/RpcCallback;)Lcom/alibaba/alimei/restfulapi/service/RpcServiceTicket;

    .line 10063
    iget-boolean v0, v4, Lagc;->f:Z

    move/from16 v17, v0

    .line 564
    .local v17, "isUploadSuccess":Z
    if-nez v17, :cond_3

    .line 565
    const/4 v5, 0x1

    move-object/from16 v0, p0

    iput-boolean v5, v0, Lahp;->m:Z

    .line 567
    new-instance v14, Lyc;

    const-string/jumbo v5, "basic_AttachmentUpload"

    move-object/from16 v0, p0

    iget-object v6, v0, Lahp;->a:Lahp$a;

    iget-object v6, v6, Lahp$a;->a:Ljava/lang/String;

    const/16 v21, 0x2

    move/from16 v0, v21

    invoke-direct {v14, v5, v6, v0}, Lyc;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 10105
    .local v14, "eventMessage":Lyc;
    iget-object v5, v4, Lagc;->d:Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    .line 569
    iput-object v5, v14, Lyc;->h:Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    .line 570
    invoke-interface {v13, v14}, Lya;->a(Lyc;)V

    .line 573
    iget-object v5, v14, Lyc;->h:Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    invoke-virtual {v5}, Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;->isNetworkError()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 574
    new-instance v20, Lcom/alibaba/alimei/restfulapi/exception/NetworkException;

    const-string/jumbo v5, "network is error"

    move-object/from16 v0, v20

    invoke-direct {v0, v5}, Lcom/alibaba/alimei/restfulapi/exception/NetworkException;-><init>(Ljava/lang/String;)V

    .line 575
    .local v20, "networkException":Lcom/alibaba/alimei/restfulapi/exception/NetworkException;
    invoke-static/range {v20 .. v20}, Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;->buildSdkException(Lcom/alibaba/alimei/restfulapi/exception/NetworkException;)Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    move-result-object v5

    move-object/from16 v0, p0

    iput-object v5, v0, Lahp;->k:Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    .line 576
    const/16 v5, 0x2328

    move-object/from16 v0, p0

    iput v5, v0, Lahp;->j:I

    .line 583
    .end local v20    # "networkException":Lcom/alibaba/alimei/restfulapi/exception/NetworkException;
    :goto_1
    move-object/from16 v0, p0

    iget-object v5, v0, Lahp;->b:Lcom/alibaba/alimei/restfulapi/tracker/fullstatistics/model/AlimeiFullFlowUnifyStatisticsModel;

    const-string/jumbo v6, "1"

    move-object/from16 v0, p0

    iget v0, v0, Lahp;->j:I

    move/from16 v21, v0

    .line 584
    invoke-static/range {v21 .. v21}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v21

    iget-object v0, v14, Lyc;->h:Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;->getRpcResultCode()I

    move-result v22

    invoke-static/range {v22 .. v22}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v22

    .line 583
    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v5, v6, v0, v1}, Lcom/alibaba/alimei/restfulapi/tracker/fullstatistics/model/AlimeiFullFlowUnifyStatisticsModel;->generalFailedModel(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/alimei/restfulapi/tracker/fullstatistics/model/AlimeiFullFlowUnifyStatisticsModel;

    .line 585
    move-object/from16 v0, p0

    iget-object v5, v0, Lahp;->b:Lcom/alibaba/alimei/restfulapi/tracker/fullstatistics/model/AlimeiFullFlowUnifyStatisticsModel;

    invoke-static {v5}, Lcom/alibaba/alimei/restfulapi/tracker/fullstatistics/FullFlowUtils;->startStatistics(Lcom/alibaba/alimei/restfulapi/tracker/fullstatistics/model/AlimeiUnifyStatisticsModel;)V

    .line 586
    const/4 v5, 0x0

    .line 632
    .end local v4    # "uploader":Lagc;
    .end local v7    # "attachmentFile":Ljava/io/File;
    .end local v8    # "attachment":Lcom/alibaba/alimei/sdk/db/mail/entry/Attachment;
    .end local v9    # "onProgressListener":Lcom/alibaba/alimei/restfulapi/spi/http/entity/listener/OnProgressListener;
    .end local v13    # "eventCenter":Lya;
    .end local v14    # "eventMessage":Lyc;
    .end local v15    # "hasWaitingUploadAttachment":Z
    .end local v17    # "isUploadSuccess":Z
    :goto_2
    return v5

    .line 578
    .restart local v4    # "uploader":Lagc;
    .restart local v7    # "attachmentFile":Ljava/io/File;
    .restart local v8    # "attachment":Lcom/alibaba/alimei/sdk/db/mail/entry/Attachment;
    .restart local v9    # "onProgressListener":Lcom/alibaba/alimei/restfulapi/spi/http/entity/listener/OnProgressListener;
    .restart local v13    # "eventCenter":Lya;
    .restart local v14    # "eventMessage":Lyc;
    .restart local v15    # "hasWaitingUploadAttachment":Z
    .restart local v17    # "isUploadSuccess":Z
    :cond_4
    const-string/jumbo v5, "SendMailORSyncDraft"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v21, "Upload attach error: "

    move-object/from16 v0, v21

    invoke-direct {v6, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, v14, Lyc;->h:Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;->getErrorMsg()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v21, ", msgId["

    move-object/from16 v0, v21

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v0, v0, Lahp;->a:Lahp$a;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-wide v0, v0, Lahp$a;->b:J

    move-wide/from16 v22, v0

    move-wide/from16 v0, v22

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v21, "]"

    move-object/from16 v0, v21

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lzd;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 580
    const/16 v5, 0x2329

    move-object/from16 v0, p0

    iput v5, v0, Lahp;->j:I

    goto :goto_1

    .line 593
    .end local v4    # "uploader":Lagc;
    .end local v7    # "attachmentFile":Ljava/io/File;
    .end local v8    # "attachment":Lcom/alibaba/alimei/sdk/db/mail/entry/Attachment;
    .end local v9    # "onProgressListener":Lcom/alibaba/alimei/restfulapi/spi/http/entity/listener/OnProgressListener;
    .end local v13    # "eventCenter":Lya;
    .end local v14    # "eventMessage":Lyc;
    .end local v15    # "hasWaitingUploadAttachment":Z
    .end local v17    # "isUploadSuccess":Z
    :cond_5
    move-object/from16 v0, p0

    iget-object v5, v0, Lahp;->b:Lcom/alibaba/alimei/restfulapi/tracker/fullstatistics/model/AlimeiFullFlowUnifyStatisticsModel;

    const-string/jumbo v6, "1"

    const-string/jumbo v21, "Y"

    move-object/from16 v0, v21

    invoke-virtual {v5, v6, v0}, Lcom/alibaba/alimei/restfulapi/tracker/fullstatistics/model/AlimeiFullFlowUnifyStatisticsModel;->endSubFlow(Ljava/lang/String;Ljava/lang/String;)V

    .line 596
    move-object/from16 v0, p0

    iget-object v5, v0, Lahp;->b:Lcom/alibaba/alimei/restfulapi/tracker/fullstatistics/model/AlimeiFullFlowUnifyStatisticsModel;

    const-string/jumbo v6, "2"

    invoke-virtual {v5, v6}, Lcom/alibaba/alimei/restfulapi/tracker/fullstatistics/model/AlimeiFullFlowUnifyStatisticsModel;->startSubFlow(Ljava/lang/String;)V

    .line 598
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v10, v11, v1, v12}, Lahp;->a(JLcom/alibaba/alimei/sdk/db/mail/entry/Message;Ljava/util/List;)Lcom/alibaba/alimei/restfulapi/data/Mail;

    move-result-object v18

    .line 10420
    .local v18, "mail":Lcom/alibaba/alimei/restfulapi/data/Mail;
    move-object/from16 v0, p0

    iget-object v5, v0, Lahp;->e:Lcom/alibaba/alimei/restfulapi/service/RpcCallback;

    if-nez v5, :cond_6

    .line 10421
    new-instance v5, Lahp$1;

    move-object/from16 v0, p0

    invoke-direct {v5, v0}, Lahp$1;-><init>(Lahp;)V

    move-object/from16 v0, p0

    iput-object v5, v0, Lahp;->e:Lcom/alibaba/alimei/restfulapi/service/RpcCallback;

    .line 601
    :cond_6
    new-instance v19, Ljava/util/ArrayList;

    const/4 v5, 0x1

    move-object/from16 v0, v19

    invoke-direct {v0, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 603
    .local v19, "mails":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/restfulapi/data/Mail;>;"
    invoke-virtual/range {p0 .. p0}, Lahp;->g()Z

    move-result v5

    if-eqz v5, :cond_9

    .line 604
    move-object/from16 v0, p0

    iget-object v5, v0, Lahp;->d:Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;

    if-nez v5, :cond_7

    .line 605
    invoke-static {}, Lcom/alibaba/alimei/sdk/datasource/DatasourceCenter;->getMailboxDatasource()Lcom/alibaba/alimei/sdk/datasource/MailboxDatasource;

    move-result-object v5

    .line 11046
    move-object/from16 v0, p0

    iget-wide v0, v0, Lyr;->x:J

    move-wide/from16 v22, v0

    .line 606
    const/4 v6, 0x3

    move-wide/from16 v0, v22

    invoke-interface {v5, v0, v1, v6}, Lcom/alibaba/alimei/sdk/datasource/MailboxDatasource;->queryMailboxByType(JI)Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;

    move-result-object v5

    move-object/from16 v0, p0

    iput-object v5, v0, Lahp;->d:Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;

    .line 608
    :cond_7
    move-object/from16 v0, p0

    iget-object v5, v0, Lahp;->d:Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;

    iget-object v5, v5, Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;->mServerId:Ljava/lang/String;

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Lcom/alibaba/alimei/restfulapi/data/Mail;->setFolderId(Ljava/lang/String;)V

    .line 610
    move-object/from16 v0, p3

    iget-object v5, v0, Lcom/alibaba/alimei/sdk/db/mail/entry/Message;->mServerId:Ljava/lang/String;

    invoke-static {v5}, Lair;->c(Ljava/lang/String;)Z

    move-result v16

    .line 611
    .local v16, "isLocalDraft":Z
    if-eqz v16, :cond_8

    .line 612
    const/4 v5, 0x0

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Lcom/alibaba/alimei/restfulapi/data/Mail;->setItemId(Ljava/lang/String;)V

    .line 613
    const/4 v5, 0x1

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Lcom/alibaba/alimei/restfulapi/data/Mail;->setAction(I)V

    .line 618
    :goto_3
    const-string/jumbo v5, "SendMailORSyncDraft"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v21, "sync draft--->"

    move-object/from16 v0, v21

    invoke-direct {v6, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p3

    iget-wide v0, v0, Lcom/alibaba/alimei/sdk/db/mail/entry/Message;->mId:J

    move-wide/from16 v22, v0

    move-wide/from16 v0, v22

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lyx;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 630
    .end local v16    # "isLocalDraft":Z
    :goto_4
    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 631
    move-object/from16 v0, p0

    iget-object v5, v0, Lahp;->a:Lahp$a;

    iget-object v5, v5, Lahp$a;->a:Ljava/lang/String;

    const/4 v6, 0x0

    invoke-static {v5, v6}, Lcom/alibaba/alimei/restfulapi/AlimeiResfulApi;->getMailService(Ljava/lang/String;Z)Lcom/alibaba/alimei/restfulapi/service/RpcMailService;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lahp;->e:Lcom/alibaba/alimei/restfulapi/service/RpcCallback;

    move-object/from16 v0, v19

    invoke-interface {v5, v0, v6}, Lcom/alibaba/alimei/restfulapi/service/RpcMailService;->syncMailUpdate(Ljava/util/List;Lcom/alibaba/alimei/restfulapi/service/RpcCallback;)Lcom/alibaba/alimei/restfulapi/service/RpcServiceTicket;

    .line 632
    const/4 v5, 0x1

    goto/16 :goto_2

    .line 615
    .restart local v16    # "isLocalDraft":Z
    :cond_8
    const/4 v5, 0x2

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Lcom/alibaba/alimei/restfulapi/data/Mail;->setAction(I)V

    .line 616
    move-object/from16 v0, p3

    iget-object v5, v0, Lcom/alibaba/alimei/sdk/db/mail/entry/Message;->mServerId:Ljava/lang/String;

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Lcom/alibaba/alimei/restfulapi/data/Mail;->setItemId(Ljava/lang/String;)V

    goto :goto_3

    .line 620
    .end local v16    # "isLocalDraft":Z
    :cond_9
    const/4 v5, 0x1

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Lcom/alibaba/alimei/restfulapi/data/Mail;->setAction(I)V

    .line 622
    move-object/from16 v0, p3

    iget-object v5, v0, Lcom/alibaba/alimei/sdk/db/mail/entry/Message;->mServerId:Ljava/lang/String;

    invoke-static {v5}, Lair;->c(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_a

    .line 623
    const/4 v5, 0x0

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Lcom/alibaba/alimei/restfulapi/data/Mail;->setItemId(Ljava/lang/String;)V

    .line 627
    :goto_5
    const/4 v5, 0x0

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Lcom/alibaba/alimei/restfulapi/data/Mail;->setFolderId(Ljava/lang/String;)V

    .line 628
    const-string/jumbo v5, "SendMailORSyncDraft"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v21, "send mail--->"

    move-object/from16 v0, v21

    invoke-direct {v6, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p3

    iget-wide v0, v0, Lcom/alibaba/alimei/sdk/db/mail/entry/Message;->mId:J

    move-wide/from16 v22, v0

    move-wide/from16 v0, v22

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v21, ", action: "

    move-object/from16 v0, v21

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual/range {v18 .. v18}, Lcom/alibaba/alimei/restfulapi/data/Mail;->getAction()I

    move-result v21

    move/from16 v0, v21

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lyx;->a(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 625
    :cond_a
    move-object/from16 v0, p3

    iget-object v5, v0, Lcom/alibaba/alimei/sdk/db/mail/entry/Message;->mServerId:Ljava/lang/String;

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Lcom/alibaba/alimei/restfulapi/data/Mail;->setItemId(Ljava/lang/String;)V

    goto :goto_5
.end method

.method static synthetic b(Lahp;)I
    .locals 1
    .param p0, "x0"    # Lahp;

    .prologue
    .line 68
    iget v0, p0, Lahp;->h:I

    return v0
.end method

.method static synthetic b(Lahp;I)I
    .locals 0
    .param p0, "x0"    # Lahp;
    .param p1, "x1"    # I

    .prologue
    .line 68
    iput p1, p0, Lahp;->i:I

    return p1
.end method

.method static synthetic c(Lahp;)I
    .locals 1
    .param p0, "x0"    # Lahp;

    .prologue
    .line 68
    iget v0, p0, Lahp;->i:I

    return v0
.end method

.method static synthetic c(Lahp;I)I
    .locals 0
    .param p0, "x0"    # Lahp;
    .param p1, "x1"    # I

    .prologue
    .line 68
    iput p1, p0, Lahp;->j:I

    return p1
.end method

.method static synthetic d(Lahp;I)I
    .locals 0
    .param p0, "x0"    # Lahp;
    .param p1, "x1"    # I

    .prologue
    .line 68
    iput p1, p0, Lahp;->z:I

    return p1
.end method

.method static synthetic d(Lahp;)Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;
    .locals 1
    .param p0, "x0"    # Lahp;

    .prologue
    .line 68
    iget-object v0, p0, Lahp;->k:Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    return-object v0
.end method

.method static synthetic e(Lahp;)J
    .locals 2
    .param p0, "x0"    # Lahp;

    .prologue
    .line 68
    iget-wide v0, p0, Lahp;->q:J

    return-wide v0
.end method

.method static synthetic f(Lahp;)J
    .locals 2
    .param p0, "x0"    # Lahp;

    .prologue
    .line 68
    iget-wide v0, p0, Lahp;->p:J

    return-wide v0
.end method

.method static synthetic g(Lahp;)I
    .locals 1
    .param p0, "x0"    # Lahp;

    .prologue
    .line 68
    iget v0, p0, Lahp;->z:I

    return v0
.end method

.method private l()V
    .locals 7

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 859
    invoke-virtual {p0}, Lahp;->g()Z

    move-result v6

    .line 860
    .local v6, "isSaveDraft":Z
    const-string/jumbo v2, "sdk.mail.saveDrafts"

    .line 861
    .local v2, "mointerPoint":Ljava/lang/String;
    if-nez v6, :cond_0

    .line 862
    const-string/jumbo v2, "sdk.mail.sendmails"

    .line 864
    :cond_0
    const/16 v0, 0xc8

    iget v1, p0, Lahp;->h:I

    if-ne v0, v1, :cond_1

    .line 865
    sget-object v0, Lcom/alibaba/alimei/framework/perf/MonitorPriority;->High:Lcom/alibaba/alimei/framework/perf/MonitorPriority;

    const-string/jumbo v1, "CMail"

    const-string/jumbo v3, ""

    invoke-static {v0, v1, v2, v3}, Lyn;->c(Lcom/alibaba/alimei/framework/perf/MonitorPriority;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 878
    :goto_0
    return-void

    .line 867
    :cond_1
    const-string/jumbo v5, ""

    .line 868
    .local v5, "errMsg":Ljava/lang/String;
    iget-object v0, p0, Lahp;->k:Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    if-eqz v0, :cond_2

    .line 869
    iget-object v0, p0, Lahp;->k:Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    invoke-virtual {v0}, Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;->getErrorMsg()Ljava/lang/String;

    move-result-object v5

    .line 871
    :cond_2
    const-string/jumbo v4, ""

    .line 872
    .local v4, "accountName":Ljava/lang/String;
    iget-object v0, p0, Lahp;->a:Lahp$a;

    if-eqz v0, :cond_3

    .line 873
    iget-object v0, p0, Lahp;->a:Lahp$a;

    iget-object v4, v0, Lahp$a;->a:Ljava/lang/String;

    .line 875
    :cond_3
    sget-object v0, Lcom/alibaba/alimei/framework/perf/MonitorPriority;->High:Lcom/alibaba/alimei/framework/perf/MonitorPriority;

    const-string/jumbo v1, "CMail"

    iget v3, p0, Lahp;->j:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-static/range {v0 .. v5}, Lyn;->a(Lcom/alibaba/alimei/framework/perf/MonitorPriority;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method protected abstract a()I
.end method

.method public final a(Ljava/lang/String;)V
    .locals 3
    .param p1, "taskContext"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 157
    invoke-static {}, Lcom/alibaba/alimei/restfulapi/support/GsonTools;->getGsonInstance()Lcom/google/gson/Gson;

    move-result-object v0

    .line 158
    .local v0, "gson":Lcom/google/gson/Gson;
    const-class v1, Lahp$a;

    invoke-virtual {v0, p1, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lahp$a;

    iput-object v1, p0, Lahp;->a:Lahp$a;

    .line 1102
    iget v1, p0, Lyr;->y:I

    .line 159
    invoke-virtual {p0}, Lahp;->a()I

    move-result v2

    if-lt v1, v2, :cond_0

    .line 160
    const/4 v1, 0x1

    .line 2094
    iput-boolean v1, p0, Lyr;->t:Z

    .line 162
    sget-object v1, Lcom/alibaba/alimei/framework/task/AutoTryTaskPolicy$AutoTryNetwork;->Wifi:Lcom/alibaba/alimei/framework/task/AutoTryTaskPolicy$AutoTryNetwork;

    .line 3062
    iput-object v1, p0, Lyr;->u:Lcom/alibaba/alimei/framework/task/AutoTryTaskPolicy$AutoTryNetwork;

    .line 164
    :cond_0
    return-void
.end method

.method public final a_()Ljava/lang/String;
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 152
    invoke-static {}, Lcom/alibaba/alimei/restfulapi/support/GsonTools;->getGsonInstance()Lcom/google/gson/Gson;

    move-result-object v0

    iget-object v1, p0, Lahp;->a:Lahp$a;

    invoke-virtual {v0, v1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected final b()J
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 168
    const-wide/32 v0, 0x1d4c0

    return-wide v0
.end method

.method protected final c()Z
    .locals 39

    .prologue
    .line 190
    move-object/from16 v0, p0

    iget-object v7, v0, Lahp;->b:Lcom/alibaba/alimei/restfulapi/tracker/fullstatistics/model/AlimeiFullFlowUnifyStatisticsModel;

    invoke-virtual/range {p0 .. p0}, Lahp;->k()Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v9, "4.5.10"

    invoke-virtual {v7, v8, v9}, Lcom/alibaba/alimei/restfulapi/tracker/fullstatistics/model/AlimeiFullFlowUnifyStatisticsModel;->startStatistics(Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    move-object/from16 v0, p0

    iget-object v7, v0, Lahp;->b:Lcom/alibaba/alimei/restfulapi/tracker/fullstatistics/model/AlimeiFullFlowUnifyStatisticsModel;

    invoke-virtual/range {p0 .. p0}, Lahp;->k()Ljava/lang/String;

    move-result-object v8

    iput-object v8, v7, Lcom/alibaba/alimei/restfulapi/tracker/fullstatistics/model/AlimeiFullFlowUnifyStatisticsModel;->reservation:Ljava/lang/String;

    .line 192
    invoke-virtual/range {p0 .. p0}, Lahp;->g()Z

    move-result v6

    .line 196
    .local v6, "isMailDraft":Z
    if-eqz v6, :cond_0

    .line 197
    sget-object v35, Lcom/alibaba/alimei/framework/perf/MonitorPriority;->Low:Lcom/alibaba/alimei/framework/perf/MonitorPriority;

    .line 198
    .local v35, "priority":Lcom/alibaba/alimei/framework/perf/MonitorPriority;
    const-string/jumbo v33, "sdk.mail.saveDrafts"

    .line 203
    .local v33, "monitorPoint":Ljava/lang/String;
    :goto_0
    const-string/jumbo v7, "AlmSDK"

    move-object/from16 v0, v35

    move-object/from16 v1, v33

    invoke-static {v0, v7, v1}, Lyn;->a(Lcom/alibaba/alimei/framework/perf/MonitorPriority;Ljava/lang/String;Ljava/lang/String;)V

    .line 205
    invoke-static {}, Lcom/alibaba/alimei/sdk/datasource/DatasourceCenter;->getMessageDatasource()Lcom/alibaba/alimei/sdk/datasource/MessageDatasource;

    move-result-object v5

    .line 4046
    .local v5, "ds":Lcom/alibaba/alimei/sdk/datasource/MessageDatasource;
    move-object/from16 v0, p0

    iget-wide v8, v0, Lyr;->x:J

    .line 206
    move-object/from16 v0, p0

    iget-object v7, v0, Lahp;->a:Lahp$a;

    iget-wide v12, v7, Lahp$a;->b:J

    invoke-interface {v5, v8, v9, v12, v13}, Lcom/alibaba/alimei/sdk/datasource/MessageDatasource;->queryMessageById(JJ)Lcom/alibaba/alimei/sdk/db/mail/entry/Message;

    move-result-object v31

    .line 207
    .local v31, "message":Lcom/alibaba/alimei/sdk/db/mail/entry/Message;
    invoke-static {}, Lcom/alibaba/alimei/sdk/datasource/DatasourceCenter;->getMailboxDatasource()Lcom/alibaba/alimei/sdk/datasource/MailboxDatasource;

    move-result-object v30

    .line 209
    .local v30, "mds":Lcom/alibaba/alimei/sdk/datasource/MailboxDatasource;
    if-nez v31, :cond_1

    .line 211
    const/4 v7, 0x1

    move-object/from16 v0, p0

    iget-object v8, v0, Lahp;->f:Lcom/alibaba/alimei/sdk/db/mail/entry/MessageSync;

    const/4 v9, 0x1

    invoke-interface {v5, v7, v8, v9}, Lcom/alibaba/alimei/sdk/datasource/MessageDatasource;->handleSendMailOrDraftSyncResult(ZLcom/alibaba/alimei/sdk/db/mail/entry/MessageSync;Z)V

    .line 212
    const-string/jumbo v7, "SendMailORSyncDraft"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v9, v0, Lahp;->a:Lahp$a;

    iget-object v9, v9, Lahp$a;->a:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " message has been deleted localId: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, p0

    iget-object v9, v0, Lahp;->a:Lahp$a;

    iget-wide v12, v9, Lahp$a;->b:J

    invoke-virtual {v8, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lzd;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 214
    const-string/jumbo v7, "SendMailORSyncDraft"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string/jumbo v9, "sync mail or draft info-->>"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v9, v0, Lahp;->f:Lcom/alibaba/alimei/sdk/db/mail/entry/MessageSync;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lyx;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    const-string/jumbo v7, "AlmSDK"

    move-object/from16 v0, v35

    move-object/from16 v1, v33

    invoke-static {v0, v7, v1}, Lyn;->c(Lcom/alibaba/alimei/framework/perf/MonitorPriority;Ljava/lang/String;Ljava/lang/String;)V

    .line 216
    const/4 v7, 0x1

    .line 405
    :goto_1
    return v7

    .line 200
    .end local v5    # "ds":Lcom/alibaba/alimei/sdk/datasource/MessageDatasource;
    .end local v30    # "mds":Lcom/alibaba/alimei/sdk/datasource/MailboxDatasource;
    .end local v31    # "message":Lcom/alibaba/alimei/sdk/db/mail/entry/Message;
    .end local v33    # "monitorPoint":Ljava/lang/String;
    .end local v35    # "priority":Lcom/alibaba/alimei/framework/perf/MonitorPriority;
    :cond_0
    sget-object v35, Lcom/alibaba/alimei/framework/perf/MonitorPriority;->High:Lcom/alibaba/alimei/framework/perf/MonitorPriority;

    .line 201
    .restart local v35    # "priority":Lcom/alibaba/alimei/framework/perf/MonitorPriority;
    const-string/jumbo v33, "sdk.mail.sendmails"

    .restart local v33    # "monitorPoint":Ljava/lang/String;
    goto :goto_0

    .line 219
    .restart local v5    # "ds":Lcom/alibaba/alimei/sdk/datasource/MessageDatasource;
    .restart local v30    # "mds":Lcom/alibaba/alimei/sdk/datasource/MailboxDatasource;
    .restart local v31    # "message":Lcom/alibaba/alimei/sdk/db/mail/entry/Message;
    :cond_1
    if-eqz v6, :cond_4

    .line 5046
    move-object/from16 v0, p0

    iget-wide v8, v0, Lyr;->x:J

    .line 220
    const/4 v7, 0x3

    move-object/from16 v0, v30

    invoke-interface {v0, v8, v9, v7}, Lcom/alibaba/alimei/sdk/datasource/MailboxDatasource;->queryMailboxByType(JI)Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;

    move-result-object v36

    .line 221
    .local v36, "sourceMailbox":Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;
    move-object/from16 v0, p0

    iget-object v7, v0, Lahp;->d:Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;

    if-nez v7, :cond_2

    .line 222
    move-object/from16 v0, v36

    move-object/from16 v1, p0

    iput-object v0, v1, Lahp;->d:Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;

    .line 229
    :cond_2
    :goto_2
    if-eqz v36, :cond_3

    if-eqz v36, :cond_5

    move-object/from16 v0, v36

    iget-wide v8, v0, Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;->mId:J

    move-object/from16 v0, v31

    iget-wide v12, v0, Lcom/alibaba/alimei/sdk/db/mail/entry/Message;->mMailboxKey:J

    cmp-long v7, v8, v12

    if-eqz v7, :cond_5

    .line 230
    :cond_3
    const-string/jumbo v7, "AlmSDK"

    move-object/from16 v0, v35

    move-object/from16 v1, v33

    invoke-static {v0, v7, v1}, Lyn;->c(Lcom/alibaba/alimei/framework/perf/MonitorPriority;Ljava/lang/String;Ljava/lang/String;)V

    .line 231
    const-string/jumbo v7, "SendMailORSyncDraft"

    const-string/jumbo v8, "sendMail fail sourceMailbox is null or sourceMailbox id not equal message mailboxKey"

    invoke-static {v7, v8}, Lyx;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    const/4 v7, 0x1

    goto :goto_1

    .line 6046
    .end local v36    # "sourceMailbox":Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;
    :cond_4
    move-object/from16 v0, p0

    iget-wide v8, v0, Lyr;->x:J

    .line 225
    const/4 v7, 0x4

    move-object/from16 v0, v30

    invoke-interface {v0, v8, v9, v7}, Lcom/alibaba/alimei/sdk/datasource/MailboxDatasource;->queryMailboxByType(JI)Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;

    move-result-object v36

    .restart local v36    # "sourceMailbox":Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;
    goto :goto_2

    .line 236
    :cond_5
    new-instance v24, Lyc;

    invoke-virtual/range {p0 .. p0}, Lahp;->f()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v8, v0, Lahp;->a:Lahp$a;

    iget-object v8, v8, Lahp$a;->a:Ljava/lang/String;

    const/4 v9, 0x2

    move-object/from16 v0, v24

    invoke-direct {v0, v7, v8, v9}, Lyc;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 237
    .local v24, "eventMessage":Lyc;
    const/4 v7, 0x2

    move-object/from16 v0, v24

    iput v7, v0, Lyc;->c:I

    .line 238
    move-object/from16 v0, p0

    iget-object v7, v0, Lahp;->a:Lahp$a;

    iget-wide v8, v7, Lahp$a;->b:J

    move-object/from16 v0, v24

    iput-wide v8, v0, Lyc;->e:J

    .line 240
    invoke-static/range {v31 .. v31}, Lcom/alibaba/alimei/sdk/datasource/impl/MessageDatasourceImpl;->buildMailSnippetModel(Lcom/alibaba/alimei/sdk/db/mail/entry/Message;)Lcom/alibaba/alimei/sdk/model/MailSnippetModel;

    move-result-object v7

    move-object/from16 v0, p0

    iput-object v7, v0, Lahp;->g:Lcom/alibaba/alimei/sdk/model/MailSnippetModel;

    .line 241
    move-object/from16 v0, p0

    iget-object v7, v0, Lahp;->g:Lcom/alibaba/alimei/sdk/model/MailSnippetModel;

    move-object/from16 v0, v24

    iput-object v7, v0, Lyc;->g:Ljava/lang/Object;

    .line 7046
    move-object/from16 v0, p0

    iget-wide v8, v0, Lyr;->x:J

    .line 243
    move-object/from16 v0, p0

    iget-object v7, v0, Lahp;->a:Lahp$a;

    iget-wide v12, v7, Lahp$a;->b:J

    invoke-interface {v5, v8, v9, v12, v13}, Lcom/alibaba/alimei/sdk/datasource/MessageDatasource;->querySendMailOrDraftSync(JJ)Lcom/alibaba/alimei/sdk/db/mail/entry/MessageSync;

    move-result-object v7

    move-object/from16 v0, p0

    iput-object v7, v0, Lahp;->f:Lcom/alibaba/alimei/sdk/db/mail/entry/MessageSync;

    .line 245
    move-object/from16 v0, p0

    iget-object v7, v0, Lahp;->f:Lcom/alibaba/alimei/sdk/db/mail/entry/MessageSync;

    if-eqz v7, :cond_6

    move-object/from16 v0, p0

    iget-object v7, v0, Lahp;->f:Lcom/alibaba/alimei/sdk/db/mail/entry/MessageSync;

    iget v7, v7, Lcom/alibaba/alimei/sdk/db/mail/entry/MessageSync;->synccount:I

    invoke-virtual/range {p0 .. p0}, Lahp;->c_()I

    move-result v8

    if-le v7, v8, :cond_6

    .line 246
    const-string/jumbo v7, "SendMailORSyncDraft"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v9, v0, Lahp;->a:Lahp$a;

    iget-object v9, v9, Lahp$a;->a:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " has arrived max try time for message "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, p0

    iget-object v9, v0, Lahp;->a:Lahp$a;

    iget-wide v12, v9, Lahp$a;->b:J

    invoke-virtual {v8, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lzd;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 248
    const-string/jumbo v7, "AlmSDK"

    move-object/from16 v0, v35

    move-object/from16 v1, v33

    invoke-static {v0, v7, v1}, Lyn;->c(Lcom/alibaba/alimei/framework/perf/MonitorPriority;Ljava/lang/String;Ljava/lang/String;)V

    .line 249
    const-string/jumbo v7, "SendMailORSyncDraft"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v9, v0, Lahp;->a:Lahp$a;

    iget-object v9, v9, Lahp$a;->a:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " has arrived max try time for message "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, p0

    iget-object v9, v0, Lahp;->a:Lahp$a;

    iget-wide v12, v9, Lahp$a;->b:J

    invoke-virtual {v8, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lyx;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    const/4 v7, 0x1

    goto/16 :goto_1

    .line 254
    :cond_6
    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "sync mail or draft info-->>"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v8, v0, Lahp;->f:Lcom/alibaba/alimei/sdk/db/mail/entry/MessageSync;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lyx;->b(Ljava/lang/String;)I

    .line 255
    invoke-static {}, Lafv;->d()Lya;

    move-result-object v23

    .line 256
    .local v23, "eventCenter":Lya;
    invoke-static {}, Lcom/alibaba/alimei/restfulapi/AlimeiResfulApi;->getAppContext()Landroid/content/Context;

    move-result-object v22

    .line 257
    .local v22, "context":Landroid/content/Context;
    invoke-virtual/range {v22 .. v22}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v4

    .line 260
    .local v4, "cacheDir":Ljava/io/File;
    const/16 v25, 0x0

    .line 262
    .local v25, "hasSyncFail":Z
    move-object/from16 v38, v31

    .line 263
    .local v38, "syncMessage":Lcom/alibaba/alimei/sdk/db/mail/entry/Message;
    const/4 v7, 0x0

    move-object/from16 v0, v24

    iput v7, v0, Lyc;->c:I

    .line 264
    invoke-interface/range {v23 .. v24}, Lya;->a(Lyc;)V

    .line 265
    move-object/from16 v0, p0

    iget-object v7, v0, Lahp;->g:Lcom/alibaba/alimei/sdk/model/MailSnippetModel;

    const/4 v8, 0x1

    iput v8, v7, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->statusCode:I

    .line 267
    const/16 v37, 0x0

    .line 269
    .local v37, "syncCount":I
    :goto_3
    const/4 v7, 0x3

    move/from16 v0, v37

    if-gt v0, v7, :cond_9

    .line 270
    const/4 v7, -0x1

    move-object/from16 v0, p0

    iput v7, v0, Lahp;->h:I

    .line 271
    const/4 v7, 0x0

    move-object/from16 v0, p0

    iput-object v7, v0, Lahp;->l:Lcom/alibaba/alimei/restfulapi/response/data/itemsupdate/SingleMailUpdateResult;

    .line 272
    const/4 v7, 0x0

    move-object/from16 v0, p0

    iput-object v7, v0, Lahp;->k:Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    .line 273
    const/4 v7, 0x0

    move-object/from16 v0, p0

    iput-boolean v7, v0, Lahp;->m:Z

    .line 276
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, v38

    invoke-direct {v0, v1, v4, v2}, Lahp;->a(Landroid/content/Context;Ljava/io/File;Lcom/alibaba/alimei/sdk/db/mail/entry/Message;)Z

    .line 278
    move-object/from16 v0, p0

    iget v7, v0, Lahp;->h:I

    const/16 v8, 0xc8

    if-ne v7, v8, :cond_c

    .line 279
    const/16 v37, 0x4

    .line 281
    move-object/from16 v0, p0

    iget-object v7, v0, Lahp;->l:Lcom/alibaba/alimei/restfulapi/response/data/itemsupdate/SingleMailUpdateResult;

    if-eqz v7, :cond_7

    move-object/from16 v0, p0

    iget-object v7, v0, Lahp;->l:Lcom/alibaba/alimei/restfulapi/response/data/itemsupdate/SingleMailUpdateResult;

    invoke-virtual {v7}, Lcom/alibaba/alimei/restfulapi/response/data/itemsupdate/SingleMailUpdateResult;->getMessageId()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_7

    .line 282
    move-object/from16 v0, p0

    iget-object v7, v0, Lahp;->g:Lcom/alibaba/alimei/sdk/model/MailSnippetModel;

    move-object/from16 v0, p0

    iget-object v8, v0, Lahp;->l:Lcom/alibaba/alimei/restfulapi/response/data/itemsupdate/SingleMailUpdateResult;

    invoke-virtual {v8}, Lcom/alibaba/alimei/restfulapi/response/data/itemsupdate/SingleMailUpdateResult;->getMessageId()Ljava/lang/String;

    move-result-object v8

    iput-object v8, v7, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->messageId:Ljava/lang/String;

    .line 7176
    :cond_7
    move-object/from16 v0, p0

    iget-object v7, v0, Lahp;->c:Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;

    if-nez v7, :cond_8

    .line 7177
    invoke-static {}, Lcom/alibaba/alimei/sdk/datasource/DatasourceCenter;->getMailboxDatasource()Lcom/alibaba/alimei/sdk/datasource/MailboxDatasource;

    move-result-object v7

    .line 8046
    move-object/from16 v0, p0

    iget-wide v8, v0, Lyr;->x:J

    .line 7177
    const/4 v12, 0x5

    invoke-interface {v7, v8, v9, v12}, Lcom/alibaba/alimei/sdk/datasource/MailboxDatasource;->queryMailboxByType(JI)Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;

    move-result-object v7

    move-object/from16 v0, p0

    iput-object v7, v0, Lahp;->c:Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;

    .line 7179
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lahp;->c:Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;

    move-object/from16 v29, v0

    .line 285
    .local v29, "mailbox":Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;
    if-nez v29, :cond_b

    const-wide/16 v10, -0x1

    .line 9046
    .local v10, "sendboxId":J
    :goto_4
    move-object/from16 v0, p0

    iget-wide v7, v0, Lyr;->x:J

    .line 286
    move-object/from16 v0, p0

    iget-object v9, v0, Lahp;->a:Lahp$a;

    iget-object v9, v9, Lahp$a;->a:Ljava/lang/String;

    move-object/from16 v0, v38

    iget-wide v12, v0, Lcom/alibaba/alimei/sdk/db/mail/entry/Message;->mId:J

    move-object/from16 v0, p0

    iget-object v14, v0, Lahp;->n:Ljava/util/List;

    move-object/from16 v0, p0

    iget-object v15, v0, Lahp;->o:Ljava/util/List;

    move-object/from16 v0, p0

    iget-object v0, v0, Lahp;->l:Lcom/alibaba/alimei/restfulapi/response/data/itemsupdate/SingleMailUpdateResult;

    move-object/from16 v16, v0

    invoke-interface/range {v5 .. v16}, Lcom/alibaba/alimei/sdk/datasource/MessageDatasource;->handleSendMailOrDraftLocalDataStatus(ZJLjava/lang/String;JJLjava/util/List;Ljava/util/List;Lcom/alibaba/alimei/restfulapi/response/data/itemsupdate/SingleMailUpdateResult;)V

    .line 332
    .end local v10    # "sendboxId":J
    .end local v29    # "mailbox":Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;
    :cond_9
    :goto_5
    move-object/from16 v0, p0

    iget-object v7, v0, Lahp;->b:Lcom/alibaba/alimei/restfulapi/tracker/fullstatistics/model/AlimeiFullFlowUnifyStatisticsModel;

    .line 9102
    move-object/from16 v0, p0

    iget v8, v0, Lyr;->y:I

    .line 332
    int-to-long v8, v8

    iput-wide v8, v7, Lcom/alibaba/alimei/restfulapi/tracker/fullstatistics/model/AlimeiFullFlowUnifyStatisticsModel;->transferSize:J

    .line 333
    move-object/from16 v0, p0

    iget v7, v0, Lahp;->h:I

    const/16 v8, 0xc8

    if-ne v7, v8, :cond_14

    .line 334
    const/4 v7, 0x1

    move-object/from16 v0, v24

    iput v7, v0, Lyc;->c:I

    .line 335
    move-object/from16 v0, v38

    iget-object v7, v0, Lcom/alibaba/alimei/sdk/db/mail/entry/Message;->timingSend:Ljava/lang/String;

    move-object/from16 v0, v24

    iput-object v7, v0, Lyc;->f:Ljava/lang/String;

    .line 336
    const/4 v7, 0x1

    move-object/from16 v0, p0

    iget-object v8, v0, Lahp;->f:Lcom/alibaba/alimei/sdk/db/mail/entry/MessageSync;

    const/4 v9, 0x1

    invoke-interface {v5, v7, v8, v9}, Lcom/alibaba/alimei/sdk/datasource/MessageDatasource;->handleSendMailOrDraftSyncResult(ZLcom/alibaba/alimei/sdk/db/mail/entry/MessageSync;Z)V

    .line 337
    move-object/from16 v0, p0

    iget-object v7, v0, Lahp;->b:Lcom/alibaba/alimei/restfulapi/tracker/fullstatistics/model/AlimeiFullFlowUnifyStatisticsModel;

    const-string/jumbo v8, "2"

    const-string/jumbo v9, "Y"

    invoke-virtual {v7, v8, v9}, Lcom/alibaba/alimei/restfulapi/tracker/fullstatistics/model/AlimeiFullFlowUnifyStatisticsModel;->endSubFlow(Ljava/lang/String;Ljava/lang/String;)V

    .line 338
    move-object/from16 v0, p0

    iget-object v7, v0, Lahp;->b:Lcom/alibaba/alimei/restfulapi/tracker/fullstatistics/model/AlimeiFullFlowUnifyStatisticsModel;

    invoke-virtual {v7}, Lcom/alibaba/alimei/restfulapi/tracker/fullstatistics/model/AlimeiFullFlowUnifyStatisticsModel;->generalSuccessModel()Lcom/alibaba/alimei/restfulapi/tracker/fullstatistics/model/AlimeiFullFlowUnifyStatisticsModel;

    .line 375
    :goto_6
    move-object/from16 v0, p0

    iget-object v7, v0, Lahp;->b:Lcom/alibaba/alimei/restfulapi/tracker/fullstatistics/model/AlimeiFullFlowUnifyStatisticsModel;

    invoke-static {v7}, Lcom/alibaba/alimei/restfulapi/tracker/fullstatistics/FullFlowUtils;->startStatistics(Lcom/alibaba/alimei/restfulapi/tracker/fullstatistics/model/AlimeiUnifyStatisticsModel;)V

    .line 378
    invoke-virtual/range {p0 .. p0}, Lahp;->g()Z

    move-result v7

    if-eqz v7, :cond_1b

    .line 379
    move-object/from16 v0, p0

    iget v7, v0, Lahp;->h:I

    const/16 v8, 0xc8

    if-ne v7, v8, :cond_a

    .line 380
    move-object/from16 v0, p0

    iget-object v7, v0, Lahp;->a:Lahp$a;

    iget-object v7, v7, Lahp$a;->a:Ljava/lang/String;

    invoke-static {v7}, Lafv;->e(Ljava/lang/String;)Lcom/alibaba/alimei/sdk/api/MailApi;

    move-result-object v28

    .line 381
    .local v28, "mailApi":Lcom/alibaba/alimei/sdk/api/MailApi;
    if-eqz v28, :cond_1a

    .line 382
    move-object/from16 v0, p0

    iget-object v7, v0, Lahp;->d:Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;

    if-eqz v7, :cond_19

    .line 384
    move-object/from16 v0, p0

    iget-object v7, v0, Lahp;->d:Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;

    iget-wide v8, v7, Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;->mId:J

    move-object/from16 v0, p0

    iget-object v7, v0, Lahp;->d:Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;

    iget v7, v7, Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;->mType:I

    const/4 v12, 0x1

    move-object/from16 v0, v28

    invoke-interface {v0, v8, v9, v7, v12}, Lcom/alibaba/alimei/sdk/api/MailApi;->startSyncMails(JIZ)V

    .line 401
    .end local v28    # "mailApi":Lcom/alibaba/alimei/sdk/api/MailApi;
    :cond_a
    :goto_7
    move-object/from16 v0, p0

    iget-object v7, v0, Lahp;->g:Lcom/alibaba/alimei/sdk/model/MailSnippetModel;

    move-object/from16 v0, p0

    iget v8, v0, Lahp;->j:I

    invoke-static {v8}, Laja;->f(I)I

    move-result v8

    iput v8, v7, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->statusCode:I

    .line 402
    invoke-interface/range {v23 .. v24}, Lya;->a(Lyc;)V

    .line 403
    const-string/jumbo v7, "AlmSDK"

    move-object/from16 v0, v35

    move-object/from16 v1, v33

    invoke-static {v0, v7, v1}, Lyn;->b(Lcom/alibaba/alimei/framework/perf/MonitorPriority;Ljava/lang/String;Ljava/lang/String;)V

    .line 404
    invoke-direct/range {p0 .. p0}, Lahp;->l()V

    .line 405
    if-nez v25, :cond_1c

    const/4 v7, 0x1

    goto/16 :goto_1

    .line 285
    .restart local v29    # "mailbox":Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;
    :cond_b
    move-object/from16 v0, v29

    iget-wide v10, v0, Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;->mId:J

    goto/16 :goto_4

    .line 289
    .end local v29    # "mailbox":Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;
    :cond_c
    move-object/from16 v0, p0

    iget v7, v0, Lahp;->h:I

    const/16 v8, 0x4b1

    if-ne v7, v8, :cond_e

    .line 291
    const/4 v7, 0x3

    move/from16 v0, v37

    if-ge v0, v7, :cond_d

    .line 292
    const/16 v37, 0x3

    .line 296
    :goto_8
    invoke-virtual/range {p0 .. p0}, Lahp;->g()Z

    move-result v27

    .line 297
    .local v27, "isSyncMailDraft":Z
    const-string/jumbo v7, "SendMailORSyncDraft"

    const/4 v8, 0x7

    new-array v8, v8, [Ljava/lang/String;

    const/4 v9, 0x0

    const-string/jumbo v12, "isSyncMailDraft: "

    aput-object v12, v8, v9

    const/4 v9, 0x1

    invoke-static/range {v27 .. v27}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v8, v9

    const/4 v9, 0x2

    const-string/jumbo v12, ", syncErrorCode: 1201"

    aput-object v12, v8, v9

    const/4 v9, 0x3

    const-string/jumbo v12, " messageId: "

    aput-object v12, v8, v9

    const/4 v9, 0x4

    move-object/from16 v0, p0

    iget-object v12, v0, Lahp;->a:Lahp$a;

    iget-wide v12, v12, Lahp$a;->b:J

    .line 298
    invoke-static {v12, v13}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v8, v9

    const/4 v9, 0x5

    const-string/jumbo v12, ", syncCount: "

    aput-object v12, v8, v9

    const/4 v9, 0x6

    invoke-static/range {v37 .. v37}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v8, v9

    .line 297
    invoke-static {v8}, Lzc;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lyx;->a(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 294
    .end local v27    # "isSyncMailDraft":Z
    :cond_d
    add-int/lit8 v37, v37, 0x1

    goto :goto_8

    .line 299
    :cond_e
    move-object/from16 v0, p0

    iget v7, v0, Lahp;->h:I

    const/16 v8, 0x4b2

    if-ne v7, v8, :cond_10

    .line 301
    move-object/from16 v0, p0

    iget-object v7, v0, Lahp;->f:Lcom/alibaba/alimei/sdk/db/mail/entry/MessageSync;

    if-eqz v7, :cond_f

    .line 302
    move-object/from16 v0, p0

    iget-object v7, v0, Lahp;->f:Lcom/alibaba/alimei/sdk/db/mail/entry/MessageSync;

    invoke-virtual/range {p0 .. p0}, Lahp;->c_()I

    move-result v8

    add-int/lit8 v8, v8, 0x1

    iput v8, v7, Lcom/alibaba/alimei/sdk/db/mail/entry/MessageSync;->synccount:I

    .line 304
    :cond_f
    const/16 v37, 0x4

    .line 305
    invoke-virtual/range {p0 .. p0}, Lahp;->g()Z

    move-result v27

    .line 306
    .restart local v27    # "isSyncMailDraft":Z
    const-string/jumbo v7, "SendMailORSyncDraft"

    const/4 v8, 0x7

    new-array v8, v8, [Ljava/lang/String;

    const/4 v9, 0x0

    const-string/jumbo v12, "isSyncMailDraft: "

    aput-object v12, v8, v9

    const/4 v9, 0x1

    invoke-static/range {v27 .. v27}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v8, v9

    const/4 v9, 0x2

    const-string/jumbo v12, ", syncErrorCode: 1202"

    aput-object v12, v8, v9

    const/4 v9, 0x3

    const-string/jumbo v12, " messageId: "

    aput-object v12, v8, v9

    const/4 v9, 0x4

    move-object/from16 v0, p0

    iget-object v12, v0, Lahp;->a:Lahp$a;

    iget-wide v12, v12, Lahp$a;->b:J

    .line 307
    invoke-static {v12, v13}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v8, v9

    const/4 v9, 0x5

    const-string/jumbo v12, ", syncCount: "

    aput-object v12, v8, v9

    const/4 v9, 0x6

    const-string/jumbo v12, "4"

    aput-object v12, v8, v9

    .line 306
    invoke-static {v8}, Lzc;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lyx;->a(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 310
    .end local v27    # "isSyncMailDraft":Z
    :cond_10
    move-object/from16 v0, p0

    iget-boolean v7, v0, Lahp;->m:Z

    if-eqz v7, :cond_12

    .line 311
    add-int/lit8 v37, v37, 0x1

    .line 325
    :cond_11
    :goto_9
    invoke-virtual/range {p0 .. p0}, Lahp;->g()Z

    move-result v27

    .line 326
    .restart local v27    # "isSyncMailDraft":Z
    const-string/jumbo v7, "SendMailORSyncDraft"

    const/16 v8, 0x8

    new-array v8, v8, [Ljava/lang/String;

    const/4 v9, 0x0

    const-string/jumbo v12, "isSyncMailDraft: "

    aput-object v12, v8, v9

    const/4 v9, 0x1

    invoke-static/range {v27 .. v27}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v8, v9

    const/4 v9, 0x2

    const-string/jumbo v12, " messageId: "

    aput-object v12, v8, v9

    const/4 v9, 0x3

    move-object/from16 v0, p0

    iget-object v12, v0, Lahp;->a:Lahp$a;

    iget-wide v12, v12, Lahp$a;->b:J

    .line 327
    invoke-static {v12, v13}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v8, v9

    const/4 v9, 0x4

    const-string/jumbo v12, ", syncCount: "

    aput-object v12, v8, v9

    const/4 v9, 0x5

    invoke-static/range {v37 .. v37}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v8, v9

    const/4 v9, 0x6

    const-string/jumbo v12, ", mCurrentSyncCode: "

    aput-object v12, v8, v9

    const/4 v9, 0x7

    move-object/from16 v0, p0

    iget v12, v0, Lahp;->h:I

    invoke-static {v12}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v8, v9

    .line 326
    invoke-static {v8}, Lzc;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lyx;->a(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    .line 314
    .end local v27    # "isSyncMailDraft":Z
    :cond_12
    const/16 v37, 0x4

    .line 315
    move-object/from16 v0, p0

    iget v7, v0, Lahp;->h:I

    const/4 v8, -0x1

    if-eq v7, v8, :cond_11

    .line 316
    invoke-virtual/range {p0 .. p0}, Lahp;->g()Z

    move-result v7

    if-eqz v7, :cond_13

    .line 317
    const-string/jumbo v7, "SendMailORSyncDraft"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string/jumbo v9, "Sync mail draft to server error code: "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget v9, v0, Lahp;->h:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, ", msgId["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, p0

    iget-object v9, v0, Lahp;->a:Lahp$a;

    iget-wide v12, v9, Lahp$a;->b:J

    invoke-virtual {v8, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "]"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lzd;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_9

    .line 320
    :cond_13
    const-string/jumbo v7, "SendMailORSyncDraft"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string/jumbo v9, "Send mail error code: "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget v9, v0, Lahp;->h:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, ", msgId["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, p0

    iget-object v9, v0, Lahp;->a:Lahp$a;

    iget-wide v12, v9, Lahp$a;->b:J

    invoke-virtual {v8, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "]"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lzd;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_9

    .line 340
    :cond_14
    const/16 v25, 0x1

    .line 342
    move-object/from16 v0, p0

    iget-object v7, v0, Lahp;->k:Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    if-nez v7, :cond_16

    .line 343
    move-object/from16 v0, p0

    iget v0, v0, Lahp;->h:I

    move/from16 v21, v0

    .line 344
    .local v21, "code":I
    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, " Result code is "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget v8, v0, Lahp;->h:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    .line 345
    .local v34, "msg":Ljava/lang/String;
    move-object/from16 v0, p0

    iget v7, v0, Lahp;->i:I

    const/4 v8, -0x1

    if-eq v7, v8, :cond_15

    .line 346
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v34

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " and errorCode is "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p0

    iget v8, v0, Lahp;->i:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    .line 349
    move-object/from16 v0, p0

    iget v7, v0, Lahp;->h:I

    const/16 v8, 0x4b2

    if-ne v7, v8, :cond_15

    .line 350
    new-instance v32, Lyc;

    const-string/jumbo v7, "SendMail1202ErrorCode"

    move-object/from16 v0, p0

    iget-object v8, v0, Lahp;->a:Lahp$a;

    iget-object v8, v8, Lahp$a;->a:Ljava/lang/String;

    const/4 v9, 0x2

    move-object/from16 v0, v32

    invoke-direct {v0, v7, v8, v9}, Lyc;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 352
    .local v32, "message1202":Lyc;
    const/4 v7, 0x2

    move-object/from16 v0, v32

    iput v7, v0, Lyc;->c:I

    .line 353
    move-object/from16 v0, p0

    iget v7, v0, Lahp;->i:I

    move-object/from16 v0, v32

    iput v7, v0, Lyc;->d:I

    .line 354
    move-object/from16 v0, p0

    iget-object v7, v0, Lahp;->a:Lahp$a;

    iget-wide v8, v7, Lahp$a;->b:J

    move-object/from16 v0, v32

    iput-wide v8, v0, Lyc;->e:J

    .line 355
    move-object/from16 v0, p0

    iget-object v7, v0, Lahp;->g:Lcom/alibaba/alimei/sdk/model/MailSnippetModel;

    move-object/from16 v0, p0

    iget v8, v0, Lahp;->j:I

    invoke-static {v8}, Laja;->f(I)I

    move-result v8

    iput v8, v7, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->statusCode:I

    .line 356
    move-object/from16 v0, p0

    iget-object v7, v0, Lahp;->g:Lcom/alibaba/alimei/sdk/model/MailSnippetModel;

    move-object/from16 v0, v32

    iput-object v7, v0, Lyc;->g:Ljava/lang/Object;

    .line 357
    move-object/from16 v0, v23

    move-object/from16 v1, v32

    invoke-interface {v0, v1}, Lya;->a(Lyc;)V

    .line 360
    .end local v32    # "message1202":Lyc;
    :cond_15
    new-instance v7, Lcom/alibaba/alimei/restfulapi/exception/ServiceException;

    move/from16 v0, v21

    move-object/from16 v1, v34

    invoke-direct {v7, v0, v1}, Lcom/alibaba/alimei/restfulapi/exception/ServiceException;-><init>(ILjava/lang/String;)V

    invoke-static {v7}, Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;->buildSdkException(Lcom/alibaba/alimei/restfulapi/exception/ServiceException;)Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    move-result-object v7

    move-object/from16 v0, p0

    iput-object v7, v0, Lahp;->k:Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    .line 363
    .end local v21    # "code":I
    .end local v34    # "msg":Ljava/lang/String;
    :cond_16
    move-object/from16 v0, p0

    iget-object v7, v0, Lahp;->k:Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    invoke-virtual {v7}, Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;->isNetworkError()Z

    move-result v7

    if-nez v7, :cond_18

    const/16 v26, 0x1

    .line 364
    .local v26, "isServiceError":Z
    :goto_a
    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget-object v8, v0, Lahp;->f:Lcom/alibaba/alimei/sdk/db/mail/entry/MessageSync;

    move/from16 v0, v26

    invoke-interface {v5, v7, v8, v0}, Lcom/alibaba/alimei/sdk/datasource/MessageDatasource;->handleSendMailOrDraftSyncResult(ZLcom/alibaba/alimei/sdk/db/mail/entry/MessageSync;Z)V

    .line 365
    const/4 v7, 0x2

    move-object/from16 v0, v24

    iput v7, v0, Lyc;->c:I

    .line 366
    move-object/from16 v0, p0

    iget-object v7, v0, Lahp;->k:Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    move-object/from16 v0, v24

    iput-object v7, v0, Lyc;->h:Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    .line 367
    if-eqz v26, :cond_17

    move-object/from16 v0, p0

    iget v7, v0, Lahp;->i:I

    const/4 v8, -0x1

    if-eq v7, v8, :cond_17

    .line 368
    const-string/jumbo v7, "SendMailORSyncDraft"

    move-object/from16 v0, p0

    iget-object v8, v0, Lahp;->k:Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    invoke-virtual {v8}, Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;->getErrorMsg()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lzd;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 371
    :cond_17
    move-object/from16 v0, p0

    iget-object v7, v0, Lahp;->b:Lcom/alibaba/alimei/restfulapi/tracker/fullstatistics/model/AlimeiFullFlowUnifyStatisticsModel;

    const-string/jumbo v8, "2"

    move-object/from16 v0, p0

    iget v9, v0, Lahp;->i:I

    .line 372
    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    move-object/from16 v0, p0

    iget-object v12, v0, Lahp;->k:Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    invoke-virtual {v12}, Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;->getRpcResultCode()I

    move-result v12

    invoke-static {v12}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v12

    .line 371
    invoke-virtual {v7, v8, v9, v12}, Lcom/alibaba/alimei/restfulapi/tracker/fullstatistics/model/AlimeiFullFlowUnifyStatisticsModel;->generalFailedModel(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/alimei/restfulapi/tracker/fullstatistics/model/AlimeiFullFlowUnifyStatisticsModel;

    goto/16 :goto_6

    .line 363
    .end local v26    # "isServiceError":Z
    :cond_18
    const/16 v26, 0x0

    goto :goto_a

    .line 386
    .restart local v28    # "mailApi":Lcom/alibaba/alimei/sdk/api/MailApi;
    :cond_19
    const-string/jumbo v7, "SendMailORSyncDraft"

    const-string/jumbo v8, "sync draft mailbox fail for draft maibox is null"

    invoke-static {v7, v8}, Lyx;->a(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_7

    .line 389
    :cond_1a
    const-string/jumbo v7, "SendMailORSyncDraft"

    const-string/jumbo v8, "sync draft mailbox fail for mailApi is null"

    invoke-static {v7, v8}, Lyx;->a(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_7

    .line 394
    .end local v28    # "mailApi":Lcom/alibaba/alimei/sdk/api/MailApi;
    :cond_1b
    move-object/from16 v0, v38

    iget-wide v14, v0, Lcom/alibaba/alimei/sdk/db/mail/entry/Message;->mAccountKey:J

    move-object/from16 v0, v38

    iget-wide v0, v0, Lcom/alibaba/alimei/sdk/db/mail/entry/Message;->mId:J

    move-wide/from16 v16, v0

    move-object/from16 v0, v38

    iget-wide v0, v0, Lcom/alibaba/alimei/sdk/db/mail/entry/Message;->mMailboxKey:J

    move-wide/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lahp;->j:I

    move/from16 v20, v0

    move-object v13, v5

    invoke-interface/range {v13 .. v20}, Lcom/alibaba/alimei/sdk/datasource/MessageDatasource;->handleSendMailFailureResult(JJJI)V

    .line 396
    invoke-virtual/range {p0 .. p0}, Lahp;->g()Z

    move-result v27

    .line 397
    .restart local v27    # "isSyncMailDraft":Z
    const-string/jumbo v7, "SendMailORSyncDraft"

    const/16 v8, 0x8

    new-array v8, v8, [Ljava/lang/String;

    const/4 v9, 0x0

    const-string/jumbo v12, "isSyncMailDraft: "

    aput-object v12, v8, v9

    const/4 v9, 0x1

    invoke-static/range {v27 .. v27}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v8, v9

    const/4 v9, 0x2

    const-string/jumbo v12, ", messageId: "

    aput-object v12, v8, v9

    const/4 v9, 0x3

    move-object/from16 v0, p0

    iget-object v12, v0, Lahp;->a:Lahp$a;

    iget-wide v12, v12, Lahp$a;->b:J

    .line 398
    invoke-static {v12, v13}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v8, v9

    const/4 v9, 0x4

    const-string/jumbo v12, ", syncCount: "

    aput-object v12, v8, v9

    const/4 v9, 0x5

    invoke-static/range {v37 .. v37}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v8, v9

    const/4 v9, 0x6

    const-string/jumbo v12, ", mCurrentSyncCode: "

    aput-object v12, v8, v9

    const/4 v9, 0x7

    move-object/from16 v0, p0

    iget v12, v0, Lahp;->h:I

    invoke-static {v12}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v8, v9

    .line 397
    invoke-static {v8}, Lzc;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lyx;->a(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_7

    .line 405
    .end local v27    # "isSyncMailDraft":Z
    :cond_1c
    const/4 v7, 0x0

    goto/16 :goto_1
.end method

.method protected abstract f()Ljava/lang/String;
.end method

.method protected abstract g()Z
.end method

.method protected abstract k()Ljava/lang/String;
.end method
