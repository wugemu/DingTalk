.class public Lcom/alibaba/android/dingtalk/circle/idl/objects/SNContentObject;
.super Ljava/lang/Object;
.source "SNContentObject.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Ljava/io/Serializable;


# static fields
.field public static final ANNEX:I = 0x6

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/alibaba/android/dingtalk/circle/idl/objects/SNContentObject;",
            ">;"
        }
    .end annotation
.end field

.field public static final EXTENSION:I = 0x64

.field public static final GEO:I = 0x5

.field public static final LINK:I = 0x4

.field public static final PIC_AND_TXT:I = 0x2

.field public static final TAKE_PHOTO:I = 0x65

.field public static final TXT:I = 0x1

.field public static final VIDEO:I = 0x3

.field private static final serialVersionUID:J = -0x226ae57925142a38L


# instance fields
.field public attachment:Lcom/alibaba/android/dingtalk/circle/idl/objects/SNAttachmentObject;

.field public contentType:I

.field public geoContent:Lcom/alibaba/android/dingtalk/circle/idl/objects/SNGeoContentObject;

.field public linkContent:Lcom/alibaba/android/dingtalk/circle/idl/objects/SNLinkContentObject;

.field private transient mIsTakePhoto:Z

.field public photoContent:Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPhotoContentObject;

.field public text:Ljava/lang/String;

.field public videoContent:Lcom/alibaba/android/dingtalk/circle/idl/objects/SNVideoContentObject;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 106
    new-instance v0, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNContentObject$1;

    invoke-direct {v0}, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNContentObject$1;-><init>()V

    sput-object v0, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNContentObject;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 94
    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 97
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNContentObject;->contentType:I

    .line 98
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNContentObject;->text:Ljava/lang/String;

    .line 99
    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPhotoContentObject;

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNContentObject;->photoContent:Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPhotoContentObject;

    .line 100
    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNVideoContentObject;

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNContentObject;->videoContent:Lcom/alibaba/android/dingtalk/circle/idl/objects/SNVideoContentObject;

    .line 101
    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNLinkContentObject;

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNContentObject;->linkContent:Lcom/alibaba/android/dingtalk/circle/idl/objects/SNLinkContentObject;

    .line 102
    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNGeoContentObject;

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNContentObject;->geoContent:Lcom/alibaba/android/dingtalk/circle/idl/objects/SNGeoContentObject;

    .line 103
    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNAttachmentObject;

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNContentObject;->attachment:Lcom/alibaba/android/dingtalk/circle/idl/objects/SNAttachmentObject;

    .line 104
    return-void
.end method

