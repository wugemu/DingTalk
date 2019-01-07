.class final Lcom/google/android/gms/internal/zzant$zzb;
.super Ljava/util/AbstractSet;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzant;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "zzb"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractSet",
        "<TK;>;"
    }
.end annotation


# instance fields
.field final synthetic bfb:Lcom/google/android/gms/internal/zzant;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzant;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzant$zzb;->bfb:Lcom/google/android/gms/internal/zzant;

    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    return-void
.end method


# virtual methods
.method public final clear()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzant$zzb;->bfb:Lcom/google/android/gms/internal/zzant;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzant;->clear()V

    return-void
.end method

.method public final contains(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzant$zzb;->bfb:Lcom/google/android/gms/internal/zzant;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/zzant;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<TK;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/zzant$zzb$1;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/zzant$zzb$1;-><init>(Lcom/google/android/gms/internal/zzant$zzb;)V

    return-object v0
.end method

.method public final remove(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzant$zzb;->bfb:Lcom/google/android/gms/internal/zzant;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/zzant;->zzcn(Ljava/lang/Object;)Lcom/google/android/gms/internal/zzant$zzd;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final size()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzant$zzb;->bfb:Lcom/google/android/gms/internal/zzant;

    iget v0, v0, Lcom/google/android/gms/internal/zzant;->size:I

    return v0
.end method
