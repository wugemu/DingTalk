.class public final Ljun;
.super Ljava/lang/Object;


# static fields
.field private static a:I

.field private static b:I

.field private static c:I

.field private static d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/xiaomi/channel/commonutils/android/h;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, -0x1

    const/4 v0, 0x0

    sput v0, Ljun;->a:I

    sput v1, Ljun;->b:I

    sput v1, Ljun;->c:I

    const/4 v0, 0x0

    sput-object v0, Ljun;->d:Ljava/util/Map;

    return-void
.end method

.method private static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    const/4 v1, 0x0

    :try_start_0
    const-string/jumbo v0, "android.os.SystemProperties"

    const-string/jumbo v2, "get"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    const/4 v4, 0x1

    const-string/jumbo v5, ""

    aput-object v5, v3, v4

    invoke-static {v0, v2, v3}, Ljvo;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    :try_start_1
    invoke-static {v0}, Ljuw;->a(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v0, v1

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object v0, v1

    goto :goto_0
.end method

.method public static declared-synchronized a()Z
    .locals 3

    const/4 v0, 0x1

    const-class v1, Ljun;

    monitor-enter v1

    :try_start_0
    invoke-static {}, Ljun;->d()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    monitor-exit v1

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized b()Z
    .locals 3

    const-class v1, Ljun;

    monitor-enter v1

    :try_start_0
    invoke-static {}, Ljun;->d()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit v1

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static c()Z
    .locals 7

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 0
    sget v0, Ljun;->c:I

    if-gez v0, :cond_5

    sget-object v0, Lcom/xiaomi/channel/commonutils/android/h;->c:Lcom/xiaomi/channel/commonutils/android/h;

    invoke-virtual {v0}, Lcom/xiaomi/channel/commonutils/android/h;->name()Ljava/lang/String;

    move-result-object v3

    .line 1000
    const-string/jumbo v0, "ro.miui.region"

    const-string/jumbo v4, ""

    invoke-static {v0, v4}, Ljup;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    const-string/jumbo v0, "ro.product.locale.region"

    const-string/jumbo v4, ""

    invoke-static {v0, v4}, Ljup;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    const-string/jumbo v0, "persist.sys.country"

    const-string/jumbo v4, ""

    invoke-static {v0, v4}, Ljup;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    .line 4000
    :cond_2
    sget-object v4, Ljun;->d:Ljava/util/Map;

    if-nez v4, :cond_3

    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    sput-object v4, Ljun;->d:Ljava/util/Map;

    const-string/jumbo v5, "CN"

    sget-object v6, Lcom/xiaomi/channel/commonutils/android/h;->a:Lcom/xiaomi/channel/commonutils/android/h;

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v4, Ljun;->d:Ljava/util/Map;

    const-string/jumbo v5, "FI"

    sget-object v6, Lcom/xiaomi/channel/commonutils/android/h;->c:Lcom/xiaomi/channel/commonutils/android/h;

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v4, Ljun;->d:Ljava/util/Map;

    const-string/jumbo v5, "SE"

    sget-object v6, Lcom/xiaomi/channel/commonutils/android/h;->c:Lcom/xiaomi/channel/commonutils/android/h;

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v4, Ljun;->d:Ljava/util/Map;

    const-string/jumbo v5, "NO"

    sget-object v6, Lcom/xiaomi/channel/commonutils/android/h;->c:Lcom/xiaomi/channel/commonutils/android/h;

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v4, Ljun;->d:Ljava/util/Map;

    const-string/jumbo v5, "FO"

    sget-object v6, Lcom/xiaomi/channel/commonutils/android/h;->c:Lcom/xiaomi/channel/commonutils/android/h;

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v4, Ljun;->d:Ljava/util/Map;

    const-string/jumbo v5, "EE"

    sget-object v6, Lcom/xiaomi/channel/commonutils/android/h;->c:Lcom/xiaomi/channel/commonutils/android/h;

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v4, Ljun;->d:Ljava/util/Map;

    const-string/jumbo v5, "LV"

    sget-object v6, Lcom/xiaomi/channel/commonutils/android/h;->c:Lcom/xiaomi/channel/commonutils/android/h;

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v4, Ljun;->d:Ljava/util/Map;

    const-string/jumbo v5, "LT"

    sget-object v6, Lcom/xiaomi/channel/commonutils/android/h;->c:Lcom/xiaomi/channel/commonutils/android/h;

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v4, Ljun;->d:Ljava/util/Map;

    const-string/jumbo v5, "BY"

    sget-object v6, Lcom/xiaomi/channel/commonutils/android/h;->c:Lcom/xiaomi/channel/commonutils/android/h;

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v4, Ljun;->d:Ljava/util/Map;

    const-string/jumbo v5, "MD"

    sget-object v6, Lcom/xiaomi/channel/commonutils/android/h;->c:Lcom/xiaomi/channel/commonutils/android/h;

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v4, Ljun;->d:Ljava/util/Map;

    const-string/jumbo v5, "UA"

    sget-object v6, Lcom/xiaomi/channel/commonutils/android/h;->c:Lcom/xiaomi/channel/commonutils/android/h;

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v4, Ljun;->d:Ljava/util/Map;

    const-string/jumbo v5, "PL"

    sget-object v6, Lcom/xiaomi/channel/commonutils/android/h;->c:Lcom/xiaomi/channel/commonutils/android/h;

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v4, Ljun;->d:Ljava/util/Map;

    const-string/jumbo v5, "CZ"

    sget-object v6, Lcom/xiaomi/channel/commonutils/android/h;->c:Lcom/xiaomi/channel/commonutils/android/h;

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v4, Ljun;->d:Ljava/util/Map;

    const-string/jumbo v5, "SK"

    sget-object v6, Lcom/xiaomi/channel/commonutils/android/h;->c:Lcom/xiaomi/channel/commonutils/android/h;

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v4, Ljun;->d:Ljava/util/Map;

    const-string/jumbo v5, "HU"

    sget-object v6, Lcom/xiaomi/channel/commonutils/android/h;->c:Lcom/xiaomi/channel/commonutils/android/h;

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v4, Ljun;->d:Ljava/util/Map;

    const-string/jumbo v5, "DE"

    sget-object v6, Lcom/xiaomi/channel/commonutils/android/h;->c:Lcom/xiaomi/channel/commonutils/android/h;

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v4, Ljun;->d:Ljava/util/Map;

    const-string/jumbo v5, "AT"

    sget-object v6, Lcom/xiaomi/channel/commonutils/android/h;->c:Lcom/xiaomi/channel/commonutils/android/h;

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v4, Ljun;->d:Ljava/util/Map;

    const-string/jumbo v5, "CH"

    sget-object v6, Lcom/xiaomi/channel/commonutils/android/h;->c:Lcom/xiaomi/channel/commonutils/android/h;

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v4, Ljun;->d:Ljava/util/Map;

    const-string/jumbo v5, "LI"

    sget-object v6, Lcom/xiaomi/channel/commonutils/android/h;->c:Lcom/xiaomi/channel/commonutils/android/h;

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v4, Ljun;->d:Ljava/util/Map;

    const-string/jumbo v5, "GB"

    sget-object v6, Lcom/xiaomi/channel/commonutils/android/h;->c:Lcom/xiaomi/channel/commonutils/android/h;

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v4, Ljun;->d:Ljava/util/Map;

    const-string/jumbo v5, "IE"

    sget-object v6, Lcom/xiaomi/channel/commonutils/android/h;->c:Lcom/xiaomi/channel/commonutils/android/h;

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v4, Ljun;->d:Ljava/util/Map;

    const-string/jumbo v5, "NL"

    sget-object v6, Lcom/xiaomi/channel/commonutils/android/h;->c:Lcom/xiaomi/channel/commonutils/android/h;

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v4, Ljun;->d:Ljava/util/Map;

    const-string/jumbo v5, "BE"

    sget-object v6, Lcom/xiaomi/channel/commonutils/android/h;->c:Lcom/xiaomi/channel/commonutils/android/h;

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v4, Ljun;->d:Ljava/util/Map;

    const-string/jumbo v5, "LU"

    sget-object v6, Lcom/xiaomi/channel/commonutils/android/h;->c:Lcom/xiaomi/channel/commonutils/android/h;

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v4, Ljun;->d:Ljava/util/Map;

    const-string/jumbo v5, "FR"

    sget-object v6, Lcom/xiaomi/channel/commonutils/android/h;->c:Lcom/xiaomi/channel/commonutils/android/h;

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v4, Ljun;->d:Ljava/util/Map;

    const-string/jumbo v5, "RO"

    sget-object v6, Lcom/xiaomi/channel/commonutils/android/h;->c:Lcom/xiaomi/channel/commonutils/android/h;

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v4, Ljun;->d:Ljava/util/Map;

    const-string/jumbo v5, "BG"

    sget-object v6, Lcom/xiaomi/channel/commonutils/android/h;->c:Lcom/xiaomi/channel/commonutils/android/h;

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v4, Ljun;->d:Ljava/util/Map;

    const-string/jumbo v5, "RS"

    sget-object v6, Lcom/xiaomi/channel/commonutils/android/h;->c:Lcom/xiaomi/channel/commonutils/android/h;

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v4, Ljun;->d:Ljava/util/Map;

    const-string/jumbo v5, "MK"

    sget-object v6, Lcom/xiaomi/channel/commonutils/android/h;->c:Lcom/xiaomi/channel/commonutils/android/h;

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v4, Ljun;->d:Ljava/util/Map;

    const-string/jumbo v5, "AL"

    sget-object v6, Lcom/xiaomi/channel/commonutils/android/h;->c:Lcom/xiaomi/channel/commonutils/android/h;

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v4, Ljun;->d:Ljava/util/Map;

    const-string/jumbo v5, "GR"

    sget-object v6, Lcom/xiaomi/channel/commonutils/android/h;->c:Lcom/xiaomi/channel/commonutils/android/h;

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v4, Ljun;->d:Ljava/util/Map;

    const-string/jumbo v5, "SI"

    sget-object v6, Lcom/xiaomi/channel/commonutils/android/h;->c:Lcom/xiaomi/channel/commonutils/android/h;

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v4, Ljun;->d:Ljava/util/Map;

    const-string/jumbo v5, "HR"

    sget-object v6, Lcom/xiaomi/channel/commonutils/android/h;->c:Lcom/xiaomi/channel/commonutils/android/h;

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v4, Ljun;->d:Ljava/util/Map;

    const-string/jumbo v5, "IT"

    sget-object v6, Lcom/xiaomi/channel/commonutils/android/h;->c:Lcom/xiaomi/channel/commonutils/android/h;

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v4, Ljun;->d:Ljava/util/Map;

    const-string/jumbo v5, "SM"

    sget-object v6, Lcom/xiaomi/channel/commonutils/android/h;->c:Lcom/xiaomi/channel/commonutils/android/h;

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v4, Ljun;->d:Ljava/util/Map;

    const-string/jumbo v5, "MT"

    sget-object v6, Lcom/xiaomi/channel/commonutils/android/h;->c:Lcom/xiaomi/channel/commonutils/android/h;

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v4, Ljun;->d:Ljava/util/Map;

    const-string/jumbo v5, "ES"

    sget-object v6, Lcom/xiaomi/channel/commonutils/android/h;->c:Lcom/xiaomi/channel/commonutils/android/h;

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v4, Ljun;->d:Ljava/util/Map;

    const-string/jumbo v5, "PT"

    sget-object v6, Lcom/xiaomi/channel/commonutils/android/h;->c:Lcom/xiaomi/channel/commonutils/android/h;

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v4, Ljun;->d:Ljava/util/Map;

    const-string/jumbo v5, "AD"

    sget-object v6, Lcom/xiaomi/channel/commonutils/android/h;->c:Lcom/xiaomi/channel/commonutils/android/h;

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v4, Ljun;->d:Ljava/util/Map;

    const-string/jumbo v5, "CY"

    sget-object v6, Lcom/xiaomi/channel/commonutils/android/h;->c:Lcom/xiaomi/channel/commonutils/android/h;

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v4, Ljun;->d:Ljava/util/Map;

    const-string/jumbo v5, "DK"

    sget-object v6, Lcom/xiaomi/channel/commonutils/android/h;->c:Lcom/xiaomi/channel/commonutils/android/h;

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3000
    :cond_3
    sget-object v4, Ljun;->d:Ljava/util/Map;

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/channel/commonutils/android/h;

    .line 2000
    if-nez v0, :cond_4

    sget-object v0, Lcom/xiaomi/channel/commonutils/android/h;->b:Lcom/xiaomi/channel/commonutils/android/h;

    .line 0
    :cond_4
    invoke-virtual {v0}, Lcom/xiaomi/channel/commonutils/android/h;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    sput v2, Ljun;->c:I

    :cond_5
    :goto_0
    sget v0, Ljun;->c:I

    if-lez v0, :cond_7

    move v0, v1

    :goto_1
    return v0

    :cond_6
    sput v1, Ljun;->c:I

    goto :goto_0

    :cond_7
    move v0, v2

    goto :goto_1
.end method

.method private static declared-synchronized d()I
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    const-class v2, Ljun;

    monitor-enter v2

    :try_start_0
    sget v3, Ljun;->a:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v3, :cond_2

    :try_start_1
    const-string/jumbo v3, "ro.miui.ui.version.code"

    invoke-static {v3}, Ljun;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string/jumbo v3, "ro.miui.ui.version.name"

    invoke-static {v3}, Ljun;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    :cond_0
    move v1, v0

    :cond_1
    if-eqz v1, :cond_3

    :goto_0
    sput v0, Ljun;->a:I
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    :try_start_2
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "isMIUI\'s value is: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v1, Ljun;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljuw;->b(Ljava/lang/String;)V

    :cond_2
    sget v0, Ljun;->a:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v2

    return v0

    :cond_3
    const/4 v0, 0x2

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_3
    const-string/jumbo v1, "get isMIUI failed"

    invoke-static {v1, v0}, Ljuw;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    sput v0, Ljun;->a:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0
.end method
