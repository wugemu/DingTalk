.class Lcom/google/android/gms/measurement/internal/zza;
.super Ljava/lang/Object;


# instance fields
.field private BK:Ljava/lang/String;

.field private final ahD:Lcom/google/android/gms/measurement/internal/zzx;

.field private ahJ:Ljava/lang/String;

.field private ahK:Ljava/lang/String;

.field private ahL:Ljava/lang/String;

.field private ahM:J

.field private ahN:J

.field private ahO:J

.field private ahP:J

.field private ahQ:Ljava/lang/String;

.field private ahR:J

.field private ahS:J

.field private ahT:Z

.field private ahU:J

.field private ahV:J

.field private ahW:J

.field private ahX:J

.field private ahY:J

.field private ahZ:Z

.field private aia:J

.field private aib:J

.field private final zzcjf:Ljava/lang/String;

.field private zzcun:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/zzx;Ljava/lang/String;)V
    .locals 1
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzab;->zzy(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p2}, Lcom/google/android/gms/common/internal/zzab;->zzhr(Ljava/lang/String;)Ljava/lang/String;

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zza;->ahD:Lcom/google/android/gms/measurement/internal/zzx;

    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/zza;->zzcjf:Ljava/lang/String;

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zza;->ahD:Lcom/google/android/gms/measurement/internal/zzx;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzx;->zzwu()V

    return-void
.end method


