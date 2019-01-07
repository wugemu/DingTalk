.class Lcom/google/android/gms/internal/zzanp$5;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzanu;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzanp;->zzb(Lcom/google/android/gms/internal/zzaol;)Lcom/google/android/gms/internal/zzanu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/zzanu",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final synthetic beE:Ljava/lang/reflect/Type;

.field final synthetic beF:Lcom/google/android/gms/internal/zzanp;

.field final synthetic beI:Lcom/google/android/gms/internal/zzamr;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzanp;Lcom/google/android/gms/internal/zzamr;Ljava/lang/reflect/Type;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzanp$5;->beF:Lcom/google/android/gms/internal/zzanp;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzanp$5;->beI:Lcom/google/android/gms/internal/zzamr;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzanp$5;->beE:Ljava/lang/reflect/Type;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public zzczu()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzanp$5;->beI:Lcom/google/android/gms/internal/zzamr;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzanp$5;->beE:Ljava/lang/reflect/Type;

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/zzamr;->zza(Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
