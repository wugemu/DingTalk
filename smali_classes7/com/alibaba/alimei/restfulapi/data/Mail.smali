.class public Lcom/alibaba/alimei/restfulapi/data/Mail;
.super Lcom/alibaba/alimei/restfulapi/data/Item;
.source "Mail.java"


# instance fields
.field public attachList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/restfulapi/data/Attach;",
            ">;"
        }
    .end annotation
.end field

.field public autoQuote:Ljava/lang/Boolean;

.field public bcc:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/restfulapi/data/AliAddress;",
            ">;"
        }
    .end annotation
.end field

.field public bodyHTML:Ljava/lang/String;

.field public bodyPlain:Ljava/lang/String;

.field public calendar:Lcom/alibaba/alimei/restfulapi/data/calendar/Calendar;

.field public calendarContentType:Ljava/lang/String;

.field public calendarEncoding:Ljava/lang/String;

.field public calendarPartId:Ljava/lang/String;

.field public cc:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/restfulapi/data/AliAddress;",
            ">;"
        }
    .end annotation
.end field

.field public clientId:Ljava/lang/String;

.field public date:J

.field public extData:Lcom/alibaba/alimei/restfulapi/data/ExtData;

.field public extendHeaders:Lcom/alibaba/alimei/restfulapi/data/MailExtHeader;

.field public flagList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public folderId:Ljava/lang/String;

.field public forwarded:Ljava/lang/Boolean;

.field public from:Lcom/alibaba/alimei/restfulapi/data/AliAddress;

.field public hasAttach:Ljava/lang/Boolean;

.field public htmlContentType:Ljava/lang/String;

.field public htmlEncoding:Ljava/lang/String;

.field public htmlPartId:Ljava/lang/String;

.field public isCovertToInlineImg:Z

.field public messageId:Ljava/lang/String;

.field public priority:I

.field public proxySend:Z

.field public read:Ljava/lang/Boolean;

.field public referItemId:Ljava/lang/String;

.field public referType:I

.field public references:Ljava/lang/String;

.field public replied:Ljava/lang/Boolean;

.field public replyTo:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/restfulapi/data/AliAddress;",
            ">;"
        }
    .end annotation
.end field

.field public resourceList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/restfulapi/data/Attach;",
            ">;"
        }
    .end annotation
.end field

.field public sender:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/restfulapi/data/AliAddress;",
            ">;"
        }
    .end annotation
.end field

.field public sentStatus:Lcom/alibaba/alimei/restfulapi/data/MailSendStatus;

.field public separatedSend:Z

.field public sessionId:Ljava/lang/String;

.field public subject:Ljava/lang/String;

.field public summary:Ljava/lang/String;

.field public tags:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public textContentType:Ljava/lang/String;

.field public textEncoding:Ljava/lang/String;

.field public textPartId:Ljava/lang/String;

.field public timingSend:Ljava/lang/String;

.field public to:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/restfulapi/data/AliAddress;",
            ">;"
        }
    .end annotation
.end field

.field public uid:J


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 11
    invoke-direct {p0}, Lcom/alibaba/alimei/restfulapi/data/Item;-><init>()V

    .line 83
    const/4 v0, 0x3

    iput v0, p0, Lcom/alibaba/alimei/restfulapi/data/Mail;->priority:I

    .line 120
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alibaba/alimei/restfulapi/data/Mail;->isCovertToInlineImg:Z

    return-void
.end method


# virtual methods
.method public getAttachList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/restfulapi/data/Attach;",
            ">;"
        }
    .end annotation

    .prologue
    .line 352
    iget-object v0, p0, Lcom/alibaba/alimei/restfulapi/data/Mail;->attachList:Ljava/util/List;

    return-object v0
.end method

.method public getAutoQuote()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 376
    iget-object v0, p0, Lcom/alibaba/alimei/restfulapi/data/Mail;->autoQuote:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getBcc()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/restfulapi/data/AliAddress;",
            ">;"
        }
    .end annotation

    .prologue
    .line 260
    iget-object v0, p0, Lcom/alibaba/alimei/restfulapi/data/Mail;->bcc:Ljava/util/List;

    return-object v0
