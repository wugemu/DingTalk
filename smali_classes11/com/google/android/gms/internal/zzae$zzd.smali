.class public final Lcom/google/android/gms/internal/zzae$zzd;
.super Lcom/google/android/gms/internal/zzapp;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzae;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "zzd"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/zzapp",
        "<",
        "Lcom/google/android/gms/internal/zzae$zzd;",
        ">;"
    }
.end annotation


# instance fields
.field public data:[B

.field public zzet:[B

.field public zzeu:[B

.field public zzev:[B


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzapp;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzae$zzd;->data:[B

    iput-object v0, p0, Lcom/google/android/gms/internal/zzae$zzd;->zzet:[B

    iput-object v0, p0, Lcom/google/android/gms/internal/zzae$zzd;->zzeu:[B

    iput-object v0, p0, Lcom/google/android/gms/internal/zzae$zzd;->zzev:[B

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/zzae$zzd;->bjG:I

    return-void
.end method

.method public static zzd([B)Lcom/google/android/gms/internal/zzae$zzd;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/zzapu;
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/zzae$zzd;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzae$zzd;-><init>()V

    invoke-static {v0, p0}, Lcom/google/android/gms/internal/zzapv;->zza(Lcom/google/android/gms/internal/zzapv;[B)Lcom/google/android/gms/internal/zzapv;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzae$zzd;

    return-object v0
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/zzapo;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzae$zzd;->data:[B

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/android/gms/internal/zzae$zzd;->data:[B

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/zzapo;->zza(I[B)V

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzae$zzd;->zzet:[B

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/android/gms/internal/zzae$zzd;->zzet:[B

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/zzapo;->zza(I[B)V

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/zzae$zzd;->zzeu:[B

    if-eqz v0, :cond_2

    const/4 v0, 0x3

    iget-object v1, p0, Lcom/google/android/gms/internal/zzae$zzd;->zzeu:[B

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/zzapo;->zza(I[B)V

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/zzae$zzd;->zzev:[B

    if-eqz v0, :cond_3

    const/4 v0, 0x4

    iget-object v1, p0, Lcom/google/android/gms/internal/zzae$zzd;->zzev:[B

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/zzapo;->zza(I[B)V

    :cond_3
    invoke-super {p0, p1}, Lcom/google/android/gms/internal/zzapp;->zza(Lcom/google/android/gms/internal/zzapo;)V

    return-void
.end method

.method public final synthetic zzb(Lcom/google/android/gms/internal/zzapn;)Lcom/google/android/gms/internal/zzapv;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzae$zzd;->zzg(Lcom/google/android/gms/internal/zzapn;)Lcom/google/android/gms/internal/zzae$zzd;

    move-result-object v0

    return-object v0
.end method

.method public final zzg(Lcom/google/android/gms/internal/zzapn;)Lcom/google/android/gms/internal/zzae$zzd;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

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
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzapn;->readBytes()[B

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzae$zzd;->data:[B

    goto :goto_0

    :sswitch_2
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzapn;->readBytes()[B

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzae$zzd;->zzet:[B

    goto :goto_0

    :sswitch_3
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzapn;->readBytes()[B

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzae$zzd;->zzeu:[B

    goto :goto_0

    :sswitch_4
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzapn;->readBytes()[B

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzae$zzd;->zzev:[B

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
        0x22 -> :sswitch_4
    .end sparse-switch
.end method

.method protected final zzx()I
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    invoke-super {p0}, Lcom/google/android/gms/internal/zzapp;->zzx()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzae$zzd;->data:[B

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/android/gms/internal/zzae$zzd;->data:[B

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/zzapo;->zzb(I[B)I

    move-result v1

    add-int/2addr v0, v1

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/zzae$zzd;->zzet:[B

    if-eqz v1, :cond_1

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/android/gms/internal/zzae$zzd;->zzet:[B

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/zzapo;->zzb(I[B)I

    move-result v1

    add-int/2addr v0, v1

    :cond_1
    iget-object v1, p0, Lcom/google/android/gms/internal/zzae$zzd;->zzeu:[B

    if-eqz v1, :cond_2

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/android/gms/internal/zzae$zzd;->zzeu:[B

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/zzapo;->zzb(I[B)I

    move-result v1

    add-int/2addr v0, v1

    :cond_2
    iget-object v1, p0, Lcom/google/android/gms/internal/zzae$zzd;->zzev:[B

    if-eqz v1, :cond_3

    const/4 v1, 0x4

    iget-object v2, p0, Lcom/google/android/gms/internal/zzae$zzd;->zzev:[B

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/zzapo;->zzb(I[B)I

    move-result v1

    add-int/2addr v0, v1

    :cond_3
    return v0
.end method
