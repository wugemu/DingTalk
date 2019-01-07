.class public Lcom/amap/api/services/a/ba;
.super Ljava/lang/Object;
.source "DeviceInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amap/api/services/a/ba$a;
    }
.end annotation


# static fields
.field private static a:Ljava/lang/String;

.field private static b:Z

.field private static c:Ljava/lang/String;

.field private static d:Ljava/lang/String;

.field private static e:Ljava/lang/String;

.field private static f:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 50
    const-string/jumbo v0, ""

    sput-object v0, Lcom/amap/api/services/a/ba;->a:Ljava/lang/String;

    .line 51
    const/4 v0, 0x0

    sput-boolean v0, Lcom/amap/api/services/a/ba;->b:Z

    .line 275
    const-string/jumbo v0, ""

    sput-object v0, Lcom/amap/api/services/a/ba;->c:Ljava/lang/String;

    .line 421
    const-string/jumbo v0, ""

    sput-object v0, Lcom/amap/api/services/a/ba;->d:Ljava/lang/String;

    .line 477
    const-string/jumbo v0, ""

    sput-object v0, Lcom/amap/api/services/a/ba;->e:Ljava/lang/String;

    .line 529
    const-string/jumbo v0, ""

    sput-object v0, Lcom/amap/api/services/a/ba;->f:Ljava/lang/String;

    return-void
.end method

