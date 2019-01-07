.class public final Lcom/alibaba/android/dingtalk/circle/idl/models/SNContentModel;
.super Ljava/lang/Object;
.source "SNContentModel.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Liyn;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/alibaba/android/dingtalk/circle/idl/models/SNContentModel;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public attachment:Lcom/alibaba/android/dingtalk/circle/idl/models/SNAttachmentModel;
    .annotation runtime Lcom/laiwang/idl/FieldId;
        value = 0x7
    .end annotation
.end field

.field public contentType:Ljava/lang/Integer;
    .annotation runtime Lcom/laiwang/idl/FieldId;
        value = 0x1
    .end annotation
.end field

.field public geoContent:Lcom/alibaba/android/dingtalk/circle/idl/models/SNGeoContentModel;
    .annotation runtime Lcom/laiwang/idl/FieldId;
        value = 0x6
    .end annotation
.end field

.field public linkContent:Lcom/alibaba/android/dingtalk/circle/idl/models/SNLinkContentModel;
    .annotation runtime Lcom/laiwang/idl/FieldId;
        value = 0x5
    .end annotation
.end field

.field public photoContent:Lcom/alibaba/android/dingtalk/circle/idl/models/SNPhotoContentModel;
    .annotation runtime Lcom/laiwang/idl/FieldId;
        value = 0x3
    .end annotation
.end field

.field public text:Ljava/lang/String;
    .annotation runtime Lcom/laiwang/idl/FieldId;
        value = 0x2
    .end annotation
.end field

.field public videoContent:Lcom/alibaba/android/dingtalk/circle/idl/models/SNVideoContentModel;
    .annotation runtime Lcom/laiwang/idl/FieldId;
        value = 0x4
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 90
    new-instance v0, Lcom/alibaba/android/dingtalk/circle/idl/models/SNContentModel$1;

    invoke-direct {v0}, Lcom/alibaba/android/dingtalk/circle/idl/models/SNContentModel$1;-><init>()V

    sput-object v0, Lcom/alibaba/android/dingtalk/circle/idl/models/SNContentModel;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    const-class v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/circle/idl/models/SNContentModel;->contentType:Ljava/lang/Integer;

    .line 82
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/circle/idl/models/SNContentModel;->text:Ljava/lang/String;

    .line 83
    const-class v0, Lcom/alibaba/android/dingtalk/circle/idl/models/SNPhotoContentModel;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalk/circle/idl/models/SNPhotoContentModel;

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/circle/idl/models/SNContentModel;->photoContent:Lcom/alibaba/android/dingtalk/circle/idl/models/SNPhotoContentModel;

    .line 84
    const-class v0, Lcom/alibaba/android/dingtalk/circle/idl/models/SNVideoContentModel;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalk/circle/idl/models/SNVideoContentModel;

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/circle/idl/models/SNContentModel;->videoContent:Lcom/alibaba/android/dingtalk/circle/idl/models/SNVideoContentModel;

    .line 85
    const-class v0, Lcom/alibaba/android/dingtalk/circle/idl/models/SNLinkContentModel;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalk/circle/idl/models/SNLinkContentModel;

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/circle/idl/models/SNContentModel;->linkContent:Lcom/alibaba/android/dingtalk/circle/idl/models/SNLinkContentModel;

    .line 86
    const-class v0, Lcom/alibaba/android/dingtalk/circle/idl/models/SNGeoContentModel;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalk/circle/idl/models/SNGeoContentModel;

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/circle/idl/models/SNContentModel;->geoContent:Lcom/alibaba/android/dingtalk/circle/idl/models/SNGeoContentModel;

    .line 87
    const-class v0, Lcom/alibaba/android/dingtalk/circle/idl/models/SNAttachmentModel;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalk/circle/idl/models/SNAttachmentModel;

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/circle/idl/models/SNContentModel;->attachment:Lcom/alibaba/android/dingtalk/circle/idl/models/SNAttachmentModel;

    .line 88
    return-void
.end method


