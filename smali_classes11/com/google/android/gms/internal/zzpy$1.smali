.class Lcom/google/android/gms/internal/zzpy$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/zzl$zza;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzpy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic uq:Lcom/google/android/gms/internal/zzpy;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzpy;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzpy$1;->uq:Lcom/google/android/gms/internal/zzpy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public isConnected()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzpy$1;->uq:Lcom/google/android/gms/internal/zzpy;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzpy;->isConnected()Z

    move-result v0

    return v0
.end method

.method public zzamh()Landroid/os/Bundle;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method
