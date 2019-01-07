.class public final Lcom/google/android/gms/measurement/AppMeasurement$zza;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/measurement/AppMeasurement;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "zza"
.end annotation


# static fields
.field public static final ahE:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/16 v0, 0xf

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "app_clear_data"

    aput-object v1, v0, v3

    const-string/jumbo v1, "app_exception"

    aput-object v1, v0, v4

    const-string/jumbo v1, "app_uninstall"

    aput-object v1, v0, v5

    const-string/jumbo v1, "app_update"

    aput-object v1, v0, v6

    const-string/jumbo v1, "firebase_campaign"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string/jumbo v2, "error"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string/jumbo v2, "first_open"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string/jumbo v2, "in_app_purchase"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string/jumbo v2, "notification_dismiss"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string/jumbo v2, "notification_foreground"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string/jumbo v2, "notification_open"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string/jumbo v2, "notification_receive"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string/jumbo v2, "os_update"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string/jumbo v2, "session_start"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string/jumbo v2, "user_engagement"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    new-array v1, v1, [Ljava/lang/String;

    const-string/jumbo v2, "_cd"

    aput-object v2, v1, v3

    const-string/jumbo v2, "_ae"

    aput-object v2, v1, v4

    const-string/jumbo v2, "_ui"

    aput-object v2, v1, v5

    const-string/jumbo v2, "_au"

    aput-object v2, v1, v6

    const-string/jumbo v2, "_cmp"

    aput-object v2, v1, v7

    const/4 v2, 0x5

    const-string/jumbo v3, "_err"

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string/jumbo v3, "_f"

    aput-object v3, v1, v2

    const/4 v2, 0x7

    const-string/jumbo v3, "_iap"

    aput-object v3, v1, v2

    const/16 v2, 0x8

    const-string/jumbo v3, "_nd"

    aput-object v3, v1, v2

    const/16 v2, 0x9

    const-string/jumbo v3, "_nf"

    aput-object v3, v1, v2

    const/16 v2, 0xa

    const-string/jumbo v3, "_no"

    aput-object v3, v1, v2

    const/16 v2, 0xb

    const-string/jumbo v3, "_nr"

    aput-object v3, v1, v2

    const/16 v2, 0xc

    const-string/jumbo v3, "_ou"

    aput-object v3, v1, v2

    const/16 v2, 0xd

    const-string/jumbo v3, "_s"

    aput-object v3, v1, v2

    const/16 v2, 0xe

    const-string/jumbo v3, "_e"

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/google/android/gms/common/util/zzf;->zzb([Ljava/lang/Object;[Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/measurement/AppMeasurement$zza;->ahE:Ljava/util/Map;

    return-void
.end method