.end method

.method public getBodyHTML()Ljava/lang/String;
    .locals 1

    .prologue
    .line 326
    iget-object v0, p0, Lcom/alibaba/alimei/restfulapi/data/Mail;->bodyHTML:Ljava/lang/String;

    return-object v0
.end method

.method public getBodyPlain()Ljava/lang/String;
    .locals 1

    .prologue
    .line 332
    iget-object v0, p0, Lcom/alibaba/alimei/restfulapi/data/Mail;->bodyPlain:Ljava/lang/String;

    return-object v0
.end method

.method public getCalendar()Lcom/alibaba/alimei/restfulapi/data/calendar/Calendar;
    .locals 1

    .prologue
    .line 364
    iget-object v0, p0, Lcom/alibaba/alimei/restfulapi/data/Mail;->calendar:Lcom/alibaba/alimei/restfulapi/data/calendar/Calendar;

    return-object v0
.end method

.method public getCalendarContentType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 486
    iget-object v0, p0, Lcom/alibaba/alimei/restfulapi/data/Mail;->calendarContentType:Ljava/lang/String;

    return-object v0
.end method

.method public getCalendarEncoding()Ljava/lang/String;
    .locals 1

    .prologue
    .line 478
    iget-object v0, p0, Lcom/alibaba/alimei/restfulapi/data/Mail;->calendarEncoding:Ljava/lang/String;

    return-object v0
.end method

.method public getCalendarPartId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 470
    iget-object v0, p0, Lcom/alibaba/alimei/restfulapi/data/Mail;->calendarPartId:Ljava/lang/String;

    return-object v0
.end method

.method public getCc()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/restfulapi/data/AliAddress;",
            ">;"
        }
    .end annotation

    .prologue
    .line 254
    iget-object v0, p0, Lcom/alibaba/alimei/restfulapi/data/Mail;->cc:Ljava/util/List;

    return-object v0
.end method

.method public getClientId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 403
    iget-object v0, p0, Lcom/alibaba/alimei/restfulapi/data/Mail;->clientId:Ljava/lang/String;

    return-object v0
.end method

.method public getDate()J
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 284
    iget-wide v0, p0, Lcom/alibaba/alimei/restfulapi/data/Mail;->date:J

    return-wide v0
.end method

.method public getFlagList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 314
    iget-object v0, p0, Lcom/alibaba/alimei/restfulapi/data/Mail;->flagList:Ljava/util/List;

    return-object v0
.end method

.method public getFolderId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 242
    iget-object v0, p0, Lcom/alibaba/alimei/restfulapi/data/Mail;->folderId:Ljava/lang/String;

    return-object v0
.end method

.method public getForwarded()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 302
    iget-object v0, p0, Lcom/alibaba/alimei/restfulapi/data/Mail;->forwarded:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getFrom()Lcom/alibaba/alimei/restfulapi/data/AliAddress;
    .locals 1

    .prologue
    .line 266
    iget-object v0, p0, Lcom/alibaba/alimei/restfulapi/data/Mail;->from:Lcom/alibaba/alimei/restfulapi/data/AliAddress;

    return-object v0
.end method

.method public getHasAttach()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 397
    iget-object v0, p0, Lcom/alibaba/alimei/restfulapi/data/Mail;->hasAttach:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getHtmlContentType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 462
    iget-object v0, p0, Lcom/alibaba/alimei/restfulapi/data/Mail;->htmlContentType:Ljava/lang/String;

    return-object v0
.end method

.method public getHtmlEncoding()Ljava/lang/String;
    .locals 1

    .prologue
    .line 438
    iget-object v0, p0, Lcom/alibaba/alimei/restfulapi/data/Mail;->htmlEncoding:Ljava/lang/String;

    return-object v0
.end method

