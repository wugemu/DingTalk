.class public abstract Llq$a;
.super Landroid/os/Binder;
.source "ParcelableNetworkListener.java"

# interfaces
.implements Llq;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Llq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Llq$a$a;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 16
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 17
    const-string/jumbo v0, "anetwork.channel.aidl.ParcelableNetworkListener"

    invoke-virtual {p0, p0, v0}, Llq$a;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 18
    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 36
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 5
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v4, 0x1

    .line 40
    sparse-switch p1, :sswitch_data_0

    .line 110
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v4

    :goto_0
    return v4

    .line 44
    :sswitch_0
    const-string/jumbo v3, "anetwork.channel.aidl.ParcelableNetworkListener"

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 49
    :sswitch_1
    const-string/jumbo v3, "anetwork.channel.aidl.ParcelableNetworkListener"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 51
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_0

    .line 52
    sget-object v3, Lanetwork/channel/aidl/DefaultProgressEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lanetwork/channel/aidl/DefaultProgressEvent;

    .line 57
    .local v0, "_arg0":Lanetwork/channel/aidl/DefaultProgressEvent;
    :goto_1
    invoke-virtual {p0, v0}, Llq$a;->a(Lanetwork/channel/aidl/DefaultProgressEvent;)V

    .line 58
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 55
    .end local v0    # "_arg0":Lanetwork/channel/aidl/DefaultProgressEvent;
    :cond_0
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Lanetwork/channel/aidl/DefaultProgressEvent;
    goto :goto_1

    .line 63
    .end local v0    # "_arg0":Lanetwork/channel/aidl/DefaultProgressEvent;
    :sswitch_2
    const-string/jumbo v3, "anetwork.channel.aidl.ParcelableNetworkListener"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 65
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_1

    .line 66
    sget-object v3, Lanetwork/channel/aidl/DefaultFinishEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lanetwork/channel/aidl/DefaultFinishEvent;

    .line 71
    .local v0, "_arg0":Lanetwork/channel/aidl/DefaultFinishEvent;
    :goto_2
    invoke-virtual {p0, v0}, Llq$a;->a(Lanetwork/channel/aidl/DefaultFinishEvent;)V

    .line 72
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 69
    .end local v0    # "_arg0":Lanetwork/channel/aidl/DefaultFinishEvent;
    :cond_1
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Lanetwork/channel/aidl/DefaultFinishEvent;
    goto :goto_2

    .line 77
    .end local v0    # "_arg0":Lanetwork/channel/aidl/DefaultFinishEvent;
    :sswitch_3
    const-string/jumbo v3, "anetwork.channel.aidl.ParcelableNetworkListener"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 79
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 81
    .local v0, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_2

    .line 82
    sget-object v3, Lanetwork/channel/aidl/ParcelableHeader;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lanetwork/channel/aidl/ParcelableHeader;

    .line 87
    .local v1, "_arg1":Lanetwork/channel/aidl/ParcelableHeader;
    :goto_3
    invoke-virtual {p0, v0, v1}, Llq$a;->a(ILanetwork/channel/aidl/ParcelableHeader;)Z

    move-result v2

    .line 88
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 89
    if-eqz v2, :cond_3

    move v3, v4

    :goto_4
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 85
    .end local v1    # "_arg1":Lanetwork/channel/aidl/ParcelableHeader;
    .end local v2    # "_result":Z
    :cond_2
    const/4 v1, 0x0

    .restart local v1    # "_arg1":Lanetwork/channel/aidl/ParcelableHeader;
    goto :goto_3

    .line 89
    .restart local v2    # "_result":Z
    :cond_3
    const/4 v3, 0x0

    goto :goto_4

    .line 94
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Lanetwork/channel/aidl/ParcelableHeader;
    .end local v2    # "_result":Z
    :sswitch_4
    const-string/jumbo v3, "anetwork.channel.aidl.ParcelableNetworkListener"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 96
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Llp$a;->a(Landroid/os/IBinder;)Llp;

    move-result-object v0

    .line 97
    .local v0, "_arg0":Llp;
    invoke-virtual {p0, v0}, Llq$a;->a(Llp;)V

    .line 98
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 103
    .end local v0    # "_arg0":Llp;
    :sswitch_5
    const-string/jumbo v3, "anetwork.channel.aidl.ParcelableNetworkListener"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 104
    invoke-virtual {p0}, Llq$a;->a()B

    move-result v2

    .line 105
    .local v2, "_result":B
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 106
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeByte(B)V

    goto/16 :goto_0

    .line 40
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
