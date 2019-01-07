.class public final Llt;
.super Llo$a;
.source "ErrorParcelableFuture.java"


# instance fields
.field a:I


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .param p1, "error"    # I

    .prologue
    .line 10
    invoke-direct {p0}, Llo$a;-><init>()V

    .line 11
    iput p1, p0, Llt;->a:I

    .line 12
    return-void
.end method


# virtual methods
.method public final a(J)Lanetwork/channel/aidl/NetworkResponse;
    .locals 2
    .param p1, "timeout"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 31
    new-instance v0, Lanetwork/channel/aidl/NetworkResponse;

    iget v1, p0, Llt;->a:I

    invoke-direct {v0, v1}, Lanetwork/channel/aidl/NetworkResponse;-><init>(I)V

    return-object v0
.end method

.method public final a()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 21
    const/4 v0, 0x0

    return v0
.end method

.method public final a(Z)Z
    .locals 1
    .param p1, "mayInterruptIfRunning"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 16
    const/4 v0, 0x0

    return v0
.end method

.method public final b()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 26
    const/4 v0, 0x1

    return v0
.end method