# virtual methods
.method public final decode(ILjava/lang/Object;)V
    .locals 0
    .param p1, "idx"    # I
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 33
    packed-switch p1, :pswitch_data_0

    .line 58
    .end local p2    # "value":Ljava/lang/Object;
    :goto_0
    return-void

    .line 35
    .restart local p2    # "value":Ljava/lang/Object;
    :pswitch_0
    check-cast p2, Ljava/lang/Integer;

    .end local p2    # "value":Ljava/lang/Object;
    iput-object p2, p0, Lcom/alibaba/android/dingtalk/circle/idl/models/SNContentModel;->contentType:Ljava/lang/Integer;

    goto :goto_0

    .line 38
    .restart local p2    # "value":Ljava/lang/Object;
    :pswitch_1
    check-cast p2, Ljava/lang/String;

    .end local p2    # "value":Ljava/lang/Object;
    iput-object p2, p0, Lcom/alibaba/android/dingtalk/circle/idl/models/SNContentModel;->text:Ljava/lang/String;

    goto :goto_0

    .line 41
    .restart local p2    # "value":Ljava/lang/Object;
    :pswitch_2
    check-cast p2, Lcom/alibaba/android/dingtalk/circle/idl/models/SNPhotoContentModel;

    .end local p2    # "value":Ljava/lang/Object;
    iput-object p2, p0, Lcom/alibaba/android/dingtalk/circle/idl/models/SNContentModel;->photoContent:Lcom/alibaba/android/dingtalk/circle/idl/models/SNPhotoContentModel;

    goto :goto_0

    .line 44
    .restart local p2    # "value":Ljava/lang/Object;
    :pswitch_3
    check-cast p2, Lcom/alibaba/android/dingtalk/circle/idl/models/SNVideoContentModel;

    .end local p2    # "value":Ljava/lang/Object;
    iput-object p2, p0, Lcom/alibaba/android/dingtalk/circle/idl/models/SNContentModel;->videoContent:Lcom/alibaba/android/dingtalk/circle/idl/models/SNVideoContentModel;

    goto :goto_0

    .line 47
    .restart local p2    # "value":Ljava/lang/Object;
    :pswitch_4
    check-cast p2, Lcom/alibaba/android/dingtalk/circle/idl/models/SNLinkContentModel;

    .end local p2    # "value":Ljava/lang/Object;
    iput-object p2, p0, Lcom/alibaba/android/dingtalk/circle/idl/models/SNContentModel;->linkContent:Lcom/alibaba/android/dingtalk/circle/idl/models/SNLinkContentModel;

    goto :goto_0

    .line 50
    .restart local p2    # "value":Ljava/lang/Object;
    :pswitch_5
    check-cast p2, Lcom/alibaba/android/dingtalk/circle/idl/models/SNGeoContentModel;

    .end local p2    # "value":Ljava/lang/Object;
    iput-object p2, p0, Lcom/alibaba/android/dingtalk/circle/idl/models/SNContentModel;->geoContent:Lcom/alibaba/android/dingtalk/circle/idl/models/SNGeoContentModel;

    goto :goto_0

    .line 53
    .restart local p2    # "value":Ljava/lang/Object;
    :pswitch_6
    check-cast p2, Lcom/alibaba/android/dingtalk/circle/idl/models/SNAttachmentModel;

    .end local p2    # "value":Ljava/lang/Object;
    iput-object p2, p0, Lcom/alibaba/android/dingtalk/circle/idl/models/SNContentModel;->attachment:Lcom/alibaba/android/dingtalk/circle/idl/models/SNAttachmentModel;

    goto :goto_0

    .line 33
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public final describeContents()I
    .locals 1

    .prologue
    .line 63
    const/4 v0, 0x0

    return v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 68
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/circle/idl/models/SNContentModel;->contentType:Ljava/lang/Integer;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 69
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/circle/idl/models/SNContentModel;->text:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 70
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/circle/idl/models/SNContentModel;->photoContent:Lcom/alibaba/android/dingtalk/circle/idl/models/SNPhotoContentModel;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 71
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/circle/idl/models/SNContentModel;->videoContent:Lcom/alibaba/android/dingtalk/circle/idl/models/SNVideoContentModel;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 72
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/circle/idl/models/SNContentModel;->linkContent:Lcom/alibaba/android/dingtalk/circle/idl/models/SNLinkContentModel;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 73
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/circle/idl/models/SNContentModel;->geoContent:Lcom/alibaba/android/dingtalk/circle/idl/models/SNGeoContentModel;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 74
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/circle/idl/models/SNContentModel;->attachment:Lcom/alibaba/android/dingtalk/circle/idl/models/SNAttachmentModel;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 75
    return-void
.end method
