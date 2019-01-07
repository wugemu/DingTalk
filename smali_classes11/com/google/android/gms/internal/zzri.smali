.class public Lcom/google/android/gms/internal/zzri;
.super Lcom/google/android/gms/common/internal/zzk;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/common/internal/zzk",
        "<",
        "Lcom/google/android/gms/internal/zzrk;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/internal/zzg;Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)V
    .locals 7

    const/16 v3, 0x27

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/common/internal/zzk;-><init>(Landroid/content/Context;Landroid/os/Looper;ILcom/google/android/gms/common/internal/zzg;Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)V

    return-void
.end method


# virtual methods
.method protected synthetic zzbb(Landroid/os/IBinder;)Landroid/os/IInterface;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzri;->zzdy(Landroid/os/IBinder;)Lcom/google/android/gms/internal/zzrk;

    move-result-object v0

    return-object v0
.end method

.method protected zzdy(Landroid/os/IBinder;)Lcom/google/android/gms/internal/zzrk;
    .locals 1

    invoke-static {p1}, Lcom/google/android/gms/internal/zzrk$zza;->zzea(Landroid/os/IBinder;)Lcom/google/android/gms/internal/zzrk;

    move-result-object v0

    return-object v0
.end method

.method public zzqz()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "com.google.android.gms.common.service.START"

    return-object v0
.end method

.method protected zzra()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "com.google.android.gms.common.internal.service.ICommonService"

    return-object v0
.end method
