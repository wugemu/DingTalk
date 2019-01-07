.class final Lgry$a$a;
.super Ljava/lang/Object;
.source "IFaceBoxService.java"

# interfaces
.implements Lgry;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgry$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field private a:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .locals 0
    .param p1, "remote"    # Landroid/os/IBinder;

    .prologue
    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    iput-object p1, p0, Lgry$a$a;->a:Landroid/os/IBinder;

    .line 84
    return-void
.end method


# virtual methods
.method public final a(Lcom/alibaba/dingtalk/facebox/idl/model/FaceRecognizeModel;Lcom/alibaba/dingtalk/facebox/detector/FaceDetecteFrame;Lcom/alibaba/dingtalk/facebox/model/TransformFrameArgument;Lgru;)V
    .locals 5
    .param p1, "faceRecognizeModel"    # Lcom/alibaba/dingtalk/facebox/idl/model/FaceRecognizeModel;
    .param p2, "frame"    # Lcom/alibaba/dingtalk/facebox/detector/FaceDetecteFrame;
    .param p3, "argument"    # Lcom/alibaba/dingtalk/facebox/model/TransformFrameArgument;
    .param p4, "listener"    # Lgru;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 95
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 96
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 98
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "com.alibaba.dingtalk.facebox.aidl.IFaceBoxService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 99
    if-eqz p1, :cond_0

    .line 100
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 101
    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2}, Lcom/alibaba/dingtalk/facebox/idl/model/FaceRecognizeModel;->writeToParcel(Landroid/os/Parcel;I)V

    .line 106
    :goto_0
    if-eqz p2, :cond_1

    .line 107
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 108
    const/4 v2, 0x0

    invoke-virtual {p2, v0, v2}, Lcom/alibaba/dingtalk/facebox/detector/FaceDetecteFrame;->writeToParcel(Landroid/os/Parcel;I)V

    .line 113
    :goto_1
    if-eqz p3, :cond_2

    .line 114
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 115
    const/4 v2, 0x0

    invoke-virtual {p3, v0, v2}, Lcom/alibaba/dingtalk/facebox/model/TransformFrameArgument;->writeToParcel(Landroid/os/Parcel;I)V

    .line 120
    :goto_2
    if-eqz p4, :cond_3

    invoke-interface {p4}, Lgru;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    :goto_3
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 121
    iget-object v2, p0, Lgry$a$a;->a:Landroid/os/IBinder;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 122
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 125
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 126
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 127
    return-void

    .line 104
    :cond_0
    const/4 v2, 0x0

    :try_start_1
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 125
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 126
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2

    .line 111
    :cond_1
    const/4 v2, 0x0

    :try_start_2
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1

    .line 118
    :cond_2
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    .line 120
    :cond_3
    const/4 v2, 0x0

    goto :goto_3
.end method

.method public final asBinder()Landroid/os/IBinder;
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lgry$a$a;->a:Landroid/os/IBinder;

    return-object v0
.end method
