.class public Lcom/alibaba/dingtalk/facebox/model/DetectObject;
.super Ljava/lang/Object;
.source "DetectObject.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/dingtalk/facebox/model/DetectObject$Stickers;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/alibaba/dingtalk/facebox/model/DetectObject;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public callbackId:Ljava/lang/String;

.field public cameraDevice:I

.field public compression:Z

.field public corpId:Ljava/lang/String;

.field public decorateUri:Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public expiredTime:I

.field public from:Ljava/lang/String;

.field public groupId:Ljava/lang/String;

.field public mode:I

.field public needBeauty:Z

.field public quality:I

.field public resize:I

.field public retry:Z

.field public retryQuality:I

.field public retryResize:I

.field public smileScore:Z

.field public stickers:Lcom/alibaba/dingtalk/facebox/model/DetectObject$Stickers;

.field public uploadTime:I

.field public userId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 101
    new-instance v0, Lcom/alibaba/dingtalk/facebox/model/DetectObject$1;

    invoke-direct {v0}, Lcom/alibaba/dingtalk/facebox/model/DetectObject$1;-><init>()V

    sput-object v0, Lcom/alibaba/dingtalk/facebox/model/DetectObject;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 3
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-boolean v1, p0, Lcom/alibaba/dingtalk/facebox/model/DetectObject;->smileScore:Z

    .line 81
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/alibaba/dingtalk/facebox/model/DetectObject;->compression:Z

    .line 82
    const-class v0, Lcom/alibaba/dingtalk/facebox/model/DetectObject$Stickers;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/alibaba/dingtalk/facebox/model/DetectObject$Stickers;

    iput-object v0, p0, Lcom/alibaba/dingtalk/facebox/model/DetectObject;->stickers:Lcom/alibaba/dingtalk/facebox/model/DetectObject$Stickers;

    .line 83
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/alibaba/dingtalk/facebox/model/DetectObject;->cameraDevice:I

    .line 84
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lcom/alibaba/dingtalk/facebox/model/DetectObject;->retry:Z

    .line 85
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/alibaba/dingtalk/facebox/model/DetectObject;->retryResize:I

    .line 86
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/alibaba/dingtalk/facebox/model/DetectObject;->retryQuality:I

    .line 87
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/alibaba/dingtalk/facebox/model/DetectObject;->uploadTime:I

    .line 88
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/alibaba/dingtalk/facebox/model/DetectObject;->resize:I

    .line 89
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/alibaba/dingtalk/facebox/model/DetectObject;->quality:I

    .line 90
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/dingtalk/facebox/model/DetectObject;->groupId:Ljava/lang/String;

    .line 91
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/dingtalk/facebox/model/DetectObject;->corpId:Ljava/lang/String;

    .line 92
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/dingtalk/facebox/model/DetectObject;->userId:Ljava/lang/String;

    .line 93
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/dingtalk/facebox/model/DetectObject;->from:Ljava/lang/String;

    .line 94
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    :goto_2
    iput-boolean v0, p0, Lcom/alibaba/dingtalk/facebox/model/DetectObject;->needBeauty:Z

    .line 95
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/alibaba/dingtalk/facebox/model/DetectObject;->expiredTime:I

    .line 96
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/alibaba/dingtalk/facebox/model/DetectObject;->mode:I

    .line 97
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_3

    :goto_3
    iput-boolean v1, p0, Lcom/alibaba/dingtalk/facebox/model/DetectObject;->smileScore:Z

    .line 98
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/dingtalk/facebox/model/DetectObject;->callbackId:Ljava/lang/String;

    .line 99
    return-void

    :cond_0
    move v0, v2

    .line 81
    goto :goto_0

    :cond_1
    move v0, v2

    .line 84
    goto :goto_1

    :cond_2
    move v0, v2

    .line 94
    goto :goto_2

    :cond_3
    move v1, v2

    .line 97
    goto :goto_3
.end method

