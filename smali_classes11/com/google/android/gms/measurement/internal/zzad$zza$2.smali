.class Lcom/google/android/gms/measurement/internal/zzad$zza$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/measurement/internal/zzad$zza;->onServiceDisconnected(Landroid/content/ComponentName;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic ama:Lcom/google/android/gms/measurement/internal/zzad$zza;

.field final synthetic val$name:Landroid/content/ComponentName;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/zzad$zza;Landroid/content/ComponentName;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzad$zza$2;->ama:Lcom/google/android/gms/measurement/internal/zzad$zza;

    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/zzad$zza$2;->val$name:Landroid/content/ComponentName;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzad$zza$2;->ama:Lcom/google/android/gms/measurement/internal/zzad$zza;

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzad$zza;->alV:Lcom/google/android/gms/measurement/internal/zzad;

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzad$zza$2;->val$name:Landroid/content/ComponentName;

    invoke-static {v0, v1}, Lcom/google/android/gms/measurement/internal/zzad;->zza(Lcom/google/android/gms/measurement/internal/zzad;Landroid/content/ComponentName;)V

    return-void
.end method
