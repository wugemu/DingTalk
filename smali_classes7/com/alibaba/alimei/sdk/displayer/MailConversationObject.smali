.class public Lcom/alibaba/alimei/sdk/displayer/MailConversationObject;
.super Ljava/lang/Object;
.source "MailConversationObject.java"


# instance fields
.field public final conversationId:Ljava/lang/String;

.field private final conversationItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/sdk/model/MailSnippetModel;",
            ">;"
        }
    .end annotation
.end field

.field private favoriteMailMap:Lfp;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lfp",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public final firstMail:Lcom/alibaba/alimei/sdk/model/MailSnippetModel;

.field private hasAttachmenteMailMap:Lfp;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lfp",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private hasQuickReplyDraft:Lfp;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lfp",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private hasResourceAttachmenteMailMap:Lfp;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lfp",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final itemIdMap:Lfp;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lfp",
            "<",
            "Lcom/alibaba/alimei/sdk/model/MailSnippetModel;",
            ">;"
        }
    .end annotation
.end field

.field private final itemServerIdMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/alibaba/alimei/sdk/model/MailSnippetModel;",
            ">;"
        }
    .end annotation
.end field

.field private reminderMailMap:Lfp;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lfp",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private unreadMailMap:Lfp;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lfp",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/alibaba/alimei/sdk/model/MailSnippetModel;)V
    .locals 4
    .param p1, "conversationId"    # Ljava/lang/String;
    .param p2, "mail"    # Lcom/alibaba/alimei/sdk/model/MailSnippetModel;

    .prologue
    const/4 v0, 0x0

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object v0, p0, Lcom/alibaba/alimei/sdk/displayer/MailConversationObject;->unreadMailMap:Lfp;

    .line 37
    iput-object v0, p0, Lcom/alibaba/alimei/sdk/displayer/MailConversationObject;->favoriteMailMap:Lfp;

    .line 38
    iput-object v0, p0, Lcom/alibaba/alimei/sdk/displayer/MailConversationObject;->hasAttachmenteMailMap:Lfp;

    .line 39
    iput-object v0, p0, Lcom/alibaba/alimei/sdk/displayer/MailConversationObject;->hasResourceAttachmenteMailMap:Lfp;

    .line 40
    iput-object v0, p0, Lcom/alibaba/alimei/sdk/displayer/MailConversationObject;->reminderMailMap:Lfp;

    .line 41
    iput-object v0, p0, Lcom/alibaba/alimei/sdk/displayer/MailConversationObject;->hasQuickReplyDraft:Lfp;

    .line 45
    iput-object p1, p0, Lcom/alibaba/alimei/sdk/displayer/MailConversationObject;->conversationId:Ljava/lang/String;

    .line 46
    invoke-static {p2}, Lcom/alibaba/alimei/sdk/displayer/MailConversationObject;->newMailCopy(Lcom/alibaba/alimei/sdk/model/MailSnippetModel;)Lcom/alibaba/alimei/sdk/model/MailSnippetModel;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/alimei/sdk/displayer/MailConversationObject;->firstMail:Lcom/alibaba/alimei/sdk/model/MailSnippetModel;

    .line 47
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/alimei/sdk/displayer/MailConversationObject;->conversationItems:Ljava/util/List;

    .line 48
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alibaba/alimei/sdk/displayer/MailConversationObject;->itemServerIdMap:Ljava/util/Map;

    .line 49
    new-instance v0, Lfp;

    invoke-direct {v0}, Lfp;-><init>()V

    iput-object v0, p0, Lcom/alibaba/alimei/sdk/displayer/MailConversationObject;->itemIdMap:Lfp;

    .line 51
    iget-object v0, p0, Lcom/alibaba/alimei/sdk/displayer/MailConversationObject;->itemServerIdMap:Ljava/util/Map;

    iget-object v1, p2, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->serverId:Ljava/lang/String;

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    iget-object v0, p0, Lcom/alibaba/alimei/sdk/displayer/MailConversationObject;->itemIdMap:Lfp;

    invoke-virtual {p2}, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->getId()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3, p2}, Lfp;->b(JLjava/lang/Object;)V

    .line 53
    iget-object v0, p0, Lcom/alibaba/alimei/sdk/displayer/MailConversationObject;->conversationItems:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 54
    invoke-direct {p0, p2}, Lcom/alibaba/alimei/sdk/displayer/MailConversationObject;->handleConversationStatus(Lcom/alibaba/alimei/sdk/model/MailSnippetModel;)V

    .line 55
    invoke-virtual {p0}, Lcom/alibaba/alimei/sdk/displayer/MailConversationObject;->handleConversationMailStatus()V

    .line 56
    return-void
.end method

.method private addOrRemove(ZJLfp;)V
    .locals 2
    .param p1, "isAdd"    # Z
    .param p2, "mailId"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZJ",
            "Lfp",
            "<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 215
    .local p4, "sparseMap":Lfp;, "Lfp<Ljava/lang/Boolean;>;"
    if-eqz p4, :cond_0

    .line 216
    if-eqz p1, :cond_1

    .line 217
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p4, p2, p3, v0}, Lfp;->b(JLjava/lang/Object;)V

    .line 222
    :cond_0
    :goto_0
    return-void

    .line 219
    :cond_1
    invoke-virtual {p4, p2, p3}, Lfp;->c(J)V

    goto :goto_0
.end method

