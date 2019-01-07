.class Lcom/google/android/gms/internal/zzpw$zzd$1;
.super Lcom/google/android/gms/internal/zzqa$zza;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzpw$zzd;->zzb(Lcom/google/android/gms/signin/internal/SignInResponse;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic tX:Lcom/google/android/gms/internal/zzpw;

.field final synthetic tY:Lcom/google/android/gms/signin/internal/SignInResponse;

.field final synthetic tZ:Lcom/google/android/gms/internal/zzpw$zzd;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzpw$zzd;Lcom/google/android/gms/internal/zzpz;Lcom/google/android/gms/internal/zzpw;Lcom/google/android/gms/signin/internal/SignInResponse;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzpw$zzd$1;->tZ:Lcom/google/android/gms/internal/zzpw$zzd;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzpw$zzd$1;->tX:Lcom/google/android/gms/internal/zzpw;

    iput-object p4, p0, Lcom/google/android/gms/internal/zzpw$zzd$1;->tY:Lcom/google/android/gms/signin/internal/SignInResponse;

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/zzqa$zza;-><init>(Lcom/google/android/gms/internal/zzpz;)V

    return-void
.end method


# virtual methods
.method public zzapl()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzpw$zzd$1;->tX:Lcom/google/android/gms/internal/zzpw;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzpw$zzd$1;->tY:Lcom/google/android/gms/signin/internal/SignInResponse;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/zzpw;->zza(Lcom/google/android/gms/internal/zzpw;Lcom/google/android/gms/signin/internal/SignInResponse;)V

    return-void
.end method