.method public getHtmlPartId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 422
    iget-object v0, p0, Lcom/alibaba/alimei/restfulapi/data/Mail;->htmlPartId:Ljava/lang/String;

    return-object v0
.end method

.method public getMessageId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 340
    iget-object v0, p0, Lcom/alibaba/alimei/restfulapi/data/Mail;->messageId:Ljava/lang/String;

    return-object v0
.end method

.method public getPriority()I
    .locals 1

    .prologue
    .line 308
    iget v0, p0, Lcom/alibaba/alimei/restfulapi/data/Mail;->priority:I

    return v0
.end method

.method public getRead()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 290
    iget-object v0, p0, Lcom/alibaba/alimei/restfulapi/data/Mail;->read:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getReferItemId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 236
    iget-object v0, p0, Lcom/alibaba/alimei/restfulapi/data/Mail;->referItemId:Ljava/lang/String;

    return-object v0
.end method

.method public getReferType()I
    .locals 1

    .prologue
    .line 230
    iget v0, p0, Lcom/alibaba/alimei/restfulapi/data/Mail;->referType:I

    return v0
.end method

.method public getReferences()Ljava/lang/String;
    .locals 1

    .prologue
    .line 502
    iget-object v0, p0, Lcom/alibaba/alimei/restfulapi/data/Mail;->references:Ljava/lang/String;

    return-object v0
.end method

.method public getReplied()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 296
    iget-object v0, p0, Lcom/alibaba/alimei/restfulapi/data/Mail;->replied:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getReplyTo()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/restfulapi/data/AliAddress;",
            ">;"
        }
    .end annotation

    .prologue
    .line 272
    iget-object v0, p0, Lcom/alibaba/alimei/restfulapi/data/Mail;->replyTo:Ljava/util/List;

    return-object v0
.end method

.method public getResourceList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/restfulapi/data/Attach;",
            ">;"
        }
    .end annotation

    .prologue
    .line 358
    iget-object v0, p0, Lcom/alibaba/alimei/restfulapi/data/Mail;->resourceList:Ljava/util/List;

    return-object v0
.end method

.method public getSender()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/restfulapi/data/AliAddress;",
            ">;"
        }
    .end annotation

    .prologue
    .line 510
    iget-object v0, p0, Lcom/alibaba/alimei/restfulapi/data/Mail;->sender:Ljava/util/List;

    return-object v0
.end method

.method public getSentStatus()Lcom/alibaba/alimei/restfulapi/data/MailSendStatus;
    .locals 1

    .prologue
    .line 415
    iget-object v0, p0, Lcom/alibaba/alimei/restfulapi/data/Mail;->sentStatus:Lcom/alibaba/alimei/restfulapi/data/MailSendStatus;

    return-object v0
.end method

.method public getSessionId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 346
    iget-object v0, p0, Lcom/alibaba/alimei/restfulapi/data/Mail;->sessionId:Ljava/lang/String;

    return-object v0
.end method

.method public getSubject()Ljava/lang/String;
    .locals 1

    .prologue
    .line 278
    iget-object v0, p0, Lcom/alibaba/alimei/restfulapi/data/Mail;->subject:Ljava/lang/String;

    return-object v0
.end method

.method public getSummary()Ljava/lang/String;
    .locals 1

    .prologue
    .line 320
    iget-object v0, p0, Lcom/alibaba/alimei/restfulapi/data/Mail;->summary:Ljava/lang/String;

    return-object v0
.end method

.method public getTags()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 382
    iget-object v0, p0, Lcom/alibaba/alimei/restfulapi/data/Mail;->tags:Ljava/util/List;

    return-object v0
.end method

.method public getTextContentType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 454
    iget-object v0, p0, Lcom/alibaba/alimei/restfulapi/data/Mail;->textContentType:Ljava/lang/String;

    return-object v0
.end method

.method public getTextEncoding()Ljava/lang/String;
    .locals 1

    .prologue
    .line 446
    iget-object v0, p0, Lcom/alibaba/alimei/restfulapi/data/Mail;->textEncoding:Ljava/lang/String;

    return-object v0
