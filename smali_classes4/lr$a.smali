.class public abstract Llr$a;
.super Landroid/os/Binder;
.source "RemoteNetwork.java"

# interfaces
.implements Llr;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Llr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Llr$a$a;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 16
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 17
    const-string/jumbo v0, "anetwork.channel.aidl.RemoteNetwork"

    invoke-virtual {p0, p0, v0}, Llr$a;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 18
    return-void
.end method

.method public static a(Landroid/os/IBinder;)Llr;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    .line 25
    if-nez p0, :cond_0

    .line 26
    const/4 v0, 0x0

    .line 32
    :goto_0
    return-object v0

    .line 28
    :cond_0
    const-string/jumbo v1, "anetwork.channel.aidl.RemoteNetwork"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 29
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Llr;

    if-eqz v1, :cond_1

    .line 30
    check-cast v0, Llr;

    goto :goto_0

    .line 32
    :cond_1
    new-instance v0, Llr$a$a;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Llr$a$a;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 36
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 8
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

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 40
    sparse-switch p1, :sswitch_data_0

    .line 101
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v3

    :goto_0
    return v3

    .line 44
    :sswitch_0
    const-string/jumbo v3, "anetwork.channel.aidl.RemoteNetwork"

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v3, v5

    .line 45
    goto :goto_0

    .line 49
    :sswitch_1
    const-string/jumbo v3, "anetwork.channel.aidl.RemoteNetwork"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 51
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_0

    .line 52
    sget-object v3, Lanetwork/channel/aidl/ParcelableRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lanetwork/channel/aidl/ParcelableRequest;

    .line 57
    .local v0, "_arg0":Lanetwork/channel/aidl/ParcelableRequest;
    :goto_1
    invoke-virtual {p0, v0}, Llr$a;->a(Lanetwork/channel/aidl/ParcelableRequest;)Lanetwork/channel/aidl/NetworkResponse;

    move-result-object v2

    .line 58
    .local v2, "_result":Lanetwork/channel/aidl/NetworkResponse;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 59
    if-eqz v2, :cond_1

    .line 60
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 61
    invoke-virtual {v2, p3, v5}, Lanetwork/channel/aidl/NetworkResponse;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_2
    move v3, v5

    .line 66
    goto :goto_0

    .line 55
    .end local v0    # "_arg0":Lanetwork/channel/aidl/ParcelableRequest;
    .end local v2    # "_result":Lanetwork/channel/aidl/NetworkResponse;
    :cond_0
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Lanetwork/channel/aidl/ParcelableRequest;
    goto :goto_1

    .line 64
    .restart local v2    # "_result":Lanetwork/channel/aidl/NetworkResponse;
    :cond_1
    const/4 v3, 0x0

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_2

    .line 70
    .end local v0    # "_arg0":Lanetwork/channel/aidl/ParcelableRequest;
    .end local v2    # "_result":Lanetwork/channel/aidl/NetworkResponse;
    :sswitch_2
    const-string/jumbo v3, "anetwork.channel.aidl.RemoteNetwork"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 72
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_3

    .line 73
    sget-object v3, Lanetwork/channel/aidl/ParcelableRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lanetwork/channel/aidl/ParcelableRequest;

    .line 79
    .restart local v0    # "_arg0":Lanetwork/channel/aidl/ParcelableRequest;
    :goto_3
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    .line 1025
    if-nez v6, :cond_4

    move-object v1, v4

    .line 80
    .local v1, "_arg1":Llq;
    :goto_4
    invoke-virtual {p0, v0, v1}, Llr$a;->a(Lanetwork/channel/aidl/ParcelableRequest;Llq;)Llo;

    move-result-object v2

    .line 81
    .local v2, "_result":Llo;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 82
    if-eqz v2, :cond_2

    invoke-interface {v2}, Llo;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    :cond_2
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    move v3, v5

    .line 83
    goto :goto_0

    .line 76
    .end local v0    # "_arg0":Lanetwork/channel/aidl/ParcelableRequest;
    .end local v1    # "_arg1":Llq;
    .end local v2    # "_result":Llo;
    :cond_3
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Lanetwork/channel/aidl/ParcelableRequest;
    goto :goto_3

    .line 1028
    :cond_4
    const-string/jumbo v3, "anetwork.channel.aidl.ParcelableNetworkListener"

    invoke-interface {v6, v3}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v3

    .line 1029
    if-eqz v3, :cond_5

    instance-of v7, v3, Llq;

    if-eqz v7, :cond_5

    .line 1030
    check-cast v3, Llq;

    move-object v1, v3

    goto :goto_4

    .line 1032
    :cond_5
    new-instance v1, Llq$a$a;

    invoke-direct {v1, v6}, Llq$a$a;-><init>(Landroid/os/IBinder;)V

    goto :goto_4

    .line 87
    .end local v0    # "_arg0":Lanetwork/channel/aidl/ParcelableRequest;
    :sswitch_3
    const-string/jumbo v3, "anetwork.channel.aidl.RemoteNetwork"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 89
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_7

    .line 90
    sget-object v3, Lanetwork/channel/aidl/ParcelableRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lanetwork/channel/aidl/ParcelableRequest;

    .line 95
    .restart local v0    # "_arg0":Lanetwork/channel/aidl/ParcelableRequest;
    :goto_5
    invoke-virtual {p0, v0}, Llr$a;->b(Lanetwork/channel/aidl/ParcelableRequest;)Lll;

    move-result-object v2

    .line 96
    .local v2, "_result":Lll;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 97
    if-eqz v2, :cond_6

    invoke-interface {v2}, Lll;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    :cond_6
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    move v3, v5

    .line 98
    goto/16 :goto_0

    .line 93
    .end local v0    # "_arg0":Lanetwork/channel/aidl/ParcelableRequest;
    .end local v2    # "_result":Lll;
    :cond_7
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Lanetwork/channel/aidl/ParcelableRequest;
    goto :goto_5

    .line 40
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
