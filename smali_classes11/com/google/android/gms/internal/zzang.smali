.class final Lcom/google/android/gms/internal/zzang;
.super Lcom/google/android/gms/internal/zzanh;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/zzang$zza;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
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

.field private final beo:Lcom/google/android/gms/internal/zzand;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/zzand",
            "<TT;>;"
        }
    .end annotation
.end field

.field private final bep:Lcom/google/android/gms/internal/zzamu;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/zzamu",
            "<TT;>;"
        }
    .end annotation
.end field

.field private final beq:Lcom/google/android/gms/internal/zzamp;

.field private final ber:Lcom/google/android/gms/internal/zzaol;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/zzaol",
            "<TT;>;"
        }
    .end annotation
.end field

.field private final bes:Lcom/google/android/gms/internal/zzani;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/zzand;Lcom/google/android/gms/internal/zzamu;Lcom/google/android/gms/internal/zzamp;Lcom/google/android/gms/internal/zzaol;Lcom/google/android/gms/internal/zzani;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzand",
            "<TT;>;",
            "Lcom/google/android/gms/internal/zzamu",
            "<TT;>;",
            "Lcom/google/android/gms/internal/zzamp;",
            "Lcom/google/android/gms/internal/zzaol",
            "<TT;>;",
            "Lcom/google/android/gms/internal/zzani;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzanh;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzang;->beo:Lcom/google/android/gms/internal/zzand;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzang;->bep:Lcom/google/android/gms/internal/zzamu;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzang;->beq:Lcom/google/android/gms/internal/zzamp;

    iput-object p4, p0, Lcom/google/android/gms/internal/zzang;->ber:Lcom/google/android/gms/internal/zzaol;

    iput-object p5, p0, Lcom/google/android/gms/internal/zzang;->bes:Lcom/google/android/gms/internal/zzani;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/zzand;Lcom/google/android/gms/internal/zzamu;Lcom/google/android/gms/internal/zzamp;Lcom/google/android/gms/internal/zzaol;Lcom/google/android/gms/internal/zzani;Lcom/google/android/gms/internal/zzang$1;)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/google/android/gms/internal/zzang;-><init>(Lcom/google/android/gms/internal/zzand;Lcom/google/android/gms/internal/zzamu;Lcom/google/android/gms/internal/zzamp;Lcom/google/android/gms/internal/zzaol;Lcom/google/android/gms/internal/zzani;)V

    return-void
.end method

.method public static zza(Lcom/google/android/gms/internal/zzaol;Ljava/lang/Object;)Lcom/google/android/gms/internal/zzani;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzaol",
            "<*>;",
            "Ljava/lang/Object;",
            ")",
            "Lcom/google/android/gms/internal/zzani;"
        }
    .end annotation

    const/4 v4, 0x0

    new-instance v0, Lcom/google/android/gms/internal/zzang$zza;

    const/4 v3, 0x0

    move-object v1, p1

    move-object v2, p0

    move-object v5, v4

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/zzang$zza;-><init>(Ljava/lang/Object;Lcom/google/android/gms/internal/zzaol;ZLjava/lang/Class;Lcom/google/android/gms/internal/zzang$1;)V

    return-object v0
.end method

.method public static zzb(Lcom/google/android/gms/internal/zzaol;Ljava/lang/Object;)Lcom/google/android/gms/internal/zzani;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzaol",
            "<*>;",
            "Ljava/lang/Object;",
            ")",
            "Lcom/google/android/gms/internal/zzani;"
        }
    .end annotation

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaol;->n()Ljava/lang/reflect/Type;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaol;->m()Ljava/lang/Class;

    move-result-object v1

    if-ne v0, v1, :cond_0

    const/4 v3, 0x1

    :goto_0
    new-instance v0, Lcom/google/android/gms/internal/zzang$zza;

    move-object v1, p1

    move-object v2, p0

    move-object v5, v4

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/zzang$zza;-><init>(Ljava/lang/Object;Lcom/google/android/gms/internal/zzaol;ZLjava/lang/Class;Lcom/google/android/gms/internal/zzang$1;)V

    return-object v0

    :cond_0
    const/4 v3, 0x0

    goto :goto_0
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

    iget-object v0, p0, Lcom/google/android/gms/internal/zzang;->bdZ:Lcom/google/android/gms/internal/zzanh;

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzang;->beq:Lcom/google/android/gms/internal/zzamp;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzang;->bes:Lcom/google/android/gms/internal/zzani;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzang;->ber:Lcom/google/android/gms/internal/zzaol;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/zzamp;->zza(Lcom/google/android/gms/internal/zzani;Lcom/google/android/gms/internal/zzaol;)Lcom/google/android/gms/internal/zzanh;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzang;->bdZ:Lcom/google/android/gms/internal/zzanh;

    goto :goto_0
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/zzaoo;Ljava/lang/Object;)V
    .locals 3
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

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzang;->beo:Lcom/google/android/gms/internal/zzand;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzang;->zzczr()Lcom/google/android/gms/internal/zzanh;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/zzanh;->zza(Lcom/google/android/gms/internal/zzaoo;Ljava/lang/Object;)V

    :goto_0
    return-void

    :cond_0
    if-nez p2, :cond_1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzaoo;->l()Lcom/google/android/gms/internal/zzaoo;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/zzang;->beo:Lcom/google/android/gms/internal/zzand;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzang;->ber:Lcom/google/android/gms/internal/zzaol;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzaol;->n()Ljava/lang/reflect/Type;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/zzang;->beq:Lcom/google/android/gms/internal/zzamp;

    iget-object v2, v2, Lcom/google/android/gms/internal/zzamp;->bdX:Lcom/google/android/gms/internal/zzanc;

    invoke-interface {v0, p2, v1, v2}, Lcom/google/android/gms/internal/zzand;->zza(Ljava/lang/Object;Ljava/lang/reflect/Type;Lcom/google/android/gms/internal/zzanc;)Lcom/google/android/gms/internal/zzamv;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/zzanw;->zzb(Lcom/google/android/gms/internal/zzamv;Lcom/google/android/gms/internal/zzaoo;)V

    goto :goto_0
.end method

.method public final zzb(Lcom/google/android/gms/internal/zzaom;)Ljava/lang/Object;
    .locals 4
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

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzang;->bep:Lcom/google/android/gms/internal/zzamu;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzang;->zzczr()Lcom/google/android/gms/internal/zzanh;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/zzanh;->zzb(Lcom/google/android/gms/internal/zzaom;)Ljava/lang/Object;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {p1}, Lcom/google/android/gms/internal/zzanw;->zzh(Lcom/google/android/gms/internal/zzaom;)Lcom/google/android/gms/internal/zzamv;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzamv;->zzczj()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/zzang;->bep:Lcom/google/android/gms/internal/zzamu;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzang;->ber:Lcom/google/android/gms/internal/zzaol;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzaol;->n()Ljava/lang/reflect/Type;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/internal/zzang;->beq:Lcom/google/android/gms/internal/zzamp;

    iget-object v3, v3, Lcom/google/android/gms/internal/zzamp;->bdW:Lcom/google/android/gms/internal/zzamt;

    invoke-interface {v1, v0, v2, v3}, Lcom/google/android/gms/internal/zzamu;->zzb(Lcom/google/android/gms/internal/zzamv;Ljava/lang/reflect/Type;Lcom/google/android/gms/internal/zzamt;)Ljava/lang/Object;
    :try_end_0
    .catch Lcom/google/android/gms/internal/zzamz; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v0

    throw v0

    :catch_1
    move-exception v0

    new-instance v1, Lcom/google/android/gms/internal/zzamz;

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/zzamz;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method
