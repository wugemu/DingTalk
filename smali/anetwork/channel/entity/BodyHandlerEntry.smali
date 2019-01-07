.class public Lanetwork/channel/entity/BodyHandlerEntry;
.super Ljava/lang/Object;
.source "BodyHandlerEntry.java"

# interfaces
.implements Lanet/channel/request/BodyEntry;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lanetwork/channel/entity/BodyHandlerEntry;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field bodyHandler:Lln;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 62
    new-instance v0, Lanetwork/channel/entity/BodyHandlerEntry$1;

    invoke-direct {v0}, Lanetwork/channel/entity/BodyHandlerEntry$1;-><init>()V

    sput-object v0, Lanetwork/channel/entity/BodyHandlerEntry;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    const/4 v0, 0x0

    iput-object v0, p0, Lanetwork/channel/entity/BodyHandlerEntry;->bodyHandler:Lln;

    .line 28
    return-void
.end method

.method synthetic constructor <init>(Lanetwork/channel/entity/BodyHandlerEntry$1;)V
    .locals 0
    .param p1, "x0"    # Lanetwork/channel/entity/BodyHandlerEntry$1;

    .prologue
    .line 20
    invoke-direct {p0}, Lanetwork/channel/entity/BodyHandlerEntry;-><init>()V

    return-void
.end method

.method public constructor <init>(Lld;)V
    .locals 1
    .param p1, "bodyHandler"    # Lld;

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    const/4 v0, 0x0

    iput-object v0, p0, Lanetwork/channel/entity/BodyHandlerEntry;->bodyHandler:Lln;

    .line 25
    new-instance v0, Llw;

    invoke-direct {v0, p1}, Llw;-><init>(Lld;)V

    iput-object v0, p0, Lanetwork/channel/entity/BodyHandlerEntry;->bodyHandler:Lln;

    .line 26
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 54
    const/4 v0, 0x0

    return v0
.end method

.method public getContentType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 32
    const/4 v0, 0x0

    return-object v0
.end method

.method public writeTo(Ljava/io/OutputStream;)I
    .locals 6
    .param p1, "outputStream"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 37
    const/4 v1, 0x0

    .line 1024
    .local v1, "count":I
    :try_start_0
    sget-object v4, Lil$a;->a:Lil;

    .line 39
    const/16 v5, 0x800

    invoke-virtual {v4, v5}, Lil;->a(I)Lik;

    move-result-object v0

    .line 40
    .local v0, "byteArray":Lik;
    :goto_0
    iget-object v4, p0, Lanetwork/channel/entity/BodyHandlerEntry;->bodyHandler:Lln;

    invoke-interface {v4}, Lln;->a()Z

    move-result v4

    if-nez v4, :cond_0

    .line 41
    iget-object v4, p0, Lanetwork/channel/entity/BodyHandlerEntry;->bodyHandler:Lln;

    .line 1042
    iget-object v5, v0, Lik;->a:[B

    .line 41
    invoke-interface {v4, v5}, Lln;->a([B)I

    move-result v3

    .line 2042
    .local v3, "len":I
    iget-object v4, v0, Lik;->a:[B

    .line 42
    const/4 v5, 0x0

    invoke-virtual {p1, v4, v5, v3}, Ljava/io/OutputStream;->write([BII)V

    .line 43
    add-int/2addr v1, v3

    .line 44
    goto :goto_0

    .line 45
    .end local v3    # "len":I
    :cond_0
    invoke-virtual {v0}, Lik;->a()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 49
    return v1

    .line 46
    .end local v0    # "byteArray":Lik;
    :catch_0
    move-exception v2

    .line 47
    .local v2, "e":Landroid/os/RemoteException;
    new-instance v4, Ljava/io/IOException;

    const-string/jumbo v5, "RemoteException"

    invoke-direct {v4, v5, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 59
    iget-object v0, p0, Lanetwork/channel/entity/BodyHandlerEntry;->bodyHandler:Lln;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 60
    return-void
.end method