# virtual methods
.method public setAppVersion(Ljava/lang/String;)V
    .locals 2
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zza;->ahD:Lcom/google/android/gms/measurement/internal/zzx;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzx;->zzwu()V

    iget-boolean v1, p0, Lcom/google/android/gms/measurement/internal/zza;->ahZ:Z

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zza;->zzcun:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/google/android/gms/measurement/internal/zzal;->zzbb(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    or-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zza;->ahZ:Z

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zza;->zzcun:Ljava/lang/String;

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setMeasurementEnabled(Z)V
    .locals 2
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zza;->ahD:Lcom/google/android/gms/measurement/internal/zzx;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzx;->zzwu()V

    iget-boolean v1, p0, Lcom/google/android/gms/measurement/internal/zza;->ahZ:Z

    iget-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zza;->ahT:Z

    if-eq v0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    or-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zza;->ahZ:Z

    iput-boolean p1, p0, Lcom/google/android/gms/measurement/internal/zza;->ahT:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public zzau(J)V
    .locals 5
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zza;->ahD:Lcom/google/android/gms/measurement/internal/zzx;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzx;->zzwu()V

    iget-boolean v1, p0, Lcom/google/android/gms/measurement/internal/zza;->ahZ:Z

    iget-wide v2, p0, Lcom/google/android/gms/measurement/internal/zza;->ahN:J

    cmp-long v0, v2, p1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    or-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zza;->ahZ:Z

    iput-wide p1, p0, Lcom/google/android/gms/measurement/internal/zza;->ahN:J

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public zzav(J)V
    .locals 5
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zza;->ahD:Lcom/google/android/gms/measurement/internal/zzx;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzx;->zzwu()V

    iget-boolean v1, p0, Lcom/google/android/gms/measurement/internal/zza;->ahZ:Z

    iget-wide v2, p0, Lcom/google/android/gms/measurement/internal/zza;->ahO:J

    cmp-long v0, v2, p1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    or-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zza;->ahZ:Z

    iput-wide p1, p0, Lcom/google/android/gms/measurement/internal/zza;->ahO:J

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public zzaw(J)V
    .locals 5
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zza;->ahD:Lcom/google/android/gms/measurement/internal/zzx;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzx;->zzwu()V

    iget-boolean v1, p0, Lcom/google/android/gms/measurement/internal/zza;->ahZ:Z

    iget-wide v2, p0, Lcom/google/android/gms/measurement/internal/zza;->ahP:J

    cmp-long v0, v2, p1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    or-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zza;->ahZ:Z

    iput-wide p1, p0, Lcom/google/android/gms/measurement/internal/zza;->ahP:J

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public zzawo()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zza;->ahD:Lcom/google/android/gms/measurement/internal/zzx;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzx;->zzwu()V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zza;->BK:Ljava/lang/String;

    return-object v0
.end method

.method public zzax(J)V
    .locals 5
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zza;->ahD:Lcom/google/android/gms/measurement/internal/zzx;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzx;->zzwu()V

    iget-boolean v1, p0, Lcom/google/android/gms/measurement/internal/zza;->ahZ:Z

    iget-wide v2, p0, Lcom/google/android/gms/measurement/internal/zza;->ahR:J

    cmp-long v0, v2, p1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    or-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zza;->ahZ:Z

    iput-wide p1, p0, Lcom/google/android/gms/measurement/internal/zza;->ahR:J

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public zzay(J)V
    .locals 5
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zza;->ahD:Lcom/google/android/gms/measurement/internal/zzx;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzx;->zzwu()V

    iget-boolean v1, p0, Lcom/google/android/gms/measurement/internal/zza;->ahZ:Z

    iget-wide v2, p0, Lcom/google/android/gms/measurement/internal/zza;->ahS:J

    cmp-long v0, v2, p1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    or-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zza;->ahZ:Z

    iput-wide p1, p0, Lcom/google/android/gms/measurement/internal/zza;->ahS:J

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public zzaz(J)V
    .locals 7
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    const/4 v1, 0x1

    const/4 v2, 0x0

    const-wide/16 v4, 0x0

    cmp-long v0, p1, v4

    if-ltz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzab;->zzbo(Z)V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zza;->ahD:Lcom/google/android/gms/measurement/internal/zzx;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzx;->zzwu()V

    iget-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zza;->ahZ:Z

    iget-wide v4, p0, Lcom/google/android/gms/measurement/internal/zza;->ahM:J

    cmp-long v3, v4, p1

    if-eqz v3, :cond_1

    :goto_1
    or-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zza;->ahZ:Z

    iput-wide p1, p0, Lcom/google/android/gms/measurement/internal/zza;->ahM:J

    return-void

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_1
.end method

.method public zzba(J)V
    .locals 5
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zza;->ahD:Lcom/google/android/gms/measurement/internal/zzx;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzx;->zzwu()V

    iget-boolean v1, p0, Lcom/google/android/gms/measurement/internal/zza;->ahZ:Z

    iget-wide v2, p0, Lcom/google/android/gms/measurement/internal/zza;->aia:J

    cmp-long v0, v2, p1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    or-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zza;->ahZ:Z

    iput-wide p1, p0, Lcom/google/android/gms/measurement/internal/zza;->aia:J

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public zzbb(J)V
    .locals 5
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zza;->ahD:Lcom/google/android/gms/measurement/internal/zzx;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzx;->zzwu()V

    iget-boolean v1, p0, Lcom/google/android/gms/measurement/internal/zza;->ahZ:Z

    iget-wide v2, p0, Lcom/google/android/gms/measurement/internal/zza;->aib:J

    cmp-long v0, v2, p1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    or-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zza;->ahZ:Z

    iput-wide p1, p0, Lcom/google/android/gms/measurement/internal/zza;->aib:J

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public zzbc(J)V
    .locals 5
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zza;->ahD:Lcom/google/android/gms/measurement/internal/zzx;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzx;->zzwu()V

    iget-boolean v1, p0, Lcom/google/android/gms/measurement/internal/zza;->ahZ:Z

    iget-wide v2, p0, Lcom/google/android/gms/measurement/internal/zza;->ahU:J

    cmp-long v0, v2, p1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    or-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zza;->ahZ:Z

    iput-wide p1, p0, Lcom/google/android/gms/measurement/internal/zza;->ahU:J

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public zzbd(J)V
    .locals 5
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zza;->ahD:Lcom/google/android/gms/measurement/internal/zzx;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzx;->zzwu()V

    iget-boolean v1, p0, Lcom/google/android/gms/measurement/internal/zza;->ahZ:Z

    iget-wide v2, p0, Lcom/google/android/gms/measurement/internal/zza;->ahV:J

    cmp-long v0, v2, p1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    or-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zza;->ahZ:Z

    iput-wide p1, p0, Lcom/google/android/gms/measurement/internal/zza;->ahV:J

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public zzbe(J)V
    .locals 5
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zza;->ahD:Lcom/google/android/gms/measurement/internal/zzx;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzx;->zzwu()V

    iget-boolean v1, p0, Lcom/google/android/gms/measurement/internal/zza;->ahZ:Z

    iget-wide v2, p0, Lcom/google/android/gms/measurement/internal/zza;->ahW:J

    cmp-long v0, v2, p1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    or-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zza;->ahZ:Z

    iput-wide p1, p0, Lcom/google/android/gms/measurement/internal/zza;->ahW:J

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public zzbf(J)V
    .locals 5
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zza;->ahD:Lcom/google/android/gms/measurement/internal/zzx;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzx;->zzwu()V

    iget-boolean v1, p0, Lcom/google/android/gms/measurement/internal/zza;->ahZ:Z

    iget-wide v2, p0, Lcom/google/android/gms/measurement/internal/zza;->ahX:J

    cmp-long v0, v2, p1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    or-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zza;->ahZ:Z

    iput-wide p1, p0, Lcom/google/android/gms/measurement/internal/zza;->ahX:J

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public zzbg(J)V
    .locals 5
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zza;->ahD:Lcom/google/android/gms/measurement/internal/zzx;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzx;->zzwu()V

    iget-boolean v1, p0, Lcom/google/android/gms/measurement/internal/zza;->ahZ:Z

    iget-wide v2, p0, Lcom/google/android/gms/measurement/internal/zza;->ahY:J

    cmp-long v0, v2, p1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    or-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zza;->ahZ:Z

    iput-wide p1, p0, Lcom/google/android/gms/measurement/internal/zza;->ahY:J

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public zzbpr()V
    .locals 1
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zza;->ahD:Lcom/google/android/gms/measurement/internal/zzx;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzx;->zzwu()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zza;->ahZ:Z

    return-void
.end method

.method public zzbps()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zza;->ahD:Lcom/google/android/gms/measurement/internal/zzx;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzx;->zzwu()V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zza;->ahJ:Ljava/lang/String;

    return-object v0
.end method

.method public zzbpt()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zza;->ahD:Lcom/google/android/gms/measurement/internal/zzx;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzx;->zzwu()V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zza;->ahK:Ljava/lang/String;

    return-object v0
.end method

.method public zzbpu()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zza;->ahD:Lcom/google/android/gms/measurement/internal/zzx;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzx;->zzwu()V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zza;->ahL:Ljava/lang/String;

    return-object v0
.end method

.method public zzbpv()J
    .locals 2
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zza;->ahD:Lcom/google/android/gms/measurement/internal/zzx;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzx;->zzwu()V

    iget-wide v0, p0, Lcom/google/android/gms/measurement/internal/zza;->ahN:J

    return-wide v0
.end method

.method public zzbpw()J
    .locals 2
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zza;->ahD:Lcom/google/android/gms/measurement/internal/zzx;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzx;->zzwu()V

    iget-wide v0, p0, Lcom/google/android/gms/measurement/internal/zza;->ahO:J

    return-wide v0
.end method

.method public zzbpx()J
    .locals 2
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zza;->ahD:Lcom/google/android/gms/measurement/internal/zzx;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzx;->zzwu()V

    iget-wide v0, p0, Lcom/google/android/gms/measurement/internal/zza;->ahP:J

    return-wide v0
.end method

.method public zzbpy()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zza;->ahD:Lcom/google/android/gms/measurement/internal/zzx;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzx;->zzwu()V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zza;->ahQ:Ljava/lang/String;

    return-object v0
.end method

.method public zzbpz()J
    .locals 2
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zza;->ahD:Lcom/google/android/gms/measurement/internal/zzx;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzx;->zzwu()V

    iget-wide v0, p0, Lcom/google/android/gms/measurement/internal/zza;->ahR:J

    return-wide v0
.end method

.method public zzbqa()J
    .locals 2
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zza;->ahD:Lcom/google/android/gms/measurement/internal/zzx;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzx;->zzwu()V

    iget-wide v0, p0, Lcom/google/android/gms/measurement/internal/zza;->ahS:J

    return-wide v0
.end method

.method public zzbqb()Z
    .locals 1
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zza;->ahD:Lcom/google/android/gms/measurement/internal/zzx;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzx;->zzwu()V

    iget-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zza;->ahT:Z

    return v0
.end method

.method public zzbqc()J
    .locals 2
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zza;->ahD:Lcom/google/android/gms/measurement/internal/zzx;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzx;->zzwu()V

    iget-wide v0, p0, Lcom/google/android/gms/measurement/internal/zza;->ahM:J

    return-wide v0
.end method

.method public zzbqd()J
    .locals 2
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zza;->ahD:Lcom/google/android/gms/measurement/internal/zzx;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzx;->zzwu()V

    iget-wide v0, p0, Lcom/google/android/gms/measurement/internal/zza;->aia:J

    return-wide v0
.end method

.method public zzbqe()J
    .locals 2
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zza;->ahD:Lcom/google/android/gms/measurement/internal/zzx;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzx;->zzwu()V

    iget-wide v0, p0, Lcom/google/android/gms/measurement/internal/zza;->aib:J

    return-wide v0
.end method

.method public zzbqf()V
    .locals 4
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zza;->ahD:Lcom/google/android/gms/measurement/internal/zzx;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzx;->zzwu()V

    iget-wide v0, p0, Lcom/google/android/gms/measurement/internal/zza;->ahM:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    const-wide/32 v2, 0x7fffffff

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zza;->ahD:Lcom/google/android/gms/measurement/internal/zzx;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzx;->zzbsd()Lcom/google/android/gms/measurement/internal/zzp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzp;->zzbsx()Lcom/google/android/gms/measurement/internal/zzp$zza;

    move-result-object v0

    const-string/jumbo v1, "Bundle index overflow"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzp$zza;->log(Ljava/lang/String;)V

    const-wide/16 v0, 0x0

    :cond_0
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/google/android/gms/measurement/internal/zza;->ahZ:Z

    iput-wide v0, p0, Lcom/google/android/gms/measurement/internal/zza;->ahM:J

    return-void
.end method

.method public zzbqg()J
    .locals 2
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zza;->ahD:Lcom/google/android/gms/measurement/internal/zzx;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzx;->zzwu()V

    iget-wide v0, p0, Lcom/google/android/gms/measurement/internal/zza;->ahU:J

    return-wide v0
.end method

.method public zzbqh()J
    .locals 2
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zza;->ahD:Lcom/google/android/gms/measurement/internal/zzx;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzx;->zzwu()V

    iget-wide v0, p0, Lcom/google/android/gms/measurement/internal/zza;->ahV:J

    return-wide v0
.end method

.method public zzbqi()J
    .locals 2
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zza;->ahD:Lcom/google/android/gms/measurement/internal/zzx;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzx;->zzwu()V

    iget-wide v0, p0, Lcom/google/android/gms/measurement/internal/zza;->ahW:J

    return-wide v0
.end method

.method public zzbqj()J
    .locals 2
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zza;->ahD:Lcom/google/android/gms/measurement/internal/zzx;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzx;->zzwu()V

    iget-wide v0, p0, Lcom/google/android/gms/measurement/internal/zza;->ahX:J

    return-wide v0
.end method

.method public zzbqk()J
    .locals 2
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zza;->ahD:Lcom/google/android/gms/measurement/internal/zzx;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzx;->zzwu()V

    iget-wide v0, p0, Lcom/google/android/gms/measurement/internal/zza;->ahY:J

    return-wide v0
.end method

.method public zzky(Ljava/lang/String;)V
    .locals 2
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zza;->ahD:Lcom/google/android/gms/measurement/internal/zzx;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzx;->zzwu()V

    iget-boolean v1, p0, Lcom/google/android/gms/measurement/internal/zza;->ahZ:Z

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zza;->BK:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/google/android/gms/measurement/internal/zzal;->zzbb(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    or-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zza;->ahZ:Z

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zza;->BK:Ljava/lang/String;

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public zzkz(Ljava/lang/String;)V
    .locals 2
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zza;->ahD:Lcom/google/android/gms/measurement/internal/zzx;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzx;->zzwu()V

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    :cond_0
    iget-boolean v1, p0, Lcom/google/android/gms/measurement/internal/zza;->ahZ:Z

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zza;->ahJ:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/google/android/gms/measurement/internal/zzal;->zzbb(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    or-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zza;->ahZ:Z

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zza;->ahJ:Ljava/lang/String;

    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public zzla(Ljava/lang/String;)V
    .locals 2
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zza;->ahD:Lcom/google/android/gms/measurement/internal/zzx;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzx;->zzwu()V

    iget-boolean v1, p0, Lcom/google/android/gms/measurement/internal/zza;->ahZ:Z

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zza;->ahK:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/google/android/gms/measurement/internal/zzal;->zzbb(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    or-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zza;->ahZ:Z

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zza;->ahK:Ljava/lang/String;

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public zzlb(Ljava/lang/String;)V
    .locals 2
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zza;->ahD:Lcom/google/android/gms/measurement/internal/zzx;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzx;->zzwu()V

    iget-boolean v1, p0, Lcom/google/android/gms/measurement/internal/zza;->ahZ:Z

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zza;->ahL:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/google/android/gms/measurement/internal/zzal;->zzbb(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    or-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zza;->ahZ:Z

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zza;->ahL:Ljava/lang/String;

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public zzlc(Ljava/lang/String;)V
    .locals 2
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zza;->ahD:Lcom/google/android/gms/measurement/internal/zzx;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzx;->zzwu()V

    iget-boolean v1, p0, Lcom/google/android/gms/measurement/internal/zza;->ahZ:Z

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zza;->ahQ:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/google/android/gms/measurement/internal/zzal;->zzbb(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    or-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zza;->ahZ:Z

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zza;->ahQ:Ljava/lang/String;

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public zzsh()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zza;->ahD:Lcom/google/android/gms/measurement/internal/zzx;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzx;->zzwu()V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zza;->zzcjf:Ljava/lang/String;

    return-object v0
.end method

.method public zzxc()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zza;->ahD:Lcom/google/android/gms/measurement/internal/zzx;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzx;->zzwu()V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zza;->zzcun:Ljava/lang/String;

    return-object v0
.end method
