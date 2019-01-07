.class Lcom/google/android/gms/internal/zzpw$zzc;
.super Lcom/google/android/gms/internal/zzpw$zzf;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzpw;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "zzc"
.end annotation


# instance fields
.field final synthetic tQ:Lcom/google/android/gms/internal/zzpw;

.field private final tW:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/gms/common/api/Api$zze;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/zzpw;Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/gms/common/api/Api$zze;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/google/android/gms/internal/zzpw$zzc;->tQ:Lcom/google/android/gms/internal/zzpw;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/zzpw$zzf;-><init>(Lcom/google/android/gms/internal/zzpw;Lcom/google/android/gms/internal/zzpw$1;)V

    iput-object p2, p0, Lcom/google/android/gms/internal/zzpw$zzc;->tW:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public zzapl()V
    .locals 4
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzpw$zzc;->tQ:Lcom/google/android/gms/internal/zzpw;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzpw;->zzd(Lcom/google/android/gms/internal/zzpw;)Lcom/google/android/gms/internal/zzqa;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/internal/zzqa;->th:Lcom/google/android/gms/internal/zzpy;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzpw$zzc;->tQ:Lcom/google/android/gms/internal/zzpw;

    invoke-static {v1}, Lcom/google/android/gms/internal/zzpw;->zzg(Lcom/google/android/gms/internal/zzpw;)Ljava/util/Set;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/gms/internal/zzpy;->uj:Ljava/util/Set;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzpw$zzc;->tW:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/Api$zze;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzpw$zzc;->tQ:Lcom/google/android/gms/internal/zzpw;

    invoke-static {v2}, Lcom/google/android/gms/internal/zzpw;->zzh(Lcom/google/android/gms/internal/zzpw;)Lcom/google/android/gms/common/internal/zzq;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/internal/zzpw$zzc;->tQ:Lcom/google/android/gms/internal/zzpw;

    invoke-static {v3}, Lcom/google/android/gms/internal/zzpw;->zzd(Lcom/google/android/gms/internal/zzpw;)Lcom/google/android/gms/internal/zzqa;

    move-result-object v3

    iget-object v3, v3, Lcom/google/android/gms/internal/zzqa;->th:Lcom/google/android/gms/internal/zzpy;

    iget-object v3, v3, Lcom/google/android/gms/internal/zzpy;->uj:Ljava/util/Set;

    invoke-interface {v0, v2, v3}, Lcom/google/android/gms/common/api/Api$zze;->zza(Lcom/google/android/gms/common/internal/zzq;Ljava/util/Set;)V

    goto :goto_0

    :cond_0
    return-void
.end method
