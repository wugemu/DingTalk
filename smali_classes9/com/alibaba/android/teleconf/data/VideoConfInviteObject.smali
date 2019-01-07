.class public Lcom/alibaba/android/teleconf/data/VideoConfInviteObject;
.super Ljava/lang/Object;
.source "VideoConfInviteObject.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Ljava/io/Serializable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/alibaba/android/teleconf/data/VideoConfInviteObject;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public action:I

.field public appId:Ljava/lang/String;

.field public bizExtInfo:Ljava/lang/String;

.field public bizType:I

.field public calleeIds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public callerId:J

.field public callerNick:Ljava/lang/String;

.field public calltype:I

.field public confCameraStatus:I

.field public confDuration:J

.field public confMicStatus:I

.field public conferenceId:Ljava/lang/String;

.field public conferenceNonce:Ljava/lang/String;

.field public conferenceTimestamp:I

.field public gslbs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public hostId:J

.field public msgType:I

.field public sessionId:Ljava/lang/String;

.field public startTime:J

.field public title:Ljava/lang/String;

.field public token:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 108
    new-instance v0, Lcom/alibaba/android/teleconf/data/VideoConfInviteObject$1;

    invoke-direct {v0}, Lcom/alibaba/android/teleconf/data/VideoConfInviteObject$1;-><init>()V

    sput-object v0, Lcom/alibaba/android/teleconf/data/VideoConfInviteObject;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 13
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    const/4 v12, 0x4

    const/4 v11, 0x3

    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iget-object v5, p0, Lcom/alibaba/android/teleconf/data/VideoConfInviteObject;->gslbs:Ljava/util/List;

    if-nez v5, :cond_0

    .line 49
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/alibaba/android/teleconf/data/VideoConfInviteObject;->gslbs:Ljava/util/List;

    .line 51
    :cond_0
    iget-object v5, p0, Lcom/alibaba/android/teleconf/data/VideoConfInviteObject;->gslbs:Ljava/util/List;

    invoke-virtual {p1, v5}, Landroid/os/Parcel;->readStringList(Ljava/util/List;)V

    .line 53
    const/16 v5, 0x8

    new-array v3, v5, [Ljava/lang/String;

    .line 54
    .local v3, "s":[Ljava/lang/String;
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->readStringArray([Ljava/lang/String;)V

    .line 55
    aget-object v5, v3, v8

    iput-object v5, p0, Lcom/alibaba/android/teleconf/data/VideoConfInviteObject;->appId:Ljava/lang/String;

    .line 56
    aget-object v5, v3, v9

    iput-object v5, p0, Lcom/alibaba/android/teleconf/data/VideoConfInviteObject;->conferenceId:Ljava/lang/String;

    .line 57
    aget-object v5, v3, v10

    iput-object v5, p0, Lcom/alibaba/android/teleconf/data/VideoConfInviteObject;->token:Ljava/lang/String;

    .line 58
    aget-object v5, v3, v11

    iput-object v5, p0, Lcom/alibaba/android/teleconf/data/VideoConfInviteObject;->conferenceNonce:Ljava/lang/String;

    .line 59
    aget-object v5, v3, v12

    iput-object v5, p0, Lcom/alibaba/android/teleconf/data/VideoConfInviteObject;->sessionId:Ljava/lang/String;

    .line 60
    const/4 v5, 0x5

    aget-object v5, v3, v5

    iput-object v5, p0, Lcom/alibaba/android/teleconf/data/VideoConfInviteObject;->callerNick:Ljava/lang/String;

    .line 61
    const/4 v5, 0x6

    aget-object v5, v3, v5

    iput-object v5, p0, Lcom/alibaba/android/teleconf/data/VideoConfInviteObject;->title:Ljava/lang/String;

    .line 62
    const/4 v5, 0x7

    aget-object v5, v3, v5

    iput-object v5, p0, Lcom/alibaba/android/teleconf/data/VideoConfInviteObject;->bizExtInfo:Ljava/lang/String;

    .line 64
    new-array v1, v12, [J

    .line 65
    .local v1, "l":[J
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readLongArray([J)V

    .line 66
    aget-wide v6, v1, v8

    iput-wide v6, p0, Lcom/alibaba/android/teleconf/data/VideoConfInviteObject;->callerId:J

    .line 67
    aget-wide v6, v1, v9

    iput-wide v6, p0, Lcom/alibaba/android/teleconf/data/VideoConfInviteObject;->startTime:J

    .line 68
    aget-wide v6, v1, v10

    iput-wide v6, p0, Lcom/alibaba/android/teleconf/data/VideoConfInviteObject;->confDuration:J

    .line 69
    aget-wide v6, v1, v11

    iput-wide v6, p0, Lcom/alibaba/android/teleconf/data/VideoConfInviteObject;->hostId:J

    .line 71
    const/4 v5, 0x7

    new-array v0, v5, [I

    .line 72
    .local v0, "i":[I
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readIntArray([I)V

    .line 73
    aget v5, v0, v8

    iput v5, p0, Lcom/alibaba/android/teleconf/data/VideoConfInviteObject;->conferenceTimestamp:I

    .line 74
    aget v5, v0, v9

    iput v5, p0, Lcom/alibaba/android/teleconf/data/VideoConfInviteObject;->msgType:I

    .line 75
    aget v5, v0, v10

    iput v5, p0, Lcom/alibaba/android/teleconf/data/VideoConfInviteObject;->action:I

    .line 76
    aget v5, v0, v11

    iput v5, p0, Lcom/alibaba/android/teleconf/data/VideoConfInviteObject;->calltype:I

    .line 77
    aget v5, v0, v12

    iput v5, p0, Lcom/alibaba/android/teleconf/data/VideoConfInviteObject;->confCameraStatus:I

    .line 78
    const/4 v5, 0x5

    aget v5, v0, v5

    iput v5, p0, Lcom/alibaba/android/teleconf/data/VideoConfInviteObject;->confMicStatus:I

    .line 79
    const/4 v5, 0x6

    aget v5, v0, v5

    iput v5, p0, Lcom/alibaba/android/teleconf/data/VideoConfInviteObject;->bizType:I

    .line 81
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 82
    .local v4, "size":I
    if-lez v4, :cond_1

    .line 83
    new-array v2, v4, [J

    .line 84
    .local v2, "parcelFileHandles":[J
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readLongArray([J)V

    .line 85
    invoke-direct {p0, v4, v2}, Lcom/alibaba/android/teleconf/data/VideoConfInviteObject;->toObjects(I[J)Ljava/util/List;

    move-result-object v5

    iput-object v5, p0, Lcom/alibaba/android/teleconf/data/VideoConfInviteObject;->calleeIds:Ljava/util/List;

    .line 87
    .end local v2    # "parcelFileHandles":[J
    :cond_1
    return-void
.end method

.method public static fromIDL(Lcom/alibaba/android/teleconf/sdk/idl/model/VideoConferenceDetailInfoModel;)Lcom/alibaba/android/teleconf/data/VideoConfInviteObject;
    .locals 8
    .param p0, "infoModel"    # Lcom/alibaba/android/teleconf/sdk/idl/model/VideoConferenceDetailInfoModel;

    .prologue
    const-wide/16 v6, 0x0

    const/4 v4, 0x0

    .line 189
    const/4 v0, 0x0

    .line 190
    .local v0, "object":Lcom/alibaba/android/teleconf/data/VideoConfInviteObject;
    if-eqz p0, :cond_2

    .line 191
    new-instance v0, Lcom/alibaba/android/teleconf/data/VideoConfInviteObject;

    .end local v0    # "object":Lcom/alibaba/android/teleconf/data/VideoConfInviteObject;
    invoke-direct {v0}, Lcom/alibaba/android/teleconf/data/VideoConfInviteObject;-><init>()V

    .line 193
    .restart local v0    # "object":Lcom/alibaba/android/teleconf/data/VideoConfInviteObject;
    iget-object v1, p0, Lcom/alibaba/android/teleconf/sdk/idl/model/VideoConferenceDetailInfoModel;->appId:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/teleconf/data/VideoConfInviteObject;->appId:Ljava/lang/String;

    .line 194
    iget-object v1, p0, Lcom/alibaba/android/teleconf/sdk/idl/model/VideoConferenceDetailInfoModel;->conferenceId:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/teleconf/data/VideoConfInviteObject;->conferenceId:Ljava/lang/String;

    .line 195
    iget-object v1, p0, Lcom/alibaba/android/teleconf/sdk/idl/model/VideoConferenceDetailInfoModel;->token:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/teleconf/data/VideoConfInviteObject;->token:Ljava/lang/String;

    .line 196
    iget-object v1, p0, Lcom/alibaba/android/teleconf/sdk/idl/model/VideoConferenceDetailInfoModel;->conferenceNonce:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/teleconf/data/VideoConfInviteObject;->conferenceNonce:Ljava/lang/String;

    .line 197
    iget-object v1, p0, Lcom/alibaba/android/teleconf/sdk/idl/model/VideoConferenceDetailInfoModel;->sessionId:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/teleconf/data/VideoConfInviteObject;->sessionId:Ljava/lang/String;

    .line 198
    iget-object v1, p0, Lcom/alibaba/android/teleconf/sdk/idl/model/VideoConferenceDetailInfoModel;->gslbs:Ljava/util/List;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/alibaba/android/teleconf/sdk/idl/model/VideoConferenceDetailInfoModel;->gslbs:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 199
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lcom/alibaba/android/teleconf/data/VideoConfInviteObject;->gslbs:Ljava/util/List;

    .line 200
    iget-object v1, v0, Lcom/alibaba/android/teleconf/data/VideoConfInviteObject;->gslbs:Ljava/util/List;

    iget-object v2, p0, Lcom/alibaba/android/teleconf/sdk/idl/model/VideoConferenceDetailInfoModel;->gslbs:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 202
    :cond_0
    iget-object v1, p0, Lcom/alibaba/android/teleconf/sdk/idl/model/VideoConferenceDetailInfoModel;->callerId:Ljava/lang/Long;

    .line 11044
    invoke-static {v1, v6, v7}, Lcoc;->a(Ljava/lang/Long;J)J

    move-result-wide v2

    .line 202
    iput-wide v2, v0, Lcom/alibaba/android/teleconf/data/VideoConfInviteObject;->callerId:J

    .line 203
    iget-wide v2, v0, Lcom/alibaba/android/teleconf/data/VideoConfInviteObject;->callerId:J

    iput-wide v2, v0, Lcom/alibaba/android/teleconf/data/VideoConfInviteObject;->hostId:J

    .line 204
    iget-object v1, p0, Lcom/alibaba/android/teleconf/sdk/idl/model/VideoConferenceDetailInfoModel;->callerNick:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/teleconf/data/VideoConfInviteObject;->callerNick:Ljava/lang/String;

    .line 205
    iget-object v1, p0, Lcom/alibaba/android/teleconf/sdk/idl/model/VideoConferenceDetailInfoModel;->title:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/teleconf/data/VideoConfInviteObject;->title:Ljava/lang/String;

    .line 206
    iget-object v1, p0, Lcom/alibaba/android/teleconf/sdk/idl/model/VideoConferenceDetailInfoModel;->startTime:Ljava/lang/Long;

    .line 12044
    invoke-static {v1, v6, v7}, Lcoc;->a(Ljava/lang/Long;J)J

    move-result-wide v2

    .line 206
    iput-wide v2, v0, Lcom/alibaba/android/teleconf/data/VideoConfInviteObject;->startTime:J

    .line 207
    iget-object v1, p0, Lcom/alibaba/android/teleconf/sdk/idl/model/VideoConferenceDetailInfoModel;->confDuration:Ljava/lang/Long;

    .line 13044
    invoke-static {v1, v6, v7}, Lcoc;->a(Ljava/lang/Long;J)J

    move-result-wide v2

    .line 207
    iput-wide v2, v0, Lcom/alibaba/android/teleconf/data/VideoConfInviteObject;->confDuration:J

    .line 208
    iget-object v1, p0, Lcom/alibaba/android/teleconf/sdk/idl/model/VideoConferenceDetailInfoModel;->conferenceTimestamp:Ljava/lang/Integer;

    .line 14033
    invoke-static {v1, v4}, Lcoc;->a(Ljava/lang/Integer;I)I

    move-result v1

    .line 208
    iput v1, v0, Lcom/alibaba/android/teleconf/data/VideoConfInviteObject;->conferenceTimestamp:I

    .line 209
    iget-object v1, p0, Lcom/alibaba/android/teleconf/sdk/idl/model/VideoConferenceDetailInfoModel;->confCameraStatus:Ljava/lang/Integer;

    .line 15033
    invoke-static {v1, v4}, Lcoc;->a(Ljava/lang/Integer;I)I

    move-result v1

    .line 209
    iput v1, v0, Lcom/alibaba/android/teleconf/data/VideoConfInviteObject;->confCameraStatus:I

    .line 210
    iget-object v1, p0, Lcom/alibaba/android/teleconf/sdk/idl/model/VideoConferenceDetailInfoModel;->confMicStatus:Ljava/lang/Integer;

    .line 16033
    invoke-static {v1, v4}, Lcoc;->a(Ljava/lang/Integer;I)I

    move-result v1

    .line 210
    iput v1, v0, Lcom/alibaba/android/teleconf/data/VideoConfInviteObject;->confMicStatus:I

    .line 212
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 17033
    invoke-static {v1, v4}, Lcoc;->a(Ljava/lang/Integer;I)I

    move-result v1

    .line 212
    iput v1, v0, Lcom/alibaba/android/teleconf/data/VideoConfInviteObject;->calltype:I

    .line 214
    iget-object v1, p0, Lcom/alibaba/android/teleconf/sdk/idl/model/VideoConferenceDetailInfoModel;->calleeIds:Ljava/util/List;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/alibaba/android/teleconf/sdk/idl/model/VideoConferenceDetailInfoModel;->calleeIds:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 215
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lcom/alibaba/android/teleconf/data/VideoConfInviteObject;->calleeIds:Ljava/util/List;

    .line 216
    iget-object v1, v0, Lcom/alibaba/android/teleconf/data/VideoConfInviteObject;->calleeIds:Ljava/util/List;

    iget-object v2, p0, Lcom/alibaba/android/teleconf/sdk/idl/model/VideoConferenceDetailInfoModel;->calleeIds:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 218
    :cond_1
    iget-object v1, p0, Lcom/alibaba/android/teleconf/sdk/idl/model/VideoConferenceDetailInfoModel;->bizType:Ljava/lang/String;

    .line 17150
    invoke-static {v1, v4}, Lcoc;->a(Ljava/lang/String;I)I

    move-result v1

    .line 218
    iput v1, v0, Lcom/alibaba/android/teleconf/data/VideoConfInviteObject;->bizType:I

    .line 219
    iget-object v1, p0, Lcom/alibaba/android/teleconf/sdk/idl/model/VideoConferenceDetailInfoModel;->extInfo:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/teleconf/data/VideoConfInviteObject;->bizExtInfo:Ljava/lang/String;

    .line 221
    :cond_2
    return-object v0
.end method

.method public static fromIDL(Lcom/alibaba/android/teleconf/sdk/idl/model/VideoConferenceInfoModel;)Lcom/alibaba/android/teleconf/data/VideoConfInviteObject;
    .locals 8
    .param p0, "infoModel"    # Lcom/alibaba/android/teleconf/sdk/idl/model/VideoConferenceInfoModel;

    .prologue
    const-wide/16 v6, 0x0

    const/4 v4, 0x0

    .line 152
    if-nez p0, :cond_0

    .line 153
    const/4 v0, 0x0

    .line 185
    :goto_0
    return-object v0

    .line 155
    :cond_0
    new-instance v0, Lcom/alibaba/android/teleconf/data/VideoConfInviteObject;

    invoke-direct {v0}, Lcom/alibaba/android/teleconf/data/VideoConfInviteObject;-><init>()V

    .line 156
    .local v0, "object":Lcom/alibaba/android/teleconf/data/VideoConfInviteObject;
    iget-object v1, p0, Lcom/alibaba/android/teleconf/sdk/idl/model/VideoConferenceInfoModel;->appId:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/teleconf/data/VideoConfInviteObject;->appId:Ljava/lang/String;

    .line 157
    iget-object v1, p0, Lcom/alibaba/android/teleconf/sdk/idl/model/VideoConferenceInfoModel;->conferenceId:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/teleconf/data/VideoConfInviteObject;->conferenceId:Ljava/lang/String;

    .line 158
    iget-object v1, p0, Lcom/alibaba/android/teleconf/sdk/idl/model/VideoConferenceInfoModel;->token:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/teleconf/data/VideoConfInviteObject;->token:Ljava/lang/String;

    .line 159
    iget-object v1, p0, Lcom/alibaba/android/teleconf/sdk/idl/model/VideoConferenceInfoModel;->conferenceNonce:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/teleconf/data/VideoConfInviteObject;->conferenceNonce:Ljava/lang/String;

    .line 160
    iget-object v1, p0, Lcom/alibaba/android/teleconf/sdk/idl/model/VideoConferenceInfoModel;->sessionId:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/teleconf/data/VideoConfInviteObject;->sessionId:Ljava/lang/String;

    .line 161
    iget-object v1, p0, Lcom/alibaba/android/teleconf/sdk/idl/model/VideoConferenceInfoModel;->callerNick:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/teleconf/data/VideoConfInviteObject;->callerNick:Ljava/lang/String;

    .line 162
    iget-object v1, p0, Lcom/alibaba/android/teleconf/sdk/idl/model/VideoConferenceInfoModel;->title:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/teleconf/data/VideoConfInviteObject;->title:Ljava/lang/String;

    .line 163
    iget-object v1, p0, Lcom/alibaba/android/teleconf/sdk/idl/model/VideoConferenceInfoModel;->gslbs:Ljava/util/List;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/alibaba/android/teleconf/sdk/idl/model/VideoConferenceInfoModel;->gslbs:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 164
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lcom/alibaba/android/teleconf/data/VideoConfInviteObject;->gslbs:Ljava/util/List;

    .line 165
    iget-object v1, v0, Lcom/alibaba/android/teleconf/data/VideoConfInviteObject;->gslbs:Ljava/util/List;

    iget-object v2, p0, Lcom/alibaba/android/teleconf/sdk/idl/model/VideoConferenceInfoModel;->gslbs:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 167
    :cond_1
    iget-object v1, p0, Lcom/alibaba/android/teleconf/sdk/idl/model/VideoConferenceInfoModel;->calleeIds:Ljava/util/List;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/alibaba/android/teleconf/sdk/idl/model/VideoConferenceInfoModel;->calleeIds:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    .line 168
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lcom/alibaba/android/teleconf/data/VideoConfInviteObject;->calleeIds:Ljava/util/List;

    .line 169
    iget-object v1, v0, Lcom/alibaba/android/teleconf/data/VideoConfInviteObject;->calleeIds:Ljava/util/List;

    iget-object v2, p0, Lcom/alibaba/android/teleconf/sdk/idl/model/VideoConferenceInfoModel;->calleeIds:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 172
    :cond_2
    iget-object v1, p0, Lcom/alibaba/android/teleconf/sdk/idl/model/VideoConferenceInfoModel;->hostId:Ljava/lang/Long;

    .line 1044
    invoke-static {v1, v6, v7}, Lcoc;->a(Ljava/lang/Long;J)J

    move-result-wide v2

    .line 172
    iput-wide v2, v0, Lcom/alibaba/android/teleconf/data/VideoConfInviteObject;->hostId:J

    .line 173
    iget-object v1, p0, Lcom/alibaba/android/teleconf/sdk/idl/model/VideoConferenceInfoModel;->callerId:Ljava/lang/Long;

    .line 2044
    invoke-static {v1, v6, v7}, Lcoc;->a(Ljava/lang/Long;J)J

    move-result-wide v2

    .line 173
    iput-wide v2, v0, Lcom/alibaba/android/teleconf/data/VideoConfInviteObject;->callerId:J

    .line 174
    iget-object v1, p0, Lcom/alibaba/android/teleconf/sdk/idl/model/VideoConferenceInfoModel;->startTime:Ljava/lang/Long;

    .line 3044
    invoke-static {v1, v6, v7}, Lcoc;->a(Ljava/lang/Long;J)J

    move-result-wide v2

    .line 174
    iput-wide v2, v0, Lcom/alibaba/android/teleconf/data/VideoConfInviteObject;->startTime:J

    .line 175
    iget-object v1, p0, Lcom/alibaba/android/teleconf/sdk/idl/model/VideoConferenceInfoModel;->confDuration:Ljava/lang/Long;

    .line 4044
    invoke-static {v1, v6, v7}, Lcoc;->a(Ljava/lang/Long;J)J

    move-result-wide v2

    .line 175
    iput-wide v2, v0, Lcom/alibaba/android/teleconf/data/VideoConfInviteObject;->confDuration:J

    .line 176
    iget-object v1, p0, Lcom/alibaba/android/teleconf/sdk/idl/model/VideoConferenceInfoModel;->conferenceTimestamp:Ljava/lang/Integer;

    .line 5033
    invoke-static {v1, v4}, Lcoc;->a(Ljava/lang/Integer;I)I

    move-result v1

    .line 176
    iput v1, v0, Lcom/alibaba/android/teleconf/data/VideoConfInviteObject;->conferenceTimestamp:I

    .line 177
    iget-object v1, p0, Lcom/alibaba/android/teleconf/sdk/idl/model/VideoConferenceInfoModel;->msgType:Ljava/lang/Integer;

    .line 6033
    invoke-static {v1, v4}, Lcoc;->a(Ljava/lang/Integer;I)I

    move-result v1

    .line 177
    iput v1, v0, Lcom/alibaba/android/teleconf/data/VideoConfInviteObject;->msgType:I

    .line 178
    iget-object v1, p0, Lcom/alibaba/android/teleconf/sdk/idl/model/VideoConferenceInfoModel;->action:Ljava/lang/Integer;

    .line 7033
    invoke-static {v1, v4}, Lcoc;->a(Ljava/lang/Integer;I)I

    move-result v1

    .line 178
    iput v1, v0, Lcom/alibaba/android/teleconf/data/VideoConfInviteObject;->action:I

    .line 179
    iget-object v1, p0, Lcom/alibaba/android/teleconf/sdk/idl/model/VideoConferenceInfoModel;->calltype:Ljava/lang/Integer;

    .line 8033
    invoke-static {v1, v4}, Lcoc;->a(Ljava/lang/Integer;I)I

    move-result v1

    .line 179
    iput v1, v0, Lcom/alibaba/android/teleconf/data/VideoConfInviteObject;->calltype:I

    .line 180
    iget-object v1, p0, Lcom/alibaba/android/teleconf/sdk/idl/model/VideoConferenceInfoModel;->confCameraStatus:Ljava/lang/Integer;

    .line 9033
    invoke-static {v1, v4}, Lcoc;->a(Ljava/lang/Integer;I)I

    move-result v1

    .line 180
    iput v1, v0, Lcom/alibaba/android/teleconf/data/VideoConfInviteObject;->confCameraStatus:I

    .line 181
    iget-object v1, p0, Lcom/alibaba/android/teleconf/sdk/idl/model/VideoConferenceInfoModel;->confMicStatus:Ljava/lang/Integer;

    .line 10033
    invoke-static {v1, v4}, Lcoc;->a(Ljava/lang/Integer;I)I

    move-result v1

    .line 181
    iput v1, v0, Lcom/alibaba/android/teleconf/data/VideoConfInviteObject;->confMicStatus:I

    .line 182
    iget-object v1, p0, Lcom/alibaba/android/teleconf/sdk/idl/model/VideoConferenceInfoModel;->bizType:Ljava/lang/String;

    .line 10150
    invoke-static {v1, v4}, Lcoc;->a(Ljava/lang/String;I)I

    move-result v1

    .line 182
    iput v1, v0, Lcom/alibaba/android/teleconf/data/VideoConfInviteObject;->bizType:I

    .line 183
    iget-object v1, p0, Lcom/alibaba/android/teleconf/sdk/idl/model/VideoConferenceInfoModel;->extInfo:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/teleconf/data/VideoConfInviteObject;->bizExtInfo:Ljava/lang/String;

    goto/16 :goto_0
.end method

.method private toObjects(I[J)Ljava/util/List;
    .locals 4
    .param p1, "size"    # I
    .param p2, "parcelFileHandles"    # [J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I[J)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 121
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 123
    .local v1, "primitiveConv":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p1, :cond_0

    .line 124
    aget-wide v2, p2, v0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 123
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 127
    :cond_0
    return-object v1
.end method

.method private static toPrimitives(Ljava/util/List;)[J
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;)[J"
        }
    .end annotation

    .prologue
    .line 131
    .local p0, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/Long;

    invoke-interface {p0, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Long;

    check-cast v0, [Ljava/lang/Long;

    invoke-static {v0}, Lcom/alibaba/android/teleconf/data/VideoConfInviteObject;->toPrimitives([Ljava/lang/Long;)[J

    move-result-object v0

    return-object v0
.end method

.method public static varargs toPrimitives([Ljava/lang/Long;)[J
    .locals 6
    .param p0, "objects"    # [Ljava/lang/Long;

    .prologue
    .line 135
    if-nez p0, :cond_1

    .line 136
    const/4 v2, 0x0

    .line 148
    :cond_0
    return-object v2

    .line 138
    :cond_1
    array-length v3, p0

    new-array v2, v3, [J

    .line 140
    .local v2, "primitives":[J
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v3, p0

    if-ge v0, v3, :cond_0

    .line 141
    aget-object v1, p0, v0

    .line 142
    .local v1, "obj":Ljava/lang/Long;
    if-nez v1, :cond_2

    .line 140
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 145
    :cond_2
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    aput-wide v4, v2, v0

    goto :goto_1
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 91
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 9
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 96
    iget-object v0, p0, Lcom/alibaba/android/teleconf/data/VideoConfInviteObject;->gslbs:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 97
    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/String;

    iget-object v1, p0, Lcom/alibaba/android/teleconf/data/VideoConfInviteObject;->appId:Ljava/lang/String;

    aput-object v1, v0, v4

    iget-object v1, p0, Lcom/alibaba/android/teleconf/data/VideoConfInviteObject;->conferenceId:Ljava/lang/String;

    aput-object v1, v0, v5

    iget-object v1, p0, Lcom/alibaba/android/teleconf/data/VideoConfInviteObject;->token:Ljava/lang/String;

    aput-object v1, v0, v6

    iget-object v1, p0, Lcom/alibaba/android/teleconf/data/VideoConfInviteObject;->conferenceNonce:Ljava/lang/String;

    aput-object v1, v0, v7

    iget-object v1, p0, Lcom/alibaba/android/teleconf/data/VideoConfInviteObject;->sessionId:Ljava/lang/String;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    iget-object v2, p0, Lcom/alibaba/android/teleconf/data/VideoConfInviteObject;->callerNick:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    iget-object v2, p0, Lcom/alibaba/android/teleconf/data/VideoConfInviteObject;->title:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    iget-object v2, p0, Lcom/alibaba/android/teleconf/data/VideoConfInviteObject;->bizExtInfo:Ljava/lang/String;

    aput-object v2, v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 98
    new-array v0, v8, [J

    iget-wide v2, p0, Lcom/alibaba/android/teleconf/data/VideoConfInviteObject;->callerId:J

    aput-wide v2, v0, v4

    iget-wide v2, p0, Lcom/alibaba/android/teleconf/data/VideoConfInviteObject;->startTime:J

    aput-wide v2, v0, v5

    iget-wide v2, p0, Lcom/alibaba/android/teleconf/data/VideoConfInviteObject;->confDuration:J

    aput-wide v2, v0, v6

    iget-wide v2, p0, Lcom/alibaba/android/teleconf/data/VideoConfInviteObject;->hostId:J

    aput-wide v2, v0, v7

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeLongArray([J)V

    .line 99
    const/4 v0, 0x7

    new-array v0, v0, [I

    iget v1, p0, Lcom/alibaba/android/teleconf/data/VideoConfInviteObject;->conferenceTimestamp:I

    aput v1, v0, v4

    iget v1, p0, Lcom/alibaba/android/teleconf/data/VideoConfInviteObject;->msgType:I

    aput v1, v0, v5

    iget v1, p0, Lcom/alibaba/android/teleconf/data/VideoConfInviteObject;->action:I

    aput v1, v0, v6

    iget v1, p0, Lcom/alibaba/android/teleconf/data/VideoConfInviteObject;->calltype:I

    aput v1, v0, v7

    iget v1, p0, Lcom/alibaba/android/teleconf/data/VideoConfInviteObject;->confCameraStatus:I

    aput v1, v0, v8

    const/4 v1, 0x5

    iget v2, p0, Lcom/alibaba/android/teleconf/data/VideoConfInviteObject;->confMicStatus:I

    aput v2, v0, v1

    const/4 v1, 0x6

    iget v2, p0, Lcom/alibaba/android/teleconf/data/VideoConfInviteObject;->bizType:I

    aput v2, v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 100
    iget-object v0, p0, Lcom/alibaba/android/teleconf/data/VideoConfInviteObject;->calleeIds:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/teleconf/data/VideoConfInviteObject;->calleeIds:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 101
    iget-object v0, p0, Lcom/alibaba/android/teleconf/data/VideoConfInviteObject;->calleeIds:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 102
    iget-object v0, p0, Lcom/alibaba/android/teleconf/data/VideoConfInviteObject;->calleeIds:Ljava/util/List;

    invoke-static {v0}, Lcom/alibaba/android/teleconf/data/VideoConfInviteObject;->toPrimitives(Ljava/util/List;)[J

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeLongArray([J)V

    .line 106
    :goto_0
    return-void

    .line 104
    :cond_0
    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0
.end method
