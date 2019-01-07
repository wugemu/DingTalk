.class public Lcom/alibaba/android/projection/data/FocusDeviceObject;
.super Ljava/lang/Object;
.source "FocusDeviceObject.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/android/projection/data/FocusDeviceObject$ShowType;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/alibaba/android/projection/data/FocusDeviceObject;",
            ">;"
        }
    .end annotation
.end field

.field private static final KEY_IP_ADDR:Ljava/lang/String; = "dev_local_ip"

.field private static final KEY_MAC_ADDR:Ljava/lang/String; = "dev_mac_addr"

.field private static final KEY_ROUTER_NAME:Ljava/lang/String; = "router_name"

.field private static final MAIN_KEY:Ljava/lang/String; = "net_state"


# instance fields
.field public beCached:Z

.field public beMainDevice:Z

.field public creatorUid:J

.field public description:Ljava/lang/String;

.field public deviceCastCode:Ljava/lang/String;

.field public deviceId:J

.field public deviceNick:Ljava/lang/String;

.field public deviceNickInitial:Ljava/lang/String;

.field public deviceNickPinyin:Ljava/lang/String;

.field public deviceRemarks:Ljava/lang/String;

.field public deviceStatus:I

.field public deviceUid:J

.field public orgId:J

.field public runningStatus:Ljava/lang/String;

