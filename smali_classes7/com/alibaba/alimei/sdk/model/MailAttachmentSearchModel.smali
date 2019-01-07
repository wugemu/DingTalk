.class public Lcom/alibaba/alimei/sdk/model/MailAttachmentSearchModel;
.super Lcom/alibaba/alimei/framework/model/AbsBaseModel;
.source "MailAttachmentSearchModel.java"

# interfaces
.implements Lyd;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/alibaba/alimei/sdk/model/MailAttachmentSearchModel;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public attachmentModel:Lcom/alibaba/alimei/sdk/model/AttachmentModel;

.field public date:J

.field public folderId:Ljava/lang/String;

.field public folderType:I

.field public from:Lcom/alibaba/alimei/sdk/model/AddressModel;

.field public hasAttach:Z

.field public mailboxId:J

.field public read:Z

.field public serverId:Ljava/lang/String;

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


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 129
    new-instance v0, Lcom/alibaba/alimei/sdk/model/MailAttachmentSearchModel$1;

    invoke-direct {v0}, Lcom/alibaba/alimei/sdk/model/MailAttachmentSearchModel$1;-><init>()V

    sput-object v0, Lcom/alibaba/alimei/sdk/model/MailAttachmentSearchModel;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 83
    invoke-direct {p0}, Lcom/alibaba/alimei/framework/model/AbsBaseModel;-><init>()V

    .line 85
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 4
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 87
    invoke-direct {p0}, Lcom/alibaba/alimei/framework/model/AbsBaseModel;-><init>()V

    .line 88
    const-class v1, Lcom/alibaba/alimei/sdk/model/AddressModel;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 90
    .local v0, "loader":Ljava/lang/ClassLoader;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/alimei/sdk/model/MailAttachmentSearchModel;->serverId:Ljava/lang/String;

    .line 91
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/alimei/sdk/model/MailAttachmentSearchModel;->folderId:Ljava/lang/String;

    .line 92
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/alibaba/alimei/sdk/model/MailAttachmentSearchModel;->folderType:I

    .line 93
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/alibaba/alimei/sdk/model/MailAttachmentSearchModel;->mailboxId:J

    .line 94
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/alibaba/alimei/sdk/model/MailAttachmentSearchModel;->to:Ljava/util/List;

    .line 95
    iget-object v1, p0, Lcom/alibaba/alimei/sdk/model/MailAttachmentSearchModel;->to:Ljava/util/List;

    invoke-virtual {p1, v1, v0}, Landroid/os/Parcel;->readList(Ljava/util/List;Ljava/lang/ClassLoader;)V

    .line 96
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/alibaba/alimei/sdk/model/AddressModel;

    iput-object v1, p0, Lcom/alibaba/alimei/sdk/model/MailAttachmentSearchModel;->from:Lcom/alibaba/alimei/sdk/model/AddressModel;

    .line 97
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/alimei/sdk/model/MailAttachmentSearchModel;->subject:Ljava/lang/String;

    .line 98
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/alibaba/alimei/sdk/model/MailAttachmentSearchModel;->date:J

    .line 99
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/alibaba/alimei/sdk/model/MailAttachmentSearchModel;->getBooleanValue(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/alibaba/alimei/sdk/model/MailAttachmentSearchModel;->read:Z

    .line 100
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/alimei/sdk/model/MailAttachmentSearchModel;->summary:Ljava/lang/String;

    .line 101
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/alibaba/alimei/sdk/model/MailAttachmentSearchModel;->tags:Ljava/util/List;

    .line 102
    iget-object v1, p0, Lcom/alibaba/alimei/sdk/model/MailAttachmentSearchModel;->tags:Ljava/util/List;

    const-class v2, Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->readList(Ljava/util/List;Ljava/lang/ClassLoader;)V

    .line 103
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/alibaba/alimei/sdk/model/MailAttachmentSearchModel;->getBooleanValue(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/alibaba/alimei/sdk/model/MailAttachmentSearchModel;->hasAttach:Z

    .line 104
    const-class v1, Lcom/alibaba/alimei/sdk/model/AttachmentModel;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/alibaba/alimei/sdk/model/AttachmentModel;

    iput-object v1, p0, Lcom/alibaba/alimei/sdk/model/MailAttachmentSearchModel;->attachmentModel:Lcom/alibaba/alimei/sdk/model/AttachmentModel;

    .line 105
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/alibaba/alimei/sdk/model/MailAttachmentSearchModel$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Lcom/alibaba/alimei/sdk/model/MailAttachmentSearchModel$1;

    .prologue
    .line 16
    invoke-direct {p0, p1}, Lcom/alibaba/alimei/sdk/model/MailAttachmentSearchModel;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public getId()J
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 126
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 109
    iget-object v0, p0, Lcom/alibaba/alimei/sdk/model/MailAttachmentSearchModel;->serverId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 110
    iget-object v0, p0, Lcom/alibaba/alimei/sdk/model/MailAttachmentSearchModel;->folderId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 111
    iget v0, p0, Lcom/alibaba/alimei/sdk/model/MailAttachmentSearchModel;->folderType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 112
    iget-wide v0, p0, Lcom/alibaba/alimei/sdk/model/MailAttachmentSearchModel;->mailboxId:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 113
    iget-object v0, p0, Lcom/alibaba/alimei/sdk/model/MailAttachmentSearchModel;->to:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 114
    iget-object v0, p0, Lcom/alibaba/alimei/sdk/model/MailAttachmentSearchModel;->from:Lcom/alibaba/alimei/sdk/model/AddressModel;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 115
    iget-object v0, p0, Lcom/alibaba/alimei/sdk/model/MailAttachmentSearchModel;->subject:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 116
    iget-wide v0, p0, Lcom/alibaba/alimei/sdk/model/MailAttachmentSearchModel;->date:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 117
    iget-boolean v0, p0, Lcom/alibaba/alimei/sdk/model/MailAttachmentSearchModel;->read:Z

    invoke-virtual {p0, v0}, Lcom/alibaba/alimei/sdk/model/MailAttachmentSearchModel;->getIntValue(Z)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 118
    iget-object v0, p0, Lcom/alibaba/alimei/sdk/model/MailAttachmentSearchModel;->summary:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 119
    iget-object v0, p0, Lcom/alibaba/alimei/sdk/model/MailAttachmentSearchModel;->tags:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 120
    iget-boolean v0, p0, Lcom/alibaba/alimei/sdk/model/MailAttachmentSearchModel;->hasAttach:Z

    invoke-virtual {p0, v0}, Lcom/alibaba/alimei/sdk/model/MailAttachmentSearchModel;->getIntValue(Z)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 121
    iget-object v0, p0, Lcom/alibaba/alimei/sdk/model/MailAttachmentSearchModel;->attachmentModel:Lcom/alibaba/alimei/sdk/model/AttachmentModel;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 122
    return-void
.end method
