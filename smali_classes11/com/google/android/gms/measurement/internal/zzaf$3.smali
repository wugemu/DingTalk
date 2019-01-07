.class Lcom/google/android/gms/measurement/internal/zzaf$3;
.super Lcom/google/android/gms/measurement/internal/zzf;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/measurement/internal/zzaf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic aml:Lcom/google/android/gms/measurement/internal/zzaf;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/zzaf;Lcom/google/android/gms/measurement/internal/zzx;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzaf$3;->aml:Lcom/google/android/gms/measurement/internal/zzaf;

    invoke-direct {p0, p2}, Lcom/google/android/gms/measurement/internal/zzf;-><init>(Lcom/google/android/gms/measurement/internal/zzx;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzaf$3;->aml:Lcom/google/android/gms/measurement/internal/zzaf;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzaf;->zzb(Lcom/google/android/gms/measurement/internal/zzaf;)V

    return-void
.end method
