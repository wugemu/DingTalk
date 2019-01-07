.class public Lcom/google/android/gms/internal/zzpp;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;
.implements Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;


# instance fields
.field public final pN:Lcom/google/android/gms/common/api/Api;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/Api",
            "<*>;"
        }
    .end annotation
.end field

.field private final tf:I

.field private tg:Lcom/google/android/gms/internal/zzqa;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/api/Api;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/Api",
            "<*>;I)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzpp;->pN:Lcom/google/android/gms/common/api/Api;

    iput p2, p0, Lcom/google/android/gms/internal/zzpp;->tf:I

    return-void
.end method

.method private zzapa()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzpp;->tg:Lcom/google/android/gms/internal/zzqa;

    const-string/jumbo v1, "Callbacks must be attached to a GoogleApiClient instance before connecting the client."

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/zzab;->zzb(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public onConnected(Landroid/os/Bundle;)V
    .locals 1
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzpp;->zzapa()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzpp;->tg:Lcom/google/android/gms/internal/zzqa;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/zzqa;->onConnected(Landroid/os/Bundle;)V

    return-void
.end method

.method public onConnectionFailed(Lcom/google/android/gms/common/ConnectionResult;)V
    .locals 3
    .param p1    # Lcom/google/android/gms/common/ConnectionResult;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzpp;->zzapa()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzpp;->tg:Lcom/google/android/gms/internal/zzqa;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzpp;->pN:Lcom/google/android/gms/common/api/Api;

    iget v2, p0, Lcom/google/android/gms/internal/zzpp;->tf:I

    invoke-virtual {v0, p1, v1, v2}, Lcom/google/android/gms/internal/zzqa;->zza(Lcom/google/android/gms/common/ConnectionResult;Lcom/google/android/gms/common/api/Api;I)V

    return-void
.end method

.method public onConnectionSuspended(I)V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzpp;->zzapa()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzpp;->tg:Lcom/google/android/gms/internal/zzqa;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/zzqa;->onConnectionSuspended(I)V

    return-void
.end method

.method public zza(Lcom/google/android/gms/internal/zzqa;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzpp;->tg:Lcom/google/android/gms/internal/zzqa;

    return-void
.end method
