.class public Lcom/alibaba/alimei/cmail/widget/AttachmentModelEx;
.super Ljava/lang/Object;
.source "AttachmentModelEx.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/alibaba/alimei/cmail/widget/AttachmentModelEx;",
            ">;"
        }
    .end annotation
.end field

.field public static final TYPE_IMAGE:I = 0x1

.field public static final TYPE_VIDEO:I = 0x2


# instance fields
.field private attType:I

.field public attachmentModel:Lcom/alibaba/alimei/sdk/model/AttachmentModel;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 49
    new-instance v0, Lcom/alibaba/alimei/cmail/widget/AttachmentModelEx$1;

    invoke-direct {v0}, Lcom/alibaba/alimei/cmail/widget/AttachmentModelEx$1;-><init>()V

    sput-object v0, Lcom/alibaba/alimei/cmail/widget/AttachmentModelEx;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 4
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    new-instance v0, Lcom/alibaba/alimei/sdk/model/AttachmentModel;

    invoke-direct {v0}, Lcom/alibaba/alimei/sdk/model/AttachmentModel;-><init>()V

    iput-object v0, p0, Lcom/alibaba/alimei/cmail/widget/AttachmentModelEx;->attachmentModel:Lcom/alibaba/alimei/sdk/model/AttachmentModel;

    .line 27
    iget-object v0, p0, Lcom/alibaba/alimei/cmail/widget/AttachmentModelEx;->attachmentModel:Lcom/alibaba/alimei/sdk/model/AttachmentModel;

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/alibaba/alimei/sdk/model/AttachmentModel;->id:J

    .line 28
    iget-object v0, p0, Lcom/alibaba/alimei/cmail/widget/AttachmentModelEx;->attachmentModel:Lcom/alibaba/alimei/sdk/model/AttachmentModel;

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/alibaba/alimei/sdk/model/AttachmentModel;->messageId:J

    .line 29
    iget-object v0, p0, Lcom/alibaba/alimei/cmail/widget/AttachmentModelEx;->attachmentModel:Lcom/alibaba/alimei/sdk/model/AttachmentModel;

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/alibaba/alimei/sdk/model/AttachmentModel;->accountId:J

    .line 30
    iget-object v0, p0, Lcom/alibaba/alimei/cmail/widget/AttachmentModelEx;->attachmentModel:Lcom/alibaba/alimei/sdk/model/AttachmentModel;

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/alibaba/alimei/sdk/model/AttachmentModel;->size:J

    .line 31
    iget-object v0, p0, Lcom/alibaba/alimei/cmail/widget/AttachmentModelEx;->attachmentModel:Lcom/alibaba/alimei/sdk/model/AttachmentModel;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alibaba/alimei/sdk/model/AttachmentModel;->name:Ljava/lang/String;

    .line 32
    iget-object v0, p0, Lcom/alibaba/alimei/cmail/widget/AttachmentModelEx;->attachmentModel:Lcom/alibaba/alimei/sdk/model/AttachmentModel;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alibaba/alimei/sdk/model/AttachmentModel;->contentType:Ljava/lang/String;

    .line 33
    iget-object v0, p0, Lcom/alibaba/alimei/cmail/widget/AttachmentModelEx;->attachmentModel:Lcom/alibaba/alimei/sdk/model/AttachmentModel;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Lcom/alibaba/alimei/sdk/model/AttachmentModel;->flags:I

    .line 34
    iget-object v0, p0, Lcom/alibaba/alimei/cmail/widget/AttachmentModelEx;->attachmentModel:Lcom/alibaba/alimei/sdk/model/AttachmentModel;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alibaba/alimei/sdk/model/AttachmentModel;->attachmentId:Ljava/lang/String;

    .line 35
    iget-object v0, p0, Lcom/alibaba/alimei/cmail/widget/AttachmentModelEx;->attachmentModel:Lcom/alibaba/alimei/sdk/model/AttachmentModel;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alibaba/alimei/sdk/model/AttachmentModel;->contentUri:Ljava/lang/String;

    .line 36
    iget-object v0, p0, Lcom/alibaba/alimei/cmail/widget/AttachmentModelEx;->attachmentModel:Lcom/alibaba/alimei/sdk/model/AttachmentModel;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alibaba/alimei/sdk/model/AttachmentModel;->contentId:Ljava/lang/String;

    .line 37
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/alibaba/alimei/cmail/widget/AttachmentModelEx$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Lcom/alibaba/alimei/cmail/widget/AttachmentModelEx$1;

    .prologue
    .line 11
    invoke-direct {p0, p1}, Lcom/alibaba/alimei/cmail/widget/AttachmentModelEx;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Lcom/alibaba/alimei/sdk/model/AttachmentModel;)V
    .locals 0
    .param p1, "attachmentModel"    # Lcom/alibaba/alimei/sdk/model/AttachmentModel;

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/alibaba/alimei/cmail/widget/AttachmentModelEx;->attachmentModel:Lcom/alibaba/alimei/sdk/model/AttachmentModel;

    .line 23
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 41
    const/4 v0, 0x0

    return v0
.end method

.method public isImageAttachment()Z
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v0, 0x1

    .line 66
    iget v1, p0, Lcom/alibaba/alimei/cmail/widget/AttachmentModelEx;->attType:I

    if-ne v0, v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isVideoAttachment()Z
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 70
    const/4 v0, 0x2

    iget v1, p0, Lcom/alibaba/alimei/cmail/widget/AttachmentModelEx;->attType:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setAttachmentType(I)V
    .locals 0
    .param p1, "attchType"    # I

    .prologue
    .line 62
    iput p1, p0, Lcom/alibaba/alimei/cmail/widget/AttachmentModelEx;->attType:I

    .line 63
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "parcel"    # Landroid/os/Parcel;
    .param p2, "i"    # I

    .prologue
    .line 46
    iget-object v0, p0, Lcom/alibaba/alimei/cmail/widget/AttachmentModelEx;->attachmentModel:Lcom/alibaba/alimei/sdk/model/AttachmentModel;

    invoke-virtual {v0, p1, p2}, Lcom/alibaba/alimei/sdk/model/AttachmentModel;->writeToParcel(Landroid/os/Parcel;I)V

    .line 47
    return-void
.end method