.method public static a(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 58
    :try_start_0
    invoke-static {p0}, Lcom/amap/api/services/a/ba;->u(Landroid/content/Context;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 63
    :goto_0
    return-object v0

    .line 59
    :catch_0
    move-exception v0

    .line 61
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 63
    const-string/jumbo v0, ""

    goto :goto_0
.end method

.method static synthetic a(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 43
    sput-object p0, Lcom/amap/api/services/a/ba;->a:Ljava/lang/String;

    return-object p0
.end method

.method private static a(Ljava/util/List;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/net/wifi/ScanResult;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Landroid/net/wifi/ScanResult;",
            ">;"
        }
    .end annotation

    .prologue
    .line 651
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    .line 652
    const/4 v0, 0x0

    move v2, v0

    :goto_0
    add-int/lit8 v0, v3, -0x1

    if-ge v2, v0, :cond_2

    .line 653
    const/4 v0, 0x1

    move v1, v0

    :goto_1
    sub-int v0, v3, v2

    if-ge v1, v0, :cond_1

    .line 655
    add-int/lit8 v0, v1, -0x1

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/ScanResult;

    iget v4, v0, Landroid/net/wifi/ScanResult;->level:I

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/ScanResult;

    iget v0, v0, Landroid/net/wifi/ScanResult;->level:I

    if-le v4, v0, :cond_0

    .line 656
    add-int/lit8 v0, v1, -0x1

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/ScanResult;

    .line 657
    add-int/lit8 v4, v1, -0x1

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {p0, v4, v5}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 658
    invoke-interface {p0, v1, v0}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 653
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 652
    :cond_1
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 662
    :cond_2
    return-object p0
.end method

.method public static a()V
    .locals 5

    .prologue
    .line 123
    :try_start_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-le v0, v1, :cond_0

    .line 124
    const-class v0, Landroid/net/TrafficStats;

    const-string/jumbo v1, "setThreadStatsTag"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 126
    const/4 v1, 0x0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const v4, 0xa004

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 133
    :cond_0
    :goto_0
    return-void

    .line 128
    :catch_0
    move-exception v0

    .line 129
    const-string/jumbo v1, "DeviceInfo"

    const-string/jumbo v2, "setTraficTag"

    invoke-static {v0, v1, v2}, Lcom/amap/api/services/a/bh;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static a(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 214
    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic a(Z)Z
    .locals 0

    .prologue
    .line 43
    sput-boolean p0, Lcom/amap/api/services/a/ba;->b:Z

    return p0
.end method

.method public static b(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 67
    const-string/jumbo v0, ""

    .line 69
    :try_start_0
    invoke-static {p0}, Lcom/amap/api/services/a/ba;->x(Landroid/content/Context;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 74
    :goto_0
    return-object v0

    .line 70
    :catch_0
    move-exception v1

    .line 72
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method static synthetic b()Z
    .locals 1

    .prologue
    .line 43
    sget-boolean v0, Lcom/amap/api/services/a/ba;->b:Z

    return v0
.end method

.method public static c(Landroid/content/Context;)I
    .locals 1

    .prologue
    .line 80
    :try_start_0
    invoke-static {p0}, Lcom/amap/api/services/a/ba;->y(Landroid/content/Context;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 86
    :goto_0
    return v0

    .line 82
    :catch_0
    move-exception v0

    .line 84
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 86
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public static d(Landroid/content/Context;)I
    .locals 1

    .prologue
    .line 91
    :try_start_0
    invoke-static {p0}, Lcom/amap/api/services/a/ba;->v(Landroid/content/Context;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 96
    :goto_0
    return v0

    .line 92
    :catch_0
    move-exception v0

    .line 94
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 96
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public static e(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 111
    :try_start_0
    invoke-static {p0}, Lcom/amap/api/services/a/ba;->t(Landroid/content/Context;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 115
    :goto_0
    return-object v0

    .line 112
    :catch_0
    move-exception v0

    .line 113
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 115
    const-string/jumbo v0, ""

    goto :goto_0
.end method

.method public static f(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 164
    :try_start_0
    sget-object v0, Lcom/amap/api/services/a/ba;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    const-string/jumbo v0, ""

    sget-object v1, Lcom/amap/api/services/a/ba;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 165
    sget-object v0, Lcom/amap/api/services/a/ba;->a:Ljava/lang/String;

    .line 204
    :goto_0
    return-object v0

    .line 168
    :cond_0
    const-string/jumbo v0, "android.permission.WRITE_SETTINGS"

    invoke-static {p0, v0}, Lcom/amap/api/services/a/ba;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 171
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "mqBRboGZkQPcAkyk"

    .line 170
    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amap/api/services/a/ba;->a:Ljava/lang/String;

    .line 173
    :cond_1
    sget-object v0, Lcom/amap/api/services/a/ba;->a:Ljava/lang/String;

    if-eqz v0, :cond_2

    const-string/jumbo v0, ""

    sget-object v1, Lcom/amap/api/services/a/ba;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 174
    sget-object v0, Lcom/amap/api/services/a/ba;->a:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 176
    :catch_0
    move-exception v0

    .line 177
    const-string/jumbo v1, "DeviceInfo"

    const-string/jumbo v2, "getUTDID"

    invoke-static {v0, v1, v2}, Lcom/amap/api/services/a/bh;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    :cond_2
    :try_start_1
    const-string/jumbo v0, "mounted"

    .line 186
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v1

    .line 185
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 188
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    .line 189
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "/.UTSystemConfig/Global/Alvin2.xml"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 190
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 191
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 193
    invoke-static {}, Ljavax/xml/parsers/SAXParserFactory;->newInstance()Ljavax/xml/parsers/SAXParserFactory;

    move-result-object v0

    .line 194
    invoke-virtual {v0}, Ljavax/xml/parsers/SAXParserFactory;->newSAXParser()Ljavax/xml/parsers/SAXParser;

    move-result-object v0

    .line 195
    new-instance v2, Lcom/amap/api/services/a/ba$a;

    invoke-direct {v2}, Lcom/amap/api/services/a/ba$a;-><init>()V

    .line 196
    invoke-virtual {v0, v1, v2}, Ljavax/xml/parsers/SAXParser;->parse(Ljava/io/File;Lorg/xml/sax/helpers/DefaultHandler;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_2

    .line 204
    :cond_3
    :goto_1
    sget-object v0, Lcom/amap/api/services/a/ba;->a:Ljava/lang/String;

    if-nez v0, :cond_4

    const-string/jumbo v0, ""

    goto :goto_0

    .line 199
    :catch_1
    move-exception v0

    .line 200
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 201
    :catch_2
    move-exception v0

    .line 202
    const-string/jumbo v1, "DeviceInfo"

    const-string/jumbo v2, "getUTDID"

    invoke-static {v0, v1, v2}, Lcom/amap/api/services/a/bh;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 204
    :cond_4
    sget-object v0, Lcom/amap/api/services/a/ba;->a:Ljava/lang/String;

    goto/16 :goto_0
.end method

.method static g(Landroid/content/Context;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 218
    const-string/jumbo v1, ""

    .line 220
    if-eqz p0, :cond_0

    :try_start_0
    const-string/jumbo v0, "android.permission.ACCESS_WIFI_STATE"

    .line 221
    invoke-static {p0, v0}, Lcom/amap/api/services/a/ba;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 237
    :cond_0
    :goto_0
    return-object v1

    .line 226
    :cond_1
    const-string/jumbo v0, "wifi"

    .line 227
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 228
    if-eqz v0, :cond_0

    .line 229
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 230
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    .line 231
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_1
    move-object v1, v0

    .line 237
    goto :goto_0

    .line 234
    :catch_0
    move-exception v0

    .line 235
    const-string/jumbo v2, "DeviceInfo"

    const-string/jumbo v3, "getWifiMacs"

    invoke-static {v0, v2, v3}, Lcom/amap/api/services/a/bh;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    move-object v0, v1

    goto :goto_1
.end method

.method static h(Landroid/content/Context;)Ljava/lang/String;
    .locals 7

    .prologue
    const/4 v2, 0x0

    .line 241
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 243
    if-eqz p0, :cond_0

    :try_start_0
    const-string/jumbo v0, "android.permission.ACCESS_WIFI_STATE"

    .line 244
    invoke-static {p0, v0}, Lcom/amap/api/services/a/ba;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 246
    :cond_0
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 272
    :goto_0
    return-object v0

    .line 249
    :cond_1
    const-string/jumbo v0, "wifi"

    .line 250
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 251
    if-nez v0, :cond_2

    const-string/jumbo v0, ""

    goto :goto_0

    .line 252
    :cond_2
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 253
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getScanResults()Ljava/util/List;

    move-result-object v0

    .line 254
    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_4

    .line 255
    :cond_3
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 257
    :cond_4
    invoke-static {v0}, Lcom/amap/api/services/a/ba;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v5

    .line 258
    const/4 v1, 0x1

    move v3, v2

    .line 259
    :goto_1
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v0

    if-ge v3, v0, :cond_6

    const/4 v0, 0x7

    if-ge v3, v0, :cond_6

    .line 260
    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/ScanResult;

    .line 261
    if-eqz v1, :cond_5

    move v1, v2

    .line 266
    :goto_2
    iget-object v0, v0, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 259
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_1

    .line 264
    :cond_5
    const-string/jumbo v6, ";"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 269
    :catch_0
    move-exception v0

    .line 270
    const-string/jumbo v1, "DeviceInfo"

    const-string/jumbo v2, "getWifiMacs"

    invoke-static {v0, v1, v2}, Lcom/amap/api/services/a/bh;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 272
    :cond_6
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static i(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 280
    :try_start_0
    sget-object v0, Lcom/amap/api/services/a/ba;->c:Ljava/lang/String;

    if-eqz v0, :cond_0

    const-string/jumbo v0, ""

    sget-object v1, Lcom/amap/api/services/a/ba;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 281
    sget-object v0, Lcom/amap/api/services/a/ba;->c:Ljava/lang/String;

    .line 293
    :goto_0
    return-object v0

    .line 283
    :cond_0
    const-string/jumbo v0, "android.permission.ACCESS_WIFI_STATE"

    invoke-static {p0, v0}, Lcom/amap/api/services/a/ba;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 284
    sget-object v0, Lcom/amap/api/services/a/ba;->c:Ljava/lang/String;

    goto :goto_0

    .line 286
    :cond_1
    const-string/jumbo v0, "wifi"

    .line 287
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 288
    if-nez v0, :cond_2

    const-string/jumbo v0, ""

    goto :goto_0

    .line 289
    :cond_2
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amap/api/services/a/ba;->c:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 293
    :goto_1
    sget-object v0, Lcom/amap/api/services/a/ba;->c:Ljava/lang/String;

    goto :goto_0

    .line 290
    :catch_0
    move-exception v0

    .line 291
    const-string/jumbo v1, "DeviceInfo"

    const-string/jumbo v2, "getDeviceMac"

    invoke-static {v0, v1, v2}, Lcom/amap/api/services/a/bh;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method static j(Landroid/content/Context;)[Ljava/lang/String;
    .locals 9

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 299
    :try_start_0
    const-string/jumbo v0, "android.permission.READ_PHONE_STATE"

    invoke-static {p0, v0}, Lcom/amap/api/services/a/ba;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "android.permission.ACCESS_COARSE_LOCATION"

    .line 300
    invoke-static {p0, v0}, Lcom/amap/api/services/a/ba;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 302
    :cond_0
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, ""

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v2, ""

    aput-object v2, v0, v1

    .line 334
    :goto_0
    return-object v0

    .line 304
    :cond_1
    const-string/jumbo v0, "phone"

    .line 305
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 306
    if-nez v0, :cond_3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, ""

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v2, ""

    aput-object v2, v0, v1
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 331
    :catch_0
    move-exception v0

    .line 332
    const-string/jumbo v1, "DeviceInfo"

    const-string/jumbo v2, "cellInfo"

    invoke-static {v0, v1, v2}, Lcom/amap/api/services/a/bh;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 334
    :cond_2
    new-array v0, v8, [Ljava/lang/String;

    const-string/jumbo v1, ""

    aput-object v1, v0, v6

    const-string/jumbo v1, ""

    aput-object v1, v0, v7

    goto :goto_0

    .line 307
    :cond_3
    :try_start_1
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getCellLocation()Landroid/telephony/CellLocation;

    move-result-object v0

    .line 308
    instance-of v1, v0, Landroid/telephony/gsm/GsmCellLocation;

    if-eqz v1, :cond_4

    .line 309
    check-cast v0, Landroid/telephony/gsm/GsmCellLocation;

    .line 310
    invoke-virtual {v0}, Landroid/telephony/gsm/GsmCellLocation;->getCid()I

    move-result v1

    .line 311
    invoke-virtual {v0}, Landroid/telephony/gsm/GsmCellLocation;->getLac()I

    move-result v2

    .line 312
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v3, 0x0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, "||"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    const/4 v1, 0x1

    const-string/jumbo v2, "gsm"

    aput-object v2, v0, v1

    goto :goto_0

    .line 315
    :cond_4
    instance-of v1, v0, Landroid/telephony/cdma/CdmaCellLocation;

    if-eqz v1, :cond_2

    .line 316
    check-cast v0, Landroid/telephony/cdma/CdmaCellLocation;

    .line 317
    invoke-virtual {v0}, Landroid/telephony/cdma/CdmaCellLocation;->getSystemId()I

    move-result v1

    .line 318
    invoke-virtual {v0}, Landroid/telephony/cdma/CdmaCellLocation;->getNetworkId()I

    move-result v2

    .line 319
    invoke-virtual {v0}, Landroid/telephony/cdma/CdmaCellLocation;->getBaseStationId()I

    move-result v3

    .line 324
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v4, 0x0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v5, "||"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "||"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v4

    const/4 v1, 0x1

    const-string/jumbo v2, "cdma"

    aput-object v2, v0, v1
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method

.method static k(Landroid/content/Context;)Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v3, 0x3

    .line 340
    const-string/jumbo v0, ""

    .line 343
    :try_start_0
    const-string/jumbo v1, "android.permission.READ_PHONE_STATE"

    invoke-static {p0, v1}, Lcom/amap/api/services/a/ba;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 357
    :cond_0
    :goto_0
    return-object v0

    .line 346
    :cond_1
    invoke-static {p0}, Lcom/amap/api/services/a/ba;->z(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v1

    .line 347
    if-nez v1, :cond_2

    const-string/jumbo v0, ""

    goto :goto_0

    .line 348
    :cond_2
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v1

    .line 349
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 350
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lt v2, v3, :cond_0

    .line 353
    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 354
    :catch_0
    move-exception v1

    .line 355
    const-string/jumbo v2, "DeviceInfo"

    const-string/jumbo v3, "getMNC"

    invoke-static {v1, v2, v3}, Lcom/amap/api/services/a/bh;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static l(Landroid/content/Context;)I
    .locals 3

    .prologue
    .line 366
    :try_start_0
    invoke-static {p0}, Lcom/amap/api/services/a/ba;->y(Landroid/content/Context;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 372
    :goto_0
    return v0

    .line 368
    :catch_0
    move-exception v0

    .line 370
    const-string/jumbo v1, "DeviceInfo"

    const-string/jumbo v2, "getNetWorkType"

    invoke-static {v0, v1, v2}, Lcom/amap/api/services/a/bh;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 372
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public static m(Landroid/content/Context;)I
    .locals 3

    .prologue
    .line 379
    :try_start_0
    invoke-static {p0}, Lcom/amap/api/services/a/ba;->v(Landroid/content/Context;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 385
    :goto_0
    return v0

    .line 380
    :catch_0
    move-exception v0

    .line 382
    const-string/jumbo v1, "DeviceInfo"

    const-string/jumbo v2, "getActiveNetWorkType"

    invoke-static {v0, v1, v2}, Lcom/amap/api/services/a/bh;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 385
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public static n(Landroid/content/Context;)Landroid/net/NetworkInfo;
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 393
    const-string/jumbo v1, "android.permission.ACCESS_NETWORK_STATE"

    invoke-static {p0, v1}, Lcom/amap/api/services/a/ba;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 402
    :cond_0
    :goto_0
    return-object v0

    .line 397
    :cond_1
    invoke-static {p0}, Lcom/amap/api/services/a/ba;->w(Landroid/content/Context;)Landroid/net/ConnectivityManager;

    move-result-object v1

    .line 398
    if-eqz v1, :cond_0

    .line 401
    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    goto :goto_0
.end method

.method static o(Landroid/content/Context;)Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 405
    .line 407
    :try_start_0
    invoke-static {p0}, Lcom/amap/api/services/a/ba;->n(Landroid/content/Context;)Landroid/net/NetworkInfo;

    move-result-object v1

    .line 408
    if-nez v1, :cond_0

    .line 418
    :goto_0
    return-object v0

    .line 412
    :cond_0
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 413
    :catch_0
    move-exception v1

    .line 415
    const-string/jumbo v2, "DeviceInfo"

    const-string/jumbo v3, "getNetworkExtraInfo"

    invoke-static {v1, v2, v3}, Lcom/amap/api/services/a/bh;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method static p(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 425
    :try_start_0
    sget-object v0, Lcom/amap/api/services/a/ba;->d:Ljava/lang/String;

    if-eqz v0, :cond_0

    const-string/jumbo v0, ""

    sget-object v1, Lcom/amap/api/services/a/ba;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 426
    sget-object v0, Lcom/amap/api/services/a/ba;->d:Ljava/lang/String;

    .line 441
    :goto_0
    return-object v0

    .line 428
    :cond_0
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 429
    const-string/jumbo v0, "window"

    .line 430
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 431
    if-nez v0, :cond_1

    const-string/jumbo v0, ""

    goto :goto_0

    .line 432
    :cond_1
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 433
    iget v0, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 434
    iget v1, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 435
    if-le v1, v0, :cond_2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "*"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_1
    sput-object v0, Lcom/amap/api/services/a/ba;->d:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 441
    :goto_2
    sget-object v0, Lcom/amap/api/services/a/ba;->d:Ljava/lang/String;

    goto :goto_0

    .line 435
    :cond_2
    :try_start_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "*"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    goto :goto_1

    .line 437
    :catch_0
    move-exception v0

    .line 439
    const-string/jumbo v1, "DeviceInfo"

    const-string/jumbo v2, "getReslution"

    invoke-static {v0, v1, v2}, Lcom/amap/api/services/a/bh;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2
.end method

.method public static q(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 486
    :try_start_0
    sget-object v0, Lcom/amap/api/services/a/ba;->e:Ljava/lang/String;

    if-eqz v0, :cond_0

    const-string/jumbo v0, ""

    sget-object v1, Lcom/amap/api/services/a/ba;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 487
    sget-object v0, Lcom/amap/api/services/a/ba;->e:Ljava/lang/String;

    .line 501
    :goto_0
    return-object v0

    .line 489
    :cond_0
    const-string/jumbo v0, "android.permission.READ_PHONE_STATE"

    invoke-static {p0, v0}, Lcom/amap/api/services/a/ba;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 490
    sget-object v0, Lcom/amap/api/services/a/ba;->e:Ljava/lang/String;

    goto :goto_0

    .line 492
    :cond_1
    invoke-static {p0}, Lcom/amap/api/services/a/ba;->z(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v0

    .line 493
    if-nez v0, :cond_2

    const-string/jumbo v0, ""

    goto :goto_0

    .line 494
    :cond_2
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    .line 495
    sput-object v0, Lcom/amap/api/services/a/ba;->e:Ljava/lang/String;

    if-nez v0, :cond_3

    .line 496
    const-string/jumbo v0, ""

    sput-object v0, Lcom/amap/api/services/a/ba;->e:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 501
    :cond_3
    :goto_1
    sget-object v0, Lcom/amap/api/services/a/ba;->e:Ljava/lang/String;

    goto :goto_0

    .line 498
    :catch_0
    move-exception v0

    .line 499
    const-string/jumbo v1, "DeviceInfo"

    const-string/jumbo v2, "getDeviceID"

    invoke-static {v0, v1, v2}, Lcom/amap/api/services/a/bh;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public static r(Landroid/content/Context;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 505
    const-string/jumbo v0, ""

    .line 507
    :try_start_0
    invoke-static {p0}, Lcom/amap/api/services/a/ba;->t(Landroid/content/Context;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 512
    :goto_0
    return-object v0

    .line 508
    :catch_0
    move-exception v1

    .line 510
    const-string/jumbo v2, "DeviceInfo"

    const-string/jumbo v3, "getSubscriberId"

    invoke-static {v1, v2, v3}, Lcom/amap/api/services/a/bh;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method static s(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 517
    :try_start_0
    invoke-static {p0}, Lcom/amap/api/services/a/ba;->u(Landroid/content/Context;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 522
    :goto_0
    return-object v0

    .line 518
    :catch_0
    move-exception v0

    .line 519
    const-string/jumbo v1, "DeviceInfo"

    const-string/jumbo v2, "getNetworkOperatorName"

    invoke-static {v0, v1, v2}, Lcom/amap/api/services/a/bh;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 522
    const-string/jumbo v0, ""

    goto :goto_0
.end method

.method private static t(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 532
    sget-object v0, Lcom/amap/api/services/a/ba;->f:Ljava/lang/String;

    if-eqz v0, :cond_0

    const-string/jumbo v0, ""

    sget-object v1, Lcom/amap/api/services/a/ba;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 533
    sget-object v0, Lcom/amap/api/services/a/ba;->f:Ljava/lang/String;

    .line 546
    :goto_0
    return-object v0

    .line 536
    :cond_0
    const-string/jumbo v0, "android.permission.READ_PHONE_STATE"

    invoke-static {p0, v0}, Lcom/amap/api/services/a/ba;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 538
    sget-object v0, Lcom/amap/api/services/a/ba;->f:Ljava/lang/String;

    goto :goto_0

    .line 540
    :cond_1
    invoke-static {p0}, Lcom/amap/api/services/a/ba;->z(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v0

    .line 541
    if-nez v0, :cond_2

    const-string/jumbo v0, ""

    goto :goto_0

    .line 542
    :cond_2
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v0

    .line 543
    sput-object v0, Lcom/amap/api/services/a/ba;->f:Ljava/lang/String;

    if-nez v0, :cond_3

    .line 544
    const-string/jumbo v0, ""

    sput-object v0, Lcom/amap/api/services/a/ba;->f:Ljava/lang/String;

    .line 546
    :cond_3
    sget-object v0, Lcom/amap/api/services/a/ba;->f:Ljava/lang/String;

    goto :goto_0
.end method

.method private static u(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 552
    const-string/jumbo v0, "android.permission.READ_PHONE_STATE"

    invoke-static {p0, v0}, Lcom/amap/api/services/a/ba;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 554
    const/4 v0, 0x0

    .line 563
    :cond_0
    :goto_0
    return-object v0

    .line 556
    :cond_1
    invoke-static {p0}, Lcom/amap/api/services/a/ba;->z(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v1

    .line 557
    if-nez v1, :cond_2

    const-string/jumbo v0, ""

    goto :goto_0

    .line 558
    :cond_2
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getSimOperatorName()Ljava/lang/String;

    move-result-object v0

    .line 559
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 560
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getNetworkOperatorName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private static v(Landroid/content/Context;)I
    .locals 2

    .prologue
    const/4 v0, -0x1

    .line 588
    if-eqz p0, :cond_0

    const-string/jumbo v1, "android.permission.ACCESS_NETWORK_STATE"

    .line 589
    invoke-static {p0, v1}, Lcom/amap/api/services/a/ba;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 605
    :cond_0
    :goto_0
    return v0

    .line 593
    :cond_1
    invoke-static {p0}, Lcom/amap/api/services/a/ba;->w(Landroid/content/Context;)Landroid/net/ConnectivityManager;

    move-result-object v1

    .line 594
    if-eqz v1, :cond_0

    .line 598
    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    .line 599
    if-eqz v1, :cond_0

    .line 603
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getType()I

    move-result v0

    goto :goto_0
.end method

.method private static w(Landroid/content/Context;)Landroid/net/ConnectivityManager;
    .locals 1

    .prologue
    .line 609
    const-string/jumbo v0, "connectivity"

    .line 610
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 611
    return-object v0
.end method

.method private static x(Landroid/content/Context;)Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v3, 0x5

    .line 616
    const-string/jumbo v0, ""

    .line 617
    invoke-static {p0}, Lcom/amap/api/services/a/ba;->r(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 618
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v2, v3, :cond_1

    .line 623
    :cond_0
    :goto_0
    return-object v0

    .line 621
    :cond_1
    const/4 v0, 0x3

    invoke-virtual {v1, v0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private static y(Landroid/content/Context;)I
    .locals 2

    .prologue
    const/4 v0, -0x1

    .line 628
    const-string/jumbo v1, "android.permission.READ_PHONE_STATE"

    invoke-static {p0, v1}, Lcom/amap/api/services/a/ba;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 637
    :cond_0
    :goto_0
    return v0

    .line 633
    :cond_1
    invoke-static {p0}, Lcom/amap/api/services/a/ba;->z(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v1

    .line 634
    if-eqz v1, :cond_0

    .line 635
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v0

    goto :goto_0
.end method

.method private static z(Landroid/content/Context;)Landroid/telephony/TelephonyManager;
    .locals 1

    .prologue
    .line 642
    const-string/jumbo v0, "phone"

    .line 643
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 644
    return-object v0
.end method
