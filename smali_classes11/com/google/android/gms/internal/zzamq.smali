.class public final Lcom/google/android/gms/internal/zzamq;
.super Ljava/lang/Object;


# instance fields
.field private final bdQ:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/internal/zzani;",
            ">;"
        }
    .end annotation
.end field

.field private bea:Lcom/google/android/gms/internal/zzanq;

.field private beb:Lcom/google/android/gms/internal/zzanf;

.field private bec:Lcom/google/android/gms/internal/zzamo;

.field private final bed:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/reflect/Type;",
            "Lcom/google/android/gms/internal/zzamr",
            "<*>;>;"
        }
    .end annotation
.end field

.field private final bee:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/internal/zzani;",
            ">;"
        }
    .end annotation
.end field

.field private bef:I

.field private beg:I

.field private beh:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/google/android/gms/internal/zzanq;->beK:Lcom/google/android/gms/internal/zzanq;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzamq;->bea:Lcom/google/android/gms/internal/zzanq;

    sget-object v0, Lcom/google/android/gms/internal/zzanf;->bel:Lcom/google/android/gms/internal/zzanf;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzamq;->beb:Lcom/google/android/gms/internal/zzanf;

    sget-object v0, Lcom/google/android/gms/internal/zzamn;->bdI:Lcom/google/android/gms/internal/zzamn;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzamq;->bec:Lcom/google/android/gms/internal/zzamo;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzamq;->bed:Ljava/util/Map;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzamq;->bdQ:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzamq;->bee:Ljava/util/List;

    iput v1, p0, Lcom/google/android/gms/internal/zzamq;->bef:I

    iput v1, p0, Lcom/google/android/gms/internal/zzamq;->beg:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzamq;->beh:Z

    return-void
.end method

