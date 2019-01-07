.class Lcom/google/android/gms/internal/zzpw$zzb$2;
.super Lcom/google/android/gms/internal/zzqa$zza;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzpw$zzb;->zzapl()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic tU:Lcom/google/android/gms/internal/zzpw$zzb;

.field final synthetic tV:Lcom/google/android/gms/common/internal/zzd$zzf;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzpw$zzb;Lcom/google/android/gms/internal/zzpz;Lcom/google/android/gms/common/internal/zzd$zzf;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzpw$zzb$2;->tU:Lcom/google/android/gms/internal/zzpw$zzb;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzpw$zzb$2;->tV:Lcom/google/android/gms/common/internal/zzd$zzf;

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/zzqa$zza;-><init>(Lcom/google/android/gms/internal/zzpz;)V

    return-void
.end method


# virtual methods
.method public zzapl()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzpw$zzb$2;->tV:Lcom/google/android/gms/common/internal/zzd$zzf;

    new-instance v1, Lcom/google/android/gms/common/ConnectionResult;

    const/16 v2, 0x10

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/google/android/gms/common/ConnectionResult;-><init>(ILandroid/app/PendingIntent;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/common/internal/zzd$zzf;->zzh(Lcom/google/android/gms/common/ConnectionResult;)V

    return-void
.end method
