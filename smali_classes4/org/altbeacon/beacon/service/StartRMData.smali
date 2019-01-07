.class public Lorg/altbeacon/beacon/service/StartRMData;
.super Ljava/lang/Object;
.source "StartRMData.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Ljava/io/Serializable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lorg/altbeacon/beacon/service/StartRMData;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private backgroundFlag:Z

.field private betweenScanPeriod:J

.field private callbackPackageName:Ljava/lang/String;

.field private region:Lorg/altbeacon/beacon/Region;

.field private scanPeriod:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 80
    new-instance v0, Lorg/altbeacon/beacon/service/StartRMData$1;

    invoke-direct {v0}, Lorg/altbeacon/beacon/service/StartRMData$1;-><init>()V

    sput-object v0, Lorg/altbeacon/beacon/service/StartRMData;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(JJZ)V
    .locals 1
    .param p1, "scanPeriod"    # J
    .param p3, "betweenScanPeriod"    # J
    .param p5, "backgroundFlag"    # Z

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-wide p1, p0, Lorg/altbeacon/beacon/service/StartRMData;->scanPeriod:J

    .line 46
    iput-wide p3, p0, Lorg/altbeacon/beacon/service/StartRMData;->betweenScanPeriod:J

    .line 47
    iput-boolean p5, p0, Lorg/altbeacon/beacon/service/StartRMData;->backgroundFlag:Z

    .line 48
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    const-class v0, Lorg/altbeacon/beacon/service/StartRMData;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lorg/altbeacon/beacon/Region;

    iput-object v0, p0, Lorg/altbeacon/beacon/service/StartRMData;->region:Lorg/altbeacon/beacon/Region;

    .line 93
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/altbeacon/beacon/service/StartRMData;->callbackPackageName:Ljava/lang/String;

    .line 94
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/altbeacon/beacon/service/StartRMData;->scanPeriod:J

    .line 95
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/altbeacon/beacon/service/StartRMData;->betweenScanPeriod:J

    .line 96
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lorg/altbeacon/beacon/service/StartRMData;->backgroundFlag:Z

    .line 97
    return-void

    .line 96
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lorg/altbeacon/beacon/service/StartRMData$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Lorg/altbeacon/beacon/service/StartRMData$1;

    .prologue
    .line 33
    invoke-direct {p0, p1}, Lorg/altbeacon/beacon/service/StartRMData;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Lorg/altbeacon/beacon/Region;Ljava/lang/String;)V
    .locals 0
    .param p1, "region"    # Lorg/altbeacon/beacon/Region;
    .param p2, "callbackPackageName"    # Ljava/lang/String;

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, Lorg/altbeacon/beacon/service/StartRMData;->region:Lorg/altbeacon/beacon/Region;

    .line 42
    iput-object p2, p0, Lorg/altbeacon/beacon/service/StartRMData;->callbackPackageName:Ljava/lang/String;

    .line 43
    return-void
.end method

.method public constructor <init>(Lorg/altbeacon/beacon/Region;Ljava/lang/String;JJZ)V
    .locals 1
    .param p1, "region"    # Lorg/altbeacon/beacon/Region;
    .param p2, "callbackPackageName"    # Ljava/lang/String;
    .param p3, "scanPeriod"    # J
    .param p5, "betweenScanPeriod"    # J
    .param p7, "backgroundFlag"    # Z

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput-wide p3, p0, Lorg/altbeacon/beacon/service/StartRMData;->scanPeriod:J

    .line 52
    iput-wide p5, p0, Lorg/altbeacon/beacon/service/StartRMData;->betweenScanPeriod:J

    .line 53
    iput-object p1, p0, Lorg/altbeacon/beacon/service/StartRMData;->region:Lorg/altbeacon/beacon/Region;

    .line 54
    iput-object p2, p0, Lorg/altbeacon/beacon/service/StartRMData;->callbackPackageName:Ljava/lang/String;

    .line 55
    iput-boolean p7, p0, Lorg/altbeacon/beacon/service/StartRMData;->backgroundFlag:Z

    .line 56
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 69
    const/4 v0, 0x0

    return v0
.end method

.method public getBackgroundFlag()Z
    .locals 1

    .prologue
    .line 67
    iget-boolean v0, p0, Lorg/altbeacon/beacon/service/StartRMData;->backgroundFlag:Z

    return v0
.end method

.method public getBetweenScanPeriod()J
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 60
    iget-wide v0, p0, Lorg/altbeacon/beacon/service/StartRMData;->betweenScanPeriod:J

    return-wide v0
.end method

.method public getCallbackPackageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lorg/altbeacon/beacon/service/StartRMData;->callbackPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public getRegionData()Lorg/altbeacon/beacon/Region;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lorg/altbeacon/beacon/service/StartRMData;->region:Lorg/altbeacon/beacon/Region;

    return-object v0
.end method

.method public getScanPeriod()J
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 59
    iget-wide v0, p0, Lorg/altbeacon/beacon/service/StartRMData;->scanPeriod:J

    return-wide v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 73
    iget-object v0, p0, Lorg/altbeacon/beacon/service/StartRMData;->region:Lorg/altbeacon/beacon/Region;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 74
    iget-object v0, p0, Lorg/altbeacon/beacon/service/StartRMData;->callbackPackageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 75
    iget-wide v0, p0, Lorg/altbeacon/beacon/service/StartRMData;->scanPeriod:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 76
    iget-wide v0, p0, Lorg/altbeacon/beacon/service/StartRMData;->betweenScanPeriod:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 77
    iget-boolean v0, p0, Lorg/altbeacon/beacon/service/StartRMData;->backgroundFlag:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 78
    return-void

    .line 77
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
