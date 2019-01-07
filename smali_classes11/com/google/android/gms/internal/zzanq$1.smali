.class Lcom/google/android/gms/internal/zzanq$1;
.super Lcom/google/android/gms/internal/zzanh;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzanq;->zza(Lcom/google/android/gms/internal/zzamp;Lcom/google/android/gms/internal/zzaol;)Lcom/google/android/gms/internal/zzanh;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/zzanh",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private bdZ:Lcom/google/android/gms/internal/zzanh;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/zzanh",
            "<TT;>;"
        }
    .end annotation
.end field

.field final synthetic beQ:Z

.field final synthetic beR:Z

.field final synthetic beS:Lcom/google/android/gms/internal/zzamp;

.field final synthetic beT:Lcom/google/android/gms/internal/zzaol;

.field final synthetic beU:Lcom/google/android/gms/internal/zzanq;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzanq;ZZLcom/google/android/gms/internal/zzamp;Lcom/google/android/gms/internal/zzaol;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzanq$1;->beU:Lcom/google/android/gms/internal/zzanq;

    iput-boolean p2, p0, Lcom/google/android/gms/internal/zzanq$1;->beQ:Z

    iput-boolean p3, p0, Lcom/google/android/gms/internal/zzanq$1;->beR:Z

    iput-object p4, p0, Lcom/google/android/gms/internal/zzanq$1;->beS:Lcom/google/android/gms/internal/zzamp;

    iput-object p5, p0, Lcom/google/android/gms/internal/zzanq$1;->beT:Lcom/google/android/gms/internal/zzaol;

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzanh;-><init>()V

    return-void
.end method

.method private zzczr()Lcom/google/android/gms/internal/zzanh;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/internal/zzanh",
            "<TT;>;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzanq$1;->bdZ:Lcom/google/android/gms/internal/zzanh;

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzanq$1;->beS:Lcom/google/android/gms/internal/zzamp;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzanq$1;->beU:Lcom/google/android/gms/internal/zzanq;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzanq$1;->beT:Lcom/google/android/gms/internal/zzaol;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/zzamp;->zza(Lcom/google/android/gms/internal/zzani;Lcom/google/android/gms/internal/zzaol;)Lcom/google/android/gms/internal/zzanh;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzanq$1;->bdZ:Lcom/google/android/gms/internal/zzanh;

    goto :goto_0
.end method


# virtual methods
.method public zza(Lcom/google/android/gms/internal/zzaoo;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzaoo;",
            "TT;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzanq$1;->beR:Z

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzaoo;->l()Lcom/google/android/gms/internal/zzaoo;

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0}, Lcom/google/android/gms/internal/zzanq$1;->zzczr()Lcom/google/android/gms/internal/zzanh;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/zzanh;->zza(Lcom/google/android/gms/internal/zzaoo;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public zzb(Lcom/google/android/gms/internal/zzaom;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzaom;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzanq$1;->beQ:Z

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzaom;->skipValue()V

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-direct {p0}, Lcom/google/android/gms/internal/zzanq$1;->zzczr()Lcom/google/android/gms/internal/zzanh;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/zzanh;->zzb(Lcom/google/android/gms/internal/zzaom;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method