.method private clearMap(Lfp;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lfp",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 478
    .local p1, "sparseMap":Lfp;, "Lfp<*>;"
    if-eqz p1, :cond_0

    .line 479
    invoke-virtual {p1}, Lfp;->b()V

    .line 481
    :cond_0
    return-void
.end method

.method private static copyWithoutConversationStatus(Lcom/alibaba/alimei/sdk/model/MailSnippetModel;Lcom/alibaba/alimei/sdk/model/MailSnippetModel;)V
    .locals 2
    .param p0, "source"    # Lcom/alibaba/alimei/sdk/model/MailSnippetModel;
    .param p1, "target"    # Lcom/alibaba/alimei/sdk/model/MailSnippetModel;

    .prologue
    .line 517
    invoke-virtual {p0}, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->getId()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->setId(J)V

    .line 518
    iget-wide v0, p0, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->accountId:J

    iput-wide v0, p1, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->accountId:J

    .line 519
    iget-wide v0, p0, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->folderId:J

    iput-wide v0, p1, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->folderId:J

    .line 520
    iget-object v0, p0, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->serverId:Ljava/lang/String;

    iput-object v0, p1, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->serverId:Ljava/lang/String;

    .line 521
    iget-object v0, p0, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->messageId:Ljava/lang/String;

    iput-object v0, p1, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->messageId:Ljava/lang/String;

    .line 522
    iget-object v0, p0, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->conversationId:Ljava/lang/String;

    iput-object v0, p1, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->conversationId:Ljava/lang/String;

    .line 523
    iget-object v0, p0, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->snippet:Ljava/lang/String;

    iput-object v0, p1, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->snippet:Ljava/lang/String;

    .line 524
    iget-object v0, p0, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->subject:Ljava/lang/String;

    iput-object v0, p1, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->subject:Ljava/lang/String;

    .line 525
    iget-wide v0, p0, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->timeStamp:J

    iput-wide v0, p1, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->timeStamp:J

    .line 526
    iget-object v0, p0, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->from:Lcom/alibaba/alimei/sdk/model/AddressModel;

    iput-object v0, p1, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->from:Lcom/alibaba/alimei/sdk/model/AddressModel;

    .line 527
    iget-object v0, p0, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->fromAddress:Ljava/lang/String;

    iput-object v0, p1, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->fromAddress:Ljava/lang/String;

    .line 528
    iget-object v0, p0, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->to:Ljava/util/List;

    iput-object v0, p1, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->to:Ljava/util/List;

    .line 529
    iget-object v0, p0, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->toAddress:Ljava/lang/String;

    iput-object v0, p1, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->toAddress:Ljava/lang/String;

    .line 530
    iget-object v0, p0, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->cc:Ljava/util/List;

    iput-object v0, p1, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->cc:Ljava/util/List;

    .line 531
    iget-object v0, p0, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->ccAddress:Ljava/lang/String;

    iput-object v0, p1, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->ccAddress:Ljava/lang/String;

    .line 533
    iget-boolean v0, p0, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->isRead:Z

    iput-boolean v0, p1, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->isRead:Z

    .line 534
    iget-boolean v0, p0, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->isFavorite:Z

    iput-boolean v0, p1, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->isFavorite:Z

    .line 535
    iget-boolean v0, p0, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->hasAttachment:Z

    iput-boolean v0, p1, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->hasAttachment:Z

    .line 536
    iget-boolean v0, p0, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->hasResourceAttachment:Z

    iput-boolean v0, p1, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->hasResourceAttachment:Z

    .line 537
    iget-boolean v0, p0, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->isReminder:Z

    iput-boolean v0, p1, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->isReminder:Z

    .line 538
    iget-object v0, p0, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->calendar:Lcom/alibaba/alimei/sdk/model/MailCalendarModel;

    iput-object v0, p1, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->calendar:Lcom/alibaba/alimei/sdk/model/MailCalendarModel;

    .line 539
    iget-wide v0, p0, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->lastReadTimeStamp:J

    iput-wide v0, p1, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->lastReadTimeStamp:J

    .line 541
    iget-boolean v0, p0, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->hasBeenRepliedTo:Z

    iput-boolean v0, p1, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->hasBeenRepliedTo:Z

    .line 542
    iget-boolean v0, p0, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->hasBeenForwarded:Z

    iput-boolean v0, p1, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->hasBeenForwarded:Z

    .line 543
    iget-object v0, p0, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->tags:Ljava/util/List;

    iput-object v0, p1, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->tags:Ljava/util/List;

    .line 544
    iget v0, p0, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->statusCode:I

    iput v0, p1, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->statusCode:I

    .line 545
    iget-boolean v0, p0, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->shouldLoadData:Z

    iput-boolean v0, p1, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->shouldLoadData:Z

    .line 546
    iget v0, p0, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->folderType:I

    iput v0, p1, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->folderType:I

    .line 547
    iget-object v0, p0, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->conversationExtension:Ljava/lang/String;

    iput-object v0, p1, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->conversationExtension:Ljava/lang/String;

    .line 548
    iget-wide v0, p0, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->uid:J

    iput-wide v0, p1, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->uid:J

    .line 549
    iget-wide v0, p0, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->draftLocalId:J

    iput-wide v0, p1, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->draftLocalId:J

    .line 550
    iget-boolean v0, p0, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->isCalendarBodySaveFile:Z

    iput-boolean v0, p1, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->isCalendarBodySaveFile:Z

    .line 551
    iget v0, p0, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->priority:I

    iput v0, p1, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->priority:I

    .line 552
    return-void
.end method

.method public static create(Ljava/lang/String;Lcom/alibaba/alimei/sdk/model/MailSnippetModel;)Lcom/alibaba/alimei/sdk/displayer/MailConversationObject;
    .locals 1
    .param p0, "conversationId"    # Ljava/lang/String;
    .param p1, "model"    # Lcom/alibaba/alimei/sdk/model/MailSnippetModel;

    .prologue
    .line 59
    new-instance v0, Lcom/alibaba/alimei/sdk/displayer/MailConversationObject;

    invoke-direct {v0, p0, p1}, Lcom/alibaba/alimei/sdk/displayer/MailConversationObject;-><init>(Ljava/lang/String;Lcom/alibaba/alimei/sdk/model/MailSnippetModel;)V

    return-object v0
.end method

.method private handleConversationStatus(Lcom/alibaba/alimei/sdk/model/MailSnippetModel;)V
    .locals 6
    .param p1, "model"    # Lcom/alibaba/alimei/sdk/model/MailSnippetModel;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 160
    invoke-virtual {p1}, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->getId()J

    move-result-wide v0

    .line 162
    .local v0, "mailId":J
    iget-boolean v2, p1, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->isRead:Z

    if-eqz v2, :cond_6

    .line 163
    const/4 v2, 0x0

    iget-object v3, p0, Lcom/alibaba/alimei/sdk/displayer/MailConversationObject;->unreadMailMap:Lfp;

    invoke-direct {p0, v2, v0, v1, v3}, Lcom/alibaba/alimei/sdk/displayer/MailConversationObject;->addOrRemove(ZJLfp;)V

    .line 172
    :goto_0
    iget-boolean v2, p1, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->isFavorite:Z

    if-eqz v2, :cond_0

    .line 173
    iget-object v2, p0, Lcom/alibaba/alimei/sdk/displayer/MailConversationObject;->favoriteMailMap:Lfp;

    if-nez v2, :cond_0

    .line 174
    new-instance v2, Lfp;

    invoke-direct {v2}, Lfp;-><init>()V

    iput-object v2, p0, Lcom/alibaba/alimei/sdk/displayer/MailConversationObject;->favoriteMailMap:Lfp;

    .line 177
    :cond_0
    iget-boolean v2, p1, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->isFavorite:Z

    iget-object v3, p0, Lcom/alibaba/alimei/sdk/displayer/MailConversationObject;->favoriteMailMap:Lfp;

    invoke-direct {p0, v2, v0, v1, v3}, Lcom/alibaba/alimei/sdk/displayer/MailConversationObject;->addOrRemove(ZJLfp;)V

    .line 180
    iget-boolean v2, p1, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->hasAttachment:Z

    if-eqz v2, :cond_1

    .line 181
    iget-object v2, p0, Lcom/alibaba/alimei/sdk/displayer/MailConversationObject;->hasAttachmenteMailMap:Lfp;

    if-nez v2, :cond_1

    .line 182
    new-instance v2, Lfp;

    invoke-direct {v2}, Lfp;-><init>()V

    iput-object v2, p0, Lcom/alibaba/alimei/sdk/displayer/MailConversationObject;->hasAttachmenteMailMap:Lfp;

    .line 185
    :cond_1
    iget-boolean v2, p1, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->hasAttachment:Z

    iget-object v3, p0, Lcom/alibaba/alimei/sdk/displayer/MailConversationObject;->hasAttachmenteMailMap:Lfp;

    invoke-direct {p0, v2, v0, v1, v3}, Lcom/alibaba/alimei/sdk/displayer/MailConversationObject;->addOrRemove(ZJLfp;)V

    .line 188
    iget-boolean v2, p1, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->hasResourceAttachment:Z

    if-eqz v2, :cond_2

    .line 189
    iget-object v2, p0, Lcom/alibaba/alimei/sdk/displayer/MailConversationObject;->hasResourceAttachmenteMailMap:Lfp;

    if-nez v2, :cond_2

    .line 190
    new-instance v2, Lfp;

    invoke-direct {v2}, Lfp;-><init>()V

    iput-object v2, p0, Lcom/alibaba/alimei/sdk/displayer/MailConversationObject;->hasResourceAttachmenteMailMap:Lfp;

    .line 193
    :cond_2
    iget-boolean v2, p1, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->hasResourceAttachment:Z

    iget-object v3, p0, Lcom/alibaba/alimei/sdk/displayer/MailConversationObject;->hasResourceAttachmenteMailMap:Lfp;

    invoke-direct {p0, v2, v0, v1, v3}, Lcom/alibaba/alimei/sdk/displayer/MailConversationObject;->addOrRemove(ZJLfp;)V

    .line 196
    iget-boolean v2, p1, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->isReminder:Z

    if-eqz v2, :cond_3

    .line 197
    iget-object v2, p0, Lcom/alibaba/alimei/sdk/displayer/MailConversationObject;->reminderMailMap:Lfp;

    if-nez v2, :cond_3

    .line 198
    new-instance v2, Lfp;

    invoke-direct {v2}, Lfp;-><init>()V

    iput-object v2, p0, Lcom/alibaba/alimei/sdk/displayer/MailConversationObject;->reminderMailMap:Lfp;

    .line 201
    :cond_3
    iget-boolean v2, p1, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->isReminder:Z

    iget-object v3, p0, Lcom/alibaba/alimei/sdk/displayer/MailConversationObject;->reminderMailMap:Lfp;

    invoke-direct {p0, v2, v0, v1, v3}, Lcom/alibaba/alimei/sdk/displayer/MailConversationObject;->addOrRemove(ZJLfp;)V

    .line 204
    iget-wide v2, p1, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->draftLocalId:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_8

    .line 205
    iget-object v2, p0, Lcom/alibaba/alimei/sdk/displayer/MailConversationObject;->hasQuickReplyDraft:Lfp;

    if-nez v2, :cond_4

    .line 206
    new-instance v2, Lfp;

    invoke-direct {v2}, Lfp;-><init>()V

    iput-object v2, p0, Lcom/alibaba/alimei/sdk/displayer/MailConversationObject;->hasQuickReplyDraft:Lfp;

    .line 208
    :cond_4
    iget-object v2, p0, Lcom/alibaba/alimei/sdk/displayer/MailConversationObject;->hasQuickReplyDraft:Lfp;

    iget-wide v4, p1, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->draftLocalId:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v0, v1, v3}, Lfp;->b(JLjava/lang/Object;)V

    .line 212
    :cond_5
    :goto_1
    return-void

    .line 165
    :cond_6
    iget-object v2, p0, Lcom/alibaba/alimei/sdk/displayer/MailConversationObject;->unreadMailMap:Lfp;

    if-nez v2, :cond_7

    .line 166
    new-instance v2, Lfp;

    invoke-direct {v2}, Lfp;-><init>()V

    iput-object v2, p0, Lcom/alibaba/alimei/sdk/displayer/MailConversationObject;->unreadMailMap:Lfp;

    .line 168
    :cond_7
    const/4 v2, 0x1

    iget-object v3, p0, Lcom/alibaba/alimei/sdk/displayer/MailConversationObject;->unreadMailMap:Lfp;

    invoke-direct {p0, v2, v0, v1, v3}, Lcom/alibaba/alimei/sdk/displayer/MailConversationObject;->addOrRemove(ZJLfp;)V

    goto/16 :goto_0

    .line 209
    :cond_8
    iget-object v2, p0, Lcom/alibaba/alimei/sdk/displayer/MailConversationObject;->hasQuickReplyDraft:Lfp;

    if-eqz v2, :cond_5

    .line 210
    iget-object v2, p0, Lcom/alibaba/alimei/sdk/displayer/MailConversationObject;->hasQuickReplyDraft:Lfp;

    invoke-virtual {v2, v0, v1}, Lfp;->c(J)V

    goto :goto_1