.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 4
    .param p1, "jsonObject"    # Lorg/json/JSONObject;

    .prologue
    const/4 v2, 0x1

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-boolean v2, p0, Lcom/alibaba/dingtalk/facebox/model/DetectObject;->smileScore:Z

    .line 52
    if-nez p1, :cond_0

    .line 78
    :goto_0
    return-void

    .line 56
    :cond_0
    :try_start_0
    const-string/jumbo v2, "compression"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/alibaba/dingtalk/facebox/model/DetectObject;->compression:Z

    .line 57
    const-string/jumbo v2, "stickers"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 58
    .local v1, "stickersStr":Ljava/lang/String;
    new-instance v2, Lcom/alibaba/dingtalk/facebox/model/DetectObject$Stickers;

    invoke-direct {v2, v1}, Lcom/alibaba/dingtalk/facebox/model/DetectObject$Stickers;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lcom/alibaba/dingtalk/facebox/model/DetectObject;->stickers:Lcom/alibaba/dingtalk/facebox/model/DetectObject$Stickers;

    .line 59
    const-string/jumbo v2, "cameraDevice"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/alibaba/dingtalk/facebox/model/DetectObject;->cameraDevice:I

    .line 60
    const-string/jumbo v2, "retry"

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/alibaba/dingtalk/facebox/model/DetectObject;->retry:Z

    .line 61
    const-string/jumbo v2, "retryResize"

    const/16 v3, 0x64

    invoke-virtual {p1, v2, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/alibaba/dingtalk/facebox/model/DetectObject;->retryResize:I

    .line 62
    const-string/jumbo v2, "retryQuality"

    const/16 v3, 0x64

    invoke-virtual {p1, v2, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/alibaba/dingtalk/facebox/model/DetectObject;->retryQuality:I

    .line 63
    const-string/jumbo v2, "uploadTime"

    const/4 v3, -0x1

    invoke-virtual {p1, v2, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/alibaba/dingtalk/facebox/model/DetectObject;->uploadTime:I

    .line 64
    const-string/jumbo v2, "groupId"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/alibaba/dingtalk/facebox/model/DetectObject;->groupId:Ljava/lang/String;

    .line 65
    const-string/jumbo v2, "corpId"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/alibaba/dingtalk/facebox/model/DetectObject;->corpId:Ljava/lang/String;

    .line 66
    const-string/jumbo v2, "userId"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/alibaba/dingtalk/facebox/model/DetectObject;->userId:Ljava/lang/String;

    .line 67
    const-string/jumbo v2, "from"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/alibaba/dingtalk/facebox/model/DetectObject;->from:Ljava/lang/String;

    .line 68
    const-string/jumbo v2, "needBeauty"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/alibaba/dingtalk/facebox/model/DetectObject;->needBeauty:Z

    .line 69
    const-string/jumbo v2, "resize"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/alibaba/dingtalk/facebox/model/DetectObject;->resize:I

    .line 70
    const-string/jumbo v2, "quality"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/alibaba/dingtalk/facebox/model/DetectObject;->quality:I

    .line 71
    const-string/jumbo v2, "expiredTime"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/alibaba/dingtalk/facebox/model/DetectObject;->expiredTime:I

    .line 72
    const-string/jumbo v2, "mode"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/alibaba/dingtalk/facebox/model/DetectObject;->mode:I

    .line 73
    const-string/jumbo v2, "smileScore"

    const/4 v3, 0x1

    invoke-virtual {p1, v2, v3}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/alibaba/dingtalk/facebox/model/DetectObject;->smileScore:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 74
    .end local v1    # "stickersStr":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 75
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 115
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

    .line 120
    iget-boolean v0, p0, Lcom/alibaba/dingtalk/facebox/model/DetectObject;->compression:Z

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 121
    iget-object v0, p0, Lcom/alibaba/dingtalk/facebox/model/DetectObject;->stickers:Lcom/alibaba/dingtalk/facebox/model/DetectObject$Stickers;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 122
    iget v0, p0, Lcom/alibaba/dingtalk/facebox/model/DetectObject;->cameraDevice:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 123
    iget-boolean v0, p0, Lcom/alibaba/dingtalk/facebox/model/DetectObject;->retry:Z

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 124
    iget v0, p0, Lcom/alibaba/dingtalk/facebox/model/DetectObject;->retryResize:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 125
    iget v0, p0, Lcom/alibaba/dingtalk/facebox/model/DetectObject;->retryQuality:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 126
    iget v0, p0, Lcom/alibaba/dingtalk/facebox/model/DetectObject;->uploadTime:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 127
    iget v0, p0, Lcom/alibaba/dingtalk/facebox/model/DetectObject;->resize:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 128
    iget v0, p0, Lcom/alibaba/dingtalk/facebox/model/DetectObject;->quality:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 129
    iget-object v0, p0, Lcom/alibaba/dingtalk/facebox/model/DetectObject;->groupId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 130
    iget-object v0, p0, Lcom/alibaba/dingtalk/facebox/model/DetectObject;->corpId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 131
    iget-object v0, p0, Lcom/alibaba/dingtalk/facebox/model/DetectObject;->userId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 132
    iget-object v0, p0, Lcom/alibaba/dingtalk/facebox/model/DetectObject;->from:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 133
    iget-boolean v0, p0, Lcom/alibaba/dingtalk/facebox/model/DetectObject;->needBeauty:Z

    if-eqz v0, :cond_2

    move v0, v1

    :goto_2
    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 134
    iget v0, p0, Lcom/alibaba/dingtalk/facebox/model/DetectObject;->expiredTime:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 135
    iget v0, p0, Lcom/alibaba/dingtalk/facebox/model/DetectObject;->mode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 136
    iget-boolean v0, p0, Lcom/alibaba/dingtalk/facebox/model/DetectObject;->smileScore:Z

    if-eqz v0, :cond_3

    :goto_3
    int-to-byte v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 137
    iget-object v0, p0, Lcom/alibaba/dingtalk/facebox/model/DetectObject;->callbackId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 138
    return-void

    :cond_0
    move v0, v2

    .line 120
    goto :goto_0

    :cond_1
    move v0, v2

    .line 123
    goto :goto_1

    :cond_2
    move v0, v2

    .line 133
    goto :goto_2

    :cond_3
    move v1, v2

    .line 136
    goto :goto_3
.end method