.method public static fromIdl(Lcom/alibaba/android/dingtalk/circle/idl/models/SNContentModel;)Lcom/alibaba/android/dingtalk/circle/idl/objects/SNContentObject;
    .locals 3
    .param p0, "model"    # Lcom/alibaba/android/dingtalk/circle/idl/models/SNContentModel;

    .prologue
    .line 47
    if-nez p0, :cond_0

    const/4 v0, 0x0

    .line 56
    :goto_0
    return-object v0

    .line 48
    :cond_0
    new-instance v0, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNContentObject;

    invoke-direct {v0}, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNContentObject;-><init>()V

    .line 49
    .local v0, "result":Lcom/alibaba/android/dingtalk/circle/idl/objects/SNContentObject;
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/circle/idl/models/SNContentModel;->contentType:Ljava/lang/Integer;

    .line 1033
    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcoc;->a(Ljava/lang/Integer;I)I

    move-result v1

    .line 49
    iput v1, v0, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNContentObject;->contentType:I

    .line 50
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/circle/idl/models/SNContentModel;->text:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNContentObject;->text:Ljava/lang/String;

    .line 51
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/circle/idl/models/SNContentModel;->photoContent:Lcom/alibaba/android/dingtalk/circle/idl/models/SNPhotoContentModel;

    invoke-static {v1}, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPhotoContentObject;->fromIdl(Lcom/alibaba/android/dingtalk/circle/idl/models/SNPhotoContentModel;)Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPhotoContentObject;

    move-result-object v1

    iput-object v1, v0, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNContentObject;->photoContent:Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPhotoContentObject;

    .line 52
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/circle/idl/models/SNContentModel;->videoContent:Lcom/alibaba/android/dingtalk/circle/idl/models/SNVideoContentModel;

    invoke-static {v1}, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNVideoContentObject;->fromIdl(Lcom/alibaba/android/dingtalk/circle/idl/models/SNVideoContentModel;)Lcom/alibaba/android/dingtalk/circle/idl/objects/SNVideoContentObject;

    move-result-object v1

    iput-object v1, v0, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNContentObject;->videoContent:Lcom/alibaba/android/dingtalk/circle/idl/objects/SNVideoContentObject;

    .line 53
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/circle/idl/models/SNContentModel;->linkContent:Lcom/alibaba/android/dingtalk/circle/idl/models/SNLinkContentModel;

    invoke-static {v1}, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNLinkContentObject;->fromIdl(Lcom/alibaba/android/dingtalk/circle/idl/models/SNLinkContentModel;)Lcom/alibaba/android/dingtalk/circle/idl/objects/SNLinkContentObject;

    move-result-object v1

    iput-object v1, v0, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNContentObject;->linkContent:Lcom/alibaba/android/dingtalk/circle/idl/objects/SNLinkContentObject;

    .line 54
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/circle/idl/models/SNContentModel;->geoContent:Lcom/alibaba/android/dingtalk/circle/idl/models/SNGeoContentModel;

    invoke-static {v1}, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNGeoContentObject;->fromIdl(Lcom/alibaba/android/dingtalk/circle/idl/models/SNGeoContentModel;)Lcom/alibaba/android/dingtalk/circle/idl/objects/SNGeoContentObject;

    move-result-object v1

    iput-object v1, v0, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNContentObject;->geoContent:Lcom/alibaba/android/dingtalk/circle/idl/objects/SNGeoContentObject;

    .line 55
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/circle/idl/models/SNContentModel;->attachment:Lcom/alibaba/android/dingtalk/circle/idl/models/SNAttachmentModel;

    invoke-static {v1}, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNAttachmentObject;->fromIdl(Lcom/alibaba/android/dingtalk/circle/idl/models/SNAttachmentModel;)Lcom/alibaba/android/dingtalk/circle/idl/objects/SNAttachmentObject;

    move-result-object v1

    iput-object v1, v0, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNContentObject;->attachment:Lcom/alibaba/android/dingtalk/circle/idl/objects/SNAttachmentObject;

    goto :goto_0
.end method

