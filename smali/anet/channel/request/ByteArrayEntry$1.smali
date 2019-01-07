.class final Lanet/channel/request/ByteArrayEntry$1;
.super Ljava/lang/Object;
.source "ByteArrayEntry.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lanet/channel/request/ByteArrayEntry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lanet/channel/request/ByteArrayEntry;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 2
    .param p1, "x0"    # Landroid/os/Parcel;

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 57
    .line 2060
    new-instance v0, Lanet/channel/request/ByteArrayEntry;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lanet/channel/request/ByteArrayEntry;-><init>(Lanet/channel/request/ByteArrayEntry$1;)V

    .line 2061
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    new-array v1, v1, [B

    invoke-static {v0, v1}, Lanet/channel/request/ByteArrayEntry;->access$102(Lanet/channel/request/ByteArrayEntry;[B)[B

    .line 2062
    invoke-static {v0}, Lanet/channel/request/ByteArrayEntry;->access$100(Lanet/channel/request/ByteArrayEntry;)[B

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readByteArray([B)V

    .line 2063
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-static {v0, v1}, Lanet/channel/request/ByteArrayEntry;->access$202(Lanet/channel/request/ByteArrayEntry;I)I

    .line 2064
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-static {v0, v1}, Lanet/channel/request/ByteArrayEntry;->access$302(Lanet/channel/request/ByteArrayEntry;I)I

    .line 57
    return-object v0
.end method

.method public final bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    .line 57
    .line 1070
    new-array v0, p1, [Lanet/channel/request/ByteArrayEntry;

    .line 57
    return-object v0
.end method
