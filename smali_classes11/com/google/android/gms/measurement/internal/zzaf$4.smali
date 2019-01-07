.class Lcom/google/android/gms/measurement/internal/zzaf$4;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/measurement/internal/zzaf;->zzbux()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic aml:Lcom/google/android/gms/measurement/internal/zzaf;

.field final synthetic amn:J


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/zzaf;J)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzaf$4;->aml:Lcom/google/android/gms/measurement/internal/zzaf;

    iput-wide p2, p0, Lcom/google/android/gms/measurement/internal/zzaf$4;->amn:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzaf$4;->aml:Lcom/google/android/gms/measurement/internal/zzaf;

    iget-wide v2, p0, Lcom/google/android/gms/measurement/internal/zzaf$4;->amn:J

    invoke-static {v0, v2, v3}, Lcom/google/android/gms/measurement/internal/zzaf;->zza(Lcom/google/android/gms/measurement/internal/zzaf;J)V

    return-void
.end method
