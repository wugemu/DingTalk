.class abstract Lcom/google/android/gms/internal/zzant$zzc;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzant;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x400
    name = "zzc"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Iterator",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final synthetic bfb:Lcom/google/android/gms/internal/zzant;

.field bfe:Lcom/google/android/gms/internal/zzant$zzd;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/zzant$zzd",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field bff:Lcom/google/android/gms/internal/zzant$zzd;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/zzant$zzd",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field bfg:I


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/zzant;)V
    .locals 1

    iput-object p1, p0, Lcom/google/android/gms/internal/zzant$zzc;->bfb:Lcom/google/android/gms/internal/zzant;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzant$zzc;->bfb:Lcom/google/android/gms/internal/zzant;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzant;->beY:Lcom/google/android/gms/internal/zzant$zzd;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzant$zzd;->bfe:Lcom/google/android/gms/internal/zzant$zzd;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzant$zzc;->bfe:Lcom/google/android/gms/internal/zzant$zzd;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzant$zzc;->bff:Lcom/google/android/gms/internal/zzant$zzd;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzant$zzc;->bfb:Lcom/google/android/gms/internal/zzant;

    iget v0, v0, Lcom/google/android/gms/internal/zzant;->modCount:I

    iput v0, p0, Lcom/google/android/gms/internal/zzant$zzc;->bfg:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/zzant;Lcom/google/android/gms/internal/zzant$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzant$zzc;-><init>(Lcom/google/android/gms/internal/zzant;)V

    return-void
.end method


# virtual methods
.method public final hasNext()Z
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzant$zzc;->bfe:Lcom/google/android/gms/internal/zzant$zzd;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzant$zzc;->bfb:Lcom/google/android/gms/internal/zzant;

    iget-object v1, v1, Lcom/google/android/gms/internal/zzant;->beY:Lcom/google/android/gms/internal/zzant$zzd;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final remove()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzant$zzc;->bff:Lcom/google/android/gms/internal/zzant$zzd;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzant$zzc;->bfb:Lcom/google/android/gms/internal/zzant;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzant$zzc;->bff:Lcom/google/android/gms/internal/zzant$zzd;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/zzant;->zza(Lcom/google/android/gms/internal/zzant$zzd;Z)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzant$zzc;->bff:Lcom/google/android/gms/internal/zzant$zzd;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzant$zzc;->bfb:Lcom/google/android/gms/internal/zzant;

    iget v0, v0, Lcom/google/android/gms/internal/zzant;->modCount:I

    iput v0, p0, Lcom/google/android/gms/internal/zzant$zzc;->bfg:I

    return-void
.end method

.method final zzczw()Lcom/google/android/gms/internal/zzant$zzd;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/internal/zzant$zzd",
            "<TK;TV;>;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzant$zzc;->bfe:Lcom/google/android/gms/internal/zzant$zzd;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzant$zzc;->bfb:Lcom/google/android/gms/internal/zzant;

    iget-object v1, v1, Lcom/google/android/gms/internal/zzant;->beY:Lcom/google/android/gms/internal/zzant$zzd;

    if-ne v0, v1, :cond_0

    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/zzant$zzc;->bfb:Lcom/google/android/gms/internal/zzant;

    iget v1, v1, Lcom/google/android/gms/internal/zzant;->modCount:I

    iget v2, p0, Lcom/google/android/gms/internal/zzant$zzc;->bfg:I

    if-eq v1, v2, :cond_1

    new-instance v0, Ljava/util/ConcurrentModificationException;

    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v0

    :cond_1
    iget-object v1, v0, Lcom/google/android/gms/internal/zzant$zzd;->bfe:Lcom/google/android/gms/internal/zzant$zzd;

    iput-object v1, p0, Lcom/google/android/gms/internal/zzant$zzc;->bfe:Lcom/google/android/gms/internal/zzant$zzd;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzant$zzc;->bff:Lcom/google/android/gms/internal/zzant$zzd;

    return-object v0
.end method