.method static toIdl(Lcom/alibaba/android/dingtalk/circle/idl/objects/SNContentObject;)Lcom/alibaba/android/dingtalk/circle/idl/models/SNContentModel;
    .locals 2
    .param p0, "object"    # Lcom/alibaba/android/dingtalk/circle/idl/objects/SNContentObject;

    .prologue
    .line 60
    if-nez p0, :cond_0

    const/4 v0, 0x0

    .line 69
    :goto_0
    return-object v0

    .line 61
    :cond_0
    new-instance v0, Lcom/alibaba/android/dingtalk/circle/idl/models/SNContentModel;

    invoke-direct {v0}, Lcom/alibaba/android/dingtalk/circle/idl/models/SNContentModel;-><init>()V

    .line 62
    .local v0, "result":Lcom/alibaba/android/dingtalk/circle/idl/models/SNContentModel;
    iget v1, p0, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNContentObject;->contentType:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcom/alibaba/android/dingtalk/circle/idl/models/SNContentModel;->contentType:Ljava/lang/Integer;

    .line 63
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNContentObject;->text:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/dingtalk/circle/idl/models/SNContentModel;->text:Ljava/lang/String;

    .line 64
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNContentObject;->photoContent:Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPhotoContentObject;

    invoke-static {v1}, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPhotoContentObject;->toIdl(Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPhotoContentObject;)Lcom/alibaba/android/dingtalk/circle/idl/models/SNPhotoContentModel;

    move-result-object v1

    iput-object v1, v0, Lcom/alibaba/android/dingtalk/circle/idl/models/SNContentModel;->photoContent:Lcom/alibaba/android/dingtalk/circle/idl/models/SNPhotoContentModel;

    .line 65
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNContentObject;->videoContent:Lcom/alibaba/android/dingtalk/circle/idl/objects/SNVideoContentObject;

    invoke-static {v1}, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNVideoContentObject;->toIdl(Lcom/alibaba/android/dingtalk/circle/idl/objects/SNVideoContentObject;)Lcom/alibaba/android/dingtalk/circle/idl/models/SNVideoContentModel;

    move-result-object v1

    iput-object v1, v0, Lcom/alibaba/android/dingtalk/circle/idl/models/SNContentModel;->videoContent:Lcom/alibaba/android/dingtalk/circle/idl/models/SNVideoContentModel;

    .line 66
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNContentObject;->linkContent:Lcom/alibaba/android/dingtalk/circle/idl/objects/SNLinkContentObject;

    invoke-static {v1}, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNLinkContentObject;->toIdl(Lcom/alibaba/android/dingtalk/circle/idl/objects/SNLinkContentObject;)Lcom/alibaba/android/dingtalk/circle/idl/models/SNLinkContentModel;

    move-result-object v1

    iput-object v1, v0, Lcom/alibaba/android/dingtalk/circle/idl/models/SNContentModel;->linkContent:Lcom/alibaba/android/dingtalk/circle/idl/models/SNLinkContentModel;

    .line 67
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNContentObject;->geoContent:Lcom/alibaba/android/dingtalk/circle/idl/objects/SNGeoContentObject;

    invoke-static {v1}, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNGeoContentObject;->toIdl(Lcom/alibaba/android/dingtalk/circle/idl/objects/SNGeoContentObject;)Lcom/alibaba/android/dingtalk/circle/idl/models/SNGeoContentModel;

    move-result-object v1

    iput-object v1, v0, Lcom/alibaba/android/dingtalk/circle/idl/models/SNContentModel;->geoContent:Lcom/alibaba/android/dingtalk/circle/idl/models/SNGeoContentModel;

    .line 68
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNContentObject;->attachment:Lcom/alibaba/android/dingtalk/circle/idl/objects/SNAttachmentObject;

    invoke-static {v1}, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNAttachmentObject;->toIdl(Lcom/alibaba/android/dingtalk/circle/idl/objects/SNAttachmentObject;)Lcom/alibaba/android/dingtalk/circle/idl/models/SNAttachmentModel;

    move-result-object v1

    iput-object v1, v0, Lcom/alibaba/android/dingtalk/circle/idl/models/SNContentModel;->attachment:Lcom/alibaba/android/dingtalk/circle/idl/models/SNAttachmentModel;

    goto :goto_0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 79
    const/4 v0, 0x0

    return v0
.end method

.method public isFromTakePhoto()Z
    .locals 1

    .prologue
    .line 43
    iget-boolean v0, p0, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNContentObject;->mIsTakePhoto:Z

    return v0
.end method

.method public makeTakePhoto()V
    .locals 1

    .prologue
    .line 39
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNContentObject;->mIsTakePhoto:Z

    .line 40
    return-void
.end method

.method public toIdl()Lcom/alibaba/android/dingtalk/circle/idl/models/SNContentModel;
    .locals 1

    .prologue
    .line 73
    invoke-static {p0}, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNContentObject;->toIdl(Lcom/alibaba/android/dingtalk/circle/idl/objects/SNContentObject;)Lcom/alibaba/android/dingtalk/circle/idl/models/SNContentModel;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 84
    iget v0, p0, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNContentObject;->contentType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 85
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNContentObject;->text:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 86
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNContentObject;->photoContent:Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPhotoContentObject;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    .line 87
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNContentObject;->videoContent:Lcom/alibaba/android/dingtalk/circle/idl/objects/SNVideoContentObject;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    .line 88
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNContentObject;->linkContent:Lcom/alibaba/android/dingtalk/circle/idl/objects/SNLinkContentObject;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    .line 89
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNContentObject;->geoContent:Lcom/alibaba/android/dingtalk/circle/idl/objects/SNGeoContentObject;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    .line 90
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNContentObject;->attachment:Lcom/alibaba/android/dingtalk/circle/idl/objects/SNAttachmentObject;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    .line 91
    return-void
.end method
