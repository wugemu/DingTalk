.class public abstract Ljah$a;
.super Landroid/os/Binder;
.source "IILWAPIChannel.java"

# interfaces
.implements Ljah;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljah;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljah$a$a;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 13
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 15
    const-string/jumbo v0, "com.laiwang.sdk.channel.IILWAPIChannel"

    invoke-virtual {p0, p0, v0}, Ljah$a;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 16
    return-void
.end method

.method public static a(Landroid/os/IBinder;)Ljah;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    .line 23
    if-nez p0, :cond_0

    .line 24
    const/4 v0, 0x0

    .line 30
    :goto_0
    return-object v0

    .line 26
    :cond_0
    const-string/jumbo v1, "com.laiwang.sdk.channel.IILWAPIChannel"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 27
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Ljah;

    if-eqz v1, :cond_1

    .line 28
    check-cast v0, Ljah;

    goto :goto_0

    .line 30
    :cond_1
    new-instance v0, Ljah$a$a;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Ljah$a$a;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 9
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

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 38
    sparse-switch p1, :sswitch_data_0

    .line 139
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v5

    :goto_0
    return v5

    .line 42
    :sswitch_0
    const-string/jumbo v5, "com.laiwang.sdk.channel.IILWAPIChannel"

    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v5, v6

    .line 43
    goto :goto_0

    .line 47
    :sswitch_1
    const-string/jumbo v5, "com.laiwang.sdk.channel.IILWAPIChannel"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 49
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_0

    .line 50
    sget-object v5, Lcom/laiwang/sdk/openapi/LWAPIAccount;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v5, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/laiwang/sdk/openapi/LWAPIAccount;

    .line 56
    .local v0, "_arg0":Lcom/laiwang/sdk/openapi/LWAPIAccount;
    :goto_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v7

    .line 1023
    if-nez v7, :cond_1

    .line 1024
    const/4 v1, 0x0

    .line 58
    .local v1, "_arg1":Ljam;
    :goto_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 60
    .local v2, "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 61
    .local v3, "_arg3":Ljava/lang/String;
    invoke-virtual {p0, v0, v1, v2, v3}, Ljah$a;->a(Lcom/laiwang/sdk/openapi/LWAPIAccount;Ljam;ILjava/lang/String;)I

    move-result v4

    .line 62
    .local v4, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 63
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    move v5, v6

    .line 64
    goto :goto_0

    .line 53
    .end local v0    # "_arg0":Lcom/laiwang/sdk/openapi/LWAPIAccount;
    .end local v1    # "_arg1":Ljam;
    .end local v2    # "_arg2":I
    .end local v3    # "_arg3":Ljava/lang/String;
    .end local v4    # "_result":I
    :cond_0
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Lcom/laiwang/sdk/openapi/LWAPIAccount;
    goto :goto_1

    .line 1026
    :cond_1
    const-string/jumbo v5, "com.laiwang.sdk.openapi.IILWAPICallback"

    invoke-interface {v7, v5}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v5

    .line 1027
    if-eqz v5, :cond_2

    instance-of v8, v5, Ljam;

    if-eqz v8, :cond_2

    .line 1028
    check-cast v5, Ljam;

    move-object v1, v5

    goto :goto_2

    .line 1030
    :cond_2
    new-instance v1, Ljam$a$a;

    invoke-direct {v1, v7}, Ljam$a$a;-><init>(Landroid/os/IBinder;)V

    goto :goto_2

    .line 68
    .end local v0    # "_arg0":Lcom/laiwang/sdk/openapi/LWAPIAccount;
    :sswitch_2
    const-string/jumbo v5, "com.laiwang.sdk.channel.IILWAPIChannel"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 70
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 71
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v0}, Ljah$a;->a(Ljava/lang/String;)I

    move-result v4

    .line 72
    .restart local v4    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 73
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    move v5, v6

    .line 74
    goto :goto_0

    .line 78
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v4    # "_result":I
    :sswitch_3
    const-string/jumbo v5, "com.laiwang.sdk.channel.IILWAPIChannel"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 80
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_3

    .line 81
    sget-object v5, Lcom/laiwang/sdk/openapi/LWAPIAccount;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v5, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/laiwang/sdk/openapi/LWAPIAccount;

    .line 87
    .local v0, "_arg0":Lcom/laiwang/sdk/openapi/LWAPIAccount;
    :goto_3
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_4

    .line 88
    sget-object v5, Lcom/laiwang/sdk/message/LWMessage;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v5, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/laiwang/sdk/message/LWMessage;

    .line 94
    .local v1, "_arg1":Lcom/laiwang/sdk/message/LWMessage;
    :goto_4
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 95
    .restart local v2    # "_arg2":I
    invoke-virtual {p0, v0, v1, v2}, Ljah$a;->a(Lcom/laiwang/sdk/openapi/LWAPIAccount;Lcom/laiwang/sdk/message/LWMessage;I)I

    move-result v4

    .line 96
    .restart local v4    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 97
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 98
    if-eqz v0, :cond_5

    .line 99
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 100
    invoke-virtual {v0, p3, v6}, Lcom/laiwang/sdk/openapi/LWAPIAccount;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_5
    move v5, v6

    .line 105
    goto/16 :goto_0

    .line 84
    .end local v0    # "_arg0":Lcom/laiwang/sdk/openapi/LWAPIAccount;
    .end local v1    # "_arg1":Lcom/laiwang/sdk/message/LWMessage;
    .end local v2    # "_arg2":I
    .end local v4    # "_result":I
    :cond_3
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Lcom/laiwang/sdk/openapi/LWAPIAccount;
    goto :goto_3

    .line 91
    :cond_4
    const/4 v1, 0x0

    .restart local v1    # "_arg1":Lcom/laiwang/sdk/message/LWMessage;
    goto :goto_4

    .line 103
    .restart local v2    # "_arg2":I
    .restart local v4    # "_result":I
    :cond_5
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_5

    .line 109
    .end local v0    # "_arg0":Lcom/laiwang/sdk/openapi/LWAPIAccount;
    .end local v1    # "_arg1":Lcom/laiwang/sdk/message/LWMessage;
    .end local v2    # "_arg2":I
    .end local v4    # "_result":I
    :sswitch_4
    const-string/jumbo v5, "com.laiwang.sdk.channel.IILWAPIChannel"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 111
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_6

    .line 112
    sget-object v5, Lcom/laiwang/sdk/openapi/LWAPIAccount;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v5, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/laiwang/sdk/openapi/LWAPIAccount;

    .line 118
    .restart local v0    # "_arg0":Lcom/laiwang/sdk/openapi/LWAPIAccount;
    :goto_6
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_7

    .line 119
    sget-object v5, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v5, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Bundle;

    .line 125
    .local v1, "_arg1":Landroid/os/Bundle;
    :goto_7
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 126
    .restart local v2    # "_arg2":I
    invoke-virtual {p0, v0, v1, v2}, Ljah$a;->a(Lcom/laiwang/sdk/openapi/LWAPIAccount;Landroid/os/Bundle;I)I

    move-result v4

    .line 127
    .restart local v4    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 128
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 129
    if-eqz v0, :cond_8

    .line 130
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 131
    invoke-virtual {v0, p3, v6}, Lcom/laiwang/sdk/openapi/LWAPIAccount;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_8
    move v5, v6

    .line 136
    goto/16 :goto_0

    .line 115
    .end local v0    # "_arg0":Lcom/laiwang/sdk/openapi/LWAPIAccount;
    .end local v1    # "_arg1":Landroid/os/Bundle;
    .end local v2    # "_arg2":I
    .end local v4    # "_result":I
    :cond_6
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Lcom/laiwang/sdk/openapi/LWAPIAccount;
    goto :goto_6

    .line 122
    :cond_7
    const/4 v1, 0x0

    .restart local v1    # "_arg1":Landroid/os/Bundle;
    goto :goto_7

    .line 134
    .restart local v2    # "_arg2":I
    .restart local v4    # "_result":I
    :cond_8
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_8

    .line 38
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
