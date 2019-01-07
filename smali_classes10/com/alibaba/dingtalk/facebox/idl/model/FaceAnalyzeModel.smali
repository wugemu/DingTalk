.class public Lcom/alibaba/dingtalk/facebox/idl/model/FaceAnalyzeModel;
.super Ljava/lang/Object;
.source "FaceAnalyzeModel.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Liyn;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/alibaba/dingtalk/facebox/idl/model/FaceAnalyzeModel;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public combineMediaId:Ljava/lang/String;
    .annotation runtime Lcom/laiwang/idl/FieldId;
        value = 0x6
    .end annotation
.end field

.field public corpId:Ljava/lang/String;
    .annotation runtime Lcom/laiwang/idl/FieldId;
        value = 0x2
    .end annotation
.end field

.field public deviceUid:Ljava/lang/String;
    .annotation runtime Lcom/laiwang/idl/FieldId;
        value = 0x4
    .end annotation
.end field

.field public faceAttributes:Ljava/lang/String;
    .annotation runtime Lcom/laiwang/idl/FieldId;
        value = 0x9
    .end annotation
.end field

.field public faceRect:Lcom/alibaba/dingtalk/facebox/idl/model/FaceRectModel;
    .annotation runtime Lcom/laiwang/idl/FieldId;
        value = 0x7
    .end annotation
.end field

.field public faceReqNum:I
    .annotation runtime Lcom/laiwang/idl/FieldId;
        value = 0xa
    .end annotation
.end field

.field public groupUid:Ljava/lang/String;
    .annotation runtime Lcom/laiwang/idl/FieldId;
        value = 0x3
    .end annotation
.end field

.field public liveRect:Lcom/alibaba/dingtalk/facebox/idl/model/FaceRectModel;
    .annotation runtime Lcom/laiwang/idl/FieldId;
        value = 0x8
    .end annotation
.end field

.field public source:Ljava/lang/String;
    .annotation runtime Lcom/laiwang/idl/FieldId;
        value = 0x1
    .end annotation
.end field

.field public userId:Ljava/lang/String;
    .annotation runtime Lcom/laiwang/idl/FieldId;
        value = 0x5
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 124
    new-instance v0, Lcom/alibaba/dingtalk/facebox/idl/model/FaceAnalyzeModel$1;

    invoke-direct {v0}, Lcom/alibaba/dingtalk/facebox/idl/model/FaceAnalyzeModel$1;-><init>()V

    sput-object v0, Lcom/alibaba/dingtalk/facebox/idl/model/FaceAnalyzeModel;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 109
    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 112
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/dingtalk/facebox/idl/model/FaceAnalyzeModel;->source:Ljava/lang/String;

    .line 113
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/dingtalk/facebox/idl/model/FaceAnalyzeModel;->corpId:Ljava/lang/String;

    .line 114
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/dingtalk/facebox/idl/model/FaceAnalyzeModel;->groupUid:Ljava/lang/String;

    .line 115
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/dingtalk/facebox/idl/model/FaceAnalyzeModel;->deviceUid:Ljava/lang/String;

    .line 116
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/dingtalk/facebox/idl/model/FaceAnalyzeModel;->userId:Ljava/lang/String;

    .line 117
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/dingtalk/facebox/idl/model/FaceAnalyzeModel;->combineMediaId:Ljava/lang/String;

    .line 118
    const-class v0, Lcom/alibaba/dingtalk/facebox/idl/model/FaceRectModel;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/alibaba/dingtalk/facebox/idl/model/FaceRectModel;

    iput-object v0, p0, Lcom/alibaba/dingtalk/facebox/idl/model/FaceAnalyzeModel;->faceRect:Lcom/alibaba/dingtalk/facebox/idl/model/FaceRectModel;

    .line 119
    const-class v0, Lcom/alibaba/dingtalk/facebox/idl/model/FaceRectModel;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/alibaba/dingtalk/facebox/idl/model/FaceRectModel;

    iput-object v0, p0, Lcom/alibaba/dingtalk/facebox/idl/model/FaceAnalyzeModel;->liveRect:Lcom/alibaba/dingtalk/facebox/idl/model/FaceRectModel;

    .line 120
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/dingtalk/facebox/idl/model/FaceAnalyzeModel;->faceAttributes:Ljava/lang/String;

    .line 121
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/alibaba/dingtalk/facebox/idl/model/FaceAnalyzeModel;->faceReqNum:I

    .line 122
    return-void
.end method


