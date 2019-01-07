.class public Lcom/alibaba/doraemon/impl/health/Statistics/traffic/TrafficInfo;
.super Ljava/lang/Object;
.source "TrafficInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/alibaba/doraemon/impl/health/Statistics/traffic/TrafficInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mBackOtherRxBytes:J

.field private mBackOtherTxBytes:J

.field private mBackWifiRxBytes:J

.field private mBackWifiTxBytes:J

.field private mForeOtherRxBytes:J

.field private mForeOtherTxBytes:J

.field private mForeWifiRxBytes:J

.field private mForeWifiTxBytes:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    new-instance v0, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/TrafficInfo$1;

    invoke-direct {v0}, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/TrafficInfo$1;-><init>()V

    sput-object v0, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/TrafficInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const-wide/16 v0, 0x0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput-wide v0, p0, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/TrafficInfo;->mForeWifiTxBytes:J

    .line 11
    iput-wide v0, p0, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/TrafficInfo;->mForeOtherTxBytes:J

    .line 12
    iput-wide v0, p0, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/TrafficInfo;->mBackWifiTxBytes:J

    .line 13
    iput-wide v0, p0, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/TrafficInfo;->mBackOtherTxBytes:J

    .line 14
    iput-wide v0, p0, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/TrafficInfo;->mForeWifiRxBytes:J

    .line 15
    iput-wide v0, p0, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/TrafficInfo;->mForeOtherRxBytes:J

    .line 16
    iput-wide v0, p0, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/TrafficInfo;->mBackWifiRxBytes:J

    .line 17
    iput-wide v0, p0, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/TrafficInfo;->mBackOtherRxBytes:J

    .line 19
    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    const-wide/16 v0, 0x0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput-wide v0, p0, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/TrafficInfo;->mForeWifiTxBytes:J

    .line 11
    iput-wide v0, p0, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/TrafficInfo;->mForeOtherTxBytes:J

    .line 12
    iput-wide v0, p0, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/TrafficInfo;->mBackWifiTxBytes:J

    .line 13
    iput-wide v0, p0, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/TrafficInfo;->mBackOtherTxBytes:J

    .line 14
    iput-wide v0, p0, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/TrafficInfo;->mForeWifiRxBytes:J

    .line 15
    iput-wide v0, p0, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/TrafficInfo;->mForeOtherRxBytes:J

    .line 16
    iput-wide v0, p0, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/TrafficInfo;->mBackWifiRxBytes:J

    .line 17
    iput-wide v0, p0, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/TrafficInfo;->mBackOtherRxBytes:J

    .line 22
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/TrafficInfo;->mForeWifiTxBytes:J

    .line 23
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/TrafficInfo;->mForeOtherTxBytes:J

    .line 24
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/TrafficInfo;->mBackWifiTxBytes:J

    .line 25
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/TrafficInfo;->mBackOtherTxBytes:J

    .line 26
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/TrafficInfo;->mForeWifiRxBytes:J

    .line 27
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/TrafficInfo;->mForeOtherRxBytes:J

    .line 28
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/TrafficInfo;->mBackWifiRxBytes:J

    .line 29
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/TrafficInfo;->mBackOtherRxBytes:J

    .line 30
    return-void
.end method


# virtual methods
.method public addBackOtherRxBytes(J)V
    .locals 3
    .param p1, "mBackOtherRxBytes"    # J

    .prologue
    .line 97
    iget-wide v0, p0, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/TrafficInfo;->mBackOtherRxBytes:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/TrafficInfo;->mBackOtherRxBytes:J

    .line 98
    return-void
.end method

.method public addBackOtherTxBytes(J)V
    .locals 3
    .param p1, "mBackOtherTxBytes"    # J

    .prologue
    .line 83
    iget-wide v0, p0, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/TrafficInfo;->mBackOtherTxBytes:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/TrafficInfo;->mBackOtherTxBytes:J

    .line 84
    return-void
.end method

.method public addBackWifiRxBytes(J)V
    .locals 3
    .param p1, "mBackWifiRxBytes"    # J

    .prologue
    .line 94
    iget-wide v0, p0, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/TrafficInfo;->mBackWifiRxBytes:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/TrafficInfo;->mBackWifiRxBytes:J

    .line 95
    return-void
.end method

.method public addBackWifiTxBytes(J)V
    .locals 3
    .param p1, "mBackWifiTxBytes"    # J

    .prologue
    .line 80
    iget-wide v0, p0, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/TrafficInfo;->mBackWifiTxBytes:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/TrafficInfo;->mBackWifiTxBytes:J

    .line 81
    return-void
.end method

