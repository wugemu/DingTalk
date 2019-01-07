.class Lcom/google/android/gms/measurement/internal/zzae$1$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/measurement/internal/zzae$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic amg:Lcom/google/android/gms/measurement/internal/zzae$1;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/zzae$1;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzae$1$1;->amg:Lcom/google/android/gms/measurement/internal/zzae$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzae$1$1;->amg:Lcom/google/android/gms/measurement/internal/zzae$1;

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzae$1;->amf:Lcom/google/android/gms/measurement/internal/zzae;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzae;->zza(Lcom/google/android/gms/measurement/internal/zzae;)Lcom/google/android/gms/measurement/internal/zzae$zza;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzae$1$1;->amg:Lcom/google/android/gms/measurement/internal/zzae$1;

    iget v1, v1, Lcom/google/android/gms/measurement/internal/zzae$1;->zzcsa:I

    invoke-interface {v0, v1}, Lcom/google/android/gms/measurement/internal/zzae$zza;->callServiceStopSelfResult(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzae$1$1;->amg:Lcom/google/android/gms/measurement/internal/zzae$1;

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzae$1;->amd:Lcom/google/android/gms/measurement/internal/zzx;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzx;->zzbsf()Lcom/google/android/gms/measurement/internal/zzd;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzd;->zzabc()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzae$1$1;->amg:Lcom/google/android/gms/measurement/internal/zzae$1;

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzae$1;->ame:Lcom/google/android/gms/measurement/internal/zzp;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzp;->zzbtc()Lcom/google/android/gms/measurement/internal/zzp$zza;

    move-result-object v0

    const-string/jumbo v1, "Device AppMeasurementService processed last upload request"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzp$zza;->log(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzae$1$1;->amg:Lcom/google/android/gms/measurement/internal/zzae$1;

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzae$1;->ame:Lcom/google/android/gms/measurement/internal/zzp;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzp;->zzbtc()Lcom/google/android/gms/measurement/internal/zzp$zza;

    move-result-object v0

    const-string/jumbo v1, "Local AppMeasurementService processed last upload request"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzp$zza;->log(Ljava/lang/String;)V

    goto :goto_0
.end method
