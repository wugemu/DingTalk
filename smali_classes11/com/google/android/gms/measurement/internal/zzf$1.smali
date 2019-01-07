.class Lcom/google/android/gms/measurement/internal/zzf$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/measurement/internal/zzf;-><init>(Lcom/google/android/gms/measurement/internal/zzx;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic aiv:Lcom/google/android/gms/measurement/internal/zzf;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/zzf;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzf$1;->aiv:Lcom/google/android/gms/measurement/internal/zzf;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzf$1;->aiv:Lcom/google/android/gms/measurement/internal/zzf;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzf;->zza(Lcom/google/android/gms/measurement/internal/zzf;)Lcom/google/android/gms/measurement/internal/zzx;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzx;->zzbsc()Lcom/google/android/gms/measurement/internal/zzw;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/gms/measurement/internal/zzw;->zzm(Ljava/lang/Runnable;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzf$1;->aiv:Lcom/google/android/gms/measurement/internal/zzf;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzf;->zzfc()Z

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzf$1;->aiv:Lcom/google/android/gms/measurement/internal/zzf;

    const-wide/16 v2, 0x0

    invoke-static {v1, v2, v3}, Lcom/google/android/gms/measurement/internal/zzf;->zza(Lcom/google/android/gms/measurement/internal/zzf;J)J

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzf$1;->aiv:Lcom/google/android/gms/measurement/internal/zzf;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzf;->zzb(Lcom/google/android/gms/measurement/internal/zzf;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzf$1;->aiv:Lcom/google/android/gms/measurement/internal/zzf;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzf;->run()V

    goto :goto_0
.end method