# virtual methods
.method public decode(ILjava/lang/Object;)V
    .locals 1
    .param p1, "idx"    # I
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 56
    packed-switch p1, :pswitch_data_0

    .line 87
    .end local p2    # "value":Ljava/lang/Object;
    :goto_0
    return-void

    .restart local p2    # "value":Ljava/lang/Object;
    :pswitch_0
    move-object v0, p2

    .line 58
    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/alibaba/dingtalk/facebox/idl/model/FaceAnalyzeModel;->source:Ljava/lang/String;

    .line 60
    :pswitch_1
    check-cast p2, Ljava/lang/String;

    .end local p2    # "value":Ljava/lang/Object;
    iput-object p2, p0, Lcom/alibaba/dingtalk/facebox/idl/model/FaceAnalyzeModel;->corpId:Ljava/lang/String;

    goto :goto_0

    .line 63
    .restart local p2    # "value":Ljava/lang/Object;
    :pswitch_2
    check-cast p2, Ljava/lang/String;

    .end local p2    # "value":Ljava/lang/Object;
    iput-object p2, p0, Lcom/alibaba/dingtalk/facebox/idl/model/FaceAnalyzeModel;->groupUid:Ljava/lang/String;

    goto :goto_0

    .line 66
    .restart local p2    # "value":Ljava/lang/Object;
    :pswitch_3
    check-cast p2, Ljava/lang/String;

    .end local p2    # "value":Ljava/lang/Object;
    iput-object p2, p0, Lcom/alibaba/dingtalk/facebox/idl/model/FaceAnalyzeModel;->deviceUid:Ljava/lang/String;

    goto :goto_0

    .line 69
    .restart local p2    # "value":Ljava/lang/Object;
    :pswitch_4
    check-cast p2, Ljava/lang/String;

    .end local p2    # "value":Ljava/lang/Object;
    iput-object p2, p0, Lcom/alibaba/dingtalk/facebox/idl/model/FaceAnalyzeModel;->userId:Ljava/lang/String;

    goto :goto_0

    .line 72
    .restart local p2    # "value":Ljava/lang/Object;
    :pswitch_5
    check-cast p2, Ljava/lang/String;

    .end local p2    # "value":Ljava/lang/Object;
    iput-object p2, p0, Lcom/alibaba/dingtalk/facebox/idl/model/FaceAnalyzeModel;->combineMediaId:Ljava/lang/String;

    goto :goto_0

    .line 75
    .restart local p2    # "value":Ljava/lang/Object;
    :pswitch_6
    check-cast p2, Lcom/alibaba/dingtalk/facebox/idl/model/FaceRectModel;

    .end local p2    # "value":Ljava/lang/Object;
    iput-object p2, p0, Lcom/alibaba/dingtalk/facebox/idl/model/FaceAnalyzeModel;->faceRect:Lcom/alibaba/dingtalk/facebox/idl/model/FaceRectModel;

    goto :goto_0

    .line 78
    .restart local p2    # "value":Ljava/lang/Object;
    :pswitch_7
    check-cast p2, Lcom/alibaba/dingtalk/facebox/idl/model/FaceRectModel;

    .end local p2    # "value":Ljava/lang/Object;
    iput-object p2, p0, Lcom/alibaba/dingtalk/facebox/idl/model/FaceAnalyzeModel;->liveRect:Lcom/alibaba/dingtalk/facebox/idl/model/FaceRectModel;

    goto :goto_0

    .line 81
    .restart local p2    # "value":Ljava/lang/Object;
    :pswitch_8
    check-cast p2, Ljava/lang/String;

    .end local p2    # "value":Ljava/lang/Object;
    iput-object p2, p0, Lcom/alibaba/dingtalk/facebox/idl/model/FaceAnalyzeModel;->faceAttributes:Ljava/lang/String;

    goto :goto_0

    .line 84
    .restart local p2    # "value":Ljava/lang/Object;
    :pswitch_9
    check-cast p2, Ljava/lang/Integer;

    .end local p2    # "value":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/alibaba/dingtalk/facebox/idl/model/FaceAnalyzeModel;->faceReqNum:I

    goto :goto_0

    .line 56
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 91
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 96
    iget-object v0, p0, Lcom/alibaba/dingtalk/facebox/idl/model/FaceAnalyzeModel;->source:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 97
    iget-object v0, p0, Lcom/alibaba/dingtalk/facebox/idl/model/FaceAnalyzeModel;->corpId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 98
    iget-object v0, p0, Lcom/alibaba/dingtalk/facebox/idl/model/FaceAnalyzeModel;->groupUid:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 99
    iget-object v0, p0, Lcom/alibaba/dingtalk/facebox/idl/model/FaceAnalyzeModel;->deviceUid:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 100
    iget-object v0, p0, Lcom/alibaba/dingtalk/facebox/idl/model/FaceAnalyzeModel;->userId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 101
    iget-object v0, p0, Lcom/alibaba/dingtalk/facebox/idl/model/FaceAnalyzeModel;->combineMediaId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 102
    iget-object v0, p0, Lcom/alibaba/dingtalk/facebox/idl/model/FaceAnalyzeModel;->faceRect:Lcom/alibaba/dingtalk/facebox/idl/model/FaceRectModel;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 103
    iget-object v0, p0, Lcom/alibaba/dingtalk/facebox/idl/model/FaceAnalyzeModel;->liveRect:Lcom/alibaba/dingtalk/facebox/idl/model/FaceRectModel;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 104
    iget-object v0, p0, Lcom/alibaba/dingtalk/facebox/idl/model/FaceAnalyzeModel;->faceAttributes:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 105
    iget v0, p0, Lcom/alibaba/dingtalk/facebox/idl/model/FaceAnalyzeModel;->faceReqNum:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 106
    return-void
.end method
