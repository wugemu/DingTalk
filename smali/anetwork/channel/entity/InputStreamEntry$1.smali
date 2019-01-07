.class final Lanetwork/channel/entity/InputStreamEntry$1;
.super Ljava/lang/Object;
.source "InputStreamEntry.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lanetwork/channel/entity/InputStreamEntry;
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
        "Lanetwork/channel/entity/InputStreamEntry;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 62
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
    .line 62
    .line 2065
    new-instance v0, Lanetwork/channel/entity/InputStreamEntry;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lanetwork/channel/entity/InputStreamEntry;-><init>(Lanetwork/channel/entity/InputStreamEntry$1;)V

    .line 2066
    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Llz;->a(Landroid/os/IBinder;)Llp;

    move-result-object v1

    invoke-static {v0, v1}, Lanetwork/channel/entity/InputStreamEntry;->access$102(Lanetwork/channel/entity/InputStreamEntry;Llp;)Llp;

    .line 62
    return-object v0
.end method

.method public final bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    .line 62
    .line 1072
    new-array v0, p1, [Lanetwork/channel/entity/InputStreamEntry;

    .line 62
    return-object v0
.end method
