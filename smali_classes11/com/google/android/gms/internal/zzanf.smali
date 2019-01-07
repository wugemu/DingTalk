.class public abstract enum Lcom/google/android/gms/internal/zzanf;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/android/gms/internal/zzanf;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum bel:Lcom/google/android/gms/internal/zzanf;

.field public static final enum bem:Lcom/google/android/gms/internal/zzanf;

.field private static final synthetic ben:[Lcom/google/android/gms/internal/zzanf;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/google/android/gms/internal/zzanf$1;

    const-string/jumbo v1, "DEFAULT"

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/zzanf$1;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/gms/internal/zzanf;->bel:Lcom/google/android/gms/internal/zzanf;

    new-instance v0, Lcom/google/android/gms/internal/zzanf$2;

    const-string/jumbo v1, "STRING"

    invoke-direct {v0, v1, v3}, Lcom/google/android/gms/internal/zzanf$2;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/gms/internal/zzanf;->bem:Lcom/google/android/gms/internal/zzanf;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/google/android/gms/internal/zzanf;

    sget-object v1, Lcom/google/android/gms/internal/zzanf;->bel:Lcom/google/android/gms/internal/zzanf;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/android/gms/internal/zzanf;->bem:Lcom/google/android/gms/internal/zzanf;

    aput-object v1, v0, v3

    sput-object v0, Lcom/google/android/gms/internal/zzanf;->ben:[Lcom/google/android/gms/internal/zzanf;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILcom/google/android/gms/internal/zzanf$1;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/zzanf;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static values()[Lcom/google/android/gms/internal/zzanf;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/zzanf;->ben:[Lcom/google/android/gms/internal/zzanf;

    invoke-virtual {v0}, [Lcom/google/android/gms/internal/zzanf;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/gms/internal/zzanf;

    return-object v0
.end method
