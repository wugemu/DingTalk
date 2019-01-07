.class public abstract Lgry$a;
.super Landroid/os/Binder;
.source "IFaceBoxService.java"

# interfaces
.implements Lgry;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lgry$a$a;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 15
    const-string/jumbo v0, "com.alibaba.dingtalk.facebox.aidl.IFaceBoxService"

    invoke-virtual {p0, p0, v0}, Lgry$a;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 16
    return-void
.end method

.method public static a(Landroid/os/IBinder;)Lgry;
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
    const-string/jumbo v1, "com.alibaba.dingtalk.facebox.aidl.IFaceBoxService"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 27
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lgry;

    if-eqz v1, :cond_1

    .line 28
    check-cast v0, Lgry;

    goto :goto_0

    .line 30
    :cond_1
    new-instance v0, Lgry$a$a;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lgry$a$a;-><init>(Landroid/os/IBinder;)V

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

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    const/4 v5, 0x1

    .line 38
    sparse-switch p1, :sswitch_data_0

    .line 76
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v4

    :goto_0
    return v4

    .line 42
    :sswitch_0
    const-string/jumbo v4, "com.alibaba.dingtalk.facebox.aidl.IFaceBoxService"

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v4, v5

    .line 43
    goto :goto_0

    .line 47
    :sswitch_1
    const-string/jumbo v4, "com.alibaba.dingtalk.facebox.aidl.IFaceBoxService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 49
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_0

    .line 50
    sget-object v4, Lcom/alibaba/dingtalk/facebox/idl/model/FaceRecognizeModel;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/dingtalk/facebox/idl/model/FaceRecognizeModel;

    .line 56
    .local v0, "_arg0":Lcom/alibaba/dingtalk/facebox/idl/model/FaceRecognizeModel;
    :goto_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_1

    .line 57
    sget-object v4, Lcom/alibaba/dingtalk/facebox/detector/FaceDetecteFrame;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/dingtalk/facebox/detector/FaceDetecteFrame;

    .line 63
    .local v1, "_arg1":Lcom/alibaba/dingtalk/facebox/detector/FaceDetecteFrame;
    :goto_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_2

    .line 64
    sget-object v4, Lcom/alibaba/dingtalk/facebox/model/TransformFrameArgument;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/dingtalk/facebox/model/TransformFrameArgument;

    .line 70
    .local v2, "_arg2":Lcom/alibaba/dingtalk/facebox/model/TransformFrameArgument;
    :goto_3
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    .line 1023
    if-nez v6, :cond_3

    .line 1024
    const/4 v3, 0x0

    .line 71
    .local v3, "_arg3":Lgru;
    :goto_4
    invoke-virtual {p0, v0, v1, v2, v3}, Lgry$a;->a(Lcom/alibaba/dingtalk/facebox/idl/model/FaceRecognizeModel;Lcom/alibaba/dingtalk/facebox/detector/FaceDetecteFrame;Lcom/alibaba/dingtalk/facebox/model/TransformFrameArgument;Lgru;)V

    .line 72
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v4, v5

    .line 73
    goto :goto_0

    .line 53
    .end local v0    # "_arg0":Lcom/alibaba/dingtalk/facebox/idl/model/FaceRecognizeModel;
    .end local v1    # "_arg1":Lcom/alibaba/dingtalk/facebox/detector/FaceDetecteFrame;
    .end local v2    # "_arg2":Lcom/alibaba/dingtalk/facebox/model/TransformFrameArgument;
    .end local v3    # "_arg3":Lgru;
    :cond_0
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Lcom/alibaba/dingtalk/facebox/idl/model/FaceRecognizeModel;
    goto :goto_1

    .line 60
    :cond_1
    const/4 v1, 0x0

    .restart local v1    # "_arg1":Lcom/alibaba/dingtalk/facebox/detector/FaceDetecteFrame;
    goto :goto_2

    .line 67
    :cond_2
    const/4 v2, 0x0

    .restart local v2    # "_arg2":Lcom/alibaba/dingtalk/facebox/model/TransformFrameArgument;
    goto :goto_3

    .line 1026
    :cond_3
    const-string/jumbo v4, "com.alibaba.dingtalk.facebox.IFaceRecognizeListener"

    invoke-interface {v6, v4}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v4

    .line 1027
    if-eqz v4, :cond_4

    instance-of v7, v4, Lgru;

    if-eqz v7, :cond_4

    .line 1028
    check-cast v4, Lgru;

    move-object v3, v4

    goto :goto_4

    .line 1030
    :cond_4
    new-instance v3, Lgru$a$a;

    invoke-direct {v3, v6}, Lgru$a$a;-><init>(Landroid/os/IBinder;)V

    goto :goto_4

    .line 38
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
