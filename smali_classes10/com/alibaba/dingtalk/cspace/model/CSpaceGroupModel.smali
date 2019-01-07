.class public Lcom/alibaba/dingtalk/cspace/model/CSpaceGroupModel;
.super Ljava/lang/Object;
.source "CSpaceGroupModel.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/dingtalk/cspace/model/CSpaceGroupModel$a;,
        Lcom/alibaba/dingtalk/cspace/model/CSpaceGroupModel$b;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/alibaba/dingtalk/cspace/model/CSpaceGroupModel;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private accountName:Ljava/lang/String;

.field private conversionId:Ljava/lang/String;

.field private groupName:Ljava/lang/String;

.field private modifiedTime:Ljava/lang/Long;

.field private sortKey:Ljava/lang/String;

.field private spaceId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 129
    new-instance v0, Lcom/alibaba/dingtalk/cspace/model/CSpaceGroupModel$1;

    invoke-direct {v0}, Lcom/alibaba/dingtalk/cspace/model/CSpaceGroupModel$1;-><init>()V

    sput-object v0, Lcom/alibaba/dingtalk/cspace/model/CSpaceGroupModel;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 121
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 122
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/dingtalk/cspace/model/CSpaceGroupModel;->accountName:Ljava/lang/String;

    .line 123
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/dingtalk/cspace/model/CSpaceGroupModel;->spaceId:Ljava/lang/String;

    .line 124
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/dingtalk/cspace/model/CSpaceGroupModel;->groupName:Ljava/lang/String;

    .line 125
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/dingtalk/cspace/model/CSpaceGroupModel;->modifiedTime:Ljava/lang/Long;

    .line 126
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/dingtalk/cspace/model/CSpaceGroupModel;->sortKey:Ljava/lang/String;

    .line 127
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "accountName"    # Ljava/lang/String;
    .param p2, "spaceId"    # Ljava/lang/String;
    .param p3, "groupName"    # Ljava/lang/String;

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/alibaba/dingtalk/cspace/model/CSpaceGroupModel;->accountName:Ljava/lang/String;

    .line 23
    iput-object p2, p0, Lcom/alibaba/dingtalk/cspace/model/CSpaceGroupModel;->spaceId:Ljava/lang/String;

    .line 24
    iput-object p3, p0, Lcom/alibaba/dingtalk/cspace/model/CSpaceGroupModel;->groupName:Ljava/lang/String;

    .line 25
    invoke-virtual {p0, p3}, Lcom/alibaba/dingtalk/cspace/model/CSpaceGroupModel;->getSortKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/dingtalk/cspace/model/CSpaceGroupModel;->sortKey:Ljava/lang/String;

    .line 26
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 108
    const/4 v0, 0x0

    return v0
.end method

.method public getAccountName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/model/CSpaceGroupModel;->accountName:Ljava/lang/String;

    return-object v0
.end method

.method public getConversionId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/model/CSpaceGroupModel;->conversionId:Ljava/lang/String;

    return-object v0
.end method

.method public getGroupName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/model/CSpaceGroupModel;->groupName:Ljava/lang/String;

    return-object v0
.end method

.method public getModifiedTime()Ljava/lang/Long;
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/model/CSpaceGroupModel;->modifiedTime:Ljava/lang/Long;

    return-object v0
.end method

.method public getSortKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/model/CSpaceGroupModel;->sortKey:Ljava/lang/String;

    return-object v0
.end method

.method public getSortKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 103
    invoke-static {p1}, Lgpw;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSpaceId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/model/CSpaceGroupModel;->spaceId:Ljava/lang/String;

    return-object v0
.end method

.method public setAccountName(Ljava/lang/String;)V
    .locals 0
    .param p1, "accountName"    # Ljava/lang/String;

    .prologue
    .line 63
    iput-object p1, p0, Lcom/alibaba/dingtalk/cspace/model/CSpaceGroupModel;->accountName:Ljava/lang/String;

    .line 64
    return-void
.end method

.method public setConversionId(Ljava/lang/String;)V
    .locals 0
    .param p1, "conversionId"    # Ljava/lang/String;

    .prologue
    .line 87
    iput-object p1, p0, Lcom/alibaba/dingtalk/cspace/model/CSpaceGroupModel;->conversionId:Ljava/lang/String;

    .line 88
    return-void
.end method

.method public setGroupName(Ljava/lang/String;)V
    .locals 0
    .param p1, "groupName"    # Ljava/lang/String;

    .prologue
    .line 79
    iput-object p1, p0, Lcom/alibaba/dingtalk/cspace/model/CSpaceGroupModel;->groupName:Ljava/lang/String;

    .line 80
    return-void
.end method

.method public setModifiedTime(Ljava/lang/Long;)V
    .locals 0
    .param p1, "modifiedTime"    # Ljava/lang/Long;

    .prologue
    .line 95
    iput-object p1, p0, Lcom/alibaba/dingtalk/cspace/model/CSpaceGroupModel;->modifiedTime:Ljava/lang/Long;

    .line 96
    return-void
.end method

.method public setSpaceId(Ljava/lang/String;)V
    .locals 0
    .param p1, "spaceId"    # Ljava/lang/String;

    .prologue
    .line 71
    iput-object p1, p0, Lcom/alibaba/dingtalk/cspace/model/CSpaceGroupModel;->spaceId:Ljava/lang/String;

    .line 72
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 113
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/model/CSpaceGroupModel;->accountName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 114
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/model/CSpaceGroupModel;->spaceId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 115
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/model/CSpaceGroupModel;->groupName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 116
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/model/CSpaceGroupModel;->conversionId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 117
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/model/CSpaceGroupModel;->modifiedTime:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 118
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/model/CSpaceGroupModel;->sortKey:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 119
    return-void
.end method
