.class Lcom/google/android/gms/location/internal/zzb$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/location/internal/zzp;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/location/internal/zzb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/location/internal/zzp",
        "<",
        "Lcom/google/android/gms/location/internal/zzi;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic aca:Lcom/google/android/gms/location/internal/zzb;


# direct methods
.method constructor <init>(Lcom/google/android/gms/location/internal/zzb;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/location/internal/zzb$1;->aca:Lcom/google/android/gms/location/internal/zzb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public zzarz()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/location/internal/zzb$1;->aca:Lcom/google/android/gms/location/internal/zzb;

    invoke-static {v0}, Lcom/google/android/gms/location/internal/zzb;->zza(Lcom/google/android/gms/location/internal/zzb;)V

    return-void
.end method

.method public synthetic zzasa()Landroid/os/IInterface;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/DeadObjectException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/location/internal/zzb$1;->zzbmm()Lcom/google/android/gms/location/internal/zzi;

    move-result-object v0

    return-object v0
.end method

.method public zzbmm()Lcom/google/android/gms/location/internal/zzi;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/DeadObjectException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/location/internal/zzb$1;->aca:Lcom/google/android/gms/location/internal/zzb;

    invoke-virtual {v0}, Lcom/google/android/gms/location/internal/zzb;->zzasa()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/location/internal/zzi;

    return-object v0
.end method
