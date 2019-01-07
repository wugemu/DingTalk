.class public Lcom/google/android/gms/measurement/internal/zzo;
.super Lcom/google/android/gms/common/internal/zzd;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/common/internal/zzd",
        "<",
        "Lcom/google/android/gms/measurement/internal/zzm;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/internal/zzd$zzb;Lcom/google/android/gms/common/internal/zzd$zzc;)V
    .locals 7

    const/16 v3, 0x5d

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/common/internal/zzd;-><init>(Landroid/content/Context;Landroid/os/Looper;ILcom/google/android/gms/common/internal/zzd$zzb;Lcom/google/android/gms/common/internal/zzd$zzc;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public synthetic zzbb(Landroid/os/IBinder;)Landroid/os/IInterface;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/measurement/internal/zzo;->zzjg(Landroid/os/IBinder;)Lcom/google/android/gms/measurement/internal/zzm;

    move-result-object v0

    return-object v0
.end method

.method public zzjg(Landroid/os/IBinder;)Lcom/google/android/gms/measurement/internal/zzm;
    .locals 1

    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/zzm$zza;->zzjf(Landroid/os/IBinder;)Lcom/google/android/gms/measurement/internal/zzm;

    move-result-object v0

    return-object v0
.end method

.method protected zzqz()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "com.google.android.gms.measurement.START"

    return-object v0
.end method

.method protected zzra()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "com.google.android.gms.measurement.internal.IMeasurementService"

    return-object v0
.end method