.end method

.method private hasAttachmentMail()Z
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v0, 0x0

    .line 137
    iget-object v1, p0, Lcom/alibaba/alimei/sdk/displayer/MailConversationObject;->hasAttachmenteMailMap:Lfp;

    if-nez v1, :cond_1

    .line 140
    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/alibaba/alimei/sdk/displayer/MailConversationObject;->hasAttachmenteMailMap:Lfp;

    invoke-virtual {v1}, Lfp;->a()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method private hasFavoriteMail()Z
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v0, 0x0

    .line 126
    iget-object v1, p0, Lcom/alibaba/alimei/sdk/displayer/MailConversationObject;->favoriteMailMap:Lfp;

    if-nez v1, :cond_1

    .line 129
    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/alibaba/alimei/sdk/displayer/MailConversationObject;->favoriteMailMap:Lfp;

    invoke-virtual {v1}, Lfp;->a()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method private hasReminderMail()Z
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v0, 0x0

    .line 115
    iget-object v1, p0, Lcom/alibaba/alimei/sdk/displayer/MailConversationObject;->reminderMailMap:Lfp;

    if-nez v1, :cond_1

    .line 118
    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/alibaba/alimei/sdk/displayer/MailConversationObject;->reminderMailMap:Lfp;

    invoke-virtual {v1}, Lfp;->a()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method private hasResourceAttachmentMail()Z
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v0, 0x0

    .line 144
    iget-object v1, p0, Lcom/alibaba/alimei/sdk/displayer/MailConversationObject;->hasResourceAttachmenteMailMap:Lfp;

    if-nez v1, :cond_1

    .line 147
    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/alibaba/alimei/sdk/displayer/MailConversationObject;->hasResourceAttachmenteMailMap:Lfp;

    invoke-virtual {v1}, Lfp;->a()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method private hasUnreadMail()Z
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v0, 0x0

    .line 104
    iget-object v1, p0, Lcom/alibaba/alimei/sdk/displayer/MailConversationObject;->unreadMailMap:Lfp;

    if-nez v1, :cond_1

    .line 107
    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/alibaba/alimei/sdk/displayer/MailConversationObject;->unreadMailMap:Lfp;

    invoke-virtual {v1}, Lfp;->a()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method private static newMailCopy(Lcom/alibaba/alimei/sdk/model/MailSnippetModel;)Lcom/alibaba/alimei/sdk/model/MailSnippetModel;
    .locals 4
    .param p0, "model"    # Lcom/alibaba/alimei/sdk/model/MailSnippetModel;

    .prologue
    .line 506
    new-instance v0, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;

    invoke-virtual {p0}, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->getId()J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;-><init>(J)V

    .line 507
    .local v0, "newModel":Lcom/alibaba/alimei/sdk/model/MailSnippetModel;
    invoke-static {p0, v0}, Lcom/alibaba/alimei/sdk/displayer/MailConversationObject;->copyWithoutConversationStatus(Lcom/alibaba/alimei/sdk/model/MailSnippetModel;Lcom/alibaba/alimei/sdk/model/MailSnippetModel;)V

    .line 508
    return-object v0
.end method

.method private quickReplyDraftLocalId()J
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 151
    iget-object v0, p0, Lcom/alibaba/alimei/sdk/displayer/MailConversationObject;->hasQuickReplyDraft:Lfp;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/alimei/sdk/displayer/MailConversationObject;->hasQuickReplyDraft:Lfp;

    invoke-virtual {v0}, Lfp;->a()I

    move-result v0

    if-nez v0, :cond_1

    .line 152
    :cond_0
    const-wide/16 v0, -0x1

    .line 156
    :goto_0
    return-wide v0

    :cond_1
    const-wide/16 v0, 0x1

    goto :goto_0
