.class public Lcom/alibaba/android/user/connection/idl/objects/CircleContentObject;
.super Ljava/lang/Object;
.source "CircleContentObject.java"

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
            "Lcom/alibaba/android/user/connection/idl/objects/CircleContentObject;",
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
.field public attachment:Lcom/alibaba/android/user/connection/idl/objects/CircleAttachmentObject;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public contentType:I
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public geoContent:Lcom/alibaba/android/user/connection/idl/objects/CircleGeoContentObject;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public linkContent:Lcom/alibaba/android/user/connection/idl/objects/CircleLinkContentObject;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private transient mIsTakePhoto:Z

.field public photoContent:Lcom/alibaba/android/user/connection/idl/objects/CirclePhotoContentObject;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public text:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public videoContent:Lcom/alibaba/android/user/connection/idl/objects/CircleVideoContentObject;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 126
    new-instance v0, Lcom/alibaba/android/user/connection/idl/objects/CircleContentObject$1;

    invoke-direct {v0}, Lcom/alibaba/android/user/connection/idl/objects/CircleContentObject$1;-><init>()V

    sput-object v0, Lcom/alibaba/android/user/connection/idl/objects/CircleContentObject;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 113
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 114
    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 116
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 117
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/alibaba/android/user/connection/idl/objects/CircleContentObject;->contentType:I

    .line 118
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/user/connection/idl/objects/CircleContentObject;->text:Ljava/lang/String;

    .line 119
    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/user/connection/idl/objects/CirclePhotoContentObject;

    iput-object v0, p0, Lcom/alibaba/android/user/connection/idl/objects/CircleContentObject;->photoContent:Lcom/alibaba/android/user/connection/idl/objects/CirclePhotoContentObject;

    .line 120
    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/user/connection/idl/objects/CircleVideoContentObject;

    iput-object v0, p0, Lcom/alibaba/android/user/connection/idl/objects/CircleContentObject;->videoContent:Lcom/alibaba/android/user/connection/idl/objects/CircleVideoContentObject;

    .line 121
    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/user/connection/idl/objects/CircleLinkContentObject;

    iput-object v0, p0, Lcom/alibaba/android/user/connection/idl/objects/CircleContentObject;->linkContent:Lcom/alibaba/android/user/connection/idl/objects/CircleLinkContentObject;

    .line 122
    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/user/connection/idl/objects/CircleGeoContentObject;

    iput-object v0, p0, Lcom/alibaba/android/user/connection/idl/objects/CircleContentObject;->geoContent:Lcom/alibaba/android/user/connection/idl/objects/CircleGeoContentObject;

    .line 123
    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/user/connection/idl/objects/CircleAttachmentObject;

    iput-object v0, p0, Lcom/alibaba/android/user/connection/idl/objects/CircleContentObject;->attachment:Lcom/alibaba/android/user/connection/idl/objects/CircleAttachmentObject;

    .line 124
    return-void
.end method

