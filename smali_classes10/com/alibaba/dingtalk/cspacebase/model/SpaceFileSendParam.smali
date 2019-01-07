.class public Lcom/alibaba/dingtalk/cspacebase/model/SpaceFileSendParam;
.super Ljava/lang/Object;
.source "SpaceFileSendParam.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/alibaba/dingtalk/cspacebase/model/SpaceFileSendParam;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private intentAction:Ljava/lang/String;

.field private isCopy:Z

.field private max:I

.field private needThumbnail:Z

.field private orgId:J

.field private sendType:I

.field private statisticSrc:Ljava/lang/String;

.field private targetSpaceId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 141
    new-instance v0, Lcom/alibaba/dingtalk/cspacebase/model/SpaceFileSendParam$1;

    invoke-direct {v0}, Lcom/alibaba/dingtalk/cspacebase/model/SpaceFileSendParam$1;-><init>()V

    sput-object v0, Lcom/alibaba/dingtalk/cspacebase/model/SpaceFileSendParam;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 111
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 3
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 113
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 114
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/alibaba/dingtalk/cspacebase/model/SpaceFileSendParam;->isCopy:Z

    .line 115
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/dingtalk/cspacebase/model/SpaceFileSendParam;->targetSpaceId:Ljava/lang/String;

    .line 116
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_1

    :goto_1
    iput-boolean v1, p0, Lcom/alibaba/dingtalk/cspacebase/model/SpaceFileSendParam;->needThumbnail:Z

    .line 117
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alibaba/dingtalk/cspacebase/model/SpaceFileSendParam;->orgId:J

    .line 118
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/alibaba/dingtalk/cspacebase/model/SpaceFileSendParam;->max:I

    .line 119
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/dingtalk/cspacebase/model/SpaceFileSendParam;->intentAction:Ljava/lang/String;

    .line 120
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/alibaba/dingtalk/cspacebase/model/SpaceFileSendParam;->sendType:I

    .line 121
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/dingtalk/cspacebase/model/SpaceFileSendParam;->statisticSrc:Ljava/lang/String;

    .line 122
    return-void

    :cond_0
    move v0, v2

    .line 114
    goto :goto_0

    :cond_1
    move v1, v2

    .line 116
    goto :goto_1
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 138
    const/4 v0, 0x0

    return v0
.end method

.method public getIntentAction()Ljava/lang/String;
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspacebase/model/SpaceFileSendParam;->intentAction:Ljava/lang/String;

    return-object v0
.end method

.method public getMax()I
    .locals 1

    .prologue
    .line 78
    iget v0, p0, Lcom/alibaba/dingtalk/cspacebase/model/SpaceFileSendParam;->max:I

    return v0
.end method

.method public getOrgId()J
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 70
    iget-wide v0, p0, Lcom/alibaba/dingtalk/cspacebase/model/SpaceFileSendParam;->orgId:J

    return-wide v0
.end method

.method public getSendType()I
    .locals 1

    .prologue
    .line 94
    iget v0, p0, Lcom/alibaba/dingtalk/cspacebase/model/SpaceFileSendParam;->sendType:I

    return v0
.end method

.method public getStatisticSrc()Ljava/lang/String;
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspacebase/model/SpaceFileSendParam;->statisticSrc:Ljava/lang/String;

    return-object v0
.end method

.method public getTargetSpaceId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspacebase/model/SpaceFileSendParam;->targetSpaceId:Ljava/lang/String;

    return-object v0
.end method

.method public isCopy()Z
    .locals 1

    .prologue
    .line 46
    iget-boolean v0, p0, Lcom/alibaba/dingtalk/cspacebase/model/SpaceFileSendParam;->isCopy:Z

    return v0
.end method

.method public isNeedThumbnail()Z
    .locals 1

    .prologue
    .line 62
    iget-boolean v0, p0, Lcom/alibaba/dingtalk/cspacebase/model/SpaceFileSendParam;->needThumbnail:Z

    return v0
