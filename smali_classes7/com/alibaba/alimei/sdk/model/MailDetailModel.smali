.class public Lcom/alibaba/alimei/sdk/model/MailDetailModel;
.super Lcom/alibaba/alimei/sdk/model/MailSnippetModel;
.source "MailDetailModel.java"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/alibaba/alimei/sdk/model/MailDetailModel;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public attachments:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/sdk/model/AttachmentModel;",
            ">;"
        }
    .end annotation
.end field

.field public bcc:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/sdk/model/AddressModel;",
            ">;"
        }
    .end annotation
.end field

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

.field public draftBrief:Ljava/lang/String;

.field public hasMailHtmlBodyLoaded:Z

.field public htmlContent:Ljava/lang/String;

.field public includeQuotedText:Z

.field public textContent:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 124
    new-instance v0, Lcom/alibaba/alimei/sdk/model/MailDetailModel$1;

    invoke-direct {v0}, Lcom/alibaba/alimei/sdk/model/MailDetailModel$1;-><init>()V

    sput-object v0, Lcom/alibaba/alimei/sdk/model/MailDetailModel;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(J)V
    .locals 1
    .param p1, "id"    # J

    .prologue
    const/4 v0, 0x0

    .line 16
    invoke-direct {p0, p1, p2}, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;-><init>(J)V

    .line 96
    iput-boolean v0, p0, Lcom/alibaba/alimei/sdk/model/MailDetailModel;->hasMailHtmlBodyLoaded:Z

    .line 98
    iput-boolean v0, p0, Lcom/alibaba/alimei/sdk/model/MailDetailModel;->includeQuotedText:Z

    .line 17
    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    const/4 v0, 0x0

    .line 114
    invoke-direct {p0, p1}, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;-><init>(Landroid/os/Parcel;)V

    .line 96
    iput-boolean v0, p0, Lcom/alibaba/alimei/sdk/model/MailDetailModel;->hasMailHtmlBodyLoaded:Z

    .line 98
    iput-boolean v0, p0, Lcom/alibaba/alimei/sdk/model/MailDetailModel;->includeQuotedText:Z

    .line 115
    const-class v0, Lcom/alibaba/alimei/sdk/model/AddressModel;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readArrayList(Ljava/lang/ClassLoader;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/alimei/sdk/model/MailDetailModel;->cc:Ljava/util/List;

    .line 116
    const-class v0, Lcom/alibaba/alimei/sdk/model/AddressModel;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readArrayList(Ljava/lang/ClassLoader;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/alimei/sdk/model/MailDetailModel;->bcc:Ljava/util/List;

    .line 117
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/alimei/sdk/model/MailDetailModel;->htmlContent:Ljava/lang/String;

    .line 118
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/alimei/sdk/model/MailDetailModel;->textContent:Ljava/lang/String;

    .line 119
    const-class v0, Lcom/alibaba/alimei/sdk/model/AttachmentModel;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readArrayList(Ljava/lang/ClassLoader;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/alimei/sdk/model/MailDetailModel;->attachments:Ljava/util/List;

    .line 120
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/alibaba/alimei/sdk/model/MailDetailModel;->getBooleanValue(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/alibaba/alimei/sdk/model/MailDetailModel;->hasMailHtmlBodyLoaded:Z

    .line 121
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/alimei/sdk/model/MailDetailModel;->draftBrief:Ljava/lang/String;

    .line 122
    return-void
.end method

.method public constructor <init>(Lcom/alibaba/alimei/sdk/model/MailSnippetModel;)V
    .locals 2
    .param p1, "m"    # Lcom/alibaba/alimei/sdk/model/MailSnippetModel;

    .prologue
    const/4 v0, 0x0

    .line 20
    invoke-direct {p0}, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;-><init>()V

    .line 96
    iput-boolean v0, p0, Lcom/alibaba/alimei/sdk/model/MailDetailModel;->hasMailHtmlBodyLoaded:Z

    .line 98
    iput-boolean v0, p0, Lcom/alibaba/alimei/sdk/model/MailDetailModel;->includeQuotedText:Z

    .line 21
    if-eqz p1, :cond_0

    .line 22
    invoke-virtual {p1}, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->getId()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/alibaba/alimei/sdk/model/MailDetailModel;->setId(J)V

    .line 23
    iget-wide v0, p1, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->accountId:J

    iput-wide v0, p0, Lcom/alibaba/alimei/sdk/model/MailDetailModel;->accountId:J

    .line 24
    iget-wide v0, p1, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->folderId:J

    iput-wide v0, p0, Lcom/alibaba/alimei/sdk/model/MailDetailModel;->folderId:J

    .line 25
    iget-object v0, p1, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->snippet:Ljava/lang/String;

    iput-object v0, p0, Lcom/alibaba/alimei/sdk/model/MailDetailModel;->snippet:Ljava/lang/String;

    .line 26
    iget-object v0, p1, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->serverId:Ljava/lang/String;

    iput-object v0, p0, Lcom/alibaba/alimei/sdk/model/MailDetailModel;->serverId:Ljava/lang/String;

    .line 27
    iget-object v0, p1, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->messageId:Ljava/lang/String;

    iput-object v0, p0, Lcom/alibaba/alimei/sdk/model/MailDetailModel;->messageId:Ljava/lang/String;

    .line 28
    iget-object v0, p1, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->from:Lcom/alibaba/alimei/sdk/model/AddressModel;

    iput-object v0, p0, Lcom/alibaba/alimei/sdk/model/MailDetailModel;->from:Lcom/alibaba/alimei/sdk/model/AddressModel;

    .line 29
    iget-object v0, p1, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->fromAddress:Ljava/lang/String;

    iput-object v0, p0, Lcom/alibaba/alimei/sdk/model/MailDetailModel;->fromAddress:Ljava/lang/String;

    .line 30
    iget-object v0, p1, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->to:Ljava/util/List;

    iput-object v0, p0, Lcom/alibaba/alimei/sdk/model/MailDetailModel;->to:Ljava/util/List;

    .line 31
    iget-object v0, p1, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->toAddress:Ljava/lang/String;

    iput-object v0, p0, Lcom/alibaba/alimei/sdk/model/MailDetailModel;->toAddress:Ljava/lang/String;

    .line 32
    iget-object v0, p1, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->cc:Ljava/util/List;

    iput-object v0, p0, Lcom/alibaba/alimei/sdk/model/MailDetailModel;->cc:Ljava/util/List;

    .line 33
    iget-object v0, p1, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->ccAddress:Ljava/lang/String;

    iput-object v0, p0, Lcom/alibaba/alimei/sdk/model/MailDetailModel;->ccAddress:Ljava/lang/String;

    .line 34
    iget-object v0, p1, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->subject:Ljava/lang/String;

    iput-object v0, p0, Lcom/alibaba/alimei/sdk/model/MailDetailModel;->subject:Ljava/lang/String;

    .line 35
    iget-wide v0, p1, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->timeStamp:J

    iput-wide v0, p0, Lcom/alibaba/alimei/sdk/model/MailDetailModel;->timeStamp:J

    .line 36
    iget-boolean v0, p1, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->isRead:Z

    iput-boolean v0, p0, Lcom/alibaba/alimei/sdk/model/MailDetailModel;->isRead:Z

    .line 37
    iget-boolean v0, p1, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->isFavorite:Z

    iput-boolean v0, p0, Lcom/alibaba/alimei/sdk/model/MailDetailModel;->isFavorite:Z

    .line 38
    iget-boolean v0, p1, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->isReminder:Z

    iput-boolean v0, p0, Lcom/alibaba/alimei/sdk/model/MailDetailModel;->isReminder:Z

    .line 39
    iget-boolean v0, p1, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->hasAttachment:Z

    iput-boolean v0, p0, Lcom/alibaba/alimei/sdk/model/MailDetailModel;->hasAttachment:Z

    .line 40
    iget-boolean v0, p1, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->hasResourceAttachment:Z

    iput-boolean v0, p0, Lcom/alibaba/alimei/sdk/model/MailDetailModel;->hasResourceAttachment:Z

    .line 41
    iget-boolean v0, p1, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->hasInvite:Z

    iput-boolean v0, p0, Lcom/alibaba/alimei/sdk/model/MailDetailModel;->hasInvite:Z

    .line 42
    iget-object v0, p1, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->calendar:Lcom/alibaba/alimei/sdk/model/MailCalendarModel;

    iput-object v0, p0, Lcom/alibaba/alimei/sdk/model/MailDetailModel;->calendar:Lcom/alibaba/alimei/sdk/model/MailCalendarModel;

    .line 43
    iget-boolean v0, p1, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->isConversation:Z

    iput-boolean v0, p0, Lcom/alibaba/alimei/sdk/model/MailDetailModel;->isConversation:Z

    .line 44
    iget-object v0, p1, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->conversationId:Ljava/lang/String;

    iput-object v0, p0, Lcom/alibaba/alimei/sdk/model/MailDetailModel;->conversationId:Ljava/lang/String;

    .line 45
    iget-wide v0, p1, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->lastReadTimeStamp:J

    iput-wide v0, p0, Lcom/alibaba/alimei/sdk/model/MailDetailModel;->lastReadTimeStamp:J

    .line 46
    iget-boolean v0, p1, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->hasBeenRepliedTo:Z

    iput-boolean v0, p0, Lcom/alibaba/alimei/sdk/model/MailDetailModel;->hasBeenRepliedTo:Z

    .line 47
    iget-boolean v0, p1, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->hasBeenForwarded:Z

    iput-boolean v0, p0, Lcom/alibaba/alimei/sdk/model/MailDetailModel;->hasBeenForwarded:Z

    .line 48
    iget v0, p1, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->itemCount:I

    iput v0, p0, Lcom/alibaba/alimei/sdk/model/MailDetailModel;->itemCount:I

    .line 49
    iget-boolean v0, p1, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->isTimeDivider:Z

    iput-boolean v0, p0, Lcom/alibaba/alimei/sdk/model/MailDetailModel;->isTimeDivider:Z

    .line 50
    iget-object v0, p1, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->calendarServerId:Ljava/lang/String;

    iput-object v0, p0, Lcom/alibaba/alimei/sdk/model/MailDetailModel;->calendarServerId:Ljava/lang/String;

    .line 51
    iget-object v0, p1, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->tags:Ljava/util/List;

    iput-object v0, p0, Lcom/alibaba/alimei/sdk/model/MailDetailModel;->tags:Ljava/util/List;

    .line 52
    iget v0, p1, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->statusCode:I

    iput v0, p0, Lcom/alibaba/alimei/sdk/model/MailDetailModel;->statusCode:I

    .line 53
    iget-boolean v0, p1, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->shouldLoadData:Z

    iput-boolean v0, p0, Lcom/alibaba/alimei/sdk/model/MailDetailModel;->shouldLoadData:Z

    .line 54
    iget v0, p1, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->folderType:I

    iput v0, p0, Lcom/alibaba/alimei/sdk/model/MailDetailModel;->folderType:I

    .line 55
    iget-object v0, p1, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->conversationExtension:Ljava/lang/String;

    iput-object v0, p0, Lcom/alibaba/alimei/sdk/model/MailDetailModel;->conversationExtension:Ljava/lang/String;

    .line 56
    iget-wide v0, p1, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->uid:J

    iput-wide v0, p0, Lcom/alibaba/alimei/sdk/model/MailDetailModel;->uid:J

    .line 57
    iget-wide v0, p1, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->draftLocalId:J

    iput-wide v0, p0, Lcom/alibaba/alimei/sdk/model/MailDetailModel;->draftLocalId:J

    .line 58
    iget-boolean v0, p1, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->isCalendarBodySaveFile:Z

    iput-boolean v0, p0, Lcom/alibaba/alimei/sdk/model/MailDetailModel;->isCalendarBodySaveFile:Z

    .line 60
    :cond_0
    return-void
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 102
    invoke-super {p0, p1, p2}, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->writeToParcel(Landroid/os/Parcel;I)V

    .line 103
    iget-object v0, p0, Lcom/alibaba/alimei/sdk/model/MailDetailModel;->cc:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 104
    iget-object v0, p0, Lcom/alibaba/alimei/sdk/model/MailDetailModel;->bcc:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 105
    iget-object v0, p0, Lcom/alibaba/alimei/sdk/model/MailDetailModel;->htmlContent:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 106
    iget-object v0, p0, Lcom/alibaba/alimei/sdk/model/MailDetailModel;->textContent:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 107
    iget-object v0, p0, Lcom/alibaba/alimei/sdk/model/MailDetailModel;->attachments:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 108
    iget-boolean v0, p0, Lcom/alibaba/alimei/sdk/model/MailDetailModel;->hasMailHtmlBodyLoaded:Z

    invoke-virtual {p0, v0}, Lcom/alibaba/alimei/sdk/model/MailDetailModel;->getIntValue(Z)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 109
    iget-object v0, p0, Lcom/alibaba/alimei/sdk/model/MailDetailModel;->draftBrief:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 110
    return-void
.end method
