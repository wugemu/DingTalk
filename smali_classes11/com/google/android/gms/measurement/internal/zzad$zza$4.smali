.class Lcom/google/android/gms/measurement/internal/zzad$zza$4;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/measurement/internal/zzad$zza;->onConnectionSuspended(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic ama:Lcom/google/android/gms/measurement/internal/zzad$zza;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/zzad$zza;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzad$zza$4;->ama:Lcom/google/android/gms/measurement/internal/zzad$zza;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzad$zza$4;->ama:Lcom/google/android/gms/measurement/internal/zzad$zza;

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzad$zza;->alV:Lcom/google/android/gms/measurement/internal/zzad;

    new-instance v1, Landroid/content/ComponentName;

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzad$zza$4;->ama:Lcom/google/android/gms/measurement/internal/zzad$zza;

    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/zzad$zza;->alV:Lcom/google/android/gms/measurement/internal/zzad;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzad;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string/jumbo v3, "com.google.android.gms.measurement.AppMeasurementService"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/google/android/gms/measurement/internal/zzad;->zza(Lcom/google/android/gms/measurement/internal/zzad;Landroid/content/ComponentName;)V

    return-void
.end method
