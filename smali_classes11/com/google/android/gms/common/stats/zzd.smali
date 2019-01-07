.class public final Lcom/google/android/gms/common/stats/zzd;
.super Ljava/lang/Object;


# static fields
.field public static AA:I

.field public static AB:I

.field public static AC:I

.field public static AD:I

.field public static AE:I

.field public static AF:I

.field public static AG:I

.field public static final Az:Landroid/content/ComponentName;

.field public static LOG_LEVEL_OFF:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x1

    new-instance v0, Landroid/content/ComponentName;

    const-string/jumbo v1, "com.google.android.gms"

    const-string/jumbo v2, "com.google.android.gms.common.stats.GmsCoreStatsService"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/common/stats/zzd;->Az:Landroid/content/ComponentName;

    const/4 v0, 0x0

    sput v0, Lcom/google/android/gms/common/stats/zzd;->LOG_LEVEL_OFF:I

    sput v3, Lcom/google/android/gms/common/stats/zzd;->AA:I

    const/4 v0, 0x2

    sput v0, Lcom/google/android/gms/common/stats/zzd;->AB:I

    const/4 v0, 0x4

    sput v0, Lcom/google/android/gms/common/stats/zzd;->AC:I

    const/16 v0, 0x8

    sput v0, Lcom/google/android/gms/common/stats/zzd;->AD:I

    const/16 v0, 0x10

    sput v0, Lcom/google/android/gms/common/stats/zzd;->AE:I

    const/16 v0, 0x20

    sput v0, Lcom/google/android/gms/common/stats/zzd;->AF:I

    sput v3, Lcom/google/android/gms/common/stats/zzd;->AG:I

    return-void
.end method
