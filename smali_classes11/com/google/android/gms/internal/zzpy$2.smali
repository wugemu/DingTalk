.class Lcom/google/android/gms/internal/zzpy$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzpy;->clearDefaultAccountAndReconnect()Lcom/google/android/gms/common/api/PendingResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic uq:Lcom/google/android/gms/internal/zzpy;

.field final synthetic ur:Ljava/util/concurrent/atomic/AtomicReference;

.field final synthetic us:Lcom/google/android/gms/internal/zzqu;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzpy;Ljava/util/concurrent/atomic/AtomicReference;Lcom/google/android/gms/internal/zzqu;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzpy$2;->uq:Lcom/google/android/gms/internal/zzpy;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzpy$2;->ur:Ljava/util/concurrent/atomic/AtomicReference;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzpy$2;->us:Lcom/google/android/gms/internal/zzqu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConnected(Landroid/os/Bundle;)V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    iget-object v1, p0, Lcom/google/android/gms/internal/zzpy$2;->uq:Lcom/google/android/gms/internal/zzpy;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzpy$2;->ur:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/GoogleApiClient;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzpy$2;->us:Lcom/google/android/gms/internal/zzqu;

    const/4 v3, 0x1

    invoke-static {v1, v0, v2, v3}, Lcom/google/android/gms/internal/zzpy;->zza(Lcom/google/android/gms/internal/zzpy;Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/internal/zzqu;Z)V

    return-void
.end method

.method public onConnectionSuspended(I)V
    .locals 0

    return-void
.end method
