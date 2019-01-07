.class public Lcom/alibaba/mtl/appmonitor/Transaction;
.super Ljava/lang/Object;
.source "Transaction.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/alibaba/mtl/appmonitor/Transaction;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public dimensionValues:Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

.field public eventId:Ljava/lang/Integer;

.field private lock:Ljava/lang/Object;

.field public module:Ljava/lang/String;

.field public monitorPoint:Ljava/lang/String;

.field public transactionId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 124
    new-instance v0, Lcom/alibaba/mtl/appmonitor/Transaction$1;

    invoke-direct {v0}, Lcom/alibaba/mtl/appmonitor/Transaction$1;-><init>()V

    sput-object v0, Lcom/alibaba/mtl/appmonitor/Transaction;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    return-void
.end method

.method public constructor <init>(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;)V
    .locals 1
    .param p1, "eventId"    # Ljava/lang/Integer;
    .param p2, "module"    # Ljava/lang/String;
    .param p3, "monitorPoint"    # Ljava/lang/String;
    .param p4, "dimensionValues"    # Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/alibaba/mtl/appmonitor/Transaction;->eventId:Ljava/lang/Integer;

    .line 30
    iput-object p2, p0, Lcom/alibaba/mtl/appmonitor/Transaction;->module:Ljava/lang/String;

    .line 31
    iput-object p3, p0, Lcom/alibaba/mtl/appmonitor/Transaction;->monitorPoint:Ljava/lang/String;

    .line 32
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/mtl/appmonitor/Transaction;->transactionId:Ljava/lang/String;

    .line 33
    iput-object p4, p0, Lcom/alibaba/mtl/appmonitor/Transaction;->dimensionValues:Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    .line 34
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/alibaba/mtl/appmonitor/Transaction;->lock:Ljava/lang/Object;

    .line 35
    return-void
.end method

.method static readFromParcel(Landroid/os/Parcel;)Lcom/alibaba/mtl/appmonitor/Transaction;
    .locals 3
    .param p0, "source"    # Landroid/os/Parcel;

    .prologue
    .line 111
    new-instance v1, Lcom/alibaba/mtl/appmonitor/Transaction;

    invoke-direct {v1}, Lcom/alibaba/mtl/appmonitor/Transaction;-><init>()V

    .line 113
    .local v1, "ret":Lcom/alibaba/mtl/appmonitor/Transaction;
    :try_start_0
    const-class v2, Lcom/alibaba/mtl/appmonitor/Transaction;

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    iput-object v2, v1, Lcom/alibaba/mtl/appmonitor/Transaction;->dimensionValues:Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    .line 114
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, v1, Lcom/alibaba/mtl/appmonitor/Transaction;->eventId:Ljava/lang/Integer;

    .line 115
    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/alibaba/mtl/appmonitor/Transaction;->module:Ljava/lang/String;

    .line 116
    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/alibaba/mtl/appmonitor/Transaction;->monitorPoint:Ljava/lang/String;

    .line 117
    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/alibaba/mtl/appmonitor/Transaction;->transactionId:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 121
    :goto_0
    return-object v1

    .line 118
    :catch_0
    move-exception v0

    .line 119
    .local v0, "e":Ljava/lang/Throwable;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public addDimensionValues(Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;)V
    .locals 2
    .param p1, "dimensionValues"    # Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 78
    iget-object v1, p0, Lcom/alibaba/mtl/appmonitor/Transaction;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 79
    :try_start_0
    iget-object v0, p0, Lcom/alibaba/mtl/appmonitor/Transaction;->dimensionValues:Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    if-nez v0, :cond_0

    .line 80
    iput-object p1, p0, Lcom/alibaba/mtl/appmonitor/Transaction;->dimensionValues:Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    .line 84
    :goto_0
    monitor-exit v1

    return-void

    .line 82
    :cond_0
    iget-object v0, p0, Lcom/alibaba/mtl/appmonitor/Transaction;->dimensionValues:Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    invoke-virtual {v0, p1}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->addValues(Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;)Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    goto :goto_0

    .line 84
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public addDimensionValues(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "dimensionName"    # Ljava/lang/String;
    .param p2, "dimensionValue"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 88
    iget-object v1, p0, Lcom/alibaba/mtl/appmonitor/Transaction;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 89
    :try_start_0
    iget-object v0, p0, Lcom/alibaba/mtl/appmonitor/Transaction;->dimensionValues:Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    if-nez v0, :cond_0

    .line 90
    invoke-static {}, Lfzb;->a()Lfzb;

    move-result-object v0

    const-class v2, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v2, v3}, Lfzb;->a(Ljava/lang/Class;[Ljava/lang/Object;)Lfzc;

    move-result-object v0

    check-cast v0, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    iput-object v0, p0, Lcom/alibaba/mtl/appmonitor/Transaction;->dimensionValues:Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    .line 92
    :cond_0
    iget-object v0, p0, Lcom/alibaba/mtl/appmonitor/Transaction;->dimensionValues:Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    invoke-virtual {v0, p1, p2}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->setValue(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    .line 93
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public begin(Ljava/lang/String;)V
    .locals 2
    .param p1, "measureName"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 46
    invoke-static {}, Lamu;->b()V

    .line 47
    sget-object v1, Lcom/alibaba/analytics/AnalyticsMgr;->a:Lajt;

    if-nez v1, :cond_0

    .line 55
    :goto_0
    return-void

    .line 51
    :cond_0
    :try_start_0
    sget-object v1, Lcom/alibaba/analytics/AnalyticsMgr;->a:Lajt;

    invoke-interface {v1, p0, p1}, Lajt;->a(Lcom/alibaba/mtl/appmonitor/Transaction;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 52
    :catch_0
    move-exception v0

    .line 53
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 98
    const/4 v0, 0x0

    return v0
.end method

.method public end(Ljava/lang/String;)V
    .locals 2
    .param p1, "measureName"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 63
    invoke-static {}, Lamu;->b()V

    .line 64
    sget-object v1, Lcom/alibaba/analytics/AnalyticsMgr;->a:Lajt;

    if-nez v1, :cond_0

    .line 72
    :goto_0
    return-void

    .line 68
    :cond_0
    :try_start_0
    sget-object v1, Lcom/alibaba/analytics/AnalyticsMgr;->a:Lajt;

    invoke-interface {v1, p0, p1}, Lajt;->b(Lcom/alibaba/mtl/appmonitor/Transaction;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 69
    :catch_0
    move-exception v0

    .line 70
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 103
    iget-object v0, p0, Lcom/alibaba/mtl/appmonitor/Transaction;->dimensionValues:Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 104
    iget-object v0, p0, Lcom/alibaba/mtl/appmonitor/Transaction;->eventId:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 105
    iget-object v0, p0, Lcom/alibaba/mtl/appmonitor/Transaction;->module:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 106
    iget-object v0, p0, Lcom/alibaba/mtl/appmonitor/Transaction;->monitorPoint:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 107
    iget-object v0, p0, Lcom/alibaba/mtl/appmonitor/Transaction;->transactionId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 108
    return-void
.end method
