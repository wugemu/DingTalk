.class Lcom/google/android/gms/measurement/internal/zzaf$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


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
.method constructor <init>(Lcom/google/android/gms/measurement/internal/zzaf;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzaf$1;->aml:Lcom/google/android/gms/measurement/internal/zzaf;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2
    .annotation build Landroid/support/annotation/MainThread;
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzaf$1;->aml:Lcom/google/android/gms/measurement/internal/zzaf;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzaf;->zzbsc()Lcom/google/android/gms/measurement/internal/zzw;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/measurement/internal/zzaf$1$1;

    invoke-direct {v1, p0}, Lcom/google/android/gms/measurement/internal/zzaf$1$1;-><init>(Lcom/google/android/gms/measurement/internal/zzaf$1;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzw;->zzm(Ljava/lang/Runnable;)V

    return-void
.end method
