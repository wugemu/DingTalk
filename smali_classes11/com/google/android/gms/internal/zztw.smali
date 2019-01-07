.class public Lcom/google/android/gms/internal/zztw;
.super Ljava/lang/Object;


# instance fields
.field private final zzaxr:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Lcom/google/android/gms/internal/zztv;",
            ">;"
        }
    .end annotation
.end field

.field private final zzaxs:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Lcom/google/android/gms/internal/zztv$zzd;",
            ">;"
        }
    .end annotation
.end field

.field private final zzaxt:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Lcom/google/android/gms/internal/zztv$zzd;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zztw;->zzaxr:Ljava/util/Collection;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zztw;->zzaxs:Ljava/util/Collection;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zztw;->zzaxt:Ljava/util/Collection;

    return-void
.end method

.method public static initialize(Landroid/content/Context;)V
    .locals 1

    invoke-static {}, Lcom/google/android/gms/internal/zztz;->zzbeu()Lcom/google/android/gms/internal/zztx;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/zztx;->initialize(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public zza(Lcom/google/android/gms/internal/zztv;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zztw;->zzaxr:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    return-void
.end method
