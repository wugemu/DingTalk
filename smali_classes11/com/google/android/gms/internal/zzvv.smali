.class public final Lcom/google/android/gms/internal/zzvv;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/api/Api$ApiOptions$Optional;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/zzvv$zza;
    }
.end annotation


# static fields
.field public static final atR:Lcom/google/android/gms/internal/zzvv;


# instance fields
.field private final atS:Z

.field private final atT:Z

.field private final atU:Ljava/lang/Long;

.field private final atV:Ljava/lang/Long;

.field private final dO:Z

.field private final dQ:Z

.field private final dR:Ljava/lang/String;

.field private final dS:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/zzvv$zza;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzvv$zza;-><init>()V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzvv$zza;->zzbzt()Lcom/google/android/gms/internal/zzvv;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/zzvv;->atR:Lcom/google/android/gms/internal/zzvv;

    return-void
.end method

.method private constructor <init>(ZZLjava/lang/String;ZLjava/lang/String;ZLjava/lang/Long;Ljava/lang/Long;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/google/android/gms/internal/zzvv;->atS:Z

    iput-boolean p2, p0, Lcom/google/android/gms/internal/zzvv;->dO:Z

    iput-object p3, p0, Lcom/google/android/gms/internal/zzvv;->dR:Ljava/lang/String;

    iput-boolean p4, p0, Lcom/google/android/gms/internal/zzvv;->dQ:Z

    iput-boolean p6, p0, Lcom/google/android/gms/internal/zzvv;->atT:Z

    iput-object p5, p0, Lcom/google/android/gms/internal/zzvv;->dS:Ljava/lang/String;

    iput-object p7, p0, Lcom/google/android/gms/internal/zzvv;->atU:Ljava/lang/Long;

    iput-object p8, p0, Lcom/google/android/gms/internal/zzvv;->atV:Ljava/lang/Long;

    return-void
.end method

.method synthetic constructor <init>(ZZLjava/lang/String;ZLjava/lang/String;ZLjava/lang/Long;Ljava/lang/Long;Lcom/google/android/gms/internal/zzvv$1;)V
    .locals 0

    invoke-direct/range {p0 .. p8}, Lcom/google/android/gms/internal/zzvv;-><init>(ZZLjava/lang/String;ZLjava/lang/String;ZLjava/lang/Long;Ljava/lang/Long;)V

    return-void
.end method


# virtual methods
.method public final zzafr()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzvv;->dO:Z

    return v0
.end method

.method public final zzaft()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzvv;->dQ:Z

    return v0
.end method

.method public final zzafu()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzvv;->dR:Ljava/lang/String;

    return-object v0
.end method

.method public final zzafv()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzvv;->dS:Ljava/lang/String;

    return-object v0
.end method

.method public final zzbzp()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzvv;->atS:Z

    return v0
.end method

.method public final zzbzq()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzvv;->atT:Z

    return v0
.end method

.method public final zzbzr()Ljava/lang/Long;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzvv;->atU:Ljava/lang/Long;

    return-object v0
.end method

.method public final zzbzs()Ljava/lang/Long;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzvv;->atV:Ljava/lang/Long;

    return-object v0
.end method
