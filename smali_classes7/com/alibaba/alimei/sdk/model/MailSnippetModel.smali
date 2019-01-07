.class public Lcom/alibaba/alimei/sdk/model/MailSnippetModel;
.super Lcom/alibaba/alimei/framework/model/AbsBaseModel;
.source "MailSnippetModel.java"

# interfaces
.implements Lyd;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/alibaba/alimei/sdk/model/MailSnippetModel;",
            ">;"
        }
    .end annotation
.end field

.field public static final STATUS_ATTACHMENT_ERROR:I = 0x3

.field public static final STATUS_MAXSIZE_THRESHOLD_ERROR:I = 0x4

.field public static final STATUS_NETWORK_ERROR:I = 0x2

.field public static final STATUS_NORMAL:I = 0x0

.field public static final STATUS_OTHER_ERROR:I = 0x5

.field public static final STATUS_SENDING:I = 0x1

.field public static final STATUS_SERVER_REJECT:I = 0x6


# instance fields
.field public accountId:J

.field public calendar:Lcom/alibaba/alimei/sdk/model/MailCalendarModel;

.field public calendarServerId:Ljava/lang/String;

.field public cc:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/sdk/model/AddressModel;",
            ">;"
        }
    .end annotation
.end field

.field public ccAddress:Ljava/lang/String;

.field public chatMailReceiver:Ljava/lang/String;

.field public chatMsgSender:Ljava/lang/String;

.field public conversationExtension:Ljava/lang/String;

.field public conversationId:Ljava/lang/String;

.field public draftLocalId:J

.field public extData:Lcom/alibaba/alimei/sdk/model/ExtentionDataModel;

.field public folderId:J

.field public folderType:I

.field public from:Lcom/alibaba/alimei/sdk/model/AddressModel;

.field public fromAddress:Ljava/lang/String;

.field public hasAttachment:Z

.field public hasBeenForwarded:Z

.field public hasBeenRepliedTo:Z

.field public hasCalendarPart:Z

.field public hasInvite:Z

.field public hasResourceAttachment:Z

.field private id:J

.field public isCalendarBodySaveFile:Z

.field public isConversation:Z

.field public isFavorite:Z

.field public isRead:Z

.field public isReminder:Z

.field public isTimeDivider:Z

.field public itemCount:I

.field public lastReadTimeStamp:J

.field public localExtension:Ljava/lang/String;

.field public messageId:Ljava/lang/String;

.field public priority:I

.field public separatedSend:Z

.field public serverId:Ljava/lang/String;

.field public shouldLoadData:Z

.field public snippet:Ljava/lang/String;

.field public statusCode:I

.field public subject:Ljava/lang/String;

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

.field public timeStamp:J

.field public to:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/sdk/model/AddressModel;",
            ">;"
        }
    .end annotation
.end field

.field public toAddress:Ljava/lang/String;

.field public uid:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 417
    new-instance v0, Lcom/alibaba/alimei/sdk/model/MailSnippetModel$1;

    invoke-direct {v0}, Lcom/alibaba/alimei/sdk/model/MailSnippetModel$1;-><init>()V

    sput-object v0, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 75
    invoke-direct {p0}, Lcom/alibaba/alimei/framework/model/AbsBaseModel;-><init>()V

    .line 157
    iput-boolean v0, p0, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->isReminder:Z

    .line 186
    iput-boolean v0, p0, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->isConversation:Z

    .line 228
    iput v0, p0, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->statusCode:I

    .line 233
    iput-boolean v0, p0, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->shouldLoadData:Z

    .line 238
    const/4 v0, -0x1

    iput v0, p0, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->folderType:I

    .line 287
    const/4 v0, 0x3

    iput v0, p0, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->priority:I

    .line 76
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->id:J

    .line 77
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->isTimeDivider:Z

    .line 78
    return-void
.end method

