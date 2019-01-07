.class public Lanetwork/channel/aidl/DefaultFinishEvent;
.super Ljava/lang/Object;
.source "DefaultFinishEvent.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Llg$a;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lanetwork/channel/aidl/DefaultFinishEvent;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "ANet.DefaultFinishEvent"


# instance fields
.field code:I

.field context:Ljava/lang/Object;

.field desc:Ljava/lang/String;

.field statisticData:Lanetwork/channel/statist/StatisticData;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 96
    new-instance v0, Lanetwork/channel/aidl/DefaultFinishEvent$1;

    invoke-direct {v0}, Lanetwork/channel/aidl/DefaultFinishEvent$1;-><init>()V

    sput-object v0, Lanetwork/channel/aidl/DefaultFinishEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .param p1, "code"    # I

    .prologue
    const/4 v0, 0x0

    .line 48
    invoke-direct {p0, p1, v0, v0}, Lanetwork/channel/aidl/DefaultFinishEvent;-><init>(ILjava/lang/String;Lanetwork/channel/statist/StatisticData;)V

    .line 49
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Lanetwork/channel/statist/StatisticData;)V
    .locals 0
    .param p1, "code"    # I
    .param p2, "msg"    # Ljava/lang/String;
    .param p3, "statisticData"    # Lanetwork/channel/statist/StatisticData;

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput p1, p0, Lanetwork/channel/aidl/DefaultFinishEvent;->code:I

    .line 52
    if-eqz p2, :cond_0

    .end local p2    # "msg":Ljava/lang/String;
    :goto_0
    iput-object p2, p0, Lanetwork/channel/aidl/DefaultFinishEvent;->desc:Ljava/lang/String;

    .line 53
    iput-object p3, p0, Lanetwork/channel/aidl/DefaultFinishEvent;->statisticData:Lanetwork/channel/statist/StatisticData;

    .line 54
    return-void

    .line 52
    .restart local p2    # "msg":Ljava/lang/String;
    :cond_0
    invoke-static {p1}, Lks;->a(I)Ljava/lang/String;

    move-result-object p2

    goto :goto_0
.end method

.method static readFromParcel(Landroid/os/Parcel;)Lanetwork/channel/aidl/DefaultFinishEvent;
    .locals 2
    .param p0, "source"    # Landroid/os/Parcel;

    .prologue
    .line 82
    new-instance v0, Lanetwork/channel/aidl/DefaultFinishEvent;

    invoke-direct {v0}, Lanetwork/channel/aidl/DefaultFinishEvent;-><init>()V

    .line 84
    .local v0, "ret":Lanetwork/channel/aidl/DefaultFinishEvent;
    :try_start_0
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Lanetwork/channel/aidl/DefaultFinishEvent;->code:I

    .line 85
    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lanetwork/channel/aidl/DefaultFinishEvent;->desc:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 87
    :try_start_1
    invoke-virtual {p0}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Lanetwork/channel/statist/StatisticData;

    iput-object v1, v0, Lanetwork/channel/aidl/DefaultFinishEvent;->statisticData:Lanetwork/channel/statist/StatisticData;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    .line 93
    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    goto :goto_0

    :catch_1
    move-exception v1

    goto :goto_0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 70
    const/4 v0, 0x0

    return v0
.end method

.method public getContext()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lanetwork/channel/aidl/DefaultFinishEvent;->context:Ljava/lang/Object;

    return-object v0
.end method

.method public getDesc()Ljava/lang/String;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lanetwork/channel/aidl/DefaultFinishEvent;->desc:Ljava/lang/String;

    return-object v0
.end method

.method public getHttpCode()I
    .locals 1

    .prologue
    .line 29
    iget v0, p0, Lanetwork/channel/aidl/DefaultFinishEvent;->code:I

    return v0
.end method

.method public getStatisticData()Lanetwork/channel/statist/StatisticData;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lanetwork/channel/aidl/DefaultFinishEvent;->statisticData:Lanetwork/channel/statist/StatisticData;

    return-object v0
.end method

.method public setCode(I)V
    .locals 0
    .param p1, "code"    # I

    .prologue
    .line 36
    iput p1, p0, Lanetwork/channel/aidl/DefaultFinishEvent;->code:I

    .line 37
    return-void
.end method

.method public setContext(Ljava/lang/Object;)V
    .locals 0
    .param p1, "context"    # Ljava/lang/Object;

    .prologue
    .line 25
    iput-object p1, p0, Lanetwork/channel/aidl/DefaultFinishEvent;->context:Ljava/lang/Object;

    .line 26
    return-void
.end method

.method public setDesc(Ljava/lang/String;)V
    .locals 0
    .param p1, "desc"    # Ljava/lang/String;

    .prologue
    .line 39
    iput-object p1, p0, Lanetwork/channel/aidl/DefaultFinishEvent;->desc:Ljava/lang/String;

    .line 40
    return-void
.end method

.method public setStatisticData(Lanetwork/channel/statist/StatisticData;)V
    .locals 0
    .param p1, "data"    # Lanetwork/channel/statist/StatisticData;

    .prologue
    .line 42
    iput-object p1, p0, Lanetwork/channel/aidl/DefaultFinishEvent;->statisticData:Lanetwork/channel/statist/StatisticData;

    .line 43
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 59
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "DefaultFinishEvent ["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 60
    .local v0, "builder":Ljava/lang/StringBuilder;
    const-string/jumbo v1, "code="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lanetwork/channel/aidl/DefaultFinishEvent;->code:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 61
    const-string/jumbo v1, ", desc="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lanetwork/channel/aidl/DefaultFinishEvent;->desc:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    const-string/jumbo v1, ", context="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lanetwork/channel/aidl/DefaultFinishEvent;->context:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 63
    const-string/jumbo v1, ", statisticData="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lanetwork/channel/aidl/DefaultFinishEvent;->statisticData:Lanetwork/channel/statist/StatisticData;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 64
    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 75
    iget v0, p0, Lanetwork/channel/aidl/DefaultFinishEvent;->code:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 76
    iget-object v0, p0, Lanetwork/channel/aidl/DefaultFinishEvent;->desc:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 77
    iget-object v0, p0, Lanetwork/channel/aidl/DefaultFinishEvent;->statisticData:Lanetwork/channel/statist/StatisticData;

    if-eqz v0, :cond_0

    .line 78
    iget-object v0, p0, Lanetwork/channel/aidl/DefaultFinishEvent;->statisticData:Lanetwork/channel/statist/StatisticData;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    .line 80
    :cond_0
    return-void
.end method