.method public static fromIdl(Lfef;)Lcom/alibaba/android/user/connection/idl/objects/CircleContentObject;
    .locals 3
    .param p0, "model"    # Lfef;

    .prologue
    .line 63
    if-nez p0, :cond_0

    .line 64
    const/4 v0, 0x0

    .line 74
    :goto_0
    return-object v0

    .line 66
    :cond_0
    new-instance v0, Lcom/alibaba/android/user/connection/idl/objects/CircleContentObject;

    invoke-direct {v0}, Lcom/alibaba/android/user/connection/idl/objects/CircleContentObject;-><init>()V

    .line 67
    .local v0, "result":Lcom/alibaba/android/user/connection/idl/objects/CircleContentObject;
    iget-object v1, p0, Lfef;->a:Ljava/lang/Integer;

    .line 1033
    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcoc;->a(Ljava/lang/Integer;I)I

    move-result v1

    .line 67
    iput v1, v0, Lcom/alibaba/android/user/connection/idl/objects/CircleContentObject;->contentType:I

    .line 68
    iget-object v1, p0, Lfef;->b:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/user/connection/idl/objects/CircleContentObject;->text:Ljava/lang/String;

    .line 69
    iget-object v1, p0, Lfef;->c:Lfek;

    invoke-static {v1}, Lcom/alibaba/android/user/connection/idl/objects/CirclePhotoContentObject;->fromIdl(Lfek;)Lcom/alibaba/android/user/connection/idl/objects/CirclePhotoContentObject;

    move-result-object v1

    iput-object v1, v0, Lcom/alibaba/android/user/connection/idl/objects/CircleContentObject;->photoContent:Lcom/alibaba/android/user/connection/idl/objects/CirclePhotoContentObject;

    .line 70
    iget-object v1, p0, Lfef;->d:Lfes;

    invoke-static {v1}, Lcom/alibaba/android/user/connection/idl/objects/CircleVideoContentObject;->fromIdl(Lfes;)Lcom/alibaba/android/user/connection/idl/objects/CircleVideoContentObject;

    move-result-object v1

    iput-object v1, v0, Lcom/alibaba/android/user/connection/idl/objects/CircleContentObject;->videoContent:Lcom/alibaba/android/user/connection/idl/objects/CircleVideoContentObject;

    .line 71
    iget-object v1, p0, Lfef;->e:Lfeh;

    invoke-static {v1}, Lcom/alibaba/android/user/connection/idl/objects/CircleLinkContentObject;->fromIdl(Lfeh;)Lcom/alibaba/android/user/connection/idl/objects/CircleLinkContentObject;

    move-result-object v1

    iput-object v1, v0, Lcom/alibaba/android/user/connection/idl/objects/CircleContentObject;->linkContent:Lcom/alibaba/android/user/connection/idl/objects/CircleLinkContentObject;

    .line 72
    iget-object v1, p0, Lfef;->f:Lfeg;

    invoke-static {v1}, Lcom/alibaba/android/user/connection/idl/objects/CircleGeoContentObject;->fromIdl(Lfeg;)Lcom/alibaba/android/user/connection/idl/objects/CircleGeoContentObject;

    move-result-object v1

    iput-object v1, v0, Lcom/alibaba/android/user/connection/idl/objects/CircleContentObject;->geoContent:Lcom/alibaba/android/user/connection/idl/objects/CircleGeoContentObject;

    .line 73
    iget-object v1, p0, Lfef;->g:Lfec;

    invoke-static {v1}, Lcom/alibaba/android/user/connection/idl/objects/CircleAttachmentObject;->fromIdl(Lfec;)Lcom/alibaba/android/user/connection/idl/objects/CircleAttachmentObject;

    move-result-object v1

    iput-object v1, v0, Lcom/alibaba/android/user/connection/idl/objects/CircleContentObject;->attachment:Lcom/alibaba/android/user/connection/idl/objects/CircleAttachmentObject;

    goto :goto_0
.end method

