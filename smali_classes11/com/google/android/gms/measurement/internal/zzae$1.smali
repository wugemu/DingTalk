.class Lcom/google/android/gms/measurement/internal/zzae$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/measurement/internal/zzae;->onStartCommand(Landroid/content/Intent;II)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic amd:Lcom/google/android/gms/measurement/internal/zzx;

.field final synthetic ame:Lcom/google/android/gms/measurement/internal/zzp;

.field final synthetic amf:Lcom/google/android/gms/measurement/internal/zzae;

.field final synthetic zzcsa:I


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/zzae;Lcom/google/android/gms/measurement/internal/zzx;ILcom/google/android/gms/measurement/internal/zzp;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzae$1;->amf:Lcom/google/android/gms/measurement/internal/zzae;

    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/zzae$1;->amd:Lcom/google/android/gms/measurement/internal/zzx;

    iput p3, p0, Lcom/google/android/gms/measurement/internal/zzae$1;->zzcsa:I

    iput-object p4, p0, Lcom/google/android/gms/measurement/internal/zzae$1;->ame:Lcom/google/android/gms/measurement/internal/zzp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzae$1;->amd:Lcom/google/android/gms/measurement/internal/zzx;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzx;->zzbuh()V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzae$1;->amd:Lcom/google/android/gms/measurement/internal/zzx;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzx;->zzbuc()V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzae$1;->amf:Lcom/google/android/gms/measurement/internal/zzae;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzae;->zzb(Lcom/google/android/gms/measurement/internal/zzae;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/measurement/internal/zzae$1$1;

    invoke-direct {v1, p0}, Lcom/google/android/gms/measurement/internal/zzae$1$1;-><init>(Lcom/google/android/gms/measurement/internal/zzae$1;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
