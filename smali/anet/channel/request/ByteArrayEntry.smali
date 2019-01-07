.class public Lanet/channel/request/ByteArrayEntry;
.super Ljava/lang/Object;
.source "ByteArrayEntry.java"

# interfaces
.implements Lanet/channel/request/BodyEntry;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lanet/channel/request/ByteArrayEntry;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private bytes:[B

.field private count:I

.field private offset:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 57
    new-instance v0, Lanet/channel/request/ByteArrayEntry$1;

    invoke-direct {v0}, Lanet/channel/request/ByteArrayEntry$1;-><init>()V

    sput-object v0, Lanet/channel/request/ByteArrayEntry;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput v0, p0, Lanet/channel/request/ByteArrayEntry;->offset:I

    .line 17
    iput v0, p0, Lanet/channel/request/ByteArrayEntry;->count:I

    .line 31
    return-void
.end method

.method synthetic constructor <init>(Lanet/channel/request/ByteArrayEntry$1;)V
    .locals 0
    .param p1, "x0"    # Lanet/channel/request/ByteArrayEntry$1;

    .prologue
    .line 13
    invoke-direct {p0}, Lanet/channel/request/ByteArrayEntry;-><init>()V

    return-void
.end method

.method public constructor <init>([B)V
    .locals 1
    .param p1, "bytes"    # [B

    .prologue
    const/4 v0, 0x0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput v0, p0, Lanet/channel/request/ByteArrayEntry;->offset:I

    .line 17
    iput v0, p0, Lanet/channel/request/ByteArrayEntry;->count:I

    .line 20
    iput-object p1, p0, Lanet/channel/request/ByteArrayEntry;->bytes:[B

    .line 21
    iput v0, p0, Lanet/channel/request/ByteArrayEntry;->offset:I

    .line 22
    array-length v0, p1

    iput v0, p0, Lanet/channel/request/ByteArrayEntry;->count:I

    .line 23
    return-void
.end method

.method public constructor <init>([BII)V
    .locals 1
    .param p1, "bytes"    # [B
    .param p2, "offset"    # I
    .param p3, "count"    # I

    .prologue
    const/4 v0, 0x0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput v0, p0, Lanet/channel/request/ByteArrayEntry;->offset:I

    .line 17
    iput v0, p0, Lanet/channel/request/ByteArrayEntry;->count:I

    .line 26
    iput-object p1, p0, Lanet/channel/request/ByteArrayEntry;->bytes:[B

    .line 27
    iput p2, p0, Lanet/channel/request/ByteArrayEntry;->offset:I

    .line 28
    iput p3, p0, Lanet/channel/request/ByteArrayEntry;->count:I

    .line 29
    return-void
.end method

.method static synthetic access$100(Lanet/channel/request/ByteArrayEntry;)[B
    .locals 1
    .param p0, "x0"    # Lanet/channel/request/ByteArrayEntry;

    .prologue
    .line 13
    iget-object v0, p0, Lanet/channel/request/ByteArrayEntry;->bytes:[B

    return-object v0
.end method

.method static synthetic access$102(Lanet/channel/request/ByteArrayEntry;[B)[B
    .locals 0
    .param p0, "x0"    # Lanet/channel/request/ByteArrayEntry;
    .param p1, "x1"    # [B

    .prologue
    .line 13
    iput-object p1, p0, Lanet/channel/request/ByteArrayEntry;->bytes:[B

    return-object p1
.end method

.method static synthetic access$202(Lanet/channel/request/ByteArrayEntry;I)I
    .locals 0
    .param p0, "x0"    # Lanet/channel/request/ByteArrayEntry;
    .param p1, "x1"    # I

    .prologue
    .line 13
    iput p1, p0, Lanet/channel/request/ByteArrayEntry;->offset:I

    return p1
.end method

.method static synthetic access$302(Lanet/channel/request/ByteArrayEntry;I)I
    .locals 0
    .param p0, "x0"    # Lanet/channel/request/ByteArrayEntry;
    .param p1, "x1"    # I

    .prologue
    .line 13
    iput p1, p0, Lanet/channel/request/ByteArrayEntry;->count:I

    return p1
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 46
    const/4 v0, 0x0

    return v0
.end method

.method public getContentType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 35
    const/4 v0, 0x0

    return-object v0
.end method

.method public writeTo(Ljava/io/OutputStream;)I
    .locals 3
    .param p1, "outputStream"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 40
    iget-object v0, p0, Lanet/channel/request/ByteArrayEntry;->bytes:[B

    iget v1, p0, Lanet/channel/request/ByteArrayEntry;->offset:I

    iget v2, p0, Lanet/channel/request/ByteArrayEntry;->count:I

    invoke-virtual {p1, v0, v1, v2}, Ljava/io/OutputStream;->write([BII)V

    .line 41
    iget v0, p0, Lanet/channel/request/ByteArrayEntry;->count:I

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "parcel"    # Landroid/os/Parcel;
    .param p2, "i"    # I

    .prologue
    .line 51
    iget-object v0, p0, Lanet/channel/request/ByteArrayEntry;->bytes:[B

    array-length v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 52
    iget-object v0, p0, Lanet/channel/request/ByteArrayEntry;->bytes:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 53
    iget v0, p0, Lanet/channel/request/ByteArrayEntry;->offset:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 54
    iget v0, p0, Lanet/channel/request/ByteArrayEntry;->count:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 55
    return-void
.end method