.method static toIdl(Lcom/alibaba/android/user/connection/idl/objects/CircleContentObject;)Lfef;
    .locals 2
    .param p0, "object"    # Lcom/alibaba/android/user/connection/idl/objects/CircleContentObject;

    .prologue
    .line 78
    if-nez p0, :cond_0

    .line 79
    const/4 v0, 0x0

    .line 89
    :goto_0
    return-object v0

    .line 81
    :cond_0
    new-instance v0, Lfef;

    invoke-direct {v0}, Lfef;-><init>()V

    .line 82
    .local v0, "result":Lfef;
    iget v1, p0, Lcom/alibaba/android/user/connection/idl/objects/CircleContentObject;->contentType:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lfef;->a:Ljava/lang/Integer;

    .line 83
    iget-object v1, p0, Lcom/alibaba/android/user/connection/idl/objects/CircleContentObject;->text:Ljava/lang/String;

    iput-object v1, v0, Lfef;->b:Ljava/lang/String;

    .line 84
    iget-object v1, p0, Lcom/alibaba/android/user/connection/idl/objects/CircleContentObject;->photoContent:Lcom/alibaba/android/user/connection/idl/objects/CirclePhotoContentObject;

    invoke-static {v1}, Lcom/alibaba/android/user/connection/idl/objects/CirclePhotoContentObject;->toIdl(Lcom/alibaba/android/user/connection/idl/objects/CirclePhotoContentObject;)Lfek;

    move-result-object v1

    iput-object v1, v0, Lfef;->c:Lfek;

    .line 85
    iget-object v1, p0, Lcom/alibaba/android/user/connection/idl/objects/CircleContentObject;->videoContent:Lcom/alibaba/android/user/connection/idl/objects/CircleVideoContentObject;

    invoke-static {v1}, Lcom/alibaba/android/user/connection/idl/objects/CircleVideoContentObject;->toIdl(Lcom/alibaba/android/user/connection/idl/objects/CircleVideoContentObject;)Lfes;

    move-result-object v1

    iput-object v1, v0, Lfef;->d:Lfes;

    .line 86
    iget-object v1, p0, Lcom/alibaba/android/user/connection/idl/objects/CircleContentObject;->linkContent:Lcom/alibaba/android/user/connection/idl/objects/CircleLinkContentObject;

    invoke-static {v1}, Lcom/alibaba/android/user/connection/idl/objects/CircleLinkContentObject;->toIdl(Lcom/alibaba/android/user/connection/idl/objects/CircleLinkContentObject;)Lfeh;

    move-result-object v1

    iput-object v1, v0, Lfef;->e:Lfeh;

    .line 87
    iget-object v1, p0, Lcom/alibaba/android/user/connection/idl/objects/CircleContentObject;->geoContent:Lcom/alibaba/android/user/connection/idl/objects/CircleGeoContentObject;

    invoke-static {v1}, Lcom/alibaba/android/user/connection/idl/objects/CircleGeoContentObject;->toIdl(Lcom/alibaba/android/user/connection/idl/objects/CircleGeoContentObject;)Lfeg;

    move-result-object v1

    iput-object v1, v0, Lfef;->f:Lfeg;

    .line 88
    iget-object v1, p0, Lcom/alibaba/android/user/connection/idl/objects/CircleContentObject;->attachment:Lcom/alibaba/android/user/connection/idl/objects/CircleAttachmentObject;

    invoke-static {v1}, Lcom/alibaba/android/user/connection/idl/objects/CircleAttachmentObject;->toIdl(Lcom/alibaba/android/user/connection/idl/objects/CircleAttachmentObject;)Lfec;

    move-result-object v1

    iput-object v1, v0, Lfef;->g:Lfec;

    goto :goto_0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 99
    const/4 v0, 0x0

    return v0
.end method

.method public isFromTakePhoto()Z
    .locals 1

    .prologue
    .line 59
    iget-boolean v0, p0, Lcom/alibaba/android/user/connection/idl/objects/CircleContentObject;->mIsTakePhoto:Z

    return v0
.end method

.method public makeTakePhoto()V
    .locals 1

    .prologue
    .line 55
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alibaba/android/user/connection/idl/objects/CircleContentObject;->mIsTakePhoto:Z

    .line 56
    return-void
.end method

.method public toIdl()Lfef;
    .locals 1

    .prologue
    .line 93
    invoke-static {p0}, Lcom/alibaba/android/user/connection/idl/objects/CircleContentObject;->toIdl(Lcom/alibaba/android/user/connection/idl/objects/CircleContentObject;)Lfef;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 104
    iget v0, p0, Lcom/alibaba/android/user/connection/idl/objects/CircleContentObject;->contentType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 105
    iget-object v0, p0, Lcom/alibaba/android/user/connection/idl/objects/CircleContentObject;->text:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 106
    iget-object v0, p0, Lcom/alibaba/android/user/connection/idl/objects/CircleContentObject;->photoContent:Lcom/alibaba/android/user/connection/idl/objects/CirclePhotoContentObject;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    .line 107
    iget-object v0, p0, Lcom/alibaba/android/user/connection/idl/objects/CircleContentObject;->videoContent:Lcom/alibaba/android/user/connection/idl/objects/CircleVideoContentObject;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    .line 108
    iget-object v0, p0, Lcom/alibaba/android/user/connection/idl/objects/CircleContentObject;->linkContent:Lcom/alibaba/android/user/connection/idl/objects/CircleLinkContentObject;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    .line 109
    iget-object v0, p0, Lcom/alibaba/android/user/connection/idl/objects/CircleContentObject;->geoContent:Lcom/alibaba/android/user/connection/idl/objects/CircleGeoContentObject;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    .line 110
    iget-object v0, p0, Lcom/alibaba/android/user/connection/idl/objects/CircleContentObject;->attachment:Lcom/alibaba/android/user/connection/idl/objects/CircleAttachmentObject;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    .line 111
    return-void
.end method
