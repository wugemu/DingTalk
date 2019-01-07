.class public final Lcom/google/android/gms/internal/zztz;
.super Ljava/lang/Object;


# static fields
.field private static OT:Lcom/google/android/gms/internal/zztz;


# instance fields
.field private final OU:Lcom/google/android/gms/internal/zztw;

.field private final OV:Lcom/google/android/gms/internal/zztx;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/zztz;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zztz;-><init>()V

    invoke-static {v0}, Lcom/google/android/gms/internal/zztz;->zza(Lcom/google/android/gms/internal/zztz;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/gms/internal/zztw;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zztw;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zztz;->OU:Lcom/google/android/gms/internal/zztw;

    new-instance v0, Lcom/google/android/gms/internal/zztx;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zztx;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zztz;->OV:Lcom/google/android/gms/internal/zztx;

    return-void
.end method

.method protected static zza(Lcom/google/android/gms/internal/zztz;)V
    .locals 2

    const-class v1, Lcom/google/android/gms/internal/zztz;

    monitor-enter v1

    :try_start_0
    sput-object p0, Lcom/google/android/gms/internal/zztz;->OT:Lcom/google/android/gms/internal/zztz;

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private static zzbes()Lcom/google/android/gms/internal/zztz;
    .locals 2

    const-class v1, Lcom/google/android/gms/internal/zztz;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/google/android/gms/internal/zztz;->OT:Lcom/google/android/gms/internal/zztz;

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static zzbet()Lcom/google/android/gms/internal/zztw;
    .locals 1

    invoke-static {}, Lcom/google/android/gms/internal/zztz;->zzbes()Lcom/google/android/gms/internal/zztz;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/internal/zztz;->OU:Lcom/google/android/gms/internal/zztw;

    return-object v0
.end method

.method public static zzbeu()Lcom/google/android/gms/internal/zztx;
    .locals 1

    invoke-static {}, Lcom/google/android/gms/internal/zztz;->zzbes()Lcom/google/android/gms/internal/zztz;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/internal/zztz;->OV:Lcom/google/android/gms/internal/zztx;

    return-object v0
.end method
