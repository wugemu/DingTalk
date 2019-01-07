.class Lcom/google/android/gms/internal/zzang$zza;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzani;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzang;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "zza"
.end annotation


# instance fields
.field private final beo:Lcom/google/android/gms/internal/zzand;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/zzand",
            "<*>;"
        }
    .end annotation
.end field

.field private final bep:Lcom/google/android/gms/internal/zzamu;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/zzamu",
            "<*>;"
        }
    .end annotation
.end field

.field private final bet:Lcom/google/android/gms/internal/zzaol;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/zzaol",
            "<*>;"
        }
    .end annotation
.end field

.field private final beu:Z

.field private final bev:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ljava/lang/Object;Lcom/google/android/gms/internal/zzaol;ZLjava/lang/Class;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lcom/google/android/gms/internal/zzaol",
            "<*>;Z",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    instance-of v0, p1, Lcom/google/android/gms/internal/zzand;

    if-eqz v0, :cond_1

    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/internal/zzand;

    :goto_0
    iput-object v0, p0, Lcom/google/android/gms/internal/zzang$zza;->beo:Lcom/google/android/gms/internal/zzand;

    instance-of v0, p1, Lcom/google/android/gms/internal/zzamu;

    if-eqz v0, :cond_2

    check-cast p1, Lcom/google/android/gms/internal/zzamu;

    :goto_1
    iput-object p1, p0, Lcom/google/android/gms/internal/zzang$zza;->bep:Lcom/google/android/gms/internal/zzamu;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzang$zza;->beo:Lcom/google/android/gms/internal/zzand;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzang$zza;->bep:Lcom/google/android/gms/internal/zzamu;

    if-eqz v0, :cond_3

    :cond_0
    const/4 v0, 0x1

    :goto_2
    invoke-static {v0}, Lcom/google/android/gms/internal/zzann;->zzbo(Z)V

    iput-object p2, p0, Lcom/google/android/gms/internal/zzang$zza;->bet:Lcom/google/android/gms/internal/zzaol;

    iput-boolean p3, p0, Lcom/google/android/gms/internal/zzang$zza;->beu:Z

    iput-object p4, p0, Lcom/google/android/gms/internal/zzang$zza;->bev:Ljava/lang/Class;

    return-void

    :cond_1
    move-object v0, v1

    goto :goto_0

    :cond_2
    move-object p1, v1

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    goto :goto_2
.end method

.method synthetic constructor <init>(Ljava/lang/Object;Lcom/google/android/gms/internal/zzaol;ZLjava/lang/Class;Lcom/google/android/gms/internal/zzang$1;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/android/gms/internal/zzang$zza;-><init>(Ljava/lang/Object;Lcom/google/android/gms/internal/zzaol;ZLjava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public zza(Lcom/google/android/gms/internal/zzamp;Lcom/google/android/gms/internal/zzaol;)Lcom/google/android/gms/internal/zzanh;
    .locals 7
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

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    const/4 v6, 0x0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzang$zza;->bet:Lcom/google/android/gms/internal/zzaol;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzang$zza;->bet:Lcom/google/android/gms/internal/zzaol;

    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/zzaol;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzang$zza;->beu:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzang$zza;->bet:Lcom/google/android/gms/internal/zzaol;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzaol;->n()Ljava/lang/reflect/Type;

    move-result-object v0

    invoke-virtual {p2}, Lcom/google/android/gms/internal/zzaol;->m()Ljava/lang/Class;

    move-result-object v1

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    if-eqz v0, :cond_3

    new-instance v0, Lcom/google/android/gms/internal/zzang;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzang$zza;->beo:Lcom/google/android/gms/internal/zzand;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzang$zza;->bep:Lcom/google/android/gms/internal/zzamu;

    move-object v3, p1

    move-object v4, p2

    move-object v5, p0

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/internal/zzang;-><init>(Lcom/google/android/gms/internal/zzand;Lcom/google/android/gms/internal/zzamu;Lcom/google/android/gms/internal/zzamp;Lcom/google/android/gms/internal/zzaol;Lcom/google/android/gms/internal/zzani;Lcom/google/android/gms/internal/zzang$1;)V

    :goto_1
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/zzang$zza;->bev:Ljava/lang/Class;

    invoke-virtual {p2}, Lcom/google/android/gms/internal/zzaol;->m()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    goto :goto_0

    :cond_3
    move-object v0, v6

    goto :goto_1
.end method
