.class Lcom/google/android/gms/measurement/internal/zzac$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/measurement/internal/zzac;->setMeasurementEnabled(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic alD:Lcom/google/android/gms/measurement/internal/zzac;

.field final synthetic cu:Z


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/zzac;Z)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzac$1;->alD:Lcom/google/android/gms/measurement/internal/zzac;

    iput-boolean p2, p0, Lcom/google/android/gms/measurement/internal/zzac$1;->cu:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzac$1;->alD:Lcom/google/android/gms/measurement/internal/zzac;

    iget-boolean v1, p0, Lcom/google/android/gms/measurement/internal/zzac$1;->cu:Z

    invoke-static {v0, v1}, Lcom/google/android/gms/measurement/internal/zzac;->zza(Lcom/google/android/gms/measurement/internal/zzac;Z)V

    return-void
.end method
