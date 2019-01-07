.class public Lanetwork/channel/aidl/NetworkResponse;
.super Ljava/lang/Object;
.source "NetworkResponse.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Llk;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lanetwork/channel/aidl/NetworkResponse;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "ANet.NetworkResponse"


# instance fields
.field bytedata:[B

.field private connHeadFields:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private desc:Ljava/lang/String;

.field private error:Ljava/lang/Throwable;

.field private statisticData:Lanetwork/channel/statist/StatisticData;

.field statusCode:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 155
    new-instance v0, Lanetwork/channel/aidl/NetworkResponse$1;

    invoke-direct {v0}, Lanetwork/channel/aidl/NetworkResponse$1;-><init>()V

    sput-object v0, Lanetwork/channel/aidl/NetworkResponse;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .param p1, "httpcode"    # I

    .prologue
    const/4 v0, 0x0

    .line 85
    invoke-direct {p0, p1, v0, v0}, Lanetwork/channel/aidl/NetworkResponse;-><init>(I[BLjava/util/Map;)V

    .line 86
    return-void
.end method

.method public constructor <init>(I[BLjava/util/Map;)V
    .locals 1
    .param p1, "httpcode"    # I
    .param p2, "b"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I[B",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 87
    .local p3, "connHeadFields":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    iput p1, p0, Lanetwork/channel/aidl/NetworkResponse;->statusCode:I

    .line 89
    invoke-static {p1}, Lks;->a(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lanetwork/channel/aidl/NetworkResponse;->desc:Ljava/lang/String;

    .line 90
    iput-object p2, p0, Lanetwork/channel/aidl/NetworkResponse;->bytedata:[B

    .line 91
    iput-object p3, p0, Lanetwork/channel/aidl/NetworkResponse;->connHeadFields:Ljava/util/Map;

    .line 92
    return-void
.end method

.method public static readFromParcel(Landroid/os/Parcel;)Lanetwork/channel/aidl/NetworkResponse;
    .locals 9
    .param p0, "source"    # Landroid/os/Parcel;

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x0

    .line 132
    new-instance v2, Lanetwork/channel/aidl/NetworkResponse;

    invoke-direct {v2}, Lanetwork/channel/aidl/NetworkResponse;-><init>()V

    .line 134
    .local v2, "response":Lanetwork/channel/aidl/NetworkResponse;
    :try_start_0
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, v2, Lanetwork/channel/aidl/NetworkResponse;->statusCode:I

    .line 135
    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lanetwork/channel/aidl/NetworkResponse;->desc:Ljava/lang/String;

    .line 136
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 137
    .local v0, "byteLen":I
    if-lez v0, :cond_0

    .line 138
    new-array v3, v0, [B

    iput-object v3, v2, Lanetwork/channel/aidl/NetworkResponse;->bytedata:[B

    .line 139
    iget-object v3, v2, Lanetwork/channel/aidl/NetworkResponse;->bytedata:[B

    invoke-virtual {p0, v3}, Landroid/os/Parcel;->readByteArray([B)V

    .line 141
    :cond_0
    const-class v3, Lanetwork/channel/aidl/NetworkResponse;

    invoke-virtual {v3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    invoke-virtual {p0, v3}, Landroid/os/Parcel;->readHashMap(Ljava/lang/ClassLoader;)Ljava/util/HashMap;

    move-result-object v3

    iput-object v3, v2, Lanetwork/channel/aidl/NetworkResponse;->connHeadFields:Ljava/util/Map;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 143
    :try_start_1
    invoke-virtual {p0}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v3

    check-cast v3, Lanetwork/channel/statist/StatisticData;

    iput-object v3, v2, Lanetwork/channel/aidl/NetworkResponse;->statisticData:Lanetwork/channel/statist/StatisticData;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 151
    .end local v0    # "byteLen":I
    :goto_0
    return-object v2

    .line 145
    .restart local v0    # "byteLen":I
    :catch_0
    move-exception v3

    :try_start_2
    const-string/jumbo v3, "ANet.NetworkResponse"

    const-string/jumbo v4, "[readFromParcel] source.readSerializable() error"

    const/4 v5, 0x0

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v3, v4, v5, v6}, Lanet/channel/util/ALog;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 148
    .end local v0    # "byteLen":I
    :catch_1
    move-exception v1

    .line 149
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v3, "ANet.NetworkResponse"

    const-string/jumbo v4, "[readFromParcel]"

    new-array v5, v7, [Ljava/lang/Object;

    invoke-static {v3, v4, v8, v1, v5}, Lanet/channel/util/ALog;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto :goto_0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 109
    const/4 v0, 0x0

    return v0
.end method

.method public getBytedata()[B
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lanetwork/channel/aidl/NetworkResponse;->bytedata:[B

    return-object v0
.end method

.method public getConnHeadFields()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 57
    iget-object v0, p0, Lanetwork/channel/aidl/NetworkResponse;->connHeadFields:Ljava/util/Map;

    return-object v0
.end method

.method public getDesc()Ljava/lang/String;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lanetwork/channel/aidl/NetworkResponse;->desc:Ljava/lang/String;

    return-object v0
.end method

.method public getError()Ljava/lang/Throwable;
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lanetwork/channel/aidl/NetworkResponse;->error:Ljava/lang/Throwable;

    return-object v0
.end method

.method public getStatisticData()Lanetwork/channel/statist/StatisticData;
    .locals 1

    .prologue
    .line 173
    iget-object v0, p0, Lanetwork/channel/aidl/NetworkResponse;->statisticData:Lanetwork/channel/statist/StatisticData;

    return-object v0
.end method

.method public getStatusCode()I
    .locals 1

    .prologue
    .line 96
    iget v0, p0, Lanetwork/channel/aidl/NetworkResponse;->statusCode:I

    return v0
.end method

.method public isHttpSuccess()Z
    .locals 1

    .prologue
    .line 67
    const/4 v0, 0x1

    return v0
.end method

.method public setBytedata([B)V
    .locals 0
    .param p1, "bytedata"    # [B

    .prologue
    .line 51
    iput-object p1, p0, Lanetwork/channel/aidl/NetworkResponse;->bytedata:[B

    .line 52
    return-void
.end method

.method public setConnHeadFields(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 54
    .local p1, "connHeadFields":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    iput-object p1, p0, Lanetwork/channel/aidl/NetworkResponse;->connHeadFields:Ljava/util/Map;

    .line 55
    return-void
.end method

.method public setDesc(Ljava/lang/String;)V
    .locals 0
    .param p1, "desc"    # Ljava/lang/String;

    .prologue
    .line 61
    iput-object p1, p0, Lanetwork/channel/aidl/NetworkResponse;->desc:Ljava/lang/String;

    .line 62
    return-void
.end method

.method public setError(Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "error"    # Ljava/lang/Throwable;

    .prologue
    .line 104
    iput-object p1, p0, Lanetwork/channel/aidl/NetworkResponse;->error:Ljava/lang/Throwable;

    .line 105
    return-void
.end method

.method public setStatisticData(Lanetwork/channel/statist/StatisticData;)V
    .locals 0
    .param p1, "statisticData"    # Lanetwork/channel/statist/StatisticData;

    .prologue
    .line 168
    iput-object p1, p0, Lanetwork/channel/aidl/NetworkResponse;->statisticData:Lanetwork/channel/statist/StatisticData;

    .line 169
    return-void
.end method

.method public setStatusCode(I)V
    .locals 1
    .param p1, "statusCode"    # I

    .prologue
    .line 42
    iput p1, p0, Lanetwork/channel/aidl/NetworkResponse;->statusCode:I

    .line 43
    invoke-static {p1}, Lks;->a(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lanetwork/channel/aidl/NetworkResponse;->desc:Ljava/lang/String;

    .line 44
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 72
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "NetworkResponse ["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 73
    .local v0, "builder":Ljava/lang/StringBuilder;
    const-string/jumbo v1, "statusCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lanetwork/channel/aidl/NetworkResponse;->statusCode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 74
    const-string/jumbo v1, ", desc="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lanetwork/channel/aidl/NetworkResponse;->desc:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    const-string/jumbo v1, ", connHeadFields="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lanetwork/channel/aidl/NetworkResponse;->connHeadFields:Ljava/util/Map;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 76
    const-string/jumbo v1, ", bytedata="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v1, p0, Lanetwork/channel/aidl/NetworkResponse;->bytedata:[B

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/String;

    iget-object v3, p0, Lanetwork/channel/aidl/NetworkResponse;->bytedata:[B

    invoke-direct {v1, v3}, Ljava/lang/String;-><init>([B)V

    :goto_0
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    const-string/jumbo v1, ", error="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lanetwork/channel/aidl/NetworkResponse;->error:Ljava/lang/Throwable;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 78
    const-string/jumbo v1, ", statisticData="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lanetwork/channel/aidl/NetworkResponse;->statisticData:Lanetwork/channel/statist/StatisticData;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 76
    :cond_0
    const-string/jumbo v1, ""

    goto :goto_0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 114
    iget v1, p0, Lanetwork/channel/aidl/NetworkResponse;->statusCode:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 115
    iget-object v1, p0, Lanetwork/channel/aidl/NetworkResponse;->desc:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 116
    const/4 v0, 0x0

    .line 117
    .local v0, "byteLen":I
    iget-object v1, p0, Lanetwork/channel/aidl/NetworkResponse;->bytedata:[B

    if-eqz v1, :cond_0

    .line 118
    iget-object v1, p0, Lanetwork/channel/aidl/NetworkResponse;->bytedata:[B

    array-length v0, v1

    .line 120
    :cond_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 121
    if-lez v0, :cond_1

    .line 122
    iget-object v1, p0, Lanetwork/channel/aidl/NetworkResponse;->bytedata:[B

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 124
    :cond_1
    iget-object v1, p0, Lanetwork/channel/aidl/NetworkResponse;->connHeadFields:Ljava/util/Map;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeMap(Ljava/util/Map;)V

    .line 125
    iget-object v1, p0, Lanetwork/channel/aidl/NetworkResponse;->statisticData:Lanetwork/channel/statist/StatisticData;

    if-eqz v1, :cond_2

    .line 126
    iget-object v1, p0, Lanetwork/channel/aidl/NetworkResponse;->statisticData:Lanetwork/channel/statist/StatisticData;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    .line 130
    :cond_2
    return-void
.end method
