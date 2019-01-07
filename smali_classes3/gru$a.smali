.class public abstract Lgru$a;
.super Landroid/os/Binder;
.source "IFaceRecognizeListener.java"

# interfaces
.implements Lgru;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgru;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lgru$a$a;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 15
    const-string/jumbo v0, "com.alibaba.dingtalk.facebox.IFaceRecognizeListener"

    invoke-virtual {p0, p0, v0}, Lgru$a;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 16
    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 34
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 4
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

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    const/4 v2, 0x1

    .line 38
    sparse-switch p1, :sswitch_data_0

    .line 93
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    :goto_0
    return v2

    .line 42
    :sswitch_0
    const-string/jumbo v3, "com.alibaba.dingtalk.facebox.IFaceRecognizeListener"

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 47
    :sswitch_1
    const-string/jumbo v3, "com.alibaba.dingtalk.facebox.IFaceRecognizeListener"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 49
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_0

    .line 50
    sget-object v3, Lcom/alibaba/android/dingtalkbase/bizframework/ipc/IpcResult;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/bizframework/ipc/IpcResult;

    .line 55
    .local v0, "_arg0":Lcom/alibaba/android/dingtalkbase/bizframework/ipc/IpcResult;
    :goto_1
    invoke-virtual {p0, v0}, Lgru$a;->a(Lcom/alibaba/android/dingtalkbase/bizframework/ipc/IpcResult;)V

    goto :goto_0

    .line 53
    .end local v0    # "_arg0":Lcom/alibaba/android/dingtalkbase/bizframework/ipc/IpcResult;
    :cond_0
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Lcom/alibaba/android/dingtalkbase/bizframework/ipc/IpcResult;
    goto :goto_1

    .line 60
    .end local v0    # "_arg0":Lcom/alibaba/android/dingtalkbase/bizframework/ipc/IpcResult;
    :sswitch_2
    const-string/jumbo v3, "com.alibaba.dingtalk.facebox.IFaceRecognizeListener"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 62
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 63
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lgru$a;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 68
    .end local v0    # "_arg0":Ljava/lang/String;
    :sswitch_3
    const-string/jumbo v3, "com.alibaba.dingtalk.facebox.IFaceRecognizeListener"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 70
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 72
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 73
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v0, v1}, Lgru$a;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 78
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/lang/String;
    :sswitch_4
    const-string/jumbo v3, "com.alibaba.dingtalk.facebox.IFaceRecognizeListener"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 80
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 82
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 83
    .restart local v1    # "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v0, v1}, Lgru$a;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 88
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/lang/String;
    :sswitch_5
    const-string/jumbo v3, "com.alibaba.dingtalk.facebox.IFaceRecognizeListener"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 89
    invoke-virtual {p0}, Lgru$a;->a()V

    goto :goto_0

    .line 38
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
