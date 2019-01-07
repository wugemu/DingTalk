.class Lcom/google/android/gms/measurement/internal/zzr$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/measurement/internal/zzr;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic ajL:Z

.field final synthetic ajM:Lcom/google/android/gms/measurement/internal/zzr;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/zzr;Z)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzr$1;->ajM:Lcom/google/android/gms/measurement/internal/zzr;

    iput-boolean p2, p0, Lcom/google/android/gms/measurement/internal/zzr$1;->ajL:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzr$1;->ajM:Lcom/google/android/gms/measurement/internal/zzr;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzr;->zza(Lcom/google/android/gms/measurement/internal/zzr;)Lcom/google/android/gms/measurement/internal/zzx;

    move-result-object v0

    iget-boolean v1, p0, Lcom/google/android/gms/measurement/internal/zzr$1;->ajL:Z

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzx;->zzas(Z)V

    return-void
.end method