.end method

.method private removeConversationStatus(Ljava/lang/Long;)V
    .locals 4
    .param p1, "mailId"    # Ljava/lang/Long;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v3, 0x0

    .line 225
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iget-object v2, p0, Lcom/alibaba/alimei/sdk/displayer/MailConversationObject;->hasAttachmenteMailMap:Lfp;

    invoke-direct {p0, v3, v0, v1, v2}, Lcom/alibaba/alimei/sdk/displayer/MailConversationObject;->addOrRemove(ZJLfp;)V

    .line 226
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iget-object v2, p0, Lcom/alibaba/alimei/sdk/displayer/MailConversationObject;->hasResourceAttachmenteMailMap:Lfp;

    invoke-direct {p0, v3, v0, v1, v2}, Lcom/alibaba/alimei/sdk/displayer/MailConversationObject;->addOrRemove(ZJLfp;)V

    .line 227
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iget-object v2, p0, Lcom/alibaba/alimei/sdk/displayer/MailConversationObject;->unreadMailMap:Lfp;

    invoke-direct {p0, v3, v0, v1, v2}, Lcom/alibaba/alimei/sdk/displayer/MailConversationObject;->addOrRemove(ZJLfp;)V

    .line 228
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iget-object v2, p0, Lcom/alibaba/alimei/sdk/displayer/MailConversationObject;->favoriteMailMap:Lfp;

    invoke-direct {p0, v3, v0, v1, v2}, Lcom/alibaba/alimei/sdk/displayer/MailConversationObject;->addOrRemove(ZJLfp;)V

    .line 229
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iget-object v2, p0, Lcom/alibaba/alimei/sdk/displayer/MailConversationObject;->reminderMailMap:Lfp;

    invoke-direct {p0, v3, v0, v1, v2}, Lcom/alibaba/alimei/sdk/displayer/MailConversationObject;->addOrRemove(ZJLfp;)V

    .line 231
    iget-object v0, p0, Lcom/alibaba/alimei/sdk/displayer/MailConversationObject;->hasQuickReplyDraft:Lfp;

    if-eqz v0, :cond_0

    .line 232
    iget-object v0, p0, Lcom/alibaba/alimei/sdk/displayer/MailConversationObject;->hasQuickReplyDraft:Lfp;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lfp;->c(J)V

    .line 234
    :cond_0
    return-void
.end method


