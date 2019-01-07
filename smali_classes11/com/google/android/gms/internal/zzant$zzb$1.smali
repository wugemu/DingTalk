.class Lcom/google/android/gms/internal/zzant$zzb$1;
.super Lcom/google/android/gms/internal/zzant$zzc;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzant$zzb;->iterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/zzant$zzc",
        "<TK;>;"
    }
.end annotation


# instance fields
.field final synthetic bfd:Lcom/google/android/gms/internal/zzant$zzb;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzant$zzb;)V
    .locals 2

    iput-object p1, p0, Lcom/google/android/gms/internal/zzant$zzb$1;->bfd:Lcom/google/android/gms/internal/zzant$zzb;

    iget-object v0, p1, Lcom/google/android/gms/internal/zzant$zzb;->bfb:Lcom/google/android/gms/internal/zzant;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/internal/zzant$zzc;-><init>(Lcom/google/android/gms/internal/zzant;Lcom/google/android/gms/internal/zzant$1;)V

    return-void
.end method


# virtual methods
.method public next()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzant$zzb$1;->zzczw()Lcom/google/android/gms/internal/zzant$zzd;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/internal/zzant$zzd;->aQn:Ljava/lang/Object;

    return-object v0
.end method
