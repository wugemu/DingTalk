.class public final Lcom/google/android/gms/internal/zzadu$zza;
.super Lcom/google/android/gms/internal/zzapp;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzadu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "zza"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/zzapp",
        "<",
        "Lcom/google/android/gms/internal/zzadu$zza;",
        ">;"
    }
.end annotation


# instance fields
.field public aCV:J

.field public aCW:Lcom/google/android/gms/internal/zzah$zzj;

.field public zzwr:Lcom/google/android/gms/internal/zzah$zzf;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzapp;-><init>()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzadu$zza;->zzcgx()Lcom/google/android/gms/internal/zzadu$zza;

    return-void
.end method

.method public static zzao([B)Lcom/google/android/gms/internal/zzadu$zza;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/zzapu;
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/zzadu$zza;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzadu$zza;-><init>()V

    invoke-static {v0, p0}, Lcom/google/android/gms/internal/zzapv;->zza(Lcom/google/android/gms/internal/zzapv;[B)Lcom/google/android/gms/internal/zzapv;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzadu$zza;

    return-object v0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p1, p0, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    instance-of v2, p1, Lcom/google/android/gms/internal/zzadu$zza;

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    check-cast p1, Lcom/google/android/gms/internal/zzadu$zza;

    iget-wide v2, p0, Lcom/google/android/gms/internal/zzadu$zza;->aCV:J

    iget-wide v4, p1, Lcom/google/android/gms/internal/zzadu$zza;->aCV:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_3

    move v0, v1

    goto :goto_0

    :cond_3
    iget-object v2, p0, Lcom/google/android/gms/internal/zzadu$zza;->zzwr:Lcom/google/android/gms/internal/zzah$zzf;

    if-nez v2, :cond_4

    iget-object v2, p1, Lcom/google/android/gms/internal/zzadu$zza;->zzwr:Lcom/google/android/gms/internal/zzah$zzf;

    if-eqz v2, :cond_5

    move v0, v1

    goto :goto_0

    :cond_4
    iget-object v2, p0, Lcom/google/android/gms/internal/zzadu$zza;->zzwr:Lcom/google/android/gms/internal/zzah$zzf;

    iget-object v3, p1, Lcom/google/android/gms/internal/zzadu$zza;->zzwr:Lcom/google/android/gms/internal/zzah$zzf;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/zzah$zzf;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    move v0, v1

    goto :goto_0

    :cond_5
    iget-object v2, p0, Lcom/google/android/gms/internal/zzadu$zza;->aCW:Lcom/google/android/gms/internal/zzah$zzj;

    if-nez v2, :cond_6

    iget-object v2, p1, Lcom/google/android/gms/internal/zzadu$zza;->aCW:Lcom/google/android/gms/internal/zzah$zzj;

    if-eqz v2, :cond_7

    move v0, v1

    goto :goto_0

    :cond_6
    iget-object v2, p0, Lcom/google/android/gms/internal/zzadu$zza;->aCW:Lcom/google/android/gms/internal/zzah$zzj;

    iget-object v3, p1, Lcom/google/android/gms/internal/zzadu$zza;->aCW:Lcom/google/android/gms/internal/zzah$zzj;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/zzah$zzj;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    move v0, v1

    goto :goto_0

    :cond_7
    iget-object v2, p0, Lcom/google/android/gms/internal/zzadu$zza;->bjx:Lcom/google/android/gms/internal/zzapr;

    if-eqz v2, :cond_8

    iget-object v2, p0, Lcom/google/android/gms/internal/zzadu$zza;->bjx:Lcom/google/android/gms/internal/zzapr;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzapr;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_9

    :cond_8
    iget-object v2, p1, Lcom/google/android/gms/internal/zzadu$zza;->bjx:Lcom/google/android/gms/internal/zzapr;

    if-eqz v2, :cond_0

    iget-object v2, p1, Lcom/google/android/gms/internal/zzadu$zza;->bjx:Lcom/google/android/gms/internal/zzapr;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzapr;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    goto :goto_0

    :cond_9
    iget-object v0, p0, Lcom/google/android/gms/internal/zzadu$zza;->bjx:Lcom/google/android/gms/internal/zzapr;

    iget-object v1, p1, Lcom/google/android/gms/internal/zzadu$zza;->bjx:Lcom/google/android/gms/internal/zzapr;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzapr;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 7

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    const/4 v1, 0x0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/lit16 v0, v0, 0x20f

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v2, p0, Lcom/google/android/gms/internal/zzadu$zza;->aCV:J

    iget-wide v4, p0, Lcom/google/android/gms/internal/zzadu$zza;->aCV:J

    const/16 v6, 0x20

    ushr-long/2addr v4, v6

    xor-long/2addr v2, v4

    long-to-int v2, v2

    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/google/android/gms/internal/zzadu$zza;->zzwr:Lcom/google/android/gms/internal/zzah$zzf;

    if-nez v0, :cond_1

    move v0, v1

    :goto_0
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/google/android/gms/internal/zzadu$zza;->aCW:Lcom/google/android/gms/internal/zzah$zzj;

    if-nez v0, :cond_2

    move v0, v1

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/google/android/gms/internal/zzadu$zza;->bjx:Lcom/google/android/gms/internal/zzapr;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/google/android/gms/internal/zzadu$zza;->bjx:Lcom/google/android/gms/internal/zzapr;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzapr;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_0
    :goto_2
    add-int/2addr v0, v1

    return v0

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/zzadu$zza;->zzwr:Lcom/google/android/gms/internal/zzah$zzf;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzah$zzf;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/zzadu$zza;->aCW:Lcom/google/android/gms/internal/zzah$zzj;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzah$zzj;->hashCode()I

    move-result v0

    goto :goto_1

    :cond_3
    iget-object v1, p0, Lcom/google/android/gms/internal/zzadu$zza;->bjx:Lcom/google/android/gms/internal/zzapr;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzapr;->hashCode()I

    move-result v1

    goto :goto_2
.end method

.method public final zza(Lcom/google/android/gms/internal/zzapo;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    const/4 v0, 0x1

    iget-wide v2, p0, Lcom/google/android/gms/internal/zzadu$zza;->aCV:J

    invoke-virtual {p1, v0, v2, v3}, Lcom/google/android/gms/internal/zzapo;->zzb(IJ)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzadu$zza;->zzwr:Lcom/google/android/gms/internal/zzah$zzf;

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/android/gms/internal/zzadu$zza;->zzwr:Lcom/google/android/gms/internal/zzah$zzf;

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/zzapo;->zza(ILcom/google/android/gms/internal/zzapv;)V

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzadu$zza;->aCW:Lcom/google/android/gms/internal/zzah$zzj;

    if-eqz v0, :cond_1

    const/4 v0, 0x3

    iget-object v1, p0, Lcom/google/android/gms/internal/zzadu$zza;->aCW:Lcom/google/android/gms/internal/zzah$zzj;

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/zzapo;->zza(ILcom/google/android/gms/internal/zzapv;)V

    :cond_1
    invoke-super {p0, p1}, Lcom/google/android/gms/internal/zzapp;->zza(Lcom/google/android/gms/internal/zzapo;)V

    return-void
.end method

.method public final zzas(Lcom/google/android/gms/internal/zzapn;)Lcom/google/android/gms/internal/zzadu$zza;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzapn;->ah()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    invoke-super {p0, p1, v0}, Lcom/google/android/gms/internal/zzapp;->zza(Lcom/google/android/gms/internal/zzapn;I)Z

    move-result v0

    if-nez v0, :cond_0

    :sswitch_0
    return-object p0

    :sswitch_1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzapn;->ak()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/internal/zzadu$zza;->aCV:J

    goto :goto_0

    :sswitch_2
    iget-object v0, p0, Lcom/google/android/gms/internal/zzadu$zza;->zzwr:Lcom/google/android/gms/internal/zzah$zzf;

    if-nez v0, :cond_1

    new-instance v0, Lcom/google/android/gms/internal/zzah$zzf;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzah$zzf;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzadu$zza;->zzwr:Lcom/google/android/gms/internal/zzah$zzf;

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/zzadu$zza;->zzwr:Lcom/google/android/gms/internal/zzah$zzf;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/zzapn;->zza(Lcom/google/android/gms/internal/zzapv;)V

    goto :goto_0

    :sswitch_3
    iget-object v0, p0, Lcom/google/android/gms/internal/zzadu$zza;->aCW:Lcom/google/android/gms/internal/zzah$zzj;

    if-nez v0, :cond_2

    new-instance v0, Lcom/google/android/gms/internal/zzah$zzj;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzah$zzj;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzadu$zza;->aCW:Lcom/google/android/gms/internal/zzah$zzj;

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/zzadu$zza;->aCW:Lcom/google/android/gms/internal/zzah$zzj;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/zzapn;->zza(Lcom/google/android/gms/internal/zzapv;)V

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
    .end sparse-switch
.end method

.method public final synthetic zzb(Lcom/google/android/gms/internal/zzapn;)Lcom/google/android/gms/internal/zzapv;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzadu$zza;->zzas(Lcom/google/android/gms/internal/zzapn;)Lcom/google/android/gms/internal/zzadu$zza;

    move-result-object v0

    return-object v0
.end method

.method public final zzcgx()Lcom/google/android/gms/internal/zzadu$zza;
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    const/4 v2, 0x0

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/gms/internal/zzadu$zza;->aCV:J

    iput-object v2, p0, Lcom/google/android/gms/internal/zzadu$zza;->zzwr:Lcom/google/android/gms/internal/zzah$zzf;

    iput-object v2, p0, Lcom/google/android/gms/internal/zzadu$zza;->aCW:Lcom/google/android/gms/internal/zzah$zzj;

    iput-object v2, p0, Lcom/google/android/gms/internal/zzadu$zza;->bjx:Lcom/google/android/gms/internal/zzapr;

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/zzadu$zza;->bjG:I

    return-object p0
.end method

.method protected final zzx()I
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    invoke-super {p0}, Lcom/google/android/gms/internal/zzapp;->zzx()I

    move-result v0

    const/4 v1, 0x1

    iget-wide v2, p0, Lcom/google/android/gms/internal/zzadu$zza;->aCV:J

    invoke-static {v1, v2, v3}, Lcom/google/android/gms/internal/zzapo;->zze(IJ)I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/google/android/gms/internal/zzadu$zza;->zzwr:Lcom/google/android/gms/internal/zzah$zzf;

    if-eqz v1, :cond_0

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/android/gms/internal/zzadu$zza;->zzwr:Lcom/google/android/gms/internal/zzah$zzf;

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/zzapo;->zzc(ILcom/google/android/gms/internal/zzapv;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/zzadu$zza;->aCW:Lcom/google/android/gms/internal/zzah$zzj;

    if-eqz v1, :cond_1

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/android/gms/internal/zzadu$zza;->aCW:Lcom/google/android/gms/internal/zzah$zzj;

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/zzapo;->zzc(ILcom/google/android/gms/internal/zzapv;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_1
    return v0
.end method