.method public constructor <init>(J)V
    .locals 3
    .param p1, "id"    # J

    .prologue
    const/4 v1, 0x0

    .line 61
    invoke-direct {p0}, Lcom/alibaba/alimei/framework/model/AbsBaseModel;-><init>()V

    .line 157
    iput-boolean v1, p0, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->isReminder:Z

    .line 186
    iput-boolean v1, p0, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->isConversation:Z

    .line 228
    iput v1, p0, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->statusCode:I

    .line 233
    iput-boolean v1, p0, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->shouldLoadData:Z

    .line 238
    const/4 v0, -0x1

    iput v0, p0, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->folderType:I

    .line 287
    const/4 v0, 0x3

    iput v0, p0, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->priority:I

    .line 62
    iput-wide p1, p0, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->id:J

    .line 63
    iput-boolean v1, p0, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->isTimeDivider:Z

    .line 64
    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 4
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    const/4 v1, 0x0

    .line 366
    invoke-direct {p0}, Lcom/alibaba/alimei/framework/model/AbsBaseModel;-><init>()V

    .line 157
    iput-boolean v1, p0, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->isReminder:Z

    .line 186
    iput-boolean v1, p0, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->isConversation:Z

    .line 228
    iput v1, p0, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->statusCode:I

    .line 233
    iput-boolean v1, p0, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->shouldLoadData:Z

    .line 238
    const/4 v1, -0x1

    iput v1, p0, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->folderType:I

    .line 287
    const/4 v1, 0x3

    iput v1, p0, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->priority:I

    .line 367
    const-class v1, Lcom/alibaba/alimei/sdk/model/AddressModel;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 369
    .local v0, "loader":Ljava/lang/ClassLoader;
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->id:J

    .line 370
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->accountId:J

    .line 371
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->folderId:J

    .line 372
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->snippet:Ljava/lang/String;

    .line 373
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->serverId:Ljava/lang/String;

    .line 374
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->messageId:Ljava/lang/String;

    .line 375
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/alibaba/alimei/sdk/model/AddressModel;

    iput-object v1, p0, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->from:Lcom/alibaba/alimei/sdk/model/AddressModel;

    .line 376
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->to:Ljava/util/List;

    .line 377
    iget-object v1, p0, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->to:Ljava/util/List;

    invoke-virtual {p1, v1, v0}, Landroid/os/Parcel;->readList(Ljava/util/List;Ljava/lang/ClassLoader;)V

    .line 378
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->cc:Ljava/util/List;

    .line 379
    iget-object v1, p0, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->cc:Ljava/util/List;

    invoke-virtual {p1, v1, v0}, Landroid/os/Parcel;->readList(Ljava/util/List;Ljava/lang/ClassLoader;)V

    .line 380
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->subject:Ljava/lang/String;

    .line 381
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->timeStamp:J

    .line 382
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->getBooleanValue(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->isRead:Z

    .line 383
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->getBooleanValue(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->isFavorite:Z

    .line 384
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->getBooleanValue(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->isReminder:Z

    .line 385
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->getBooleanValue(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->hasAttachment:Z

    .line 386
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->getBooleanValue(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->hasResourceAttachment:Z

    .line 387
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->getBooleanValue(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->hasInvite:Z

    .line 388
    const-class v1, Lcom/alibaba/alimei/sdk/model/MailCalendarModel;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/alibaba/alimei/sdk/model/MailCalendarModel;

    iput-object v1, p0, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->calendar:Lcom/alibaba/alimei/sdk/model/MailCalendarModel;

    .line 389
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->getBooleanValue(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->isConversation:Z

    .line 390
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->conversationId:Ljava/lang/String;

    .line 391
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->lastReadTimeStamp:J

    .line 392
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->getBooleanValue(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->hasBeenRepliedTo:Z

    .line 393
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->getBooleanValue(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->hasBeenForwarded:Z

    .line 394
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->itemCount:I

    .line 395
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->getBooleanValue(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->isTimeDivider:Z

    .line 396
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->tags:Ljava/util/List;

    .line 397
    iget-object v1, p0, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->tags:Ljava/util/List;

    const-class v2, Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->readList(Ljava/util/List;Ljava/lang/ClassLoader;)V

    .line 398
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->statusCode:I

    .line 399
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->fromAddress:Ljava/lang/String;

    .line 400
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->toAddress:Ljava/lang/String;

    .line 401
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->ccAddress:Ljava/lang/String;

    .line 402
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->getBooleanValue(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->shouldLoadData:Z

    .line 403
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->folderType:I

    .line 404
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->conversationExtension:Ljava/lang/String;

    .line 405
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->uid:J

    .line 406
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->chatMailReceiver:Ljava/lang/String;

    .line 407
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->chatMsgSender:Ljava/lang/String;

    .line 408
    const-class v1, Lcom/alibaba/alimei/sdk/model/ExtentionDataModel;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/alibaba/alimei/sdk/model/ExtentionDataModel;

    iput-object v1, p0, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->extData:Lcom/alibaba/alimei/sdk/model/ExtentionDataModel;

    .line 409
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->draftLocalId:J

    .line 410
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->getBooleanValue(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->hasCalendarPart:Z

    .line 411
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->getBooleanValue(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->isCalendarBodySaveFile:Z

    .line 412
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->localExtension:Ljava/lang/String;

    .line 413
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->priority:I

    .line 414
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->getBooleanValue(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->separatedSend:Z

    .line 415
    return-void
.end method

.method public static copy(Lcom/alibaba/alimei/sdk/model/MailSnippetModel;Lcom/alibaba/alimei/sdk/model/MailSnippetModel;)Lcom/alibaba/alimei/sdk/model/MailSnippetModel;
    .locals 2
    .param p0, "src"    # Lcom/alibaba/alimei/sdk/model/MailSnippetModel;
    .param p1, "target"    # Lcom/alibaba/alimei/sdk/model/MailSnippetModel;

    .prologue
    .line 457
    iget-wide v0, p0, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->id:J

    iput-wide v0, p1, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->id:J

    .line 458
    iget-wide v0, p0, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->folderId:J

    iput-wide v0, p1, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->folderId:J

    .line 459
    iget-wide v0, p0, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->accountId:J

    iput-wide v0, p1, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->accountId:J

    .line 460
    iget-object v0, p0, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->snippet:Ljava/lang/String;

    iput-object v0, p1, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->snippet:Ljava/lang/String;

    .line 461
    iget-object v0, p0, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->serverId:Ljava/lang/String;

    iput-object v0, p1, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->serverId:Ljava/lang/String;

    .line 462
    iget-object v0, p0, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->messageId:Ljava/lang/String;

    iput-object v0, p1, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->messageId:Ljava/lang/String;

    .line 463
    iget-object v0, p0, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->from:Lcom/alibaba/alimei/sdk/model/AddressModel;

    iput-object v0, p1, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->from:Lcom/alibaba/alimei/sdk/model/AddressModel;

    .line 464
    iget-object v0, p0, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->fromAddress:Ljava/lang/String;

    iput-object v0, p1, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->fromAddress:Ljava/lang/String;

    .line 465
    iget-object v0, p0, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->to:Ljava/util/List;

    iput-object v0, p1, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->to:Ljava/util/List;

    .line 466
    iget-object v0, p0, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->toAddress:Ljava/lang/String;

    iput-object v0, p1, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->toAddress:Ljava/lang/String;

    .line 467
    iget-object v0, p0, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->cc:Ljava/util/List;

    iput-object v0, p1, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->cc:Ljava/util/List;

    .line 468
    iget-object v0, p0, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->ccAddress:Ljava/lang/String;

    iput-object v0, p1, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->ccAddress:Ljava/lang/String;

    .line 469
    iget-object v0, p0, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->subject:Ljava/lang/String;

    iput-object v0, p1, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->subject:Ljava/lang/String;

    .line 470
    iget-wide v0, p0, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->timeStamp:J

    iput-wide v0, p1, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->timeStamp:J

    .line 471
    iget-boolean v0, p0, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->isRead:Z

    iput-boolean v0, p1, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->isRead:Z

    .line 472
    iget-boolean v0, p0, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->isFavorite:Z

    iput-boolean v0, p1, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->isFavorite:Z

    .line 473
    iget-boolean v0, p0, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->isReminder:Z

    iput-boolean v0, p1, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->isReminder:Z

    .line 474
    iget-boolean v0, p0, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->hasAttachment:Z

    iput-boolean v0, p1, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->hasAttachment:Z

    .line 475
    iget-boolean v0, p0, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->hasResourceAttachment:Z

    iput-boolean v0, p1, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->hasResourceAttachment:Z

    .line 476
    iget-boolean v0, p0, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->hasInvite:Z

    iput-boolean v0, p1, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->hasInvite:Z

    .line 477
    iget-object v0, p0, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->calendar:Lcom/alibaba/alimei/sdk/model/MailCalendarModel;

    iput-object v0, p1, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->calendar:Lcom/alibaba/alimei/sdk/model/MailCalendarModel;

    .line 478
    iget-boolean v0, p0, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->isConversation:Z

    iput-boolean v0, p1, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->isConversation:Z

    .line 479
    iget-object v0, p0, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->conversationId:Ljava/lang/String;

    iput-object v0, p1, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->conversationId:Ljava/lang/String;

    .line 480
    iget-wide v0, p0, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->lastReadTimeStamp:J

    iput-wide v0, p1, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->lastReadTimeStamp:J

    .line 481
    iget-boolean v0, p0, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->hasBeenRepliedTo:Z

    iput-boolean v0, p1, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->hasBeenRepliedTo:Z

    .line 482
    iget-boolean v0, p0, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->hasBeenForwarded:Z

    iput-boolean v0, p1, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->hasBeenForwarded:Z

    .line 483
    iget v0, p0, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->itemCount:I

    iput v0, p1, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->itemCount:I

    .line 484
    iget-boolean v0, p0, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->isTimeDivider:Z

    iput-boolean v0, p1, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->isTimeDivider:Z

    .line 485
    iget-object v0, p0, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->tags:Ljava/util/List;

    iput-object v0, p1, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->tags:Ljava/util/List;

    .line 486
    iget v0, p0, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->statusCode:I

    iput v0, p1, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->statusCode:I

    .line 487
    iget-boolean v0, p0, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->shouldLoadData:Z

    iput-boolean v0, p1, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->shouldLoadData:Z

    .line 488
    iget v0, p0, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->folderType:I

    iput v0, p1, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->folderType:I

    .line 489
    iget-object v0, p0, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->conversationExtension:Ljava/lang/String;

    iput-object v0, p1, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->conversationExtension:Ljava/lang/String;

    .line 490
    iget-wide v0, p0, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->uid:J

    iput-wide v0, p1, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->uid:J

    .line 491
    iget-object v0, p0, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->chatMailReceiver:Ljava/lang/String;

    iput-object v0, p1, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->chatMailReceiver:Ljava/lang/String;

    .line 492
    iget-object v0, p0, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->chatMsgSender:Ljava/lang/String;

    iput-object v0, p1, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->chatMsgSender:Ljava/lang/String;

    .line 493
    iget-object v0, p0, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->extData:Lcom/alibaba/alimei/sdk/model/ExtentionDataModel;

    iput-object v0, p1, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->extData:Lcom/alibaba/alimei/sdk/model/ExtentionDataModel;

    .line 494
    iget-wide v0, p0, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->draftLocalId:J

    iput-wide v0, p1, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->draftLocalId:J

    .line 495
    iget-boolean v0, p0, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->hasCalendarPart:Z

    iput-boolean v0, p1, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->hasCalendarPart:Z

    .line 496
    iget-boolean v0, p0, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->isCalendarBodySaveFile:Z

    iput-boolean v0, p1, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->isCalendarBodySaveFile:Z

    .line 497
    iget-object v0, p0, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->localExtension:Ljava/lang/String;

    iput-object v0, p1, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->localExtension:Ljava/lang/String;

    .line 498
    iget v0, p0, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->priority:I

    iput v0, p1, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->priority:I

    .line 499
    iget-boolean v0, p0, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->separatedSend:Z

    iput-boolean v0, p1, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->separatedSend:Z

    .line 500
    return-object p1
.end method

.method public static createTimeDivider(JJ)Lcom/alibaba/alimei/sdk/model/MailSnippetModel;
    .locals 4
    .param p0, "timeStamp"    # J
    .param p2, "lastReadTimeStamp"    # J

    .prologue
    .line 67
    new-instance v0, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;

    const-wide/16 v2, -0x1

    invoke-direct {v0, v2, v3}, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;-><init>(J)V

    .line 68
    .local v0, "model":Lcom/alibaba/alimei/sdk/model/MailSnippetModel;
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->isTimeDivider:Z

    .line 69
    iput-wide p0, v0, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->timeStamp:J

    .line 70
    iput-wide p2, v0, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->lastReadTimeStamp:J

    .line 71
    return-object v0
.end method


# virtual methods
.method public getCc()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/sdk/model/AddressModel;",
            ">;"
        }
    .end annotation

    .prologue
    .line 535
    iget-object v0, p0, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->cc:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 536
    iget-object v0, p0, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->cc:Ljava/util/List;

    .line 540
    :goto_0
    return-object v0

    .line 538
    :cond_0
    iget-object v0, p0, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->ccAddress:Ljava/lang/String;

    invoke-static {v0}, Lair;->i(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->cc:Ljava/util/List;

    .line 540
    iget-object v0, p0, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->cc:Ljava/util/List;

    goto :goto_0
.end method

.method public getFrom()Lcom/alibaba/alimei/sdk/model/AddressModel;
    .locals 1

    .prologue
    .line 512
    iget-object v0, p0, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->from:Lcom/alibaba/alimei/sdk/model/AddressModel;

    if-eqz v0, :cond_0

    .line 513
    iget-object v0, p0, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->from:Lcom/alibaba/alimei/sdk/model/AddressModel;

    .line 517
    :goto_0
    return-object v0

    .line 515
    :cond_0
    iget-object v0, p0, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->fromAddress:Ljava/lang/String;

    invoke-static {v0}, Lair;->e(Ljava/lang/String;)Lcom/alibaba/alimei/sdk/model/AddressModel;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->from:Lcom/alibaba/alimei/sdk/model/AddressModel;

    .line 517
    iget-object v0, p0, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->from:Lcom/alibaba/alimei/sdk/model/AddressModel;

    goto :goto_0
.end method

.method public getFromName()Ljava/lang/String;
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 544
    invoke-virtual {p0}, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->getFrom()Lcom/alibaba/alimei/sdk/model/AddressModel;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->from:Lcom/alibaba/alimei/sdk/model/AddressModel;

    .line 545
    iget-object v0, p0, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->from:Lcom/alibaba/alimei/sdk/model/AddressModel;

    if-eqz v0, :cond_2

    .line 546
    iget-object v0, p0, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->from:Lcom/alibaba/alimei/sdk/model/AddressModel;

    iget-object v0, v0, Lcom/alibaba/alimei/sdk/model/AddressModel;->alias:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 547
    iget-object v0, p0, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->from:Lcom/alibaba/alimei/sdk/model/AddressModel;

    iget-object v0, v0, Lcom/alibaba/alimei/sdk/model/AddressModel;->address:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->from:Lcom/alibaba/alimei/sdk/model/AddressModel;

    iget-object v0, v0, Lcom/alibaba/alimei/sdk/model/AddressModel;->address:Ljava/lang/String;

    const-string/jumbo v1, "@"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 548
    iget-object v0, p0, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->from:Lcom/alibaba/alimei/sdk/model/AddressModel;

    iget-object v0, v0, Lcom/alibaba/alimei/sdk/model/AddressModel;->address:Ljava/lang/String;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->from:Lcom/alibaba/alimei/sdk/model/AddressModel;

    iget-object v2, v2, Lcom/alibaba/alimei/sdk/model/AddressModel;->address:Ljava/lang/String;

    const-string/jumbo v3, "@"

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 557
    :goto_0
    return-object v0

    .line 550
    :cond_0
    iget-object v0, p0, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->from:Lcom/alibaba/alimei/sdk/model/AddressModel;

    iget-object v0, v0, Lcom/alibaba/alimei/sdk/model/AddressModel;->address:Ljava/lang/String;

    goto :goto_0

    .line 553
    :cond_1
    iget-object v0, p0, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->from:Lcom/alibaba/alimei/sdk/model/AddressModel;

    iget-object v0, v0, Lcom/alibaba/alimei/sdk/model/AddressModel;->alias:Ljava/lang/String;

    goto :goto_0

    .line 557
    :cond_2
    const-string/jumbo v0, ""

    goto :goto_0
.end method

.method public getId()J
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 86
    iget-wide v0, p0, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->id:J

    return-wide v0
.end method

.method public getSendersName()Ljava/lang/String;
    .locals 7

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 433
    iget-boolean v5, p0, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->isConversation:Z

    if-eqz v5, :cond_2

    .line 434
    invoke-static {}, Lafv;->e()Lcom/alibaba/alimei/framework/account/AccountApi;

    move-result-object v5

    invoke-interface {v5}, Lcom/alibaba/alimei/framework/account/AccountApi;->getDefaultAccountName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lafv;->b(Ljava/lang/String;)Lcom/alibaba/alimei/sdk/displayer/AbsMailDisplayer;

    move-result-object v5

    iget-object v6, p0, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->conversationId:Ljava/lang/String;

    .line 435
    invoke-virtual {v5, v6}, Lcom/alibaba/alimei/sdk/displayer/AbsMailDisplayer;->getConversationMailList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 436
    .local v1, "items":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/sdk/model/MailSnippetModel;>;"
    if-eqz v1, :cond_2

    .line 437
    new-instance v3, Ljava/util/ArrayList;

    const/4 v5, 0x5

    invoke-direct {v3, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 438
    .local v3, "nameList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;

    .line 439
    .local v2, "m":Lcom/alibaba/alimei/sdk/model/MailSnippetModel;
    iget-object v6, v2, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->from:Lcom/alibaba/alimei/sdk/model/AddressModel;

    iget-object v6, v6, Lcom/alibaba/alimei/sdk/model/AddressModel;->alias:Ljava/lang/String;

    invoke-interface {v3, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 440
    iget-object v6, v2, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->from:Lcom/alibaba/alimei/sdk/model/AddressModel;

    iget-object v6, v6, Lcom/alibaba/alimei/sdk/model/AddressModel;->alias:Ljava/lang/String;

    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 443
    .end local v2    # "m":Lcom/alibaba/alimei/sdk/model/MailSnippetModel;
    :cond_1
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_2

    .line 444
    const/4 v5, 0x0

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 445
    .local v4, "names":Ljava/lang/String;
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_1
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    if-ge v0, v5, :cond_3

    .line 446
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 447
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 445
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 453
    .end local v0    # "i":I
    .end local v1    # "items":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/sdk/model/MailSnippetModel;>;"
    .end local v3    # "nameList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v4    # "names":Ljava/lang/String;
    :cond_2
    iget-object v5, p0, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->from:Lcom/alibaba/alimei/sdk/model/AddressModel;

    if-nez v5, :cond_4

    const-string/jumbo v4, ""

    :cond_3
    :goto_2
    return-object v4

    :cond_4
    iget-object v5, p0, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->from:Lcom/alibaba/alimei/sdk/model/AddressModel;

    iget-object v5, v5, Lcom/alibaba/alimei/sdk/model/AddressModel;->alias:Ljava/lang/String;

    if-nez v5, :cond_5

    const-string/jumbo v4, ""

    goto :goto_2

    :cond_5
    iget-object v5, p0, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->from:Lcom/alibaba/alimei/sdk/model/AddressModel;

    iget-object v4, v5, Lcom/alibaba/alimei/sdk/model/AddressModel;->alias:Ljava/lang/String;

    goto :goto_2
.end method

.method public getTo()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/sdk/model/AddressModel;",
            ">;"
        }
    .end annotation

    .prologue
    .line 526
    iget-object v0, p0, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->to:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 527
    iget-object v0, p0, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->to:Ljava/util/List;

    .line 531
    :goto_0
    return-object v0

    .line 529
    :cond_0
    iget-object v0, p0, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->toAddress:Ljava/lang/String;

    invoke-static {v0}, Lair;->i(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->to:Ljava/util/List;

    .line 531
    iget-object v0, p0, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->to:Ljava/util/List;

    goto :goto_0
.end method

.method public isSendFolder()Z
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 508
    iget v0, p0, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->folderType:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public loadData()V
    .locals 0

    .prologue
    .line 521
    invoke-static {p0}, Lcom/alibaba/alimei/sdk/datasource/impl/MessageDatasourceImpl;->loadMailSnippetModel(Lcom/alibaba/alimei/sdk/model/MailSnippetModel;)V

    .line 522
    return-void
.end method

.method public setId(J)V
    .locals 1
    .param p1, "id"    # J

    .prologue
    .line 81
    iput-wide p1, p0, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->id:J

    .line 82
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 291
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "MailSnippetModel [id="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v2, p0, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->id:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", accountId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->accountId:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", folderId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->folderId:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", snippet="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->snippet:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", serverId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->serverId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", messageId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->messageId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", from="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->from:Lcom/alibaba/alimei/sdk/model/AddressModel;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", to="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->to:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", subject="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->subject:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", timeStamp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->timeStamp:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", isRead="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->isRead:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", isFavorite="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->isFavorite:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", isReminder="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->isReminder:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", hasAttachment="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->hasAttachment:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", hasResourceAttachment="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->hasResourceAttachment:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", hasInvite="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->hasInvite:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", calendar="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->calendar:Lcom/alibaba/alimei/sdk/model/MailCalendarModel;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", isConversation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->isConversation:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", conversationId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->conversationId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", lastReadTimeStamp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->lastReadTimeStamp:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", hasBeenRepliedTo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->hasBeenRepliedTo:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", hasBeenForwarded="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->hasBeenForwarded:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", itemCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->itemCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", isTimeDivider="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->isTimeDivider:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", calendarServerId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->calendarServerId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", tags="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->tags:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", conversationExtension="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->conversationExtension:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", chatMailReceiver="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->chatMailReceiver:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", chatMsgSender="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->chatMsgSender:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", extData="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->extData:Lcom/alibaba/alimei/sdk/model/ExtentionDataModel;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", uid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->uid:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", draftLocalId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->draftLocalId:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", hasCalendarPart"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->hasCalendarPart:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", priority"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->priority:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", separatedSend"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->separatedSend:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 320
    invoke-virtual {p0}, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->getId()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 321
    iget-wide v0, p0, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->accountId:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 322
    iget-wide v0, p0, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->folderId:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 323
    iget-object v0, p0, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->snippet:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 324
    iget-object v0, p0, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->serverId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 325
    iget-object v0, p0, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->messageId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 326
    iget-object v0, p0, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->from:Lcom/alibaba/alimei/sdk/model/AddressModel;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 327
    iget-object v0, p0, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->to:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 328
    iget-object v0, p0, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->cc:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 329
    iget-object v0, p0, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->subject:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 330
    iget-wide v0, p0, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->timeStamp:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 331
    iget-boolean v0, p0, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->isRead:Z

    invoke-virtual {p0, v0}, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->getIntValue(Z)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 332
    iget-boolean v0, p0, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->isFavorite:Z

    invoke-virtual {p0, v0}, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->getIntValue(Z)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 333
    iget-boolean v0, p0, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->isReminder:Z

    invoke-virtual {p0, v0}, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->getIntValue(Z)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 334
    iget-boolean v0, p0, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->hasAttachment:Z

    invoke-virtual {p0, v0}, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->getIntValue(Z)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 335
    iget-boolean v0, p0, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->hasResourceAttachment:Z

    invoke-virtual {p0, v0}, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->getIntValue(Z)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 336
    iget-boolean v0, p0, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->hasInvite:Z

    invoke-virtual {p0, v0}, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->getIntValue(Z)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 337
    iget-object v0, p0, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->calendar:Lcom/alibaba/alimei/sdk/model/MailCalendarModel;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 338
    iget-boolean v0, p0, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->isConversation:Z

    invoke-virtual {p0, v0}, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->getIntValue(Z)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 339
    iget-object v0, p0, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->conversationId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 340
    iget-wide v0, p0, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->lastReadTimeStamp:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 341
    iget-boolean v0, p0, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->hasBeenRepliedTo:Z

    invoke-virtual {p0, v0}, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->getIntValue(Z)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 342
    iget-boolean v0, p0, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->hasBeenForwarded:Z

    invoke-virtual {p0, v0}, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->getIntValue(Z)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 343
    iget v0, p0, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->itemCount:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 344
    iget-boolean v0, p0, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->isTimeDivider:Z

    invoke-virtual {p0, v0}, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->getIntValue(Z)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 345
    iget-object v0, p0, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->tags:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 346
    iget v0, p0, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->statusCode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 347
    iget-object v0, p0, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->fromAddress:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 348
    iget-object v0, p0, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->toAddress:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 349
    iget-object v0, p0, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->ccAddress:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 350
    iget-boolean v0, p0, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->shouldLoadData:Z

    invoke-virtual {p0, v0}, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->getIntValue(Z)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 351
    iget v0, p0, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->folderType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 352
    iget-object v0, p0, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->conversationExtension:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 353
    iget-wide v0, p0, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->uid:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 354
    iget-object v0, p0, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->chatMailReceiver:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 355
    iget-object v0, p0, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->chatMsgSender:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 356
    iget-object v0, p0, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->extData:Lcom/alibaba/alimei/sdk/model/ExtentionDataModel;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 357
    iget-wide v0, p0, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->draftLocalId:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 358
    iget-boolean v0, p0, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->hasCalendarPart:Z

    invoke-virtual {p0, v0}, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->getIntValue(Z)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 359
    iget-boolean v0, p0, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->isCalendarBodySaveFile:Z

    invoke-virtual {p0, v0}, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->getIntValue(Z)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 360
    iget-object v0, p0, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->localExtension:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 361
    iget v0, p0, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->priority:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 362
    iget-boolean v0, p0, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->separatedSend:Z

    invoke-virtual {p0, v0}, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->getIntValue(Z)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 363
    return-void
.end method
