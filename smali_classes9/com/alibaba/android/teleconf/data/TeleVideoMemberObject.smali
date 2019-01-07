.class public Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject;
.super Ljava/lang/Object;
.source "TeleVideoMemberObject.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$a;,
        Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$ShowAnimType;,
        Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$b;,
        Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$ShowType;,
        Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$RunState;,
        Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$BusyState;,
        Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$State;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private busyState:Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$BusyState;

.field private isCaller:Z

.field private isCameraMuted:Z

.field private isMicMuted:Z

.field private isOnScreen:Z

.field private isSpeaking:Z

.field private mChangedListener:Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$a;

.field private mType:Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$ShowType;

.field private mUser:Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

.field private runState:Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$RunState;

.field private statusType:Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$b;

.field private userState:Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$State;

.field private userStateDes:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 624
    new-instance v0, Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$1;

    invoke-direct {v0}, Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$1;-><init>()V

    sput-object v0, Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 123
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 124
    sget-object v0, Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$ShowType;->DefaultType:Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$ShowType;

    iput-object v0, p0, Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject;->mType:Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$ShowType;

    .line 125
    iput-object v1, p0, Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject;->mUser:Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    .line 126
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject;->isOnScreen:Z

    iput-boolean v0, p0, Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject;->isSpeaking:Z

    iput-boolean v0, p0, Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject;->isCameraMuted:Z

    iput-boolean v0, p0, Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject;->isMicMuted:Z

    iput-boolean v0, p0, Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject;->isCaller:Z

    .line 127
    sget-object v0, Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$State;->USER_STATE_UNKNOWN:Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$State;

    iput-object v0, p0, Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject;->userState:Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$State;

    .line 128
    sget-object v0, Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$BusyState;->USER_BUSY_STATE_UNKNOWN:Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$BusyState;

    iput-object v0, p0, Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject;->busyState:Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$BusyState;

    .line 129
    sget-object v0, Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$RunState;->USER_RUN_STATE_UNKNOWN:Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$RunState;

    iput-object v0, p0, Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject;->runState:Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$RunState;

    .line 130
    iput-object v1, p0, Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject;->userStateDes:Ljava/lang/String;

    .line 131
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 3
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 133
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 134
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 135
    .local v1, "typeOrdinal":I
    invoke-static {}, Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$ShowType;->values()[Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$ShowType;

    move-result-object v2

    aget-object v2, v2, v1

    iput-object v2, p0, Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject;->mType:Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$ShowType;

    .line 136
    const-class v2, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    iput-object v2, p0, Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject;->mUser:Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    .line 137
    const/4 v2, 0x3

    new-array v0, v2, [Z

    .line 138
    .local v0, "bools":[Z
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readBooleanArray([Z)V

    .line 139
    const/4 v2, 0x0

    aget-boolean v2, v0, v2

    iput-boolean v2, p0, Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject;->isMicMuted:Z

    .line 140
    const/4 v2, 0x1

    aget-boolean v2, v0, v2

    iput-boolean v2, p0, Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject;->isCameraMuted:Z

    .line 141
    const/4 v2, 0x2

    aget-boolean v2, v0, v2

    iput-boolean v2, p0, Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject;->isCaller:Z

    .line 142
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 143
    invoke-static {}, Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$State;->values()[Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$State;

    move-result-object v2

    aget-object v2, v2, v1

    iput-object v2, p0, Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject;->userState:Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$State;

    .line 144
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 145
    invoke-static {}, Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$BusyState;->values()[Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$BusyState;

    move-result-object v2

    aget-object v2, v2, v1

    iput-object v2, p0, Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject;->busyState:Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$BusyState;

    .line 146
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 147
    invoke-static {}, Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$RunState;->values()[Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$RunState;

    move-result-object v2

    aget-object v2, v2, v1

    iput-object v2, p0, Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject;->runState:Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$RunState;

    .line 149
    return-void
.end method

.method public static changeState(Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$State;Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$State;)Z
    .locals 3
    .param p0, "from"    # Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$State;
    .param p1, "to"    # Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$State;

    .prologue
    .line 245
    const/4 v0, 0x0

    .line 246
    .local v0, "ret":Z
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 247
    :cond_0
    const/4 v1, 0x0

    .line 343
    :goto_0
    return v1

    .line 249
    :cond_1
    sget-object v1, Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$State;->USER_STATE_JOINING:Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$State;

    if-ne p1, v1, :cond_5

    .line 250
    sget-object v1, Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$State;->USER_STATE_UNKNOWN:Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$State;

    if-eq p0, v1, :cond_2

    sget-object v1, Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$State;->USER_STATE_JOINING:Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$State;

    if-eq p0, v1, :cond_2

    sget-object v1, Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$State;->USER_STATE_JOINING_FAIL:Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$State;

    if-eq p0, v1, :cond_2

    sget-object v1, Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$State;->USER_STATE_REJECTED:Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$State;

    if-eq p0, v1, :cond_2

    sget-object v1, Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$State;->USER_STATE_BUSY:Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$State;

    if-eq p0, v1, :cond_2

    sget-object v1, Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$State;->USER_STATE_LEAVED:Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$State;

    if-ne p0, v1, :cond_4

    .line 256
    :cond_2
    const/4 v0, 0x1

    :cond_3
    :goto_1
    move v1, v0

    .line 343
    goto :goto_0

    .line 258
    :cond_4
    const/4 v0, 0x0

    goto :goto_1

    .line 260
    :cond_5
    sget-object v1, Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$State;->USER_STATE_JOINING_FAIL:Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$State;

    if-ne p1, v1, :cond_7

    .line 261
    sget-object v1, Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$State;->USER_STATE_JOINING:Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$State;

    if-ne p0, v1, :cond_6

    .line 262
    const/4 v0, 0x1

    goto :goto_1

    .line 264
    :cond_6
    const/4 v0, 0x0

    goto :goto_1

    .line 266
    :cond_7
    sget-object v1, Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$State;->USER_STATE_REJECTED:Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$State;

    if-ne p1, v1, :cond_9

    .line 267
    sget-object v1, Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$State;->USER_STATE_JOINING:Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$State;

    if-ne p0, v1, :cond_8

    .line 268
    const/4 v0, 0x1

    goto :goto_1

    .line 270
    :cond_8
    const/4 v0, 0x0

    goto :goto_1

    .line 272
    :cond_9
    sget-object v1, Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$State;->USER_STATE_BUSY:Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$State;

    if-ne p1, v1, :cond_c

    .line 273
    sget-object v1, Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$State;->USER_STATE_JOINING:Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$State;

    if-eq p0, v1, :cond_a

    sget-object v1, Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$State;->USER_STATE_JOINING_FAIL:Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$State;

    if-ne p0, v1, :cond_b

    .line 275
    :cond_a
    const/4 v0, 0x1

    goto :goto_1

    .line 277
    :cond_b
    const/4 v0, 0x0

    goto :goto_1

    .line 279
    :cond_c
    sget-object v1, Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$State;->USER_STATE_NO_SUPPORT:Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$State;

    if-ne p1, v1, :cond_e

    .line 280
    sget-object v1, Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$State;->USER_STATE_JOINING:Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$State;

    if-ne p0, v1, :cond_d

    .line 281
    const/4 v0, 0x1

    goto :goto_1

    .line 283
    :cond_d
    const/4 v0, 0x0

    goto :goto_1

    .line 285
    :cond_e
    sget-object v1, Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$State;->USER_STATE_NO_PERMISSION:Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$State;

    if-ne p1, v1, :cond_10

    .line 286
    sget-object v1, Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$State;->USER_STATE_JOINING:Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$State;

    if-ne p0, v1, :cond_f

    .line 287
    const/4 v0, 0x1

    goto :goto_1

    .line 289
    :cond_f
    const/4 v0, 0x0

    goto :goto_1

    .line 291
    :cond_10
    sget-object v1, Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$State;->USER_STATE_CONNECTED:Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$State;

    if-ne p1, v1, :cond_13

    .line 292
    sget-object v1, Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$State;->USER_STATE_JOINING:Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$State;

    if-eq p0, v1, :cond_11

    sget-object v1, Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$State;->USER_STATE_JOINING_FAIL:Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$State;

    if-ne p0, v1, :cond_12

    .line 294
    :cond_11
    const/4 v0, 0x1

    goto :goto_1

    .line 296
    :cond_12
    const/4 v0, 0x0

    goto :goto_1

    .line 298
    :cond_13
    sget-object v1, Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$State;->USER_STATE_RUNNING:Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$State;

    if-ne p1, v1, :cond_16

    .line 299
    sget-object v1, Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$State;->USER_STATE_JOINING:Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$State;

    if-eq p0, v1, :cond_14

    sget-object v1, Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$State;->USER_STATE_CONNECTED:Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$State;

    if-eq p0, v1, :cond_14

    sget-object v1, Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$State;->USER_STATE_RUNNING:Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$State;

    if-eq p0, v1, :cond_14

    sget-object v1, Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$State;->USER_STATE_RUNNING_AUDIO:Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$State;

    if-eq p0, v1, :cond_14

    sget-object v1, Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$State;->USER_STATE_RUNNING_CALL:Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$State;

    if-ne p0, v1, :cond_15

    .line 304
    :cond_14
    const/4 v0, 0x1

    goto/16 :goto_1

    .line 306
    :cond_15
    const/4 v0, 0x0

    goto/16 :goto_1

    .line 308
    :cond_16
    sget-object v1, Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$State;->USER_STATE_RUNNING_AUDIO:Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$State;

    if-ne p1, v1, :cond_19

    .line 309
    sget-object v1, Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$State;->USER_STATE_RUNNING:Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$State;

    if-eq p0, v1, :cond_17

    sget-object v1, Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$State;->USER_STATE_RUNNING_CALL:Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$State;

    if-ne p0, v1, :cond_18

    .line 311
    :cond_17
    const/4 v0, 0x1

    goto/16 :goto_1

    .line 313
    :cond_18
    const/4 v0, 0x0

    goto/16 :goto_1

    .line 315
    :cond_19
    sget-object v1, Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$State;->USER_STATE_RUNNING_CALL:Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$State;

    if-ne p1, v1, :cond_1c

    .line 316
    sget-object v1, Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$State;->USER_STATE_RUNNING:Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$State;

    if-eq p0, v1, :cond_1a

    sget-object v1, Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$State;->USER_STATE_RUNNING_AUDIO:Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$State;

    if-ne p0, v1, :cond_1b

    .line 318
    :cond_1a
    const/4 v0, 0x1

    goto/16 :goto_1

    .line 320
    :cond_1b
    const/4 v0, 0x0

    goto/16 :goto_1

    .line 322
    :cond_1c
    sget-object v1, Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$State;->USER_STATE_LEAVED:Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$State;

    if-ne p1, v1, :cond_1f

    .line 323
    sget-object v1, Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$State;->USER_STATE_RUNNING:Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$State;

    if-eq p0, v1, :cond_1d

    sget-object v1, Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$State;->USER_STATE_RUNNING_AUDIO:Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$State;

    if-eq p0, v1, :cond_1d

    sget-object v1, Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$State;->USER_STATE_RUNNING_CALL:Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$State;

    if-eq p0, v1, :cond_1d

    sget-object v1, Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$State;->USER_STATE_JOINING:Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$State;

    if-eq p0, v1, :cond_1d

    sget-object v1, Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$State;->USER_STATE_CONNECTED:Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$State;

    if-ne p0, v1, :cond_1e

    .line 328
    :cond_1d
    const/4 v0, 0x1

    goto/16 :goto_1

    .line 330
    :cond_1e
    const/4 v0, 0x0

    goto/16 :goto_1

    .line 333
    :cond_1f
    sget-object v1, Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$State;->USER_STATE_KICKOFF:Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$State;

    if-ne p1, v1, :cond_3

    .line 334
    invoke-virtual {p0}, Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$State;->ordinal()I

    move-result v1

    sget-object v2, Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$State;->USER_STATE_UNKNOWN:Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$State;

    invoke-virtual {v2}, Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$State;->ordinal()I

    move-result v2

    if-lt v1, v2, :cond_20

    .line 335
    invoke-virtual {p0}, Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$State;->ordinal()I

    move-result v1

    sget-object v2, Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$State;->USER_STATE_MAX:Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$State;

    invoke-virtual {v2}, Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$State;->ordinal()I

    move-result v2

    if-lt v1, v2, :cond_21

    :cond_20
    sget-object v1, Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$State;->USER_STATE_KICKOFF:Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$State;

    if-eq p0, v1, :cond_22

    .line 337
    :cond_21
    const/4 v0, 0x1

    goto/16 :goto_1

    .line 339
    :cond_22
    const/4 v0, 0x0

    goto/16 :goto_1
.end method

.method public static copyMemberObject(Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject;)Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject;
    .locals 2
    .param p0, "obj"    # Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject;

    .prologue
    .line 173
    if-nez p0, :cond_0

    .line 174
    const/4 v0, 0x0

    .line 189
    :goto_0
    return-object v0

    .line 176
    :cond_0
    new-instance v0, Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject;

    invoke-direct {v0}, Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject;-><init>()V

    .line 177
    .local v0, "dstObj":Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject;
    invoke-virtual {p0}, Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject;->getType()Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$ShowType;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject;->setType(Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$ShowType;)V

    .line 178
    invoke-virtual {p0}, Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject;->getUser()Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject;->setUser(Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;)V

    .line 179
    invoke-virtual {p0}, Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject;->isMicMuted()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject;->setMicMuted(Z)V

    .line 180
    invoke-virtual {p0}, Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject;->isCameraMuted()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject;->setCameraMuted(Z)V

    .line 181
    invoke-virtual {p0}, Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject;->isSpeaking()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject;->setSpeaking(Z)V

    .line 182
    invoke-virtual {p0}, Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject;->isOnScreen()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject;->setOnScreen(Z)V

    .line 183
    invoke-virtual {p0}, Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject;->isCaller()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject;->setCaller(Z)V

    .line 184
    invoke-virtual {p0}, Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject;->getUserState()Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$State;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject;->setUserState(Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$State;)V

    .line 185
    invoke-virtual {p0}, Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject;->getBusyState()Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$BusyState;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject;->setBusyState(Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$BusyState;)V

    .line 186
    invoke-virtual {p0}, Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject;->getRunState()Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$RunState;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject;->setRunState(Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$RunState;)V

    .line 187
    invoke-virtual {p0}, Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject;->getStatusType()Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$b;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject;->setStatusType(Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$b;)V

    goto :goto_0
.end method

.method public static getAnimShowType(Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$State;Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$State;)Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$ShowAnimType;
    .locals 3
    .param p0, "from"    # Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$State;
    .param p1, "to"    # Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$State;

    .prologue
    .line 385
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 386
    :cond_0
    sget-object v2, Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$ShowAnimType;->ANIM_NONE:Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$ShowAnimType;

    .line 404
    :goto_0
    return-object v2

    .line 389
    :cond_1
    const/4 v0, 0x0

    .line 390
    .local v0, "fromRunning":Z
    sget-object v2, Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$State;->USER_STATE_RUNNING:Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$State;

    if-ne p0, v2, :cond_2

    .line 391
    const/4 v0, 0x1

    .line 394
    :cond_2
    const/4 v1, 0x0

    .line 395
    .local v1, "toRunning":Z
    sget-object v2, Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$State;->USER_STATE_RUNNING:Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$State;

    if-ne p1, v2, :cond_3

    .line 396
    const/4 v1, 0x1

    .line 399
    :cond_3
    if-eqz v0, :cond_4

    if-nez v1, :cond_4

    .line 400
    sget-object v2, Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$ShowAnimType;->ANIM_TO_BACKWARD:Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$ShowAnimType;

    goto :goto_0

    .line 401
    :cond_4
    if-nez v0, :cond_5

    if-eqz v1, :cond_5

    .line 402
    sget-object v2, Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$ShowAnimType;->ANIM_TO_FORWARD:Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$ShowAnimType;

    goto :goto_0

    .line 404
    :cond_5
    sget-object v2, Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$ShowAnimType;->ANIM_NONE:Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$ShowAnimType;

    goto :goto_0
.end method

.method public static getStringByState(Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$State;)Ljava/lang/String;
    .locals 3
    .param p0, "state"    # Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$State;

    .prologue
    .line 409
    const/4 v0, 0x0

    .line 410
    .local v0, "resStr":Ljava/lang/String;
    if-nez p0, :cond_0

    .line 411
    const/4 v1, 0x0

    .line 436
    :goto_0
    return-object v1

    .line 414
    :cond_0
    sget-object v1, Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$State;->USER_STATE_JOINING:Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$State;

    if-ne p0, v1, :cond_2

    .line 415
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v1

    invoke-virtual {v1}, Lcid;->c()Landroid/app/Application;

    move-result-object v1

    sget v2, Leuj$l;->conf_txt_status_calling:I

    invoke-virtual {v1, v2}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v0

    :cond_1
    :goto_1
    move-object v1, v0

    .line 436
    goto :goto_0

    .line 416
    :cond_2
    sget-object v1, Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$State;->USER_STATE_CONNECTED:Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$State;

    if-ne p0, v1, :cond_3

    .line 417
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v1

    invoke-virtual {v1}, Lcid;->c()Landroid/app/Application;

    move-result-object v1

    sget v2, Leuj$l;->dt_conf_video_member_status_joining:I

    invoke-virtual {v1, v2}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 418
    :cond_3
    sget-object v1, Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$State;->USER_STATE_LEAVED:Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$State;

    if-ne p0, v1, :cond_4

    .line 419
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v1

    invoke-virtual {v1}, Lcid;->c()Landroid/app/Application;

    move-result-object v1

    sget v2, Leuj$l;->conf_txt_video_leaved_conf:I

    invoke-virtual {v1, v2}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 420
    :cond_4
    sget-object v1, Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$State;->USER_STATE_RUNNING_AUDIO:Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$State;

    if-ne p0, v1, :cond_5

    .line 421
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v1

    invoke-virtual {v1}, Lcid;->c()Landroid/app/Application;

    move-result-object v1

    sget v2, Leuj$l;->conf_txt_video_audio_in_conf:I

    invoke-virtual {v1, v2}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 422
    :cond_5
    sget-object v1, Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$State;->USER_STATE_RUNNING_CALL:Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$State;

    if-ne p0, v1, :cond_6

    .line 423
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v1

    invoke-virtual {v1}, Lcid;->c()Landroid/app/Application;

    move-result-object v1

    sget v2, Leuj$l;->conf_txt_video_call_in_conf:I

    invoke-virtual {v1, v2}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 424
    :cond_6
    sget-object v1, Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$State;->USER_STATE_JOINING_FAIL:Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$State;

    if-ne p0, v1, :cond_7

    .line 425
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v1

    invoke-virtual {v1}, Lcid;->c()Landroid/app/Application;

    move-result-object v1

    sget v2, Leuj$l;->conf_txt_video_incoming_fail:I

    invoke-virtual {v1, v2}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 426
    :cond_7
    sget-object v1, Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$State;->USER_STATE_REJECTED:Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$State;

    if-ne p0, v1, :cond_8

    .line 427
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v1

    invoke-virtual {v1}, Lcid;->c()Landroid/app/Application;

    move-result-object v1

    sget v2, Leuj$l;->conf_txt_video_rejected:I

    invoke-virtual {v1, v2}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 428
    :cond_8
    sget-object v1, Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$State;->USER_STATE_NO_SUPPORT:Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$State;

    if-ne p0, v1, :cond_9

    .line 429
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v1

    invoke-virtual {v1}, Lcid;->c()Landroid/app/Application;

    move-result-object v1

    sget v2, Leuj$l;->conf_txt_video_invalid_version:I

    invoke-virtual {v1, v2}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    .line 430
    :cond_9
    sget-object v1, Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$State;->USER_STATE_BUSY:Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$State;

    if-ne p0, v1, :cond_a

    .line 431
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v1

    invoke-virtual {v1}, Lcid;->c()Landroid/app/Application;

    move-result-object v1

    sget v2, Leuj$l;->conf_txt_voip_remote_busy:I

    invoke-virtual {v1, v2}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    .line 432
    :cond_a
    sget-object v1, Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$State;->USER_STATE_NO_PERMISSION:Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$State;

    if-ne p0, v1, :cond_1

    .line 433
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v1

    invoke-virtual {v1}, Lcid;->c()Landroid/app/Application;

    move-result-object v1

    sget v2, Leuj$l;->conf_txt_video_no_permission:I

    invoke-virtual {v1, v2}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1
.end method

.method public static getUserStateByStatus(I)Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$State;
    .locals 2
    .param p0, "status"    # I

    .prologue
    .line 347
    sget-object v1, Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$State;->USER_STATE_UNKNOWN:Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$State;

    .line 349
    sparse-switch p0, :sswitch_data_0

    .line 378
    sget-object v0, Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$State;->USER_STATE_JOINING:Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$State;

    .line 381
    .local v0, "state":Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$State;
    :goto_0
    return-object v0

    .line 351
    .end local v0    # "state":Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$State;
    :sswitch_0
    sget-object v0, Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$State;->USER_STATE_JOINING:Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$State;

    .line 352
    .restart local v0    # "state":Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$State;
    goto :goto_0

    .line 354
    .end local v0    # "state":Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$State;
    :sswitch_1
    sget-object v0, Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$State;->USER_STATE_RUNNING:Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$State;

    .line 355
    .restart local v0    # "state":Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$State;
    goto :goto_0

    .line 357
    .end local v0    # "state":Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$State;
    :sswitch_2
    sget-object v0, Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$State;->USER_STATE_REJECTED:Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$State;

    .line 358
    .restart local v0    # "state":Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$State;
    goto :goto_0

    .line 360
    .end local v0    # "state":Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$State;
    :sswitch_3
    sget-object v0, Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$State;->USER_STATE_LEAVED:Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$State;

    .line 361
    .restart local v0    # "state":Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$State;
    goto :goto_0

    .line 363
    .end local v0    # "state":Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$State;
    :sswitch_4
    sget-object v0, Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$State;->USER_STATE_NO_SUPPORT:Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$State;

    .line 364
    .restart local v0    # "state":Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$State;
    goto :goto_0

    .line 366
    .end local v0    # "state":Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$State;
    :sswitch_5
    sget-object v0, Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$State;->USER_STATE_CONNECTED:Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$State;

    .line 367
    .restart local v0    # "state":Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$State;
    goto :goto_0

    .line 369
    .end local v0    # "state":Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$State;
    :sswitch_6
    sget-object v0, Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$State;->USER_STATE_BUSY:Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$State;

    .line 370
    .restart local v0    # "state":Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$State;
    goto :goto_0

    .line 372
    .end local v0    # "state":Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$State;
    :sswitch_7
    sget-object v0, Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$State;->USER_STATE_RUNNING_CALL:Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$State;

    .line 373
    .restart local v0    # "state":Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$State;
    goto :goto_0

    .line 375
    .end local v0    # "state":Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$State;
    :sswitch_8
    sget-object v0, Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$State;->USER_STATE_NO_PERMISSION:Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$State;

    .line 376
    .restart local v0    # "state":Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$State;
    goto :goto_0

    .line 349
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_1
        0x2 -> :sswitch_3
        0x3 -> :sswitch_2
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x6 -> :sswitch_6
        0x7 -> :sswitch_7
        0x191 -> :sswitch_8
    .end sparse-switch
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 611
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 153
    if-ne p0, p1, :cond_1

    .line 169
    :cond_0
    :goto_0
    return v1

    .line 156
    :cond_1
    if-nez p1, :cond_2

    move v1, v2

    .line 157
    goto :goto_0

    .line 159
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_3

    move v1, v2

    .line 160
    goto :goto_0

    .line 162
    :cond_3
    instance-of v3, p1, Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject;

    if-eqz v3, :cond_4

    move-object v0, p1

    .line 163
    check-cast v0, Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject;

    .line 164
    .local v0, "other":Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject;
    iget-object v3, p0, Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject;->mUser:Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject;->mUser:Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    iget-object v4, v0, Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject;->mUser:Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    invoke-virtual {v3, v4}, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .end local v0    # "other":Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject;
    :cond_4
    move v1, v2

    .line 169
    goto :goto_0
.end method

.method public getBusyState()Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$BusyState;
    .locals 1

    .prologue
    .line 492
    iget-object v0, p0, Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject;->busyState:Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$BusyState;

    return-object v0
.end method

.method public getRunState()Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$RunState;
    .locals 1

    .prologue
    .line 484
    iget-object v0, p0, Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject;->runState:Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$RunState;

    return-object v0
.end method

.method public getStatusType()Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$b;
    .locals 1

    .prologue
    .line 513
    iget-object v0, p0, Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject;->statusType:Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$b;

    return-object v0
.end method

.method public getType()Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$ShowType;
    .locals 1

    .prologue
    .line 468
    iget-object v0, p0, Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject;->mType:Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$ShowType;

    return-object v0
.end method

.method public getUser()Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;
    .locals 1

    .prologue
    .line 476
    iget-object v0, p0, Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject;->mUser:Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    return-object v0
.end method

.method public getUserState()Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$State;
    .locals 1

    .prologue
    .line 500
    iget-object v0, p0, Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject;->userState:Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$State;

    return-object v0
.end method

.method public getUserStateDes()Ljava/lang/String;
    .locals 1

    .prologue
    .line 537
    iget-object v0, p0, Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject;->userStateDes:Ljava/lang/String;

    return-object v0
.end method

.method public isAudioRunning()Z
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 571
    iget-object v0, p0, Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject;->userState:Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$State;

    sget-object v1, Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$State;->USER_STATE_RUNNING_AUDIO:Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$State;

    if-ne v0, v1, :cond_0

    .line 572
    const/4 v0, 0x1

    .line 575
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isCallRunning()Z
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 579
    iget-object v0, p0, Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject;->userState:Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$State;

    sget-object v1, Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$State;->USER_STATE_RUNNING_CALL:Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$State;

    if-ne v0, v1, :cond_0

    .line 580
    const/4 v0, 0x1

    .line 583
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isCaller()Z
    .locals 1

    .prologue
    .line 444
    iget-boolean v0, p0, Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject;->isCaller:Z

    return v0
.end method

.method public isCameraMuted()Z
    .locals 1

    .prologue
    .line 452
    iget-boolean v0, p0, Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject;->isCameraMuted:Z

    return v0
.end method

.method public isCanRecall()Z
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 545
    iget-object v0, p0, Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject;->mUser:Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$State;->USER_STATE_JOINING_FAIL:Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$State;

    iget-object v1, p0, Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject;->userState:Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$State;

    if-eq v0, v1, :cond_0

    sget-object v0, Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$State;->USER_STATE_BUSY:Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$State;

    iget-object v1, p0, Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject;->userState:Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$State;

    if-eq v0, v1, :cond_0

    sget-object v0, Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$State;->USER_STATE_LEAVED:Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$State;

    iget-object v1, p0, Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject;->userState:Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$State;

    if-eq v0, v1, :cond_0

    sget-object v0, Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$State;->USER_STATE_REJECTED:Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$State;

    iget-object v1, p0, Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject;->userState:Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$State;

    if-ne v0, v1, :cond_1

    .line 550
    :cond_0
    const/4 v0, 0x1

    .line 552
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isInConf()Z
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 587
    iget-object v0, p0, Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject;->userState:Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$State;

    sget-object v1, Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$State;->USER_STATE_RUNNING:Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$State;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject;->userState:Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$State;

    sget-object v1, Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$State;->USER_STATE_RUNNING_AUDIO:Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$State;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject;->userState:Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$State;

    sget-object v1, Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$State;->USER_STATE_RUNNING_CALL:Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$State;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject;->userState:Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$State;

    sget-object v1, Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$State;->USER_STATE_RUNNING_HOLD:Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$State;

    if-ne v0, v1, :cond_1

    .line 591
    :cond_0
    const/4 v0, 0x1

    .line 593
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isMicMuted()Z
    .locals 1

    .prologue
    .line 460
    iget-boolean v0, p0, Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject;->isMicMuted:Z

    return v0
.end method

.method public isOnScreen()Z
    .locals 1

    .prologue
    .line 529
    iget-boolean v0, p0, Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject;->isOnScreen:Z

    return v0
.end method

.method public isSpeaking()Z
    .locals 1

    .prologue
    .line 521
    iget-boolean v0, p0, Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject;->isSpeaking:Z

    return v0
.end method

.method public isVideoRunning()Z
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 563
    iget-object v0, p0, Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject;->userState:Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$State;

    sget-object v1, Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$State;->USER_STATE_RUNNING:Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$State;

    if-ne v0, v1, :cond_0

    .line 564
    const/4 v0, 0x1

    .line 567
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isVideoRunningWithVideo()Z
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 556
    invoke-virtual {p0}, Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject;->isVideoRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject;->runState:Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$RunState;

    sget-object v1, Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$RunState;->USER_RUN_STATE_VIDEO_RUN:Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$RunState;

    if-ne v0, v1, :cond_0

    .line 557
    const/4 v0, 0x1

    .line 559
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setBusyState(Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$BusyState;)V
    .locals 0
    .param p1, "busyState"    # Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$BusyState;

    .prologue
    .line 496
    iput-object p1, p0, Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject;->busyState:Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$BusyState;

    .line 497
    return-void
.end method

.method public setCaller(Z)V
    .locals 0
    .param p1, "caller"    # Z

    .prologue
    .line 448
    iput-boolean p1, p0, Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject;->isCaller:Z

    .line 449
    return-void
.end method

.method public setCameraMuted(Z)V
    .locals 0
    .param p1, "cameraMuted"    # Z

    .prologue
    .line 456
    iput-boolean p1, p0, Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject;->isCameraMuted:Z

    .line 457
    return-void
.end method

.method public setMicMuted(Z)V
    .locals 0
    .param p1, "micMuted"    # Z

    .prologue
    .line 464
    iput-boolean p1, p0, Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject;->isMicMuted:Z

    .line 465
    return-void
.end method

.method public setOnScreen(Z)V
    .locals 0
    .param p1, "onScreen"    # Z

    .prologue
    .line 533
    iput-boolean p1, p0, Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject;->isOnScreen:Z

    .line 534
    return-void
.end method

.method public setRunState(Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$RunState;)V
    .locals 0
    .param p1, "runState"    # Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$RunState;

    .prologue
    .line 488
    iput-object p1, p0, Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject;->runState:Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$RunState;

    .line 489
    return-void
.end method

.method public setSpeaking(Z)V
    .locals 0
    .param p1, "speaking"    # Z

    .prologue
    .line 525
    iput-boolean p1, p0, Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject;->isSpeaking:Z

    .line 526
    return-void
.end method

.method public setStatusChangedListener(Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$a;)V
    .locals 0
    .param p1, "l"    # Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$a;

    .prologue
    .line 440
    iput-object p1, p0, Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject;->mChangedListener:Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$a;

    .line 441
    return-void
.end method

.method public setStatusType(Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$b;)V
    .locals 0
    .param p1, "statusType"    # Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$b;

    .prologue
    .line 517
    iput-object p1, p0, Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject;->statusType:Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$b;

    .line 518
    return-void
.end method

.method public setType(Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$ShowType;)V
    .locals 0
    .param p1, "type"    # Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$ShowType;

    .prologue
    .line 472
    iput-object p1, p0, Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject;->mType:Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$ShowType;

    .line 473
    return-void
.end method

.method public setUser(Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;)V
    .locals 0
    .param p1, "user"    # Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    .prologue
    .line 480
    iput-object p1, p0, Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject;->mUser:Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    .line 481
    return-void
.end method

.method public setUserState(Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$State;)V
    .locals 2
    .param p1, "userState"    # Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$State;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 504
    iget-object v0, p0, Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject;->userState:Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$State;

    .line 505
    .local v0, "oldState":Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$State;
    iput-object p1, p0, Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject;->userState:Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$State;

    .line 506
    if-eq v0, p1, :cond_0

    iget-object v1, p0, Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject;->mChangedListener:Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$a;

    if-eqz v1, :cond_0

    .line 507
    invoke-static {v0, p1}, Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject;->getAnimShowType(Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$State;Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$State;)Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$ShowAnimType;

    .line 510
    :cond_0
    return-void
.end method

.method public setUserStateDes(Ljava/lang/String;)V
    .locals 0
    .param p1, "userStateDes"    # Ljava/lang/String;

    .prologue
    .line 541
    iput-object p1, p0, Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject;->userStateDes:Ljava/lang/String;

    .line 542
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 598
    const-wide/16 v0, 0x0

    .line 599
    .local v0, "uid":J
    iget-object v2, p0, Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject;->mUser:Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    if-eqz v2, :cond_0

    .line 600
    iget-object v2, p0, Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject;->mUser:Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    iget-wide v0, v2, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->uid:J

    .line 602
    :cond_0
    const/16 v2, 0x8

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "MemberObject {"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string/jumbo v4, "mUser="

    aput-object v4, v2, v3

    const/4 v3, 0x2

    .line 603
    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x3

    const-string/jumbo v4, ", isMicMuted="

    aput-object v4, v2, v3

    const/4 v3, 0x4

    iget-boolean v4, p0, Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject;->isMicMuted:Z

    .line 604
    invoke-static {v4}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x5

    const-string/jumbo v4, ", isCameraMuted="

    aput-object v4, v2, v3

    const/4 v3, 0x6

    iget-boolean v4, p0, Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject;->isCameraMuted:Z

    .line 605
    invoke-static {v4}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x7

    const-string/jumbo v4, "}"

    aput-object v4, v2, v3

    .line 602
    invoke-static {v2}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 4
    .param p1, "parcel"    # Landroid/os/Parcel;
    .param p2, "i"    # I

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v3, 0x1

    .line 616
    iget-object v0, p0, Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject;->mType:Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$ShowType;

    invoke-virtual {v0}, Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$ShowType;->ordinal()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 617
    iget-object v0, p0, Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject;->mUser:Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    invoke-virtual {p1, v0, v3}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 618
    const/4 v0, 0x3

    new-array v0, v0, [Z

    const/4 v1, 0x0

    iget-boolean v2, p0, Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject;->isMicMuted:Z

    aput-boolean v2, v0, v1

    iget-boolean v1, p0, Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject;->isCameraMuted:Z

    aput-boolean v1, v0, v3

    const/4 v1, 0x2

    iget-boolean v2, p0, Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject;->isCaller:Z

    aput-boolean v2, v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBooleanArray([Z)V

    .line 619
    iget-object v0, p0, Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject;->userState:Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$State;

    invoke-virtual {v0}, Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$State;->ordinal()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 620
    iget-object v0, p0, Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject;->busyState:Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$BusyState;

    invoke-virtual {v0}, Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$BusyState;->ordinal()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 621
    iget-object v0, p0, Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject;->runState:Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$RunState;

    invoke-virtual {v0}, Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$RunState;->ordinal()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 622
    return-void
.end method
