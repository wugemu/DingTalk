.class public Lcom/alibaba/dingtalk/cspace/model/CsOrg;
.super Ljava/lang/Object;
.source "CsOrg.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/alibaba/dingtalk/cspace/model/CsOrg;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private id:J

.field private name:Ljava/lang/String;

.field private totalQuota:J

.field private usedQuota:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 44
    new-instance v0, Lcom/alibaba/dingtalk/cspace/model/CsOrg$1;

    invoke-direct {v0}, Lcom/alibaba/dingtalk/cspace/model/CsOrg$1;-><init>()V

    sput-object v0, Lcom/alibaba/dingtalk/cspace/model/CsOrg;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alibaba/dingtalk/cspace/model/CsOrg;->id:J

    .line 30
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/dingtalk/cspace/model/CsOrg;->name:Ljava/lang/String;

    .line 31
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/alibaba/dingtalk/cspace/model/CsOrg$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Lcom/alibaba/dingtalk/cspace/model/CsOrg$1;

    .prologue
    .line 11
    invoke-direct {p0, p1}, Lcom/alibaba/dingtalk/cspace/model/CsOrg;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public static create()Lcom/alibaba/dingtalk/cspace/model/CsOrg;
    .locals 1

    .prologue
    .line 22
    new-instance v0, Lcom/alibaba/dingtalk/cspace/model/CsOrg;

    invoke-direct {v0}, Lcom/alibaba/dingtalk/cspace/model/CsOrg;-><init>()V

    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 41
    const/4 v0, 0x0

    return v0
.end method

.method public getId()J
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 60
    iget-wide v0, p0, Lcom/alibaba/dingtalk/cspace/model/CsOrg;->id:J

    return-wide v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/model/CsOrg;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getTotalQuota()J
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 76
    iget-wide v0, p0, Lcom/alibaba/dingtalk/cspace/model/CsOrg;->totalQuota:J

    return-wide v0
.end method

.method public getUsedQuota()J
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 84
    iget-wide v0, p0, Lcom/alibaba/dingtalk/cspace/model/CsOrg;->usedQuota:J

    return-wide v0
.end method

.method public setId(J)V
    .locals 1
    .param p1, "id"    # J

    .prologue
    .line 64
    iput-wide p1, p0, Lcom/alibaba/dingtalk/cspace/model/CsOrg;->id:J

    .line 65
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 72
    iput-object p1, p0, Lcom/alibaba/dingtalk/cspace/model/CsOrg;->name:Ljava/lang/String;

    .line 73
    return-void
.end method

.method public setTotalQuota(J)V
    .locals 1
    .param p1, "totalQuota"    # J

    .prologue
    .line 80
    iput-wide p1, p0, Lcom/alibaba/dingtalk/cspace/model/CsOrg;->totalQuota:J

    .line 81
    return-void
.end method

.method public setUsedQuota(J)V
    .locals 1
    .param p1, "usedQuota"    # J

    .prologue
    .line 88
    iput-wide p1, p0, Lcom/alibaba/dingtalk/cspace/model/CsOrg;->usedQuota:J

    .line 89
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
    .line 35
    iget-wide v0, p0, Lcom/alibaba/dingtalk/cspace/model/CsOrg;->id:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 36
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/model/CsOrg;->name:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 37
    return-void
.end method