# virtual methods
.method public addConversationItem(Lcom/alibaba/alimei/sdk/model/MailSnippetModel;)V
    .locals 12
    .param p1, "model"    # Lcom/alibaba/alimei/sdk/model/MailSnippetModel;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v11

    invoke-static {v11}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 327
    const/4 v1, 0x0

    .line 330
    .local v1, "newFirstMailValue":Lcom/alibaba/alimei/sdk/model/MailSnippetModel;
    invoke-direct {p0, p1}, Lcom/alibaba/alimei/sdk/displayer/MailConversationObject;->handleConversationStatus(Lcom/alibaba/alimei/sdk/model/MailSnippetModel;)V

    .line 332
    invoke-virtual {p1}, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->getId()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 333
    .local v0, "lid":Ljava/lang/Long;
    iget-object v5, p0, Lcom/alibaba/alimei/sdk/displayer/MailConversationObject;->itemIdMap:Lfp;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Lfp;->a(J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;

    .line 334
    .local v4, "target":Lcom/alibaba/alimei/sdk/model/MailSnippetModel;
    if-nez v4, :cond_0

    .line 335
    iget-object v5, p0, Lcom/alibaba/alimei/sdk/displayer/MailConversationObject;->itemServerIdMap:Ljava/util/Map;

    iget-object v6, p1, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->serverId:Ljava/lang/String;

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .end local v4    # "target":Lcom/alibaba/alimei/sdk/model/MailSnippetModel;
    check-cast v4, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;

    .line 338
    .restart local v4    # "target":Lcom/alibaba/alimei/sdk/model/MailSnippetModel;
    :cond_0
    if-eqz v4, :cond_4

    .line 339
    invoke-static {p1, v4}, Lcom/alibaba/alimei/sdk/displayer/MailConversationObject;->copyWithoutConversationStatus(Lcom/alibaba/alimei/sdk/model/MailSnippetModel;Lcom/alibaba/alimei/sdk/model/MailSnippetModel;)V

    .line 341
    iget-wide v6, p1, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->timeStamp:J

    iget-object v5, p0, Lcom/alibaba/alimei/sdk/displayer/MailConversationObject;->firstMail:Lcom/alibaba/alimei/sdk/model/MailSnippetModel;

    iget-wide v8, v5, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->timeStamp:J

    cmp-long v5, v6, v8

    if-gtz v5, :cond_1

    iget-object v5, p0, Lcom/alibaba/alimei/sdk/displayer/MailConversationObject;->firstMail:Lcom/alibaba/alimei/sdk/model/MailSnippetModel;

    .line 342
    invoke-virtual {v5}, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->getId()J

    move-result-wide v6

    invoke-virtual {p1}, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->getId()J

    move-result-wide v8

    cmp-long v5, v6, v8

    if-nez v5, :cond_2

    .line 343
    :cond_1
    move-object v1, p1

    .line 383
    :cond_2
    :goto_0
    if-eqz v1, :cond_3

    .line 384
    iget-object v5, p0, Lcom/alibaba/alimei/sdk/displayer/MailConversationObject;->firstMail:Lcom/alibaba/alimei/sdk/model/MailSnippetModel;

    invoke-static {v1, v5}, Lcom/alibaba/alimei/sdk/displayer/MailConversationObject;->copyWithoutConversationStatus(Lcom/alibaba/alimei/sdk/model/MailSnippetModel;Lcom/alibaba/alimei/sdk/model/MailSnippetModel;)V

    .line 386
    :cond_3
    invoke-virtual {p0}, Lcom/alibaba/alimei/sdk/displayer/MailConversationObject;->handleConversationMailStatus()V

    .line 387
    return-void

    .line 346
    :cond_4
    invoke-virtual {p0}, Lcom/alibaba/alimei/sdk/displayer/MailConversationObject;->itemCounts()I

    move-result v3

    .line 347
    .local v3, "size":I
    iget-object v5, p0, Lcom/alibaba/alimei/sdk/displayer/MailConversationObject;->itemServerIdMap:Ljava/util/Map;

    iget-object v6, p1, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->serverId:Ljava/lang/String;

    invoke-interface {v5, v6, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 348
    iget-object v5, p0, Lcom/alibaba/alimei/sdk/displayer/MailConversationObject;->itemIdMap:Lfp;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7, p1}, Lfp;->b(JLjava/lang/Object;)V

    .line 349
    if-nez v3, :cond_5

    .line 351
    move-object v1, p1

    .line 352
    iget-object v5, p0, Lcom/alibaba/alimei/sdk/displayer/MailConversationObject;->conversationItems:Ljava/util/List;

    invoke-interface {v5, v10, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_0

    .line 353
    :cond_5
    if-gt v3, v11, :cond_8

    .line 355
    iget-object v5, p0, Lcom/alibaba/alimei/sdk/displayer/MailConversationObject;->conversationItems:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->clear()V

    .line 356
    iget-object v5, p0, Lcom/alibaba/alimei/sdk/displayer/MailConversationObject;->firstMail:Lcom/alibaba/alimei/sdk/model/MailSnippetModel;

    invoke-virtual {v5}, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->getId()J

    move-result-wide v6

    invoke-virtual {p1}, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->getId()J

    move-result-wide v8

    cmp-long v5, v6, v8

    if-nez v5, :cond_6

    .line 357
    move-object v1, p1

    .line 358
    iget-object v5, p0, Lcom/alibaba/alimei/sdk/displayer/MailConversationObject;->conversationItems:Ljava/util/List;

    invoke-interface {v5, v10, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_0

    .line 360
    :cond_6
    iget-object v5, p0, Lcom/alibaba/alimei/sdk/displayer/MailConversationObject;->firstMail:Lcom/alibaba/alimei/sdk/model/MailSnippetModel;

    invoke-static {v5}, Lcom/alibaba/alimei/sdk/displayer/MailConversationObject;->newMailCopy(Lcom/alibaba/alimei/sdk/model/MailSnippetModel;)Lcom/alibaba/alimei/sdk/model/MailSnippetModel;

    move-result-object v2

    .line 361
    .local v2, "oldFirstMail":Lcom/alibaba/alimei/sdk/model/MailSnippetModel;
    iget-object v5, p0, Lcom/alibaba/alimei/sdk/displayer/MailConversationObject;->itemServerIdMap:Ljava/util/Map;

    iget-object v6, v2, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->serverId:Ljava/lang/String;

    invoke-interface {v5, v6, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 362
    iget-object v5, p0, Lcom/alibaba/alimei/sdk/displayer/MailConversationObject;->itemIdMap:Lfp;

    invoke-virtual {v2}, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->getId()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7, v2}, Lfp;->b(JLjava/lang/Object;)V

    .line 363
    iget-wide v6, p1, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->timeStamp:J

    iget-object v5, p0, Lcom/alibaba/alimei/sdk/displayer/MailConversationObject;->firstMail:Lcom/alibaba/alimei/sdk/model/MailSnippetModel;

    iget-wide v8, v5, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->timeStamp:J

    cmp-long v5, v6, v8

    if-gtz v5, :cond_7

    .line 364
    iget-object v5, p0, Lcom/alibaba/alimei/sdk/displayer/MailConversationObject;->conversationItems:Ljava/util/List;

    invoke-interface {v5, v10, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 365
    iget-object v5, p0, Lcom/alibaba/alimei/sdk/displayer/MailConversationObject;->conversationItems:Ljava/util/List;

    invoke-interface {v5, v11, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_0

    .line 367
    :cond_7
    move-object v1, p1

    .line 368
    iget-object v5, p0, Lcom/alibaba/alimei/sdk/displayer/MailConversationObject;->conversationItems:Ljava/util/List;

    invoke-interface {v5, v10, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 369
    iget-object v5, p0, Lcom/alibaba/alimei/sdk/displayer/MailConversationObject;->conversationItems:Ljava/util/List;

    invoke-interface {v5, v11, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto/16 :goto_0

    .line 374
    .end local v2    # "oldFirstMail":Lcom/alibaba/alimei/sdk/model/MailSnippetModel;
    :cond_8
    iget-wide v6, p1, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->timeStamp:J

    iget-object v5, p0, Lcom/alibaba/alimei/sdk/displayer/MailConversationObject;->firstMail:Lcom/alibaba/alimei/sdk/model/MailSnippetModel;

    iget-wide v8, v5, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->timeStamp:J

    cmp-long v5, v6, v8

    if-lez v5, :cond_9

    .line 375
    move-object v1, p1

    .line 376
    iget-object v5, p0, Lcom/alibaba/alimei/sdk/displayer/MailConversationObject;->conversationItems:Ljava/util/List;

    invoke-interface {v5, v10, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto/16 :goto_0

    .line 378
    :cond_9
    iget-object v5, p0, Lcom/alibaba/alimei/sdk/displayer/MailConversationObject;->conversationItems:Ljava/util/List;

    invoke-interface {v5, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0
.end method

.method public clearAllConversationItems()V
    .locals 1

    .prologue
    .line 467
    iget-object v0, p0, Lcom/alibaba/alimei/sdk/displayer/MailConversationObject;->conversationItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 468
    iget-object v0, p0, Lcom/alibaba/alimei/sdk/displayer/MailConversationObject;->itemServerIdMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 469
    iget-object v0, p0, Lcom/alibaba/alimei/sdk/displayer/MailConversationObject;->itemIdMap:Lfp;

    invoke-direct {p0, v0}, Lcom/alibaba/alimei/sdk/displayer/MailConversationObject;->clearMap(Lfp;)V

    .line 470
    iget-object v0, p0, Lcom/alibaba/alimei/sdk/displayer/MailConversationObject;->hasAttachmenteMailMap:Lfp;

    invoke-direct {p0, v0}, Lcom/alibaba/alimei/sdk/displayer/MailConversationObject;->clearMap(Lfp;)V

    .line 471
    iget-object v0, p0, Lcom/alibaba/alimei/sdk/displayer/MailConversationObject;->hasResourceAttachmenteMailMap:Lfp;

    invoke-direct {p0, v0}, Lcom/alibaba/alimei/sdk/displayer/MailConversationObject;->clearMap(Lfp;)V

    .line 472
    iget-object v0, p0, Lcom/alibaba/alimei/sdk/displayer/MailConversationObject;->unreadMailMap:Lfp;

    invoke-direct {p0, v0}, Lcom/alibaba/alimei/sdk/displayer/MailConversationObject;->clearMap(Lfp;)V

    .line 473
    iget-object v0, p0, Lcom/alibaba/alimei/sdk/displayer/MailConversationObject;->favoriteMailMap:Lfp;

    invoke-direct {p0, v0}, Lcom/alibaba/alimei/sdk/displayer/MailConversationObject;->clearMap(Lfp;)V

    .line 474
    iget-object v0, p0, Lcom/alibaba/alimei/sdk/displayer/MailConversationObject;->reminderMailMap:Lfp;

    invoke-direct {p0, v0}, Lcom/alibaba/alimei/sdk/displayer/MailConversationObject;->clearMap(Lfp;)V

    .line 475
    return-void
.end method

.method public contain(Lcom/alibaba/alimei/sdk/model/MailSnippetModel;)Z
    .locals 5
    .param p1, "model"    # Lcom/alibaba/alimei/sdk/model/MailSnippetModel;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v1, 0x1

    .line 287
    iget-object v2, p0, Lcom/alibaba/alimei/sdk/displayer/MailConversationObject;->conversationItems:Ljava/util/List;

    if-eqz v2, :cond_2

    .line 288
    iget-object v2, p0, Lcom/alibaba/alimei/sdk/displayer/MailConversationObject;->conversationItems:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;

    .line 289
    .local v0, "sModel":Lcom/alibaba/alimei/sdk/model/MailSnippetModel;
    if-eqz v0, :cond_0

    iget-object v3, v0, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->messageId:Ljava/lang/String;

    if-eqz v3, :cond_0

    iget-object v3, v0, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->messageId:Ljava/lang/String;

    iget-object v4, p1, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->messageId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 299
    .end local v0    # "sModel":Lcom/alibaba/alimei/sdk/model/MailSnippetModel;
    :cond_1
    :goto_0
    return v1

    .line 296
    :cond_2
    if-eqz p1, :cond_3

    iget-object v2, p0, Lcom/alibaba/alimei/sdk/displayer/MailConversationObject;->itemServerIdMap:Ljava/util/Map;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/alibaba/alimei/sdk/displayer/MailConversationObject;->itemServerIdMap:Ljava/util/Map;

    iget-object v3, p1, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->serverId:Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 299
    :cond_3
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public contains(J)Z
    .locals 5
    .param p1, "folderId"    # J

    .prologue
    .line 309
    iget-object v2, p0, Lcom/alibaba/alimei/sdk/displayer/MailConversationObject;->conversationItems:Ljava/util/List;

    if-eqz v2, :cond_1

    .line 310
    iget-object v2, p0, Lcom/alibaba/alimei/sdk/displayer/MailConversationObject;->conversationItems:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 311
    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/alibaba/alimei/sdk/model/MailSnippetModel;>;"
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 312
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;

    .line 313
    .local v1, "mail":Lcom/alibaba/alimei/sdk/model/MailSnippetModel;
    iget-wide v2, v1, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->folderId:J

    cmp-long v2, v2, p1

    if-nez v2, :cond_0

    .line 314
    const/4 v2, 0x1

    .line 319
    .end local v0    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/alibaba/alimei/sdk/model/MailSnippetModel;>;"
    .end local v1    # "mail":Lcom/alibaba/alimei/sdk/model/MailSnippetModel;
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public deleteConversationItem(Lcom/alibaba/alimei/sdk/model/MailSnippetModel;)Z
    .locals 10
    .param p1, "model"    # Lcom/alibaba/alimei/sdk/model/MailSnippetModel;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v5, 0x0

    .line 238
    invoke-virtual {p1}, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->getId()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    .line 239
    .local v3, "lmailId":Ljava/lang/Long;
    invoke-direct {p0, v3}, Lcom/alibaba/alimei/sdk/displayer/MailConversationObject;->removeConversationStatus(Ljava/lang/Long;)V

    .line 240
    iget-object v6, p0, Lcom/alibaba/alimei/sdk/displayer/MailConversationObject;->itemIdMap:Lfp;

    if-eqz v6, :cond_0

    .line 241
    iget-object v6, p0, Lcom/alibaba/alimei/sdk/displayer/MailConversationObject;->itemIdMap:Lfp;

    invoke-virtual {p1}, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->getId()J

    move-result-wide v8

    invoke-virtual {v6, v8, v9}, Lfp;->c(J)V

    .line 243
    :cond_0
    iget-object v6, p0, Lcom/alibaba/alimei/sdk/displayer/MailConversationObject;->itemServerIdMap:Ljava/util/Map;

    iget-object v7, p1, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->serverId:Ljava/lang/String;

    invoke-interface {v6, v7}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 244
    iget-object v6, p0, Lcom/alibaba/alimei/sdk/displayer/MailConversationObject;->conversationItems:Ljava/util/List;

    if-eqz v6, :cond_2

    .line 245
    iget-object v6, p0, Lcom/alibaba/alimei/sdk/displayer/MailConversationObject;->conversationItems:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 246
    .local v1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/alibaba/alimei/sdk/model/MailSnippetModel;>;"
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 247
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;

    .line 248
    .local v4, "mail":Lcom/alibaba/alimei/sdk/model/MailSnippetModel;
    invoke-virtual {v4}, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->getId()J

    move-result-wide v6

    invoke-virtual {p1}, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->getId()J

    move-result-wide v8

    cmp-long v6, v6, v8

    if-nez v6, :cond_1

    .line 249
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 255
    .end local v1    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/alibaba/alimei/sdk/model/MailSnippetModel;>;"
    .end local v4    # "mail":Lcom/alibaba/alimei/sdk/model/MailSnippetModel;
    :cond_2
    invoke-virtual {p0}, Lcom/alibaba/alimei/sdk/displayer/MailConversationObject;->itemCounts()I

    move-result v2

    .line 256
    .local v2, "lastCount":I
    if-lez v2, :cond_3

    .line 258
    iget-object v6, p0, Lcom/alibaba/alimei/sdk/displayer/MailConversationObject;->firstMail:Lcom/alibaba/alimei/sdk/model/MailSnippetModel;

    invoke-virtual {v6}, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->getId()J

    move-result-wide v6

    invoke-virtual {p1}, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->getId()J

    move-result-wide v8

    cmp-long v6, v6, v8

    if-nez v6, :cond_3

    .line 259
    iget-object v6, p0, Lcom/alibaba/alimei/sdk/displayer/MailConversationObject;->conversationItems:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;

    .line 260
    .local v0, "first":Lcom/alibaba/alimei/sdk/model/MailSnippetModel;
    iget-object v6, p0, Lcom/alibaba/alimei/sdk/displayer/MailConversationObject;->firstMail:Lcom/alibaba/alimei/sdk/model/MailSnippetModel;

    invoke-static {v0, v6}, Lcom/alibaba/alimei/sdk/displayer/MailConversationObject;->copyWithoutConversationStatus(Lcom/alibaba/alimei/sdk/model/MailSnippetModel;Lcom/alibaba/alimei/sdk/model/MailSnippetModel;)V

    .line 263
    .end local v0    # "first":Lcom/alibaba/alimei/sdk/model/MailSnippetModel;
    :cond_3
    invoke-virtual {p0}, Lcom/alibaba/alimei/sdk/displayer/MailConversationObject;->handleConversationMailStatus()V

    .line 268
    if-lez v2, :cond_4

    const/4 v5, 0x1

    :cond_4
    return v5
.end method

.method public getConversationItemServerIds()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 78
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 79
    .local v0, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/alibaba/alimei/sdk/displayer/MailConversationObject;->itemServerIdMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    if-nez v1, :cond_0

    .line 80
    iget-object v1, p0, Lcom/alibaba/alimei/sdk/displayer/MailConversationObject;->firstMail:Lcom/alibaba/alimei/sdk/model/MailSnippetModel;

    iget-object v1, v1, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->serverId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 84
    :goto_0
    return-object v0

    .line 82
    :cond_0
    iget-object v1, p0, Lcom/alibaba/alimei/sdk/displayer/MailConversationObject;->itemServerIdMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_0
.end method

.method public getConversationItems()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/sdk/model/MailSnippetModel;",
            ">;"
        }
    .end annotation

    .prologue
    .line 88
    iget-object v0, p0, Lcom/alibaba/alimei/sdk/displayer/MailConversationObject;->conversationItems:Ljava/util/List;

    return-object v0
.end method

.method public getConversationItems(Ljava/util/Comparator;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator",
            "<",
            "Lcom/alibaba/alimei/sdk/model/MailSnippetModel;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/sdk/model/MailSnippetModel;",
            ">;"
        }
    .end annotation

    .prologue
    .line 71
    .local p1, "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<Lcom/alibaba/alimei/sdk/model/MailSnippetModel;>;"
    iget-object v0, p0, Lcom/alibaba/alimei/sdk/displayer/MailConversationObject;->conversationItems:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 72
    iget-object v0, p0, Lcom/alibaba/alimei/sdk/displayer/MailConversationObject;->conversationItems:Ljava/util/List;

    invoke-static {v0, p1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 74
    :cond_0
    iget-object v0, p0, Lcom/alibaba/alimei/sdk/displayer/MailConversationObject;->conversationItems:Ljava/util/List;

    return-object v0
.end method

.method public handleConversationMailStatus()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 488
    iget-object v0, p0, Lcom/alibaba/alimei/sdk/displayer/MailConversationObject;->firstMail:Lcom/alibaba/alimei/sdk/model/MailSnippetModel;

    invoke-virtual {p0}, Lcom/alibaba/alimei/sdk/displayer/MailConversationObject;->itemCounts()I

    move-result v3

    iput v3, v0, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->itemCount:I

    .line 489
    iget-object v3, p0, Lcom/alibaba/alimei/sdk/displayer/MailConversationObject;->firstMail:Lcom/alibaba/alimei/sdk/model/MailSnippetModel;

    iget-object v0, p0, Lcom/alibaba/alimei/sdk/displayer/MailConversationObject;->firstMail:Lcom/alibaba/alimei/sdk/model/MailSnippetModel;

    iget v0, v0, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->itemCount:I

    if-le v0, v1, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, v3, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->isConversation:Z

    .line 490
    iget-object v0, p0, Lcom/alibaba/alimei/sdk/displayer/MailConversationObject;->firstMail:Lcom/alibaba/alimei/sdk/model/MailSnippetModel;

    invoke-direct {p0}, Lcom/alibaba/alimei/sdk/displayer/MailConversationObject;->hasUnreadMail()Z

    move-result v3

    if-nez v3, :cond_1

    :goto_1
    iput-boolean v1, v0, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->isRead:Z

    .line 494
    iget-object v0, p0, Lcom/alibaba/alimei/sdk/displayer/MailConversationObject;->firstMail:Lcom/alibaba/alimei/sdk/model/MailSnippetModel;

    invoke-direct {p0}, Lcom/alibaba/alimei/sdk/displayer/MailConversationObject;->hasFavoriteMail()Z

    move-result v1

    iput-boolean v1, v0, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->isFavorite:Z

    .line 495
    iget-object v0, p0, Lcom/alibaba/alimei/sdk/displayer/MailConversationObject;->firstMail:Lcom/alibaba/alimei/sdk/model/MailSnippetModel;

    invoke-direct {p0}, Lcom/alibaba/alimei/sdk/displayer/MailConversationObject;->hasReminderMail()Z

    move-result v1

    iput-boolean v1, v0, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->isReminder:Z

    .line 497
    iget-object v0, p0, Lcom/alibaba/alimei/sdk/displayer/MailConversationObject;->firstMail:Lcom/alibaba/alimei/sdk/model/MailSnippetModel;

    iget-boolean v0, v0, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->isConversation:Z

    if-eqz v0, :cond_3

    .line 498
    iget-object v0, p0, Lcom/alibaba/alimei/sdk/displayer/MailConversationObject;->firstMail:Lcom/alibaba/alimei/sdk/model/MailSnippetModel;

    iget-object v1, p0, Lcom/alibaba/alimei/sdk/displayer/MailConversationObject;->conversationItems:Ljava/util/List;

    if-nez v1, :cond_2

    :goto_2
    iput v2, v0, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->itemCount:I

    .line 502
    :goto_3
    iget-object v0, p0, Lcom/alibaba/alimei/sdk/displayer/MailConversationObject;->firstMail:Lcom/alibaba/alimei/sdk/model/MailSnippetModel;

    invoke-direct {p0}, Lcom/alibaba/alimei/sdk/displayer/MailConversationObject;->quickReplyDraftLocalId()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->draftLocalId:J

    .line 503
    return-void

    :cond_0
    move v0, v2

    .line 489
    goto :goto_0

    :cond_1
    move v1, v2

    .line 490
    goto :goto_1

    .line 498
    :cond_2
    iget-object v1, p0, Lcom/alibaba/alimei/sdk/displayer/MailConversationObject;->conversationItems:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    goto :goto_2

    .line 500
    :cond_3
    iget-object v0, p0, Lcom/alibaba/alimei/sdk/displayer/MailConversationObject;->firstMail:Lcom/alibaba/alimei/sdk/model/MailSnippetModel;

    iput v2, v0, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->itemCount:I

    goto :goto_3
.end method

.method public hasTag(Ljava/lang/String;)Z
    .locals 4
    .param p1, "tag"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 273
    :try_start_0
    iget-object v2, p0, Lcom/alibaba/alimei/sdk/displayer/MailConversationObject;->conversationItems:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;

    .line 274
    .local v0, "mail":Lcom/alibaba/alimei/sdk/model/MailSnippetModel;
    iget-object v3, v0, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->tags:Ljava/util/List;

    if-eqz v3, :cond_0

    iget-object v3, v0, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->tags:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-eqz v3, :cond_0

    .line 275
    const/4 v2, 0x1

    .line 281
    .end local v0    # "mail":Lcom/alibaba/alimei/sdk/model/MailSnippetModel;
    :goto_0
    return v2

    .line 278
    :catch_0
    move-exception v1

    .line 279
    .local v1, "tr":Ljava/lang/Throwable;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 281
    .end local v1    # "tr":Ljava/lang/Throwable;
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public isConversationGroup()Z
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 96
    invoke-virtual {p0}, Lcom/alibaba/alimei/sdk/displayer/MailConversationObject;->itemCounts()I

    move-result v0

    const/4 v1, 0x2

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/alibaba/alimei/sdk/displayer/MailConversationObject;->conversationItems:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/alimei/sdk/displayer/MailConversationObject;->conversationItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public itemCounts()I
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/alibaba/alimei/sdk/displayer/MailConversationObject;->conversationItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public updateConversationItem(Lcom/alibaba/alimei/sdk/model/MailSnippetModel;)V
    .locals 8
    .param p1, "model"    # Lcom/alibaba/alimei/sdk/model/MailSnippetModel;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 395
    iget-object v3, p0, Lcom/alibaba/alimei/sdk/displayer/MailConversationObject;->itemServerIdMap:Ljava/util/Map;

    iget-object v4, p1, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->serverId:Ljava/lang/String;

    invoke-interface {v3, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 396
    const/4 v0, 0x0

    .line 398
    .local v0, "newFirstMailValue":Lcom/alibaba/alimei/sdk/model/MailSnippetModel;
    invoke-direct {p0, p1}, Lcom/alibaba/alimei/sdk/displayer/MailConversationObject;->handleConversationStatus(Lcom/alibaba/alimei/sdk/model/MailSnippetModel;)V

    .line 400
    iget-object v3, p0, Lcom/alibaba/alimei/sdk/displayer/MailConversationObject;->itemServerIdMap:Ljava/util/Map;

    iget-object v4, p1, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->serverId:Ljava/lang/String;

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;

    .line 401
    .local v2, "target":Lcom/alibaba/alimei/sdk/model/MailSnippetModel;
    invoke-static {p1, v2}, Lcom/alibaba/alimei/sdk/displayer/MailConversationObject;->copyWithoutConversationStatus(Lcom/alibaba/alimei/sdk/model/MailSnippetModel;Lcom/alibaba/alimei/sdk/model/MailSnippetModel;)V

    .line 403
    iget-wide v4, p1, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->timeStamp:J

    iget-object v3, p0, Lcom/alibaba/alimei/sdk/displayer/MailConversationObject;->firstMail:Lcom/alibaba/alimei/sdk/model/MailSnippetModel;

    iget-wide v6, v3, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->timeStamp:J

    cmp-long v3, v4, v6

    if-lez v3, :cond_0

    .line 404
    move-object v0, p1

    .line 406
    :cond_0
    if-eqz v0, :cond_1

    .line 407
    iget-object v3, p0, Lcom/alibaba/alimei/sdk/displayer/MailConversationObject;->firstMail:Lcom/alibaba/alimei/sdk/model/MailSnippetModel;

    invoke-static {v0, v3}, Lcom/alibaba/alimei/sdk/displayer/MailConversationObject;->copyWithoutConversationStatus(Lcom/alibaba/alimei/sdk/model/MailSnippetModel;Lcom/alibaba/alimei/sdk/model/MailSnippetModel;)V

    .line 409
    :cond_1
    invoke-virtual {p0}, Lcom/alibaba/alimei/sdk/displayer/MailConversationObject;->handleConversationMailStatus()V

    .line 423
    .end local v0    # "newFirstMailValue":Lcom/alibaba/alimei/sdk/model/MailSnippetModel;
    .end local v2    # "target":Lcom/alibaba/alimei/sdk/model/MailSnippetModel;
    :cond_2
    :goto_0
    return-void

    .line 410
    :cond_3
    iget-object v3, p1, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->messageId:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 411
    iget-object v3, p0, Lcom/alibaba/alimei/sdk/displayer/MailConversationObject;->itemServerIdMap:Ljava/util/Map;

    iget-object v4, p1, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->messageId:Ljava/lang/String;

    invoke-interface {v3, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 412
    iget-object v3, p0, Lcom/alibaba/alimei/sdk/displayer/MailConversationObject;->itemServerIdMap:Ljava/util/Map;

    iget-object v4, p1, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->messageId:Ljava/lang/String;

    invoke-interface {v3, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;

    .line 413
    .local v1, "oldModel":Lcom/alibaba/alimei/sdk/model/MailSnippetModel;
    if-eqz v1, :cond_4

    .line 414
    iget-object v3, p0, Lcom/alibaba/alimei/sdk/displayer/MailConversationObject;->conversationItems:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 415
    iget-object v3, p0, Lcom/alibaba/alimei/sdk/displayer/MailConversationObject;->conversationItems:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 416
    iget-object v3, p0, Lcom/alibaba/alimei/sdk/displayer/MailConversationObject;->itemIdMap:Lfp;

    invoke-virtual {v1}, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->getId()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lfp;->c(J)V

    .line 418
    :cond_4
    iget-object v3, p0, Lcom/alibaba/alimei/sdk/displayer/MailConversationObject;->itemServerIdMap:Ljava/util/Map;

    iget-object v4, p1, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->serverId:Ljava/lang/String;

    invoke-interface {v3, v4, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 419
    iget-object v3, p0, Lcom/alibaba/alimei/sdk/displayer/MailConversationObject;->itemIdMap:Lfp;

    invoke-virtual {p1}, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->getId()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5, p1}, Lfp;->b(JLjava/lang/Object;)V

    .line 420
    invoke-direct {p0, p1}, Lcom/alibaba/alimei/sdk/displayer/MailConversationObject;->handleConversationStatus(Lcom/alibaba/alimei/sdk/model/MailSnippetModel;)V

    goto :goto_0
.end method

.method public updateConversationItems(Ljava/util/ArrayList;)Z
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/alibaba/alimei/sdk/model/MailSnippetModel;",
            ">;)Z"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 433
    .local p1, "models":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/alimei/sdk/model/MailSnippetModel;>;"
    const/4 v2, 0x0

    .line 434
    .local v2, "shouldDelete":Z
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;

    .line 435
    .local v0, "model":Lcom/alibaba/alimei/sdk/model/MailSnippetModel;
    iget-object v6, p0, Lcom/alibaba/alimei/sdk/displayer/MailConversationObject;->itemServerIdMap:Ljava/util/Map;

    iget-object v7, v0, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->serverId:Ljava/lang/String;

    invoke-interface {v6, v7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 436
    const/4 v1, 0x0

    .line 438
    .local v1, "newFirstMailValue":Lcom/alibaba/alimei/sdk/model/MailSnippetModel;
    invoke-direct {p0, v0}, Lcom/alibaba/alimei/sdk/displayer/MailConversationObject;->handleConversationStatus(Lcom/alibaba/alimei/sdk/model/MailSnippetModel;)V

    .line 440
    iget-object v6, p0, Lcom/alibaba/alimei/sdk/displayer/MailConversationObject;->itemServerIdMap:Ljava/util/Map;

    iget-object v7, v0, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->serverId:Ljava/lang/String;

    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;

    .line 441
    .local v4, "target":Lcom/alibaba/alimei/sdk/model/MailSnippetModel;
    invoke-static {v0, v4}, Lcom/alibaba/alimei/sdk/displayer/MailConversationObject;->copyWithoutConversationStatus(Lcom/alibaba/alimei/sdk/model/MailSnippetModel;Lcom/alibaba/alimei/sdk/model/MailSnippetModel;)V

    .line 443
    iget-wide v6, v0, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->timeStamp:J

    iget-object v8, p0, Lcom/alibaba/alimei/sdk/displayer/MailConversationObject;->firstMail:Lcom/alibaba/alimei/sdk/model/MailSnippetModel;

    iget-wide v8, v8, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->timeStamp:J

    cmp-long v6, v6, v8

    if-lez v6, :cond_1

    .line 444
    move-object v1, v0

    .line 446
    :cond_1
    if-eqz v1, :cond_0

    .line 447
    iget-object v6, p0, Lcom/alibaba/alimei/sdk/displayer/MailConversationObject;->firstMail:Lcom/alibaba/alimei/sdk/model/MailSnippetModel;

    invoke-static {v1, v6}, Lcom/alibaba/alimei/sdk/displayer/MailConversationObject;->copyWithoutConversationStatus(Lcom/alibaba/alimei/sdk/model/MailSnippetModel;Lcom/alibaba/alimei/sdk/model/MailSnippetModel;)V

    goto :goto_0

    .line 452
    .end local v1    # "newFirstMailValue":Lcom/alibaba/alimei/sdk/model/MailSnippetModel;
    .end local v4    # "target":Lcom/alibaba/alimei/sdk/model/MailSnippetModel;
    :cond_2
    iget-object v6, p0, Lcom/alibaba/alimei/sdk/displayer/MailConversationObject;->conversationItems:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_3
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;

    .line 453
    .local v3, "snippetModel":Lcom/alibaba/alimei/sdk/model/MailSnippetModel;
    if-eqz v3, :cond_3

    iget-object v7, v3, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->messageId:Ljava/lang/String;

    if-eqz v7, :cond_3

    iget-object v7, v3, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->messageId:Ljava/lang/String;

    iget-object v8, v0, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->messageId:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 454
    invoke-virtual {p0, v3}, Lcom/alibaba/alimei/sdk/displayer/MailConversationObject;->deleteConversationItem(Lcom/alibaba/alimei/sdk/model/MailSnippetModel;)Z

    .line 458
    .end local v3    # "snippetModel":Lcom/alibaba/alimei/sdk/model/MailSnippetModel;
    :cond_4
    invoke-virtual {p0, v0}, Lcom/alibaba/alimei/sdk/displayer/MailConversationObject;->addConversationItem(Lcom/alibaba/alimei/sdk/model/MailSnippetModel;)V

    .line 459
    const/4 v2, 0x1

    .line 461
    goto :goto_0

    .line 462
    .end local v0    # "model":Lcom/alibaba/alimei/sdk/model/MailSnippetModel;
    :cond_5
    invoke-virtual {p0}, Lcom/alibaba/alimei/sdk/displayer/MailConversationObject;->handleConversationMailStatus()V

    .line 463
    return v2
.end method