.end method

.method public setCopy(Z)V
    .locals 0
    .param p1, "copy"    # Z

    .prologue
    .line 50
    iput-boolean p1, p0, Lcom/alibaba/dingtalk/cspacebase/model/SpaceFileSendParam;->isCopy:Z

    .line 51
    return-void
.end method

.method public setIntentAction(Ljava/lang/String;)V
    .locals 0
    .param p1, "intentAction"    # Ljava/lang/String;

    .prologue
    .line 90
    iput-object p1, p0, Lcom/alibaba/dingtalk/cspacebase/model/SpaceFileSendParam;->intentAction:Ljava/lang/String;

    .line 91
    return-void
.end method

.method public setMax(I)V
    .locals 0
    .param p1, "max"    # I

    .prologue
    .line 82
    iput p1, p0, Lcom/alibaba/dingtalk/cspacebase/model/SpaceFileSendParam;->max:I

    .line 83
    return-void
.end method

.method public setNeedThumbnail(Z)V
    .locals 0
    .param p1, "needThumbnail"    # Z

    .prologue
    .line 66
    iput-boolean p1, p0, Lcom/alibaba/dingtalk/cspacebase/model/SpaceFileSendParam;->needThumbnail:Z

    .line 67
    return-void
.end method

.method public setOrgId(J)V
    .locals 1
    .param p1, "orgId"    # J

    .prologue
    .line 74
    iput-wide p1, p0, Lcom/alibaba/dingtalk/cspacebase/model/SpaceFileSendParam;->orgId:J

    .line 75
    return-void
.end method

.method public setSendType(I)V
    .locals 0
    .param p1, "sendType"    # I

    .prologue
    .line 98
    iput p1, p0, Lcom/alibaba/dingtalk/cspacebase/model/SpaceFileSendParam;->sendType:I

    .line 99
    return-void
.end method

.method public setStatisticSrc(Ljava/lang/String;)V
    .locals 0
    .param p1, "statisticSrc"    # Ljava/lang/String;

    .prologue
    .line 106
    iput-object p1, p0, Lcom/alibaba/dingtalk/cspacebase/model/SpaceFileSendParam;->statisticSrc:Ljava/lang/String;

    .line 107
    return-void
.end method

.method public setTargetSpaceId(Ljava/lang/String;)V
    .locals 0
    .param p1, "targetSpaceId"    # Ljava/lang/String;

    .prologue
    .line 58
    iput-object p1, p0, Lcom/alibaba/dingtalk/cspacebase/model/SpaceFileSendParam;->targetSpaceId:Ljava/lang/String;

    .line 59
    return-void
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

    .line 126
    iget-boolean v0, p0, Lcom/alibaba/dingtalk/cspacebase/model/SpaceFileSendParam;->isCopy:Z

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 127
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspacebase/model/SpaceFileSendParam;->targetSpaceId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 128
    iget-boolean v0, p0, Lcom/alibaba/dingtalk/cspacebase/model/SpaceFileSendParam;->needThumbnail:Z

    if-eqz v0, :cond_1

    :goto_1
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 129
    iget-wide v0, p0, Lcom/alibaba/dingtalk/cspacebase/model/SpaceFileSendParam;->orgId:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 130
    iget v0, p0, Lcom/alibaba/dingtalk/cspacebase/model/SpaceFileSendParam;->max:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 131
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspacebase/model/SpaceFileSendParam;->intentAction:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 132
    iget v0, p0, Lcom/alibaba/dingtalk/cspacebase/model/SpaceFileSendParam;->sendType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 133
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspacebase/model/SpaceFileSendParam;->statisticSrc:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 134
    return-void

    :cond_0
    move v0, v2

    .line 126
    goto :goto_0

    :cond_1
    move v1, v2

    .line 128
    goto :goto_1
.end method
