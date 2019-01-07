.class public Lcom/google/android/gms/internal/zzpr;
.super Lcom/google/android/gms/internal/zzpn;


# virtual methods
.method public onStop()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    const/4 v2, 0x0

    invoke-super {p0}, Lcom/google/android/gms/internal/zzpn;->onStop()V

    invoke-virtual {v2}, Lcom/google/android/gms/common/util/zza;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/zzc;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/zzc;->release()V

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Lcom/google/android/gms/common/util/zza;->clear()V

    invoke-virtual {v2, p0}, Lcom/google/android/gms/internal/zzqc;->zza(Lcom/google/android/gms/internal/zzpr;)V

    return-void
.end method

.method protected zza(Lcom/google/android/gms/common/ConnectionResult;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/zzqc;->zza(Lcom/google/android/gms/common/ConnectionResult;I)V

    return-void
.end method

.method protected zzaoo()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzqc;->zzaoo()V

    return-void
.end method
