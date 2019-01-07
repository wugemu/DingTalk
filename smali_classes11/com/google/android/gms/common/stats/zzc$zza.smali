.class public final Lcom/google/android/gms/common/stats/zzc$zza;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/common/stats/zzc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "zza"
.end annotation


# static fields
.field public static At:Lcom/google/android/gms/internal/zzqz;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/zzqz",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static Au:Lcom/google/android/gms/internal/zzqz;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/zzqz",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static Av:Lcom/google/android/gms/internal/zzqz;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/zzqz",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static Aw:Lcom/google/android/gms/internal/zzqz;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/zzqz",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static Ax:Lcom/google/android/gms/internal/zzqz;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/zzqz",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static Ay:Lcom/google/android/gms/internal/zzqz;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/zzqz",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const-string/jumbo v0, "gms:common:stats:connections:level"

    sget v1, Lcom/google/android/gms/common/stats/zzd;->LOG_LEVEL_OFF:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/zzqz;->zza(Ljava/lang/String;Ljava/lang/Integer;)Lcom/google/android/gms/internal/zzqz;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/common/stats/zzc$zza;->At:Lcom/google/android/gms/internal/zzqz;

    const-string/jumbo v0, "gms:common:stats:connections:ignored_calling_processes"

    const-string/jumbo v1, ""

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/zzqz;->zzab(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/zzqz;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/common/stats/zzc$zza;->Au:Lcom/google/android/gms/internal/zzqz;

    const-string/jumbo v0, "gms:common:stats:connections:ignored_calling_services"

    const-string/jumbo v1, ""

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/zzqz;->zzab(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/zzqz;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/common/stats/zzc$zza;->Av:Lcom/google/android/gms/internal/zzqz;

    const-string/jumbo v0, "gms:common:stats:connections:ignored_target_processes"

    const-string/jumbo v1, ""

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/zzqz;->zzab(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/zzqz;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/common/stats/zzc$zza;->Aw:Lcom/google/android/gms/internal/zzqz;

    const-string/jumbo v0, "gms:common:stats:connections:ignored_target_services"

    const-string/jumbo v1, "com.google.android.gms.auth.GetToken"

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/zzqz;->zzab(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/zzqz;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/common/stats/zzc$zza;->Ax:Lcom/google/android/gms/internal/zzqz;

    const-string/jumbo v0, "gms:common:stats:connections:time_out_duration"

    const-wide/32 v2, 0x927c0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/zzqz;->zza(Ljava/lang/String;Ljava/lang/Long;)Lcom/google/android/gms/internal/zzqz;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/common/stats/zzc$zza;->Ay:Lcom/google/android/gms/internal/zzqz;

    return-void
.end method
