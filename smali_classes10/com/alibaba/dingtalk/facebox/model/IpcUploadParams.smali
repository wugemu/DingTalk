.class public Lcom/alibaba/dingtalk/facebox/model/IpcUploadParams;
.super Ljava/lang/Object;
.source "IpcUploadParams.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/alibaba/dingtalk/facebox/model/IpcUploadParams;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public authType:I

.field public conversationId:Ljava/lang/String;

.field public expiredTime:I

.field public filePath:Ljava/lang/String;

.field public isAuth:Z

.field public isCSpace:Z

.field public isLarge:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 13
    new-instance v0, Lcom/alibaba/dingtalk/facebox/model/IpcUploadParams$1;

    invoke-direct {v0}, Lcom/alibaba/dingtalk/facebox/model/IpcUploadParams$1;-><init>()V

    sput-object v0, Lcom/alibaba/dingtalk/facebox/model/IpcUploadParams;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-boolean v0, p0, Lcom/alibaba/dingtalk/facebox/model/IpcUploadParams;->isLarge:Z

    .line 27
    iput-boolean v0, p0, Lcom/alibaba/dingtalk/facebox/model/IpcUploadParams;->isCSpace:Z

    .line 28
    iput-boolean v0, p0, Lcom/alibaba/dingtalk/facebox/model/IpcUploadParams;->isAuth:Z

    .line 33
    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 3
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-boolean v2, p0, Lcom/alibaba/dingtalk/facebox/model/IpcUploadParams;->isLarge:Z

    .line 27
    iput-boolean v2, p0, Lcom/alibaba/dingtalk/facebox/model/IpcUploadParams;->isCSpace:Z

    .line 28
    iput-boolean v2, p0, Lcom/alibaba/dingtalk/facebox/model/IpcUploadParams;->isAuth:Z

    .line 36
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/dingtalk/facebox/model/IpcUploadParams;->filePath:Ljava/lang/String;

    .line 37
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/dingtalk/facebox/model/IpcUploadParams;->conversationId:Ljava/lang/String;

    .line 38
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/alibaba/dingtalk/facebox/model/IpcUploadParams;->isLarge:Z

    .line 39
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lcom/alibaba/dingtalk/facebox/model/IpcUploadParams;->isCSpace:Z

    .line 40
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_2

    :goto_2
    iput-boolean v1, p0, Lcom/alibaba/dingtalk/facebox/model/IpcUploadParams;->isAuth:Z

    .line 41
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/alibaba/dingtalk/facebox/model/IpcUploadParams;->authType:I

    .line 42
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/alibaba/dingtalk/facebox/model/IpcUploadParams;->expiredTime:I

    .line 43
    return-void

    :cond_0
    move v0, v2

    .line 38
    goto :goto_0

    :cond_1
    move v0, v2

    .line 39
    goto :goto_1

    :cond_2
    move v1, v2

    .line 40
    goto :goto_2
.end method


# virtual methods
.method public authType()Lcom/alibaba/wukong/upload/UploadParams$AuthType;
    .locals 1

    .prologue
    .line 62
    iget v0, p0, Lcom/alibaba/dingtalk/facebox/model/IpcUploadParams;->authType:I

    packed-switch v0, :pswitch_data_0

    .line 74
    sget-object v0, Lcom/alibaba/wukong/upload/UploadParams$AuthType;->NO_AUTH:Lcom/alibaba/wukong/upload/UploadParams$AuthType;

    :goto_0
    return-object v0

    .line 64
    :pswitch_0
    sget-object v0, Lcom/alibaba/wukong/upload/UploadParams$AuthType;->NO_AUTH:Lcom/alibaba/wukong/upload/UploadParams$AuthType;

    goto :goto_0

    .line 66
    :pswitch_1
    sget-object v0, Lcom/alibaba/wukong/upload/UploadParams$AuthType;->STRICT_AUTH:Lcom/alibaba/wukong/upload/UploadParams$AuthType;

    goto :goto_0

    .line 68
    :pswitch_2
    sget-object v0, Lcom/alibaba/wukong/upload/UploadParams$AuthType;->ONLY_LOGIN_AUTH:Lcom/alibaba/wukong/upload/UploadParams$AuthType;

    goto :goto_0

    .line 70
    :pswitch_3
    sget-object v0, Lcom/alibaba/wukong/upload/UploadParams$AuthType;->ONLY_INTERNAL_AUTH:Lcom/alibaba/wukong/upload/UploadParams$AuthType;

    goto :goto_0

    .line 72
    :pswitch_4
    sget-object v0, Lcom/alibaba/wukong/upload/UploadParams$AuthType;->TEMP_AUTH:Lcom/alibaba/wukong/upload/UploadParams$AuthType;

    goto :goto_0

    .line 62
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 47
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 52
    iget-object v0, p0, Lcom/alibaba/dingtalk/facebox/model/IpcUploadParams;->filePath:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 53
    iget-object v0, p0, Lcom/alibaba/dingtalk/facebox/model/IpcUploadParams;->conversationId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 54
    iget-boolean v0, p0, Lcom/alibaba/dingtalk/facebox/model/IpcUploadParams;->isLarge:Z

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 55
    iget-boolean v0, p0, Lcom/alibaba/dingtalk/facebox/model/IpcUploadParams;->isCSpace:Z

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 56
    iget-boolean v0, p0, Lcom/alibaba/dingtalk/facebox/model/IpcUploadParams;->isAuth:Z

    if-eqz v0, :cond_2

    :goto_2
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeByte(B)V

    .line 57
    iget v0, p0, Lcom/alibaba/dingtalk/facebox/model/IpcUploadParams;->authType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 58
    iget v0, p0, Lcom/alibaba/dingtalk/facebox/model/IpcUploadParams;->expiredTime:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 59
    return-void

    :cond_0
    move v0, v2

    .line 54
    goto :goto_0

    :cond_1
    move v0, v2

    .line 55
    goto :goto_1

    :cond_2
    move v1, v2

    .line 56
    goto :goto_2
.end method