.method public addForeOtherRxBytes(J)V
    .locals 3
    .param p1, "mForeOtherRxBytes"    # J

    .prologue
    .line 90
    iget-wide v0, p0, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/TrafficInfo;->mForeOtherRxBytes:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/TrafficInfo;->mForeOtherRxBytes:J

    .line 91
    return-void
.end method

.method public addForeOtherTxBytes(J)V
    .locals 3
    .param p1, "mForeOtherTxBytes"    # J

    .prologue
    .line 76
    iget-wide v0, p0, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/TrafficInfo;->mForeOtherTxBytes:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/TrafficInfo;->mForeOtherTxBytes:J

    .line 77
    return-void
.end method

.method public addForeWifiRxBytes(J)V
    .locals 3
    .param p1, "mForeWifiRxBytes"    # J

    .prologue
    .line 87
    iget-wide v0, p0, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/TrafficInfo;->mForeWifiRxBytes:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/TrafficInfo;->mForeWifiRxBytes:J

    .line 88
    return-void
.end method

.method public addForeWifiTxBytes(J)V
    .locals 3
    .param p1, "mForeWifiTxBytes"    # J

    .prologue
    .line 73
    iget-wide v0, p0, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/TrafficInfo;->mForeWifiTxBytes:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/TrafficInfo;->mForeWifiTxBytes:J

    .line 74
    return-void
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 102
    const/4 v0, 0x0

    return v0
.end method

.method public getBackOtherBytes()J
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 57
    iget-wide v0, p0, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/TrafficInfo;->mBackOtherTxBytes:J

    iget-wide v2, p0, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/TrafficInfo;->mBackOtherRxBytes:J

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public getBackWifiBytes()J
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 49
    iget-wide v0, p0, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/TrafficInfo;->mBackWifiTxBytes:J

    iget-wide v2, p0, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/TrafficInfo;->mBackWifiRxBytes:J

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public getBackgroundBytes()J
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 65
    invoke-virtual {p0}, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/TrafficInfo;->getBackWifiBytes()J

    move-result-wide v0

    invoke-virtual {p0}, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/TrafficInfo;->getBackOtherBytes()J

    move-result-wide v2

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public getForeOtherBytes()J
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 53
    iget-wide v0, p0, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/TrafficInfo;->mForeOtherTxBytes:J

    iget-wide v2, p0, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/TrafficInfo;->mForeOtherRxBytes:J

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public getForeWifiBytes()J
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 45
    iget-wide v0, p0, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/TrafficInfo;->mForeWifiTxBytes:J

    iget-wide v2, p0, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/TrafficInfo;->mForeWifiRxBytes:J

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public getForegroundBytes()J
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 61
    invoke-virtual {p0}, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/TrafficInfo;->getForeWifiBytes()J

    move-result-wide v0

    invoke-virtual {p0}, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/TrafficInfo;->getForeOtherBytes()J

    move-result-wide v2

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public getTotalBytes()J
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 69
    invoke-virtual {p0}, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/TrafficInfo;->getBackgroundBytes()J

    move-result-wide v0

    invoke-virtual {p0}, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/TrafficInfo;->getForegroundBytes()J

    move-result-wide v2

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 119
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 120
    .local v0, "stringBuilder":Ljava/lang/StringBuilder;
    const-string/jumbo v1, "mForeWifiTxBytes:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/TrafficInfo;->mForeWifiTxBytes:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "mForeOtherTxBytes:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/TrafficInfo;->mForeOtherTxBytes:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "mBackWifiTxBytes:"

    .line 121
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/TrafficInfo;->mBackWifiTxBytes:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "mBackOtherTxBytes:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/TrafficInfo;->mBackOtherTxBytes:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "mForeWifiRxBytes:"

    .line 122
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/TrafficInfo;->mForeWifiRxBytes:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "mForeOtherRxBytes:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/TrafficInfo;->mForeOtherRxBytes:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "mBackWifiRxBytes:"

    .line 123
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/TrafficInfo;->mBackWifiRxBytes:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "mBackOtherRxBytes:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/TrafficInfo;->mBackOtherRxBytes:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 124
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 107
    iget-wide v0, p0, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/TrafficInfo;->mForeWifiTxBytes:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 108
    iget-wide v0, p0, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/TrafficInfo;->mForeOtherTxBytes:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 109
    iget-wide v0, p0, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/TrafficInfo;->mBackWifiTxBytes:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 110
    iget-wide v0, p0, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/TrafficInfo;->mBackOtherTxBytes:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 111
    iget-wide v0, p0, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/TrafficInfo;->mForeWifiRxBytes:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 112
    iget-wide v0, p0, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/TrafficInfo;->mForeOtherRxBytes:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 113
    iget-wide v0, p0, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/TrafficInfo;->mBackWifiRxBytes:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 114
    iget-wide v0, p0, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/TrafficInfo;->mBackOtherRxBytes:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 115
    return-void
.end method