.end method

.method public getTextPartId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 430
    iget-object v0, p0, Lcom/alibaba/alimei/restfulapi/data/Mail;->textPartId:Ljava/lang/String;

    return-object v0
.end method

.method public getTo()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/restfulapi/data/AliAddress;",
            ">;"
        }
    .end annotation

    .prologue
    .line 248
    iget-object v0, p0, Lcom/alibaba/alimei/restfulapi/data/Mail;->to:Ljava/util/List;

    return-object v0
.end method

.method public getUid()J
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 494
    iget-wide v0, p0, Lcom/alibaba/alimei/restfulapi/data/Mail;->uid:J

    return-wide v0
.end method

.method public isAutoQuote()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 370
    iget-object v0, p0, Lcom/alibaba/alimei/restfulapi/data/Mail;->autoQuote:Ljava/lang/Boolean;

    return-object v0
.end method

.method public isProxySend()Z
    .locals 1

    .prologue
    .line 409
    iget-boolean v0, p0, Lcom/alibaba/alimei/restfulapi/data/Mail;->proxySend:Z

    return v0
.end method

.method public setAttachList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/restfulapi/data/Attach;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 355
    .local p1, "attachList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/restfulapi/data/Attach;>;"
    iput-object p1, p0, Lcom/alibaba/alimei/restfulapi/data/Mail;->attachList:Ljava/util/List;

    .line 356
    return-void
.end method

.method public setAutoQuote(Ljava/lang/Boolean;)V
    .locals 0
    .param p1, "autoQuote"    # Ljava/lang/Boolean;

    .prologue
    .line 379
    iput-object p1, p0, Lcom/alibaba/alimei/restfulapi/data/Mail;->autoQuote:Ljava/lang/Boolean;

    .line 380
    return-void
.end method

.method public setAutoQuote(Z)V
    .locals 1
    .param p1, "autoQuote"    # Z

    .prologue
    .line 373
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/alimei/restfulapi/data/Mail;->autoQuote:Ljava/lang/Boolean;

    .line 374
    return-void
.end method

