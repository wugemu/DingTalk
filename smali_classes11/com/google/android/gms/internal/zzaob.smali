.class public final Lcom/google/android/gms/internal/zzaob;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzani;


# instance fields
.field private final bdR:Lcom/google/android/gms/internal/zzanp;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/zzanp;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzaob;->bdR:Lcom/google/android/gms/internal/zzanp;

    return-void
.end method

.method static zza(Lcom/google/android/gms/internal/zzanp;Lcom/google/android/gms/internal/zzamp;Lcom/google/android/gms/internal/zzaol;Lcom/google/android/gms/internal/zzanj;)Lcom/google/android/gms/internal/zzanh;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzanp;",
            "Lcom/google/android/gms/internal/zzamp;",
            "Lcom/google/android/gms/internal/zzaol",
            "<*>;",
            "Lcom/google/android/gms/internal/zzanj;",
            ")",
            "Lcom/google/android/gms/internal/zzanh",
            "<*>;"
        }
    .end annotation

    invoke-interface {p3}, Lcom/google/android/gms/internal/zzanj;->value()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lcom/google/android/gms/internal/zzanh;

    invoke-virtual {v1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {v0}, Lcom/google/android/gms/internal/zzaol;->zzr(Ljava/lang/Class;)Lcom/google/android/gms/internal/zzaol;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzanp;->zzb(Lcom/google/android/gms/internal/zzaol;)Lcom/google/android/gms/internal/zzanu;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzanu;->zzczu()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzanh;

    :goto_0
    return-object v0

    :cond_0
    const-class v1, Lcom/google/android/gms/internal/zzani;

    invoke-virtual {v1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {v0}, Lcom/google/android/gms/internal/zzaol;->zzr(Ljava/lang/Class;)Lcom/google/android/gms/internal/zzaol;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzanp;->zzb(Lcom/google/android/gms/internal/zzaol;)Lcom/google/android/gms/internal/zzanu;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzanu;->zzczu()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzani;

    invoke-interface {v0, p1, p2}, Lcom/google/android/gms/internal/zzani;->zza(Lcom/google/android/gms/internal/zzamp;Lcom/google/android/gms/internal/zzaol;)Lcom/google/android/gms/internal/zzanh;

    move-result-object v0

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "@JsonAdapter value must be TypeAdapter or TypeAdapterFactory reference."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/zzamp;Lcom/google/android/gms/internal/zzaol;)Lcom/google/android/gms/internal/zzanh;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/gms/internal/zzamp;",
            "Lcom/google/android/gms/internal/zzaol",
            "<TT;>;)",
            "Lcom/google/android/gms/internal/zzanh",
            "<TT;>;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    invoke-virtual {p2}, Lcom/google/android/gms/internal/zzaol;->m()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lcom/google/android/gms/internal/zzanj;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzanj;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/zzaob;->bdR:Lcom/google/android/gms/internal/zzanp;

    invoke-static {v1, p1, p2, v0}, Lcom/google/android/gms/internal/zzaob;->zza(Lcom/google/android/gms/internal/zzanp;Lcom/google/android/gms/internal/zzamp;Lcom/google/android/gms/internal/zzaol;Lcom/google/android/gms/internal/zzanj;)Lcom/google/android/gms/internal/zzanh;

    move-result-object v0

    goto :goto_0
.end method
