.class public Lanetwork/channel/aidl/DefaultProgressEvent;
.super Ljava/lang/Object;
.source "DefaultProgressEvent.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lanetwork/channel/aidl/DefaultProgressEvent;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "ANet.DefaultProgressEvent"


# instance fields
.field context:Ljava/lang/Object;

.field desc:Ljava/lang/String;

.field index:I

.field out:[B

.field size:I

.field total:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 105
    new-instance v0, Lanetwork/channel/aidl/DefaultProgressEvent$1;

    invoke-direct {v0}, Lanetwork/channel/aidl/DefaultProgressEvent$1;-><init>()V

    sput-object v0, Lanetwork/channel/aidl/DefaultProgressEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static readFromParcel(Landroid/os/Parcel;)Lanetwork/channel/aidl/DefaultProgressEvent;
    .locals 4
    .param p0, "soruce"    # Landroid/os/Parcel;

    .prologue
    .line 89
    new-instance v0, Lanetwork/channel/aidl/DefaultProgressEvent;

    invoke-direct {v0}, Lanetwork/channel/aidl/DefaultProgressEvent;-><init>()V

    .line 91
    .local v0, "event":Lanetwork/channel/aidl/DefaultProgressEvent;
    :try_start_0
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, v0, Lanetwork/channel/aidl/DefaultProgressEvent;->index:I

    .line 92
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, v0, Lanetwork/channel/aidl/DefaultProgressEvent;->size:I

    .line 93
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, v0, Lanetwork/channel/aidl/DefaultProgressEvent;->total:I

    .line 94
    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lanetwork/channel/aidl/DefaultProgressEvent;->desc:Ljava/lang/String;

    .line 95
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 96
    .local v1, "len":I
    if-lez v1, :cond_0

    .line 97
    new-array v2, v1, [B

    .line 98
    .local v2, "o":[B
    invoke-virtual {p0, v2}, Landroid/os/Parcel;->readByteArray([B)V

    .line 99
    iput-object v2, v0, Lanetwork/channel/aidl/DefaultProgressEvent;->out:[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 103
    .end local v1    # "len":I
    .end local v2    # "o":[B
    :cond_0
    :goto_0
    return-object v0

    :catch_0
    move-exception v3

    goto :goto_0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 76
    const/4 v0, 0x0

    return v0
.end method

.method public getBytedata()[B
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lanetwork/channel/aidl/DefaultProgressEvent;->out:[B

    return-object v0
.end method

.method public getContext()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lanetwork/channel/aidl/DefaultProgressEvent;->context:Ljava/lang/Object;

    return-object v0
.end method

.method public getDesc()Ljava/lang/String;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lanetwork/channel/aidl/DefaultProgressEvent;->desc:Ljava/lang/String;

    return-object v0
.end method

.method public getIndex()I
    .locals 1

    .prologue
    .line 62
    iget v0, p0, Lanetwork/channel/aidl/DefaultProgressEvent;->index:I

    return v0
.end method

.method public getSize()I
    .locals 1

    .prologue
    .line 32
    iget v0, p0, Lanetwork/channel/aidl/DefaultProgressEvent;->size:I

    return v0
.end method

.method public getTotal()I
    .locals 1

    .prologue
    .line 40
    iget v0, p0, Lanetwork/channel/aidl/DefaultProgressEvent;->total:I

    return v0
.end method

.method public setBytedata([B)V
    .locals 0
    .param p1, "out"    # [B

    .prologue
    .line 59
    iput-object p1, p0, Lanetwork/channel/aidl/DefaultProgressEvent;->out:[B

    .line 60
    return-void
.end method

.method public setContext(Ljava/lang/Object;)V
    .locals 0
    .param p1, "context"    # Ljava/lang/Object;

    .prologue
    .line 52
    iput-object p1, p0, Lanetwork/channel/aidl/DefaultProgressEvent;->context:Ljava/lang/Object;

    .line 53
    return-void
.end method

.method public setDesc(Ljava/lang/String;)V
    .locals 0
    .param p1, "desc"    # Ljava/lang/String;

    .prologue
    .line 28
    iput-object p1, p0, Lanetwork/channel/aidl/DefaultProgressEvent;->desc:Ljava/lang/String;

    .line 29
    return-void
.end method

.method public setIndex(I)V
    .locals 0
    .param p1, "index"    # I

    .prologue
    .line 65
    iput p1, p0, Lanetwork/channel/aidl/DefaultProgressEvent;->index:I

    .line 66
    return-void
.end method

.method public setSize(I)V
    .locals 0
    .param p1, "size"    # I

    .prologue
    .line 36
    iput p1, p0, Lanetwork/channel/aidl/DefaultProgressEvent;->size:I

    .line 37
    return-void
.end method

.method public setTotal(I)V
    .locals 0
    .param p1, "total"    # I

    .prologue
    .line 44
    iput p1, p0, Lanetwork/channel/aidl/DefaultProgressEvent;->total:I

    .line 45
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 70
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "DefaultProgressEvent [index="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lanetwork/channel/aidl/DefaultProgressEvent;->index:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", size="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lanetwork/channel/aidl/DefaultProgressEvent;->size:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", total="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lanetwork/channel/aidl/DefaultProgressEvent;->total:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", desc="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lanetwork/channel/aidl/DefaultProgressEvent;->desc:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 81
    iget v0, p0, Lanetwork/channel/aidl/DefaultProgressEvent;->index:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 82
    iget v0, p0, Lanetwork/channel/aidl/DefaultProgressEvent;->size:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 83
    iget v0, p0, Lanetwork/channel/aidl/DefaultProgressEvent;->total:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 84
    iget-object v0, p0, Lanetwork/channel/aidl/DefaultProgressEvent;->desc:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 85
    iget-object v0, p0, Lanetwork/channel/aidl/DefaultProgressEvent;->out:[B

    if-eqz v0, :cond_0

    iget-object v0, p0, Lanetwork/channel/aidl/DefaultProgressEvent;->out:[B

    array-length v0, v0

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 86
    iget-object v0, p0, Lanetwork/channel/aidl/DefaultProgressEvent;->out:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 87
    return-void

    .line 85
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
