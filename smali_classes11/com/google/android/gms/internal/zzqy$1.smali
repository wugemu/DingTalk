.class Lcom/google/android/gms/internal/zzqy$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzqy$zzb;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzqy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic vJ:Lcom/google/android/gms/internal/zzqy;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzqy;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzqy$1;->vJ:Lcom/google/android/gms/internal/zzqy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public zzh(Lcom/google/android/gms/internal/zzpm$zza;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzpm$zza",
            "<**>;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqy$1;->vJ:Lcom/google/android/gms/internal/zzqy;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzqy;->vG:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzpm$zza;->zzaoj()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqy$1;->vJ:Lcom/google/android/gms/internal/zzqy;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzqy;->zza(Lcom/google/android/gms/internal/zzqy;)Lcom/google/android/gms/common/api/zzd;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqy$1;->vJ:Lcom/google/android/gms/internal/zzqy;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzqy;->zza(Lcom/google/android/gms/internal/zzqy;)Lcom/google/android/gms/common/api/zzd;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzpm$zza;->zzaoj()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/api/zzd;->remove(I)V

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzqy$1;->vJ:Lcom/google/android/gms/internal/zzqy;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzqy;->zzb(Lcom/google/android/gms/internal/zzqy;)Lcom/google/android/gms/internal/zzqy$zzc;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqy$1;->vJ:Lcom/google/android/gms/internal/zzqy;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzqy;->vG:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqy$1;->vJ:Lcom/google/android/gms/internal/zzqy;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzqy;->zzb(Lcom/google/android/gms/internal/zzqy;)Lcom/google/android/gms/internal/zzqy$zzc;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzqy$zzc;->zzaqn()V

    :cond_1
    return-void
.end method