.method public setBcc(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/restfulapi/data/AliAddress;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 263
    .local p1, "bcc":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/restfulapi/data/AliAddress;>;"
    iput-object p1, p0, Lcom/alibaba/alimei/restfulapi/data/Mail;->bcc:Ljava/util/List;

    .line 264
    return-void
.end method

.method public setBodyHTML(Ljava/lang/String;)V
    .locals 0
    .param p1, "bodyHTML"    # Ljava/lang/String;

    .prologue
    .line 329
    iput-object p1, p0, Lcom/alibaba/alimei/restfulapi/data/Mail;->bodyHTML:Ljava/lang/String;

    .line 330
    return-void
.end method

.method public setBodyPlain(Ljava/lang/String;)V
    .locals 0
    .param p1, "bodyPlain"    # Ljava/lang/String;

    .prologue
    .line 335
    iput-object p1, p0, Lcom/alibaba/alimei/restfulapi/data/Mail;->bodyPlain:Ljava/lang/String;

    .line 336
    return-void
.end method

.method public setCalendar(Lcom/alibaba/alimei/restfulapi/data/calendar/Calendar;)V
    .locals 0
    .param p1, "calendar"    # Lcom/alibaba/alimei/restfulapi/data/calendar/Calendar;

    .prologue
    .line 367
    iput-object p1, p0, Lcom/alibaba/alimei/restfulapi/data/Mail;->calendar:Lcom/alibaba/alimei/restfulapi/data/calendar/Calendar;

    .line 368
    return-void
.end method

.method public setCalendarContentType(Ljava/lang/String;)V
    .locals 0
    .param p1, "contentType"    # Ljava/lang/String;

    .prologue
    .line 490
    iput-object p1, p0, Lcom/alibaba/alimei/restfulapi/data/Mail;->calendarContentType:Ljava/lang/String;

    .line 491
    return-void
.end method

.method public setCalendarEncoding(Ljava/lang/String;)V
    .locals 0
    .param p1, "encoding"    # Ljava/lang/String;

    .prologue
    .line 482
    iput-object p1, p0, Lcom/alibaba/alimei/restfulapi/data/Mail;->calendarEncoding:Ljava/lang/String;

    .line 483
    return-void
.end method

.method public setCalendarPartId(Ljava/lang/String;)V
    .locals 0
    .param p1, "partId"    # Ljava/lang/String;

    .prologue
    .line 474
    iput-object p1, p0, Lcom/alibaba/alimei/restfulapi/data/Mail;->calendarPartId:Ljava/lang/String;

    .line 475
    return-void
.end method

.method public setCc(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/restfulapi/data/AliAddress;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 257
    .local p1, "cc":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/restfulapi/data/AliAddress;>;"
    iput-object p1, p0, Lcom/alibaba/alimei/restfulapi/data/Mail;->cc:Ljava/util/List;

    .line 258
    return-void
.end method

.method public setClientId(Ljava/lang/String;)V
    .locals 0
    .param p1, "clientId"    # Ljava/lang/String;

    .prologue
    .line 406
    iput-object p1, p0, Lcom/alibaba/alimei/restfulapi/data/Mail;->clientId:Ljava/lang/String;

    .line 407
    return-void
.end method

.method public setDate(J)V
    .locals 1
    .param p1, "date"    # J

    .prologue
    .line 287
    iput-wide p1, p0, Lcom/alibaba/alimei/restfulapi/data/Mail;->date:J

    .line 288
    return-void
.end method

.method public setFlagList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 317
    .local p1, "flagList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    iput-object p1, p0, Lcom/alibaba/alimei/restfulapi/data/Mail;->flagList:Ljava/util/List;

    .line 318
    return-void
.end method

.method public setFolderId(Ljava/lang/String;)V
    .locals 0
    .param p1, "folderId"    # Ljava/lang/String;

    .prologue
    .line 245
    iput-object p1, p0, Lcom/alibaba/alimei/restfulapi/data/Mail;->folderId:Ljava/lang/String;

    .line 246
    return-void
.end method

.method public setForwarded(Ljava/lang/Boolean;)V
    .locals 0
    .param p1, "forwarded"    # Ljava/lang/Boolean;

    .prologue
    .line 394
    iput-object p1, p0, Lcom/alibaba/alimei/restfulapi/data/Mail;->forwarded:Ljava/lang/Boolean;

    .line 395
    return-void
.end method

.method public setForwarded(Z)V
    .locals 1
    .param p1, "forwarded"    # Z

    .prologue
    .line 305
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/alimei/restfulapi/data/Mail;->forwarded:Ljava/lang/Boolean;

    .line 306
    return-void
.end method

.method public setFrom(Lcom/alibaba/alimei/restfulapi/data/AliAddress;)V
    .locals 0
    .param p1, "from"    # Lcom/alibaba/alimei/restfulapi/data/AliAddress;

    .prologue
    .line 269
    iput-object p1, p0, Lcom/alibaba/alimei/restfulapi/data/Mail;->from:Lcom/alibaba/alimei/restfulapi/data/AliAddress;

    .line 270
    return-void
.end method

.method public setHasAttach(Ljava/lang/Boolean;)V
    .locals 0
    .param p1, "hasAttach"    # Ljava/lang/Boolean;

    .prologue
    .line 400
    iput-object p1, p0, Lcom/alibaba/alimei/restfulapi/data/Mail;->hasAttach:Ljava/lang/Boolean;

    .line 401
    return-void
.end method

.method public setHtmlContentType(Ljava/lang/String;)V
    .locals 0
    .param p1, "htmlContentType"    # Ljava/lang/String;

    .prologue
    .line 466
    iput-object p1, p0, Lcom/alibaba/alimei/restfulapi/data/Mail;->htmlContentType:Ljava/lang/String;

    .line 467
    return-void
.end method

.method public setHtmlEncoding(Ljava/lang/String;)V
    .locals 0
    .param p1, "htmlEncoding"    # Ljava/lang/String;

    .prologue
    .line 442
    iput-object p1, p0, Lcom/alibaba/alimei/restfulapi/data/Mail;->htmlEncoding:Ljava/lang/String;

    .line 443
    return-void
.end method

.method public setHtmlPartId(Ljava/lang/String;)V
    .locals 0
    .param p1, "htmlPartId"    # Ljava/lang/String;

    .prologue
    .line 426
    iput-object p1, p0, Lcom/alibaba/alimei/restfulapi/data/Mail;->htmlPartId:Ljava/lang/String;

    .line 427
    return-void
.end method

.method public setMessageId(Ljava/lang/String;)V
    .locals 0
    .param p1, "messageId"    # Ljava/lang/String;

    .prologue
    .line 343
    iput-object p1, p0, Lcom/alibaba/alimei/restfulapi/data/Mail;->messageId:Ljava/lang/String;

    .line 344
    return-void
.end method

.method public setPriority(I)V
    .locals 0
    .param p1, "priority"    # I

    .prologue
    .line 311
    iput p1, p0, Lcom/alibaba/alimei/restfulapi/data/Mail;->priority:I

    .line 312
    return-void
.end method

.method public setProxySend(Z)V
    .locals 0
    .param p1, "proxySend"    # Z

    .prologue
    .line 412
    iput-boolean p1, p0, Lcom/alibaba/alimei/restfulapi/data/Mail;->proxySend:Z

    .line 413
    return-void
.end method

.method public setRead(Ljava/lang/Boolean;)V
    .locals 0
    .param p1, "read"    # Ljava/lang/Boolean;

    .prologue
    .line 388
    iput-object p1, p0, Lcom/alibaba/alimei/restfulapi/data/Mail;->read:Ljava/lang/Boolean;

    .line 389
    return-void
.end method

.method public setRead(Z)V
    .locals 1
    .param p1, "read"    # Z

    .prologue
    .line 293
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/alimei/restfulapi/data/Mail;->read:Ljava/lang/Boolean;

    .line 294
    return-void
.end method

.method public setReferItemId(Ljava/lang/String;)V
    .locals 0
    .param p1, "referItemId"    # Ljava/lang/String;

    .prologue
    .line 239
    iput-object p1, p0, Lcom/alibaba/alimei/restfulapi/data/Mail;->referItemId:Ljava/lang/String;

    .line 240
    return-void
.end method

.method public setReferType(I)V
    .locals 0
    .param p1, "referType"    # I

    .prologue
    .line 233
    iput p1, p0, Lcom/alibaba/alimei/restfulapi/data/Mail;->referType:I

    .line 234
    return-void
.end method

.method public setReferences(Ljava/lang/String;)V
    .locals 0
    .param p1, "references"    # Ljava/lang/String;

    .prologue
    .line 506
    iput-object p1, p0, Lcom/alibaba/alimei/restfulapi/data/Mail;->references:Ljava/lang/String;

    .line 507
    return-void
.end method

.method public setReplied(Ljava/lang/Boolean;)V
    .locals 0
    .param p1, "replied"    # Ljava/lang/Boolean;

    .prologue
    .line 391
    iput-object p1, p0, Lcom/alibaba/alimei/restfulapi/data/Mail;->replied:Ljava/lang/Boolean;

    .line 392
    return-void
.end method

.method public setReplied(Z)V
    .locals 1
    .param p1, "replied"    # Z

    .prologue
    .line 299
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/alimei/restfulapi/data/Mail;->replied:Ljava/lang/Boolean;

    .line 300
    return-void
.end method

.method public setReplyTo(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/restfulapi/data/AliAddress;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 275
    .local p1, "replyTo":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/restfulapi/data/AliAddress;>;"
    iput-object p1, p0, Lcom/alibaba/alimei/restfulapi/data/Mail;->replyTo:Ljava/util/List;

    .line 276
    return-void
.end method

.method public setResourceList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/restfulapi/data/Attach;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 361
    .local p1, "resourceList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/restfulapi/data/Attach;>;"
    iput-object p1, p0, Lcom/alibaba/alimei/restfulapi/data/Mail;->resourceList:Ljava/util/List;

    .line 362
    return-void
.end method

.method public setSender(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/restfulapi/data/AliAddress;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 514
    .local p1, "sender":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/restfulapi/data/AliAddress;>;"
    iput-object p1, p0, Lcom/alibaba/alimei/restfulapi/data/Mail;->sender:Ljava/util/List;

    .line 515
    return-void
.end method

.method public setSentStatus(Lcom/alibaba/alimei/restfulapi/data/MailSendStatus;)V
    .locals 0
    .param p1, "sentStatus"    # Lcom/alibaba/alimei/restfulapi/data/MailSendStatus;

    .prologue
    .line 418
    iput-object p1, p0, Lcom/alibaba/alimei/restfulapi/data/Mail;->sentStatus:Lcom/alibaba/alimei/restfulapi/data/MailSendStatus;

    .line 419
    return-void
.end method

.method public setSessionId(Ljava/lang/String;)V
    .locals 0
    .param p1, "sessionId"    # Ljava/lang/String;

    .prologue
    .line 349
    iput-object p1, p0, Lcom/alibaba/alimei/restfulapi/data/Mail;->sessionId:Ljava/lang/String;

    .line 350
    return-void
.end method

.method public setSubject(Ljava/lang/String;)V
    .locals 0
    .param p1, "subject"    # Ljava/lang/String;

    .prologue
    .line 281
    iput-object p1, p0, Lcom/alibaba/alimei/restfulapi/data/Mail;->subject:Ljava/lang/String;

    .line 282
    return-void
.end method

.method public setSummary(Ljava/lang/String;)V
    .locals 0
    .param p1, "summary"    # Ljava/lang/String;

    .prologue
    .line 323
    iput-object p1, p0, Lcom/alibaba/alimei/restfulapi/data/Mail;->summary:Ljava/lang/String;

    .line 324
    return-void
.end method

.method public setTags(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 385
    .local p1, "tags":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/alibaba/alimei/restfulapi/data/Mail;->tags:Ljava/util/List;

    .line 386
    return-void
.end method

.method public setTextContentType(Ljava/lang/String;)V
    .locals 0
    .param p1, "textContentType"    # Ljava/lang/String;

    .prologue
    .line 458
    iput-object p1, p0, Lcom/alibaba/alimei/restfulapi/data/Mail;->textContentType:Ljava/lang/String;

    .line 459
    return-void
.end method

.method public setTextEncoding(Ljava/lang/String;)V
    .locals 0
    .param p1, "textEncoding"    # Ljava/lang/String;

    .prologue
    .line 450
    iput-object p1, p0, Lcom/alibaba/alimei/restfulapi/data/Mail;->textEncoding:Ljava/lang/String;

    .line 451
    return-void
.end method

.method public setTextPartId(Ljava/lang/String;)V
    .locals 0
    .param p1, "textPartId"    # Ljava/lang/String;

    .prologue
    .line 434
    iput-object p1, p0, Lcom/alibaba/alimei/restfulapi/data/Mail;->textPartId:Ljava/lang/String;

    .line 435
    return-void
.end method

.method public setTo(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/restfulapi/data/AliAddress;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 251
    .local p1, "to":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/restfulapi/data/AliAddress;>;"
    iput-object p1, p0, Lcom/alibaba/alimei/restfulapi/data/Mail;->to:Ljava/util/List;

    .line 252
    return-void
.end method

.method public setUid(J)V
    .locals 1
    .param p1, "uid"    # J

    .prologue
    .line 498
    iput-wide p1, p0, Lcom/alibaba/alimei/restfulapi/data/Mail;->uid:J

    .line 499
    return-void
.end method

.method public toJson()Ljava/lang/String;
    .locals 1

    .prologue
    .line 538
    invoke-static {}, Lcom/alibaba/alimei/restfulapi/support/GsonTools;->getGsonInstance()Lcom/google/gson/Gson;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 8

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const-wide/16 v4, 0x0

    .line 519
    iget-object v6, p0, Lcom/alibaba/alimei/restfulapi/data/Mail;->bodyHTML:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_0

    move-wide v0, v4

    .line 520
    .local v0, "htmlSize":J
    :goto_0
    iget-object v6, p0, Lcom/alibaba/alimei/restfulapi/data/Mail;->bodyPlain:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1

    move-wide v2, v4

    .line 521
    .local v2, "textSize":J
    :goto_1
    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "Mail [action="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v5, p0, Lcom/alibaba/alimei/restfulapi/data/Mail;->action:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", proxySend="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/alibaba/alimei/restfulapi/data/Mail;->proxySend:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", referType="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/alibaba/alimei/restfulapi/data/Mail;->referType:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", referItemId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/alibaba/alimei/restfulapi/data/Mail;->referItemId:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", folderId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/alibaba/alimei/restfulapi/data/Mail;->folderId:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", autoQuote="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/alibaba/alimei/restfulapi/data/Mail;->autoQuote:Ljava/lang/Boolean;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", from="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/alibaba/alimei/restfulapi/data/Mail;->from:Lcom/alibaba/alimei/restfulapi/data/AliAddress;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", itemId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/alibaba/alimei/restfulapi/data/Mail;->itemId:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", date="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v6, p0, Lcom/alibaba/alimei/restfulapi/data/Mail;->date:J

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", read="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/alibaba/alimei/restfulapi/data/Mail;->read:Ljava/lang/Boolean;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", replied="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/alibaba/alimei/restfulapi/data/Mail;->replied:Ljava/lang/Boolean;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", forwarded="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/alibaba/alimei/restfulapi/data/Mail;->forwarded:Ljava/lang/Boolean;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", priority="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/alibaba/alimei/restfulapi/data/Mail;->priority:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", flagList="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/alibaba/alimei/restfulapi/data/Mail;->flagList:Ljava/util/List;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", messageId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/alibaba/alimei/restfulapi/data/Mail;->messageId:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", sessionId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/alibaba/alimei/restfulapi/data/Mail;->sessionId:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", calendar="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/alibaba/alimei/restfulapi/data/Mail;->calendar:Lcom/alibaba/alimei/restfulapi/data/calendar/Calendar;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", tags="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/alibaba/alimei/restfulapi/data/Mail;->tags:Ljava/util/List;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", references="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/alibaba/alimei/restfulapi/data/Mail;->references:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", extData="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/alibaba/alimei/restfulapi/data/Mail;->extData:Lcom/alibaba/alimei/restfulapi/data/ExtData;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", extendHeaders="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/alibaba/alimei/restfulapi/data/Mail;->extendHeaders:Lcom/alibaba/alimei/restfulapi/data/MailExtHeader;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", hasAttach="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/alibaba/alimei/restfulapi/data/Mail;->hasAttach:Ljava/lang/Boolean;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", clientId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/alibaba/alimei/restfulapi/data/Mail;->clientId:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "\uff0c attachList= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/alibaba/alimei/restfulapi/data/Mail;->attachList:Ljava/util/List;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", resourceList= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/alibaba/alimei/restfulapi/data/Mail;->resourceList:Ljava/util/List;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", htmlSize="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", textSize="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 519
    .end local v0    # "htmlSize":J
    .end local v2    # "textSize":J
    :cond_0
    iget-object v6, p0, Lcom/alibaba/alimei/restfulapi/data/Mail;->bodyHTML:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    array-length v6, v6

    int-to-long v0, v6

    goto/16 :goto_0

    .line 520
    .restart local v0    # "htmlSize":J
    :cond_1
    iget-object v4, p0, Lcom/alibaba/alimei/restfulapi/data/Mail;->bodyPlain:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    array-length v4, v4

    int-to-long v2, v4

    goto/16 :goto_1
.end method
