.class Lcom/google/android/gms/internal/zzant$zza$1;
.super Lcom/google/android/gms/internal/zzant$zzc;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzant$zza;->iterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/zzant$zzc",
        "<",
        "Ljava/util/Map$Entry",
        "<TK;TV;>;>;"
    }
.end annotation


# instance fields
.field final synthetic bfc:Lcom/google/android/gms/internal/zzant$zza;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzant$zza;)V
    .locals 2

    iput-object p1, p0, Lcom/google/android/gms/internal/zzant$zza$1;->bfc:Lcom/google/android/gms/internal/zzant$zza;

    iget-object v0, p1, Lcom/google/android/gms/internal/zzant$zza;->bfb:Lcom/google/android/gms/internal/zzant;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/internal/zzant$zzc;-><init>(Lcom/google/android/gms/internal/zzant;Lcom/google/android/gms/internal/zzant$1;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzant$zza$1;->next()Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method

.method public next()Ljava/util/Map$Entry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzant$zza$1;->zzczw()Lcom/google/android/gms/internal/zzant$zzd;

    move-result-object v0

    return-object v0
.end method
