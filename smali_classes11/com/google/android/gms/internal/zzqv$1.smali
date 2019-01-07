.class Lcom/google/android/gms/internal/zzqv$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzqv;->zzb(Ljava/lang/String;Lcom/google/android/gms/internal/zzqj;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic vq:Lcom/google/android/gms/internal/zzqj;

.field final synthetic vv:Lcom/google/android/gms/internal/zzqv;

.field final synthetic zzap:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzqv;Lcom/google/android/gms/internal/zzqj;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzqv$1;->vv:Lcom/google/android/gms/internal/zzqv;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzqv$1;->vq:Lcom/google/android/gms/internal/zzqj;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzqv$1;->zzap:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqv$1;->vv:Lcom/google/android/gms/internal/zzqv;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzqv;->zza(Lcom/google/android/gms/internal/zzqv;)I

    move-result v0

    if-lez v0, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzqv$1;->vq:Lcom/google/android/gms/internal/zzqj;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqv$1;->vv:Lcom/google/android/gms/internal/zzqv;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzqv;->zzb(Lcom/google/android/gms/internal/zzqv;)Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqv$1;->vv:Lcom/google/android/gms/internal/zzqv;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzqv;->zzb(Lcom/google/android/gms/internal/zzqv;)Landroid/os/Bundle;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/gms/internal/zzqv$1;->zzap:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    :goto_0
    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/zzqj;->onCreate(Landroid/os/Bundle;)V

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzqv$1;->vv:Lcom/google/android/gms/internal/zzqv;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzqv;->zza(Lcom/google/android/gms/internal/zzqv;)I

    move-result v0

    const/4 v1, 0x2

    if-lt v0, v1, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqv$1;->vq:Lcom/google/android/gms/internal/zzqj;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzqj;->onStart()V

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/zzqv$1;->vv:Lcom/google/android/gms/internal/zzqv;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzqv;->zza(Lcom/google/android/gms/internal/zzqv;)I

    move-result v0

    const/4 v1, 0x3

    if-lt v0, v1, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqv$1;->vq:Lcom/google/android/gms/internal/zzqj;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzqj;->onStop()V

    :cond_2
    return-void

    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method