.method private zza(Ljava/lang/String;IILjava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "II",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/internal/zzani;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    const/4 v2, 0x2

    if-eqz p1, :cond_1

    const-string/jumbo v0, ""

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Lcom/google/android/gms/internal/zzamk;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/zzamk;-><init>(Ljava/lang/String;)V

    :goto_0
    const-class v1, Ljava/util/Date;

    invoke-static {v1}, Lcom/google/android/gms/internal/zzaol;->zzr(Ljava/lang/Class;)Lcom/google/android/gms/internal/zzaol;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/zzang;->zza(Lcom/google/android/gms/internal/zzaol;Ljava/lang/Object;)Lcom/google/android/gms/internal/zzani;

    move-result-object v1

    invoke-interface {p4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-class v1, Ljava/sql/Timestamp;

    invoke-static {v1}, Lcom/google/android/gms/internal/zzaol;->zzr(Ljava/lang/Class;)Lcom/google/android/gms/internal/zzaol;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/zzang;->zza(Lcom/google/android/gms/internal/zzaol;Ljava/lang/Object;)Lcom/google/android/gms/internal/zzani;

    move-result-object v1

    invoke-interface {p4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-class v1, Ljava/sql/Date;

    invoke-static {v1}, Lcom/google/android/gms/internal/zzaol;->zzr(Ljava/lang/Class;)Lcom/google/android/gms/internal/zzaol;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/zzang;->zza(Lcom/google/android/gms/internal/zzaol;Ljava/lang/Object;)Lcom/google/android/gms/internal/zzani;

    move-result-object v0

    invoke-interface {p4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void

    :cond_1
    if-eq p2, v2, :cond_0

    if-eq p3, v2, :cond_0

    new-instance v0, Lcom/google/android/gms/internal/zzamk;

    invoke-direct {v0, p2, p3}, Lcom/google/android/gms/internal/zzamk;-><init>(II)V

    goto :goto_0
.end method


# virtual methods
.method public final zza(Ljava/lang/reflect/Type;Ljava/lang/Object;)Lcom/google/android/gms/internal/zzamq;
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    instance-of v0, p2, Lcom/google/android/gms/internal/zzand;

    if-nez v0, :cond_0

    instance-of v0, p2, Lcom/google/android/gms/internal/zzamu;

    if-nez v0, :cond_0

    instance-of v0, p2, Lcom/google/android/gms/internal/zzamr;

    if-nez v0, :cond_0

    instance-of v0, p2, Lcom/google/android/gms/internal/zzanh;

    if-eqz v0, :cond_5

    :cond_0
    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/google/android/gms/internal/zzann;->zzbo(Z)V

    instance-of v0, p2, Lcom/google/android/gms/internal/zzamr;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/internal/zzamq;->bed:Ljava/util/Map;

    move-object v0, p2

    check-cast v0, Lcom/google/android/gms/internal/zzamr;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    instance-of v0, p2, Lcom/google/android/gms/internal/zzand;

    if-nez v0, :cond_2

    instance-of v0, p2, Lcom/google/android/gms/internal/zzamu;

    if-eqz v0, :cond_3

    :cond_2
    invoke-static {p1}, Lcom/google/android/gms/internal/zzaol;->zzl(Ljava/lang/reflect/Type;)Lcom/google/android/gms/internal/zzaol;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzamq;->bdQ:Ljava/util/List;

    invoke-static {v0, p2}, Lcom/google/android/gms/internal/zzang;->zzb(Lcom/google/android/gms/internal/zzaol;Ljava/lang/Object;)Lcom/google/android/gms/internal/zzani;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    instance-of v0, p2, Lcom/google/android/gms/internal/zzanh;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/google/android/gms/internal/zzamq;->bdQ:Ljava/util/List;

    invoke-static {p1}, Lcom/google/android/gms/internal/zzaol;->zzl(Ljava/lang/reflect/Type;)Lcom/google/android/gms/internal/zzaol;

    move-result-object v1

    check-cast p2, Lcom/google/android/gms/internal/zzanh;

    invoke-static {v1, p2}, Lcom/google/android/gms/internal/zzaok;->zza(Lcom/google/android/gms/internal/zzaol;Lcom/google/android/gms/internal/zzanh;)Lcom/google/android/gms/internal/zzani;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4
    return-object p0

    :cond_5
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final varargs zza([Lcom/google/android/gms/internal/zzaml;)Lcom/google/android/gms/internal/zzamq;
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    const/4 v4, 0x1

    array-length v1, p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    aget-object v2, p1, v0

    iget-object v3, p0, Lcom/google/android/gms/internal/zzamq;->bea:Lcom/google/android/gms/internal/zzanq;

    invoke-virtual {v3, v2, v4, v4}, Lcom/google/android/gms/internal/zzanq;->zza(Lcom/google/android/gms/internal/zzaml;ZZ)Lcom/google/android/gms/internal/zzanq;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/gms/internal/zzamq;->bea:Lcom/google/android/gms/internal/zzanq;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public final zzczc()Lcom/google/android/gms/internal/zzamq;
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzamq;->beh:Z

    return-object p0
.end method

.method public final zzczd()Lcom/google/android/gms/internal/zzamp;
    .locals 12

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v11

    invoke-static {v11}, Lcom/pnf/dex2jar1;->b(I)V

    const/4 v4, 0x0

    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzamq;->bdQ:Ljava/util/List;

    invoke-interface {v11, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-static {v11}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzamq;->bee:Ljava/util/List;

    invoke-interface {v11, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    const/4 v0, 0x0

    iget v1, p0, Lcom/google/android/gms/internal/zzamq;->bef:I

    iget v2, p0, Lcom/google/android/gms/internal/zzamq;->beg:I

    invoke-direct {p0, v0, v1, v2, v11}, Lcom/google/android/gms/internal/zzamq;->zza(Ljava/lang/String;IILjava/util/List;)V

    new-instance v0, Lcom/google/android/gms/internal/zzamp;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzamq;->bea:Lcom/google/android/gms/internal/zzanq;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzamq;->bec:Lcom/google/android/gms/internal/zzamo;

    iget-object v3, p0, Lcom/google/android/gms/internal/zzamq;->bed:Ljava/util/Map;

    iget-boolean v7, p0, Lcom/google/android/gms/internal/zzamq;->beh:Z

    iget-object v10, p0, Lcom/google/android/gms/internal/zzamq;->beb:Lcom/google/android/gms/internal/zzanf;

    move v5, v4

    move v6, v4

    move v8, v4

    move v9, v4

    invoke-direct/range {v0 .. v11}, Lcom/google/android/gms/internal/zzamp;-><init>(Lcom/google/android/gms/internal/zzanq;Lcom/google/android/gms/internal/zzamo;Ljava/util/Map;ZZZZZZLcom/google/android/gms/internal/zzanf;Ljava/util/List;)V

    return-object v0
.end method

.method public final varargs zzf([I)Lcom/google/android/gms/internal/zzamq;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzamq;->bea:Lcom/google/android/gms/internal/zzanq;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/zzanq;->zzg([I)Lcom/google/android/gms/internal/zzanq;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzamq;->bea:Lcom/google/android/gms/internal/zzanq;

    return-object p0
.end method
