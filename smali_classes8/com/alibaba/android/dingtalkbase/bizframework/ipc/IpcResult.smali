.class public Lcom/alibaba/android/dingtalkbase/bizframework/ipc/IpcResult;
.super Ljava/lang/Object;
.source "IpcResult.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable;"
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/alibaba/android/dingtalkbase/bizframework/ipc/IpcResult;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private clazzType:Ljava/lang/Class;

.field private value:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 11
    new-instance v0, Lcom/alibaba/android/dingtalkbase/bizframework/ipc/IpcResult$1;

    invoke-direct {v0}, Lcom/alibaba/android/dingtalkbase/bizframework/ipc/IpcResult$1;-><init>()V

    sput-object v0, Lcom/alibaba/android/dingtalkbase/bizframework/ipc/IpcResult;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    .local p0, "this":Lcom/alibaba/android/dingtalkbase/bizframework/ipc/IpcResult;, "Lcom/alibaba/android/dingtalkbase/bizframework/ipc/IpcResult<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 0
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 33
    .local p0, "this":Lcom/alibaba/android/dingtalkbase/bizframework/ipc/IpcResult;, "Lcom/alibaba/android/dingtalkbase/bizframework/ipc/IpcResult<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    invoke-virtual {p0, p1}, Lcom/alibaba/android/dingtalkbase/bizframework/ipc/IpcResult;->readFromParcel(Landroid/os/Parcel;)V

    .line 35
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Ljava/lang/Class;)V
    .locals 0
    .param p2, "clazzType"    # Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Ljava/lang/Class;",
            ")V"
        }
    .end annotation

    .prologue
    .line 28
    .local p0, "this":Lcom/alibaba/android/dingtalkbase/bizframework/ipc/IpcResult;, "Lcom/alibaba/android/dingtalkbase/bizframework/ipc/IpcResult<TT;>;"
    .local p1, "value":Ljava/lang/Object;, "TT;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/alibaba/android/dingtalkbase/bizframework/ipc/IpcResult;->value:Ljava/lang/Object;

    .line 30
    iput-object p2, p0, Lcom/alibaba/android/dingtalkbase/bizframework/ipc/IpcResult;->clazzType:Ljava/lang/Class;

    .line 31
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 48
    .local p0, "this":Lcom/alibaba/android/dingtalkbase/bizframework/ipc/IpcResult;, "Lcom/alibaba/android/dingtalkbase/bizframework/ipc/IpcResult<TT;>;"
    const/4 v0, 0x0

    return v0
.end method

.method public getValue()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 43
    .local p0, "this":Lcom/alibaba/android/dingtalkbase/bizframework/ipc/IpcResult;, "Lcom/alibaba/android/dingtalkbase/bizframework/ipc/IpcResult<TT;>;"
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/bizframework/ipc/IpcResult;->value:Ljava/lang/Object;

    return-object v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 38
    .local p0, "this":Lcom/alibaba/android/dingtalkbase/bizframework/ipc/IpcResult;, "Lcom/alibaba/android/dingtalkbase/bizframework/ipc/IpcResult<TT;>;"
    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    iput-object v0, p0, Lcom/alibaba/android/dingtalkbase/bizframework/ipc/IpcResult;->clazzType:Ljava/lang/Class;

    .line 39
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/bizframework/ipc/IpcResult;->clazzType:Ljava/lang/Class;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/bizframework/ipc/IpcResult;->clazzType:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/dingtalkbase/bizframework/ipc/IpcResult;->value:Ljava/lang/Object;

    .line 40
    return-void

    .line 39
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 53
    .local p0, "this":Lcom/alibaba/android/dingtalkbase/bizframework/ipc/IpcResult;, "Lcom/alibaba/android/dingtalkbase/bizframework/ipc/IpcResult<TT;>;"
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/bizframework/ipc/IpcResult;->clazzType:Ljava/lang/Class;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    .line 54
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/bizframework/ipc/IpcResult;->value:Ljava/lang/Object;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 55
    return-void
.end method