.field public showType:Lcom/alibaba/android/projection/data/FocusDeviceObject$ShowType;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 240
    new-instance v0, Lcom/alibaba/android/projection/data/FocusDeviceObject$1;

    invoke-direct {v0}, Lcom/alibaba/android/projection/data/FocusDeviceObject$1;-><init>()V

    sput-object v0, Lcom/alibaba/android/projection/data/FocusDeviceObject;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    sget-object v0, Lcom/alibaba/android/projection/data/FocusDeviceObject$ShowType;->EDITABLE:Lcom/alibaba/android/projection/data/FocusDeviceObject$ShowType;

    iput-object v0, p0, Lcom/alibaba/android/projection/data/FocusDeviceObject;->showType:Lcom/alibaba/android/projection/data/FocusDeviceObject$ShowType;

    .line 61
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 13
    .param p1, "parcel"    # Landroid/os/Parcel;

    .prologue
    const/4 v12, 0x4

    const/4 v11, 0x3

    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 157
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 158
    new-array v2, v12, [J

    .line 159
    .local v2, "l":[J
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readLongArray([J)V

    .line 160
    aget-wide v6, v2, v8

    iput-wide v6, p0, Lcom/alibaba/android/projection/data/FocusDeviceObject;->deviceUid:J

    .line 161
    aget-wide v6, v2, v9

    iput-wide v6, p0, Lcom/alibaba/android/projection/data/FocusDeviceObject;->orgId:J

    .line 162
    aget-wide v6, v2, v10

    iput-wide v6, p0, Lcom/alibaba/android/projection/data/FocusDeviceObject;->creatorUid:J

    .line 163
    aget-wide v6, v2, v11

    iput-wide v6, p0, Lcom/alibaba/android/projection/data/FocusDeviceObject;->deviceId:J

    .line 165
    new-array v1, v9, [I

    .line 166
    .local v1, "i":[I
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readIntArray([I)V

    .line 167
    aget v5, v1, v8

    iput v5, p0, Lcom/alibaba/android/projection/data/FocusDeviceObject;->deviceStatus:I

    .line 169
    new-array v0, v10, [Z

    .line 170
    .local v0, "b":[Z
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readBooleanArray([Z)V

    .line 171
    aget-boolean v5, v0, v8

    iput-boolean v5, p0, Lcom/alibaba/android/projection/data/FocusDeviceObject;->beMainDevice:Z

    .line 172
    aget-boolean v5, v0, v9

    iput-boolean v5, p0, Lcom/alibaba/android/projection/data/FocusDeviceObject;->beCached:Z

    .line 174
    const/4 v5, 0x6

    new-array v3, v5, [Ljava/lang/String;

    .line 175
    .local v3, "s":[Ljava/lang/String;
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->readStringArray([Ljava/lang/String;)V

    .line 176
    aget-object v5, v3, v8

    iput-object v5, p0, Lcom/alibaba/android/projection/data/FocusDeviceObject;->deviceNick:Ljava/lang/String;

    .line 177
    aget-object v5, v3, v9

    iput-object v5, p0, Lcom/alibaba/android/projection/data/FocusDeviceObject;->description:Ljava/lang/String;

    .line 178
    aget-object v5, v3, v10

    iput-object v5, p0, Lcom/alibaba/android/projection/data/FocusDeviceObject;->runningStatus:Ljava/lang/String;

    .line 179
    aget-object v5, v3, v11

    iput-object v5, p0, Lcom/alibaba/android/projection/data/FocusDeviceObject;->deviceRemarks:Ljava/lang/String;

    .line 180
    aget-object v5, v3, v12

    iput-object v5, p0, Lcom/alibaba/android/projection/data/FocusDeviceObject;->deviceNickPinyin:Ljava/lang/String;

    .line 181
    const/4 v5, 0x5

    aget-object v5, v3, v5

    iput-object v5, p0, Lcom/alibaba/android/projection/data/FocusDeviceObject;->deviceCastCode:Ljava/lang/String;

    .line 182
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 183
    .local v4, "type":I
    sget-object v5, Lcom/alibaba/android/projection/data/FocusDeviceObject$ShowType;->EDITABLE:Lcom/alibaba/android/projection/data/FocusDeviceObject$ShowType;

    invoke-virtual {v5}, Lcom/alibaba/android/projection/data/FocusDeviceObject$ShowType;->ordinal()I

    move-result v5

    if-ne v5, v4, :cond_1

    .line 184
    sget-object v5, Lcom/alibaba/android/projection/data/FocusDeviceObject$ShowType;->EDITABLE:Lcom/alibaba/android/projection/data/FocusDeviceObject$ShowType;

    iput-object v5, p0, Lcom/alibaba/android/projection/data/FocusDeviceObject;->showType:Lcom/alibaba/android/projection/data/FocusDeviceObject$ShowType;

    .line 194
    :cond_0
    :goto_0
    return-void

    .line 185
    :cond_1
    sget-object v5, Lcom/alibaba/android/projection/data/FocusDeviceObject$ShowType;->UNKNOWN:Lcom/alibaba/android/projection/data/FocusDeviceObject$ShowType;

    invoke-virtual {v5}, Lcom/alibaba/android/projection/data/FocusDeviceObject$ShowType;->ordinal()I

    move-result v5

    if-ne v5, v4, :cond_2

    .line 186
    sget-object v5, Lcom/alibaba/android/projection/data/FocusDeviceObject$ShowType;->UNKNOWN:Lcom/alibaba/android/projection/data/FocusDeviceObject$ShowType;

    iput-object v5, p0, Lcom/alibaba/android/projection/data/FocusDeviceObject;->showType:Lcom/alibaba/android/projection/data/FocusDeviceObject$ShowType;

    goto :goto_0

    .line 188
    :cond_2
    sget-object v5, Lcom/alibaba/android/projection/data/FocusDeviceObject$ShowType;->LOADING:Lcom/alibaba/android/projection/data/FocusDeviceObject$ShowType;

    invoke-virtual {v5}, Lcom/alibaba/android/projection/data/FocusDeviceObject$ShowType;->ordinal()I

    move-result v5

    if-ne v5, v4, :cond_3

    .line 189
    sget-object v5, Lcom/alibaba/android/projection/data/FocusDeviceObject$ShowType;->LOADING:Lcom/alibaba/android/projection/data/FocusDeviceObject$ShowType;

    iput-object v5, p0, Lcom/alibaba/android/projection/data/FocusDeviceObject;->showType:Lcom/alibaba/android/projection/data/FocusDeviceObject$ShowType;

    goto :goto_0

    .line 191
    :cond_3
    sget-object v5, Lcom/alibaba/android/projection/data/FocusDeviceObject$ShowType;->RUNNING:Lcom/alibaba/android/projection/data/FocusDeviceObject$ShowType;

    invoke-virtual {v5}, Lcom/alibaba/android/projection/data/FocusDeviceObject$ShowType;->ordinal()I

    move-result v5

    if-ne v5, v4, :cond_0

    .line 192
    sget-object v5, Lcom/alibaba/android/projection/data/FocusDeviceObject$ShowType;->RUNNING:Lcom/alibaba/android/projection/data/FocusDeviceObject$ShowType;

    iput-object v5, p0, Lcom/alibaba/android/projection/data/FocusDeviceObject;->showType:Lcom/alibaba/android/projection/data/FocusDeviceObject$ShowType;

    goto :goto_0
.end method

.method public constructor <init>(Lcdi;)V
    .locals 1
    .param p1, "model"    # Lcdi;

    .prologue
    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    sget-object v0, Lcom/alibaba/android/projection/data/FocusDeviceObject$ShowType;->EDITABLE:Lcom/alibaba/android/projection/data/FocusDeviceObject$ShowType;

    iput-object v0, p0, Lcom/alibaba/android/projection/data/FocusDeviceObject;->showType:Lcom/alibaba/android/projection/data/FocusDeviceObject$ShowType;

    .line 93
    if-eqz p1, :cond_0

    .line 94
    invoke-virtual {p0, p1}, Lcom/alibaba/android/projection/data/FocusDeviceObject;->fromIDLModel(Lcdi;)Lcom/alibaba/android/projection/data/FocusDeviceObject;

    .line 96
    :cond_0
    return-void
.end method

.method public constructor <init>(Lcom/alibaba/android/projection/data/FocusDeviceObject;)V
    .locals 2
    .param p1, "object"    # Lcom/alibaba/android/projection/data/FocusDeviceObject;

    .prologue
    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    iget-wide v0, p1, Lcom/alibaba/android/projection/data/FocusDeviceObject;->deviceUid:J

    iput-wide v0, p0, Lcom/alibaba/android/projection/data/FocusDeviceObject;->deviceUid:J

    .line 65
    iget-wide v0, p1, Lcom/alibaba/android/projection/data/FocusDeviceObject;->orgId:J

    iput-wide v0, p0, Lcom/alibaba/android/projection/data/FocusDeviceObject;->orgId:J

    .line 66
    iget-wide v0, p1, Lcom/alibaba/android/projection/data/FocusDeviceObject;->creatorUid:J

    iput-wide v0, p0, Lcom/alibaba/android/projection/data/FocusDeviceObject;->creatorUid:J

    .line 67
    iget-object v0, p1, Lcom/alibaba/android/projection/data/FocusDeviceObject;->deviceNick:Ljava/lang/String;

    iput-object v0, p0, Lcom/alibaba/android/projection/data/FocusDeviceObject;->deviceNick:Ljava/lang/String;

    .line 68
    iget-object v0, p1, Lcom/alibaba/android/projection/data/FocusDeviceObject;->description:Ljava/lang/String;

    iput-object v0, p0, Lcom/alibaba/android/projection/data/FocusDeviceObject;->description:Ljava/lang/String;

    .line 69
    iget v0, p1, Lcom/alibaba/android/projection/data/FocusDeviceObject;->deviceStatus:I

    iput v0, p0, Lcom/alibaba/android/projection/data/FocusDeviceObject;->deviceStatus:I

    .line 70
    iget-wide v0, p1, Lcom/alibaba/android/projection/data/FocusDeviceObject;->deviceId:J

    iput-wide v0, p0, Lcom/alibaba/android/projection/data/FocusDeviceObject;->deviceId:J

    .line 71
    iget-object v0, p1, Lcom/alibaba/android/projection/data/FocusDeviceObject;->deviceCastCode:Ljava/lang/String;

    iput-object v0, p0, Lcom/alibaba/android/projection/data/FocusDeviceObject;->deviceCastCode:Ljava/lang/String;

    .line 72
    iget-boolean v0, p1, Lcom/alibaba/android/projection/data/FocusDeviceObject;->beMainDevice:Z

    iput-boolean v0, p0, Lcom/alibaba/android/projection/data/FocusDeviceObject;->beMainDevice:Z

    .line 73
    iget-object v0, p1, Lcom/alibaba/android/projection/data/FocusDeviceObject;->runningStatus:Ljava/lang/String;

    iput-object v0, p0, Lcom/alibaba/android/projection/data/FocusDeviceObject;->runningStatus:Ljava/lang/String;

    .line 74
    iget-object v0, p1, Lcom/alibaba/android/projection/data/FocusDeviceObject;->deviceRemarks:Ljava/lang/String;

    iput-object v0, p0, Lcom/alibaba/android/projection/data/FocusDeviceObject;->deviceRemarks:Ljava/lang/String;

    .line 75
    iget-object v0, p1, Lcom/alibaba/android/projection/data/FocusDeviceObject;->deviceNickPinyin:Ljava/lang/String;

    iput-object v0, p0, Lcom/alibaba/android/projection/data/FocusDeviceObject;->deviceNickPinyin:Ljava/lang/String;

    .line 76
    iget-object v0, p1, Lcom/alibaba/android/projection/data/FocusDeviceObject;->showType:Lcom/alibaba/android/projection/data/FocusDeviceObject$ShowType;

    iput-object v0, p0, Lcom/alibaba/android/projection/data/FocusDeviceObject;->showType:Lcom/alibaba/android/projection/data/FocusDeviceObject$ShowType;

    .line 77
    iget-boolean v0, p1, Lcom/alibaba/android/projection/data/FocusDeviceObject;->beCached:Z

    iput-boolean v0, p0, Lcom/alibaba/android/projection/data/FocusDeviceObject;->beCached:Z

    .line 78
    return-void
.end method

.method public constructor <init>(Legw;Ljava/lang/String;)V
    .locals 2
    .param p1, "infoModel"    # Legw;
    .param p2, "code"    # Ljava/lang/String;

    .prologue
    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    sget-object v0, Lcom/alibaba/android/projection/data/FocusDeviceObject$ShowType;->EDITABLE:Lcom/alibaba/android/projection/data/FocusDeviceObject$ShowType;

    iput-object v0, p0, Lcom/alibaba/android/projection/data/FocusDeviceObject;->showType:Lcom/alibaba/android/projection/data/FocusDeviceObject$ShowType;

    .line 82
    if-eqz p1, :cond_0

    .line 83
    iget v0, p1, Legw;->b:I

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/alibaba/android/projection/data/FocusDeviceObject;->deviceId:J

    .line 84
    iget-object v0, p1, Legw;->a:Ljava/lang/String;

    iput-object v0, p0, Lcom/alibaba/android/projection/data/FocusDeviceObject;->deviceNick:Ljava/lang/String;

    .line 85
    iput-object p2, p0, Lcom/alibaba/android/projection/data/FocusDeviceObject;->deviceCastCode:Ljava/lang/String;

    .line 86
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/alibaba/android/projection/data/FocusDeviceObject;->deviceUid:J

    .line 87
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alibaba/android/projection/data/FocusDeviceObject;->beCached:Z

    .line 89
    :cond_0
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 198
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6
    .param p1, "obj"    # Ljava/lang/Object;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 228
    instance-of v1, p1, Lcom/alibaba/android/projection/data/FocusDeviceObject;

    .line 229
    .local v1, "flag":Z
    if-nez v1, :cond_0

    .line 236
    .end local v1    # "flag":Z
    :goto_0
    return v1

    .restart local v1    # "flag":Z
    :cond_0
    move-object v0, p1

    .line 232
    check-cast v0, Lcom/alibaba/android/projection/data/FocusDeviceObject;

    .line 233
    .local v0, "deviceObject":Lcom/alibaba/android/projection/data/FocusDeviceObject;
    iget-wide v2, p0, Lcom/alibaba/android/projection/data/FocusDeviceObject;->deviceUid:J

    iget-wide v4, v0, Lcom/alibaba/android/projection/data/FocusDeviceObject;->deviceUid:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_1

    .line 234
    const/4 v1, 0x1

    goto :goto_0

    .line 236
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public fromIDLModel(Lcdi;)Lcom/alibaba/android/projection/data/FocusDeviceObject;
    .locals 9
    .param p1, "model"    # Lcdi;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v8, 0x0

    .line 99
    if-eqz p1, :cond_1

    .line 100
    iget-object v5, p1, Lcdi;->c:Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/alibaba/android/projection/data/FocusDeviceObject;->orgId:J

    .line 101
    iget-object v5, p1, Lcdi;->k:Ljava/lang/String;

    iput-object v5, p0, Lcom/alibaba/android/projection/data/FocusDeviceObject;->deviceNick:Ljava/lang/String;

    .line 102
    iget-object v5, p1, Lcdi;->i:Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/alibaba/android/projection/data/FocusDeviceObject;->deviceUid:J

    .line 103
    iget-object v5, p1, Lcdi;->g:Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/alibaba/android/projection/data/FocusDeviceObject;->creatorUid:J

    .line 104
    iget-object v5, p1, Lcdi;->e:Ljava/lang/String;

    iput-object v5, p0, Lcom/alibaba/android/projection/data/FocusDeviceObject;->description:Ljava/lang/String;

    .line 105
    iget-object v5, p1, Lcdi;->f:Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    iput v5, p0, Lcom/alibaba/android/projection/data/FocusDeviceObject;->deviceStatus:I

    .line 106
    iget-object v5, p1, Lcdi;->n:Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    int-to-long v6, v5

    iput-wide v6, p0, Lcom/alibaba/android/projection/data/FocusDeviceObject;->deviceId:J

    .line 107
    iget-object v5, p1, Lcdi;->m:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 110
    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    iget-object v5, p1, Lcdi;->m:Ljava/lang/String;

    invoke-direct {v3, v5}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 111
    .local v3, "jsonObject":Lorg/json/JSONObject;
    if-eqz v3, :cond_0

    .line 112
    const-string/jumbo v5, "net_state"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 113
    const-string/jumbo v5, "net_state"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 114
    .local v4, "kaoqinji":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 115
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 116
    .local v0, "addrObject":Lorg/json/JSONObject;
    if-eqz v0, :cond_0

    .line 117
    const-string/jumbo v5, "dev_local_ip"

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 118
    .local v2, "ip":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 120
    invoke-static {v2}, Lali/mmpc/util/VerfCodeGenerator;->getVerfCodeFromLocalIp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/alibaba/android/projection/data/FocusDeviceObject;->deviceCastCode:Ljava/lang/String;

    .line 121
    iget-object v5, p0, Lcom/alibaba/android/projection/data/FocusDeviceObject;->deviceCastCode:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 122
    iget-object v5, p0, Lcom/alibaba/android/projection/data/FocusDeviceObject;->deviceCastCode:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/alibaba/android/projection/data/FocusDeviceObject;->deviceCastCode:Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 134
    .end local v0    # "addrObject":Lorg/json/JSONObject;
    .end local v2    # "ip":Ljava/lang/String;
    .end local v3    # "jsonObject":Lorg/json/JSONObject;
    .end local v4    # "kaoqinji":Ljava/lang/String;
    :cond_0
    :goto_0
    iput-boolean v8, p0, Lcom/alibaba/android/projection/data/FocusDeviceObject;->beMainDevice:Z

    .line 135
    iput-boolean v8, p0, Lcom/alibaba/android/projection/data/FocusDeviceObject;->beCached:Z

    .line 137
    :cond_1
    return-object p0

    .line 129
    :catch_0
    move-exception v1

    .line 130
    .local v1, "e":Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method public reset()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    const/4 v0, 0x0

    .line 141
    iput-wide v2, p0, Lcom/alibaba/android/projection/data/FocusDeviceObject;->deviceUid:J

    .line 142
    iput-wide v2, p0, Lcom/alibaba/android/projection/data/FocusDeviceObject;->orgId:J

    .line 143
    iput-wide v2, p0, Lcom/alibaba/android/projection/data/FocusDeviceObject;->creatorUid:J

    .line 144
    iput-object v0, p0, Lcom/alibaba/android/projection/data/FocusDeviceObject;->deviceNick:Ljava/lang/String;

    .line 145
    iput-object v0, p0, Lcom/alibaba/android/projection/data/FocusDeviceObject;->description:Ljava/lang/String;

    .line 146
    iput v1, p0, Lcom/alibaba/android/projection/data/FocusDeviceObject;->deviceStatus:I

    .line 147
    iput-wide v2, p0, Lcom/alibaba/android/projection/data/FocusDeviceObject;->deviceId:J

    .line 148
    iput-object v0, p0, Lcom/alibaba/android/projection/data/FocusDeviceObject;->deviceCastCode:Ljava/lang/String;

    .line 149
    iput-boolean v1, p0, Lcom/alibaba/android/projection/data/FocusDeviceObject;->beMainDevice:Z

    .line 150
    iput-object v0, p0, Lcom/alibaba/android/projection/data/FocusDeviceObject;->runningStatus:Ljava/lang/String;

    .line 151
    iput-object v0, p0, Lcom/alibaba/android/projection/data/FocusDeviceObject;->deviceRemarks:Ljava/lang/String;

    .line 152
    iput-object v0, p0, Lcom/alibaba/android/projection/data/FocusDeviceObject;->deviceNickPinyin:Ljava/lang/String;

    .line 153
    sget-object v0, Lcom/alibaba/android/projection/data/FocusDeviceObject$ShowType;->EDITABLE:Lcom/alibaba/android/projection/data/FocusDeviceObject$ShowType;

    iput-object v0, p0, Lcom/alibaba/android/projection/data/FocusDeviceObject;->showType:Lcom/alibaba/android/projection/data/FocusDeviceObject$ShowType;

    .line 154
    iput-boolean v1, p0, Lcom/alibaba/android/projection/data/FocusDeviceObject;->beCached:Z

    .line 155
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/16 v4, 0x27

    .line 212
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "FocusDeviceObject{deviceUid="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v2, p0, Lcom/alibaba/android/projection/data/FocusDeviceObject;->deviceUid:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", orgId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/alibaba/android/projection/data/FocusDeviceObject;->orgId:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", creatorUid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/alibaba/android/projection/data/FocusDeviceObject;->creatorUid:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", deviceNick=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/projection/data/FocusDeviceObject;->deviceNick:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", description=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/projection/data/FocusDeviceObject;->description:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", deviceStatus="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/alibaba/android/projection/data/FocusDeviceObject;->deviceStatus:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", beMainDevice="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/alibaba/android/projection/data/FocusDeviceObject;->beMainDevice:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", runningStatus=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/projection/data/FocusDeviceObject;->runningStatus:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", deviceRemarks=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/projection/data/FocusDeviceObject;->deviceRemarks:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", showType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/projection/data/FocusDeviceObject;->showType:Lcom/alibaba/android/projection/data/FocusDeviceObject$ShowType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 9
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 203
    new-array v0, v8, [J

    iget-wide v2, p0, Lcom/alibaba/android/projection/data/FocusDeviceObject;->deviceUid:J

    aput-wide v2, v0, v4

    iget-wide v2, p0, Lcom/alibaba/android/projection/data/FocusDeviceObject;->orgId:J

    aput-wide v2, v0, v5

    iget-wide v2, p0, Lcom/alibaba/android/projection/data/FocusDeviceObject;->creatorUid:J

    aput-wide v2, v0, v6

    iget-wide v2, p0, Lcom/alibaba/android/projection/data/FocusDeviceObject;->deviceId:J

    aput-wide v2, v0, v7

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeLongArray([J)V

    .line 204
    new-array v0, v5, [I

    iget v1, p0, Lcom/alibaba/android/projection/data/FocusDeviceObject;->deviceStatus:I

    aput v1, v0, v4

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 205
    new-array v0, v6, [Z

    iget-boolean v1, p0, Lcom/alibaba/android/projection/data/FocusDeviceObject;->beMainDevice:Z

    aput-boolean v1, v0, v4

    iget-boolean v1, p0, Lcom/alibaba/android/projection/data/FocusDeviceObject;->beCached:Z

    aput-boolean v1, v0, v5

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBooleanArray([Z)V

    .line 206
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    iget-object v1, p0, Lcom/alibaba/android/projection/data/FocusDeviceObject;->deviceNick:Ljava/lang/String;

    aput-object v1, v0, v4

    iget-object v1, p0, Lcom/alibaba/android/projection/data/FocusDeviceObject;->description:Ljava/lang/String;

    aput-object v1, v0, v5

    iget-object v1, p0, Lcom/alibaba/android/projection/data/FocusDeviceObject;->runningStatus:Ljava/lang/String;

    aput-object v1, v0, v6

    iget-object v1, p0, Lcom/alibaba/android/projection/data/FocusDeviceObject;->deviceRemarks:Ljava/lang/String;

    aput-object v1, v0, v7

    iget-object v1, p0, Lcom/alibaba/android/projection/data/FocusDeviceObject;->deviceNickPinyin:Ljava/lang/String;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    iget-object v2, p0, Lcom/alibaba/android/projection/data/FocusDeviceObject;->deviceCastCode:Ljava/lang/String;

    aput-object v2, v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 207
    iget-object v0, p0, Lcom/alibaba/android/projection/data/FocusDeviceObject;->showType:Lcom/alibaba/android/projection/data/FocusDeviceObject$ShowType;

    invoke-virtual {v0}, Lcom/alibaba/android/projection/data/FocusDeviceObject$ShowType;->ordinal()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 208
    return-void
.end method
