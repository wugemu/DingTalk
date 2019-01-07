.class public abstract Lgrx$a;
.super Landroid/os/Binder;
.source "IFaceBoxRpcService.java"

# interfaces
.implements Lgrx;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgrx;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lgrx$a$a;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 15
    const-string/jumbo v0, "com.alibaba.dingtalk.facebox.aidl.IFaceBoxRpcService"

    invoke-virtual {p0, p0, v0}, Lgrx$a;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 16
    return-void
.end method

.method public static a(Landroid/os/IBinder;)Lgrx;
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
    const-string/jumbo v1, "com.alibaba.dingtalk.facebox.aidl.IFaceBoxRpcService"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 27
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lgrx;

    if-eqz v1, :cond_1

    .line 28
    check-cast v0, Lgrx;

    goto :goto_0

    .line 30
    :cond_1
    new-instance v0, Lgrx$a$a;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lgrx$a$a;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 34
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

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    const/4 v3, 0x1

    .line 38
    sparse-switch p1, :sswitch_data_0

    .line 182
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v3

    :goto_0
    return v3

    .line 42
    :sswitch_0
    const-string/jumbo v4, "com.alibaba.dingtalk.facebox.aidl.IFaceBoxRpcService"

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 47
    :sswitch_1
    const-string/jumbo v4, "com.alibaba.dingtalk.facebox.aidl.IFaceBoxRpcService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 49
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_0

    .line 50
    sget-object v4, Lcom/alibaba/dingtalk/facebox/idl/model/FaceAnalyzeModel;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/dingtalk/facebox/idl/model/FaceAnalyzeModel;

    .line 56
    .local v0, "_arg0":Lcom/alibaba/dingtalk/facebox/idl/model/FaceAnalyzeModel;
    :goto_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lgrw$a;->a(Landroid/os/IBinder;)Lgrw;

    move-result-object v1

    .line 57
    .local v1, "_arg1":Lgrw;
    invoke-virtual {p0, v0, v1}, Lgrx$a;->a(Lcom/alibaba/dingtalk/facebox/idl/model/FaceAnalyzeModel;Lgrw;)V

    .line 58
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 53
    .end local v0    # "_arg0":Lcom/alibaba/dingtalk/facebox/idl/model/FaceAnalyzeModel;
    .end local v1    # "_arg1":Lgrw;
    :cond_0
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Lcom/alibaba/dingtalk/facebox/idl/model/FaceAnalyzeModel;
    goto :goto_1

    .line 63
    .end local v0    # "_arg0":Lcom/alibaba/dingtalk/facebox/idl/model/FaceAnalyzeModel;
    :sswitch_2
    const-string/jumbo v4, "com.alibaba.dingtalk.facebox.aidl.IFaceBoxRpcService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 65
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_1

    .line 66
    sget-object v4, Lcom/alibaba/dingtalk/facebox/idl/model/RegisterUserModel;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/dingtalk/facebox/idl/model/RegisterUserModel;

    .line 72
    .local v0, "_arg0":Lcom/alibaba/dingtalk/facebox/idl/model/RegisterUserModel;
    :goto_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lgrw$a;->a(Landroid/os/IBinder;)Lgrw;

    move-result-object v1

    .line 73
    .restart local v1    # "_arg1":Lgrw;
    invoke-virtual {p0, v0, v1}, Lgrx$a;->a(Lcom/alibaba/dingtalk/facebox/idl/model/RegisterUserModel;Lgrw;)V

    .line 74
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 69
    .end local v0    # "_arg0":Lcom/alibaba/dingtalk/facebox/idl/model/RegisterUserModel;
    .end local v1    # "_arg1":Lgrw;
    :cond_1
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Lcom/alibaba/dingtalk/facebox/idl/model/RegisterUserModel;
    goto :goto_2

    .line 79
    .end local v0    # "_arg0":Lcom/alibaba/dingtalk/facebox/idl/model/RegisterUserModel;
    :sswitch_3
    const-string/jumbo v4, "com.alibaba.dingtalk.facebox.aidl.IFaceBoxRpcService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 81
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_2

    .line 82
    sget-object v4, Lcom/alibaba/dingtalk/facebox/idl/model/RegisterUserModel;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/dingtalk/facebox/idl/model/RegisterUserModel;

    .line 88
    .restart local v0    # "_arg0":Lcom/alibaba/dingtalk/facebox/idl/model/RegisterUserModel;
    :goto_3
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lgrw$a;->a(Landroid/os/IBinder;)Lgrw;

    move-result-object v1

    .line 89
    .restart local v1    # "_arg1":Lgrw;
    invoke-virtual {p0, v0, v1}, Lgrx$a;->b(Lcom/alibaba/dingtalk/facebox/idl/model/RegisterUserModel;Lgrw;)V

    .line 90
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 85
    .end local v0    # "_arg0":Lcom/alibaba/dingtalk/facebox/idl/model/RegisterUserModel;
    .end local v1    # "_arg1":Lgrw;
    :cond_2
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Lcom/alibaba/dingtalk/facebox/idl/model/RegisterUserModel;
    goto :goto_3

    .line 95
    .end local v0    # "_arg0":Lcom/alibaba/dingtalk/facebox/idl/model/RegisterUserModel;
    :sswitch_4
    const-string/jumbo v4, "com.alibaba.dingtalk.facebox.aidl.IFaceBoxRpcService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 97
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_3

    .line 98
    sget-object v4, Lcom/alibaba/dingtalk/facebox/idl/model/RegisterUserModel;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/dingtalk/facebox/idl/model/RegisterUserModel;

    .line 104
    .restart local v0    # "_arg0":Lcom/alibaba/dingtalk/facebox/idl/model/RegisterUserModel;
    :goto_4
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lgrw$a;->a(Landroid/os/IBinder;)Lgrw;

    move-result-object v1

    .line 105
    .restart local v1    # "_arg1":Lgrw;
    invoke-virtual {p0, v0, v1}, Lgrx$a;->c(Lcom/alibaba/dingtalk/facebox/idl/model/RegisterUserModel;Lgrw;)V

    .line 106
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 101
    .end local v0    # "_arg0":Lcom/alibaba/dingtalk/facebox/idl/model/RegisterUserModel;
    .end local v1    # "_arg1":Lgrw;
    :cond_3
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Lcom/alibaba/dingtalk/facebox/idl/model/RegisterUserModel;
    goto :goto_4

    .line 111
    .end local v0    # "_arg0":Lcom/alibaba/dingtalk/facebox/idl/model/RegisterUserModel;
    :sswitch_5
    const-string/jumbo v4, "com.alibaba.dingtalk.facebox.aidl.IFaceBoxRpcService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 113
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_4

    .line 114
    sget-object v4, Lcom/alibaba/dingtalk/facebox/idl/model/FaceValidModel;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/dingtalk/facebox/idl/model/FaceValidModel;

    .line 120
    .local v0, "_arg0":Lcom/alibaba/dingtalk/facebox/idl/model/FaceValidModel;
    :goto_5
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lgrw$a;->a(Landroid/os/IBinder;)Lgrw;

    move-result-object v1

    .line 121
    .restart local v1    # "_arg1":Lgrw;
    invoke-virtual {p0, v0, v1}, Lgrx$a;->a(Lcom/alibaba/dingtalk/facebox/idl/model/FaceValidModel;Lgrw;)V

    .line 122
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 117
    .end local v0    # "_arg0":Lcom/alibaba/dingtalk/facebox/idl/model/FaceValidModel;
    .end local v1    # "_arg1":Lgrw;
    :cond_4
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Lcom/alibaba/dingtalk/facebox/idl/model/FaceValidModel;
    goto :goto_5

    .line 127
    .end local v0    # "_arg0":Lcom/alibaba/dingtalk/facebox/idl/model/FaceValidModel;
    :sswitch_6
    const-string/jumbo v4, "com.alibaba.dingtalk.facebox.aidl.IFaceBoxRpcService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 129
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_5

    .line 130
    sget-object v4, Lcom/alibaba/dingtalk/facebox/model/IpcUploadParams;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/dingtalk/facebox/model/IpcUploadParams;

    .line 136
    .local v0, "_arg0":Lcom/alibaba/dingtalk/facebox/model/IpcUploadParams;
    :goto_6
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lgrw$a;->a(Landroid/os/IBinder;)Lgrw;

    move-result-object v1

    .line 137
    .restart local v1    # "_arg1":Lgrw;
    invoke-virtual {p0, v0, v1}, Lgrx$a;->a(Lcom/alibaba/dingtalk/facebox/model/IpcUploadParams;Lgrw;)V

    .line 138
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 133
    .end local v0    # "_arg0":Lcom/alibaba/dingtalk/facebox/model/IpcUploadParams;
    .end local v1    # "_arg1":Lgrw;
    :cond_5
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Lcom/alibaba/dingtalk/facebox/model/IpcUploadParams;
    goto :goto_6

    .line 143
    .end local v0    # "_arg0":Lcom/alibaba/dingtalk/facebox/model/IpcUploadParams;
    :sswitch_7
    const-string/jumbo v4, "com.alibaba.dingtalk.facebox.aidl.IFaceBoxRpcService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 145
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_6

    .line 146
    sget-object v4, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    .line 151
    .local v0, "_arg0":Landroid/content/Intent;
    :goto_7
    invoke-virtual {p0, v0}, Lgrx$a;->a(Landroid/content/Intent;)V

    .line 152
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 149
    .end local v0    # "_arg0":Landroid/content/Intent;
    :cond_6
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Landroid/content/Intent;
    goto :goto_7

    .line 157
    .end local v0    # "_arg0":Landroid/content/Intent;
    :sswitch_8
    const-string/jumbo v4, "com.alibaba.dingtalk.facebox.aidl.IFaceBoxRpcService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 159
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 161
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 163
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lgrw$a;->a(Landroid/os/IBinder;)Lgrw;

    move-result-object v2

    .line 164
    .local v2, "_arg2":Lgrw;
    invoke-virtual {p0, v0, v1, v2}, Lgrx$a;->b(Ljava/lang/String;Ljava/lang/String;Lgrw;)V

    .line 165
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 170
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":Lgrw;
    :sswitch_9
    const-string/jumbo v4, "com.alibaba.dingtalk.facebox.aidl.IFaceBoxRpcService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 172
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 174
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 176
    .restart local v1    # "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lgrw$a;->a(Landroid/os/IBinder;)Lgrw;

    move-result-object v2

    .line 177
    .restart local v2    # "_arg2":Lgrw;
    invoke-virtual {p0, v0, v1, v2}, Lgrx$a;->a(Ljava/lang/String;Ljava/lang/String;Lgrw;)V

    .line 178
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 38
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x6 -> :sswitch_6
        0x7 -> :sswitch_7
        0x8 -> :sswitch_8
        0x9 -> :sswitch_9
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
