.class public Lcom/amap/location/collection/CellCollector;
.super Ljava/lang/Object;


# instance fields
.field public a:Landroid/telephony/TelephonyManager;

.field private b:Landroid/telephony/PhoneStateListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string/jumbo v0, "phone"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/amap/location/collection/CellCollector;->a:Landroid/telephony/TelephonyManager;

    :try_start_0
    new-instance v0, Liuy;

    invoke-direct {v0}, Liuy;-><init>()V

    iput-object v0, p0, Lcom/amap/location/collection/CellCollector;->b:Landroid/telephony/PhoneStateListener;

    iget-object v0, p0, Lcom/amap/location/collection/CellCollector;->a:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/amap/location/collection/CellCollector;->b:Landroid/telephony/PhoneStateListener;

    const/16 v2, 0x100

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "CellCollector"

    const-string/jumbo v2, ""

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static a(Landroid/telephony/TelephonyManager;)Landroid/telephony/CellLocation;
    .locals 4

    :try_start_0
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getCellLocation()Landroid/telephony/CellLocation;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    const/4 v0, 0x0

    const-string/jumbo v2, "CellCollector"

    const-string/jumbo v3, ""

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static b(Landroid/telephony/TelephonyManager;)Ljava/util/List;
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x11

    if-lt v1, v2, :cond_0

    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getAllCellInfo()Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :cond_0
    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    const-string/jumbo v2, "CellCollector"

    const-string/jumbo v3, ""

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private static c(Landroid/telephony/TelephonyManager;)B
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getNetworkType()I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    int-to-byte v0, v0

    :goto_0
    return v0

    :catch_0
    move-exception v1

    const-string/jumbo v2, "CellCollector"

    const-string/jumbo v3, ""

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private static d(Landroid/telephony/TelephonyManager;)Ljava/lang/String;
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    if-nez v0, :cond_0

    const-string/jumbo v0, ""

    :cond_0
    return-object v0

    :catch_0
    move-exception v1

    const-string/jumbo v2, "CellCollector"

    const-string/jumbo v3, ""

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method


# virtual methods
.method public a(Landroid/telephony/TelephonyManager;Landroid/telephony/CellLocation;Ljava/util/List;)Liuw;
    .locals 12

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v11

    invoke-static {v11}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v4, 0x0

    const/16 v11, 0x18

    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 0
    if-nez p2, :cond_0

    if-nez p3, :cond_0

    :goto_0
    return-object v4

    :cond_0
    new-instance v3, Liuw;

    invoke-direct {v3}, Liuw;-><init>()V

    :try_start_0
    invoke-static {p1}, Lcom/amap/location/collection/CellCollector;->c(Landroid/telephony/TelephonyManager;)B

    move-result v1

    invoke-static {p1}, Lcom/amap/location/collection/CellCollector;->d(Landroid/telephony/TelephonyManager;)Ljava/lang/String;

    move-result-object v2

    .line 1000
    iput v1, v3, Liuw;->a:I

    iput-object v2, v3, Liuw;->b:Ljava/lang/String;

    iget-object v1, v3, Liuw;->c:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 0
    if-eqz p2, :cond_3

    instance-of v1, p2, Landroid/telephony/gsm/GsmCellLocation;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v1, :cond_1

    :try_start_1
    invoke-virtual {p1}, Landroid/telephony/TelephonyManager;->getNeighboringCellInfo()Ljava/util/List;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v1

    :goto_1
    :try_start_2
    instance-of v2, p2, Landroid/telephony/gsm/GsmCellLocation;

    if-eqz v2, :cond_2

    check-cast p2, Landroid/telephony/gsm/GsmCellLocation;

    new-instance v2, Liux;

    invoke-direct {v2}, Liux;-><init>()V

    invoke-virtual {p2}, Landroid/telephony/gsm/GsmCellLocation;->getLac()I

    move-result v7

    iput v7, v2, Liux;->h:I

    invoke-virtual {p2}, Landroid/telephony/gsm/GsmCellLocation;->getCid()I

    move-result v7

    iput v7, v2, Liux;->i:I

    const/4 v7, 0x0

    iput v7, v2, Liux;->a:I

    const/4 v7, 0x1

    iput v7, v2, Liux;->b:I

    const/4 v7, 0x0

    iput v7, v2, Liux;->c:I

    iget-object v7, v3, Liuw;->c:Ljava/util/ArrayList;

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-eqz v1, :cond_3

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/NeighboringCellInfo;

    new-instance v7, Liux;

    invoke-direct {v7}, Liux;-><init>()V

    invoke-virtual {v1}, Landroid/telephony/NeighboringCellInfo;->getLac()I

    move-result v8

    iput v8, v7, Liux;->h:I

    invoke-virtual {v1}, Landroid/telephony/NeighboringCellInfo;->getCid()I

    move-result v8

    iput v8, v7, Liux;->i:I

    invoke-virtual {v1}, Landroid/telephony/NeighboringCellInfo;->getRssi()I

    move-result v1

    iput v1, v7, Liux;->d:I

    const/4 v1, 0x0

    iput v1, v7, Liux;->a:I

    const/4 v1, 0x0

    iput v1, v7, Liux;->b:I

    const/4 v1, 0x0

    iput v1, v7, Liux;->c:I

    iget-object v1, v3, Liuw;->c:Ljava/util/ArrayList;

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    :catch_0
    move-exception v1

    const-string/jumbo v2, "CellCollector"

    const-string/jumbo v3, ""

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v1, v4

    :goto_3
    move-object v4, v1

    goto/16 :goto_0

    :catch_1
    move-exception v1

    :try_start_3
    const-string/jumbo v2, "CellCollector"

    const-string/jumbo v7, ""

    invoke-static {v2, v7, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    move-object v1, v4

    goto :goto_1

    :cond_2
    instance-of v1, p2, Landroid/telephony/cdma/CdmaCellLocation;

    if-eqz v1, :cond_3

    check-cast p2, Landroid/telephony/cdma/CdmaCellLocation;

    new-instance v1, Liux;

    invoke-direct {v1}, Liux;-><init>()V

    invoke-virtual {p2}, Landroid/telephony/cdma/CdmaCellLocation;->getBaseStationLatitude()I

    move-result v2

    iput v2, v1, Liux;->q:I

    invoke-virtual {p2}, Landroid/telephony/cdma/CdmaCellLocation;->getBaseStationLongitude()I

    move-result v2

    iput v2, v1, Liux;->r:I

    invoke-virtual {p2}, Landroid/telephony/cdma/CdmaCellLocation;->getSystemId()I

    move-result v2

    iput v2, v1, Liux;->n:I

    invoke-virtual {p2}, Landroid/telephony/cdma/CdmaCellLocation;->getNetworkId()I

    move-result v2

    iput v2, v1, Liux;->o:I

    invoke-virtual {p2}, Landroid/telephony/cdma/CdmaCellLocation;->getBaseStationId()I

    move-result v2

    iput v2, v1, Liux;->p:I

    const/4 v2, 0x2

    iput v2, v1, Liux;->a:I

    const/4 v2, 0x1

    iput v2, v1, Liux;->b:I

    const/4 v2, 0x0

    iput v2, v1, Liux;->c:I

    iget-object v2, v3, Liuw;->c:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    if-eqz p3, :cond_f

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x11

    if-lt v1, v2, :cond_f

    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_4
    :goto_4
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_f

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/CellInfo;

    instance-of v2, v1, Landroid/telephony/CellInfoCdma;

    if-eqz v2, :cond_6

    move-object v0, v1

    check-cast v0, Landroid/telephony/CellInfoCdma;

    move-object v2, v0

    invoke-virtual {v2}, Landroid/telephony/CellInfoCdma;->getCellIdentity()Landroid/telephony/CellIdentityCdma;

    move-result-object v8

    new-instance v9, Liux;

    invoke-direct {v9}, Liux;-><init>()V

    invoke-virtual {v8}, Landroid/telephony/CellIdentityCdma;->getLatitude()I

    move-result v10

    iput v10, v9, Liux;->q:I

    invoke-virtual {v8}, Landroid/telephony/CellIdentityCdma;->getLongitude()I

    move-result v10

    iput v10, v9, Liux;->r:I

    invoke-virtual {v8}, Landroid/telephony/CellIdentityCdma;->getSystemId()I

    move-result v10

    iput v10, v9, Liux;->n:I

    invoke-virtual {v8}, Landroid/telephony/CellIdentityCdma;->getNetworkId()I

    move-result v10

    iput v10, v9, Liux;->o:I

    invoke-virtual {v8}, Landroid/telephony/CellIdentityCdma;->getBasestationId()I

    move-result v8

    iput v8, v9, Liux;->p:I

    invoke-virtual {v2}, Landroid/telephony/CellInfoCdma;->getCellSignalStrength()Landroid/telephony/CellSignalStrengthCdma;

    move-result-object v8

    invoke-virtual {v8}, Landroid/telephony/CellSignalStrengthCdma;->getCdmaDbm()I

    move-result v8

    iput v8, v9, Liux;->d:I

    invoke-virtual {v2}, Landroid/telephony/CellInfoCdma;->getCellSignalStrength()Landroid/telephony/CellSignalStrengthCdma;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/CellSignalStrengthCdma;->getAsuLevel()I

    move-result v2

    iput v2, v9, Liux;->e:I

    const/4 v2, 0x2

    iput v2, v9, Liux;->a:I

    invoke-virtual {v1}, Landroid/telephony/CellInfo;->isRegistered()Z

    move-result v1

    if-eqz v1, :cond_5

    move v1, v5

    :goto_5
    iput v1, v9, Liux;->b:I

    const/4 v1, 0x1

    iput v1, v9, Liux;->c:I

    iget-object v1, v3, Liuw;->c:Ljava/util/ArrayList;

    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_5
    move v1, v6

    goto :goto_5

    :cond_6
    instance-of v2, v1, Landroid/telephony/CellInfoGsm;

    if-eqz v2, :cond_9

    move-object v0, v1

    check-cast v0, Landroid/telephony/CellInfoGsm;

    move-object v2, v0

    invoke-virtual {v2}, Landroid/telephony/CellInfoGsm;->getCellIdentity()Landroid/telephony/CellIdentityGsm;

    move-result-object v8

    new-instance v9, Liux;

    invoke-direct {v9}, Liux;-><init>()V

    invoke-virtual {v8}, Landroid/telephony/CellIdentityGsm;->getMcc()I

    move-result v10

    iput v10, v9, Liux;->f:I

    invoke-virtual {v8}, Landroid/telephony/CellIdentityGsm;->getMnc()I

    move-result v10

    iput v10, v9, Liux;->g:I

    invoke-virtual {v8}, Landroid/telephony/CellIdentityGsm;->getLac()I

    move-result v10

    iput v10, v9, Liux;->h:I

    invoke-virtual {v8}, Landroid/telephony/CellIdentityGsm;->getCid()I

    move-result v10

    iput v10, v9, Liux;->i:I

    invoke-virtual {v2}, Landroid/telephony/CellInfoGsm;->getCellSignalStrength()Landroid/telephony/CellSignalStrengthGsm;

    move-result-object v10

    invoke-virtual {v10}, Landroid/telephony/CellSignalStrengthGsm;->getDbm()I

    move-result v10

    iput v10, v9, Liux;->d:I

    invoke-virtual {v2}, Landroid/telephony/CellInfoGsm;->getCellSignalStrength()Landroid/telephony/CellSignalStrengthGsm;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/CellSignalStrengthGsm;->getAsuLevel()I

    move-result v2

    iput v2, v9, Liux;->e:I

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v2, v11, :cond_7

    invoke-virtual {v8}, Landroid/telephony/CellIdentityGsm;->getArfcn()I

    move-result v2

    iput v2, v9, Liux;->j:I

    invoke-virtual {v8}, Landroid/telephony/CellIdentityGsm;->getBsic()I

    move-result v2

    iput v2, v9, Liux;->k:I

    :cond_7
    const/4 v2, 0x0

    iput v2, v9, Liux;->a:I

    invoke-virtual {v1}, Landroid/telephony/CellInfo;->isRegistered()Z

    move-result v1

    if-eqz v1, :cond_8

    move v1, v5

    :goto_6
    iput v1, v9, Liux;->b:I

    const/4 v1, 0x1

    iput v1, v9, Liux;->c:I

    iget-object v1, v3, Liuw;->c:Ljava/util/ArrayList;

    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_4

    :cond_8
    move v1, v6

    goto :goto_6

    :cond_9
    instance-of v2, v1, Landroid/telephony/CellInfoLte;

    if-eqz v2, :cond_c

    move-object v0, v1

    check-cast v0, Landroid/telephony/CellInfoLte;

    move-object v2, v0

    invoke-virtual {v2}, Landroid/telephony/CellInfoLte;->getCellIdentity()Landroid/telephony/CellIdentityLte;

    move-result-object v8

    new-instance v9, Liux;

    invoke-direct {v9}, Liux;-><init>()V

    invoke-virtual {v8}, Landroid/telephony/CellIdentityLte;->getMcc()I

    move-result v10

    iput v10, v9, Liux;->f:I

    invoke-virtual {v8}, Landroid/telephony/CellIdentityLte;->getMnc()I

    move-result v10

    iput v10, v9, Liux;->g:I

    invoke-virtual {v8}, Landroid/telephony/CellIdentityLte;->getTac()I

    move-result v10

    iput v10, v9, Liux;->h:I

    invoke-virtual {v8}, Landroid/telephony/CellIdentityLte;->getCi()I

    move-result v10

    iput v10, v9, Liux;->i:I

    invoke-virtual {v8}, Landroid/telephony/CellIdentityLte;->getPci()I

    move-result v10

    iput v10, v9, Liux;->m:I

    invoke-virtual {v2}, Landroid/telephony/CellInfoLte;->getCellSignalStrength()Landroid/telephony/CellSignalStrengthLte;

    move-result-object v10

    invoke-virtual {v10}, Landroid/telephony/CellSignalStrengthLte;->getDbm()I

    move-result v10

    iput v10, v9, Liux;->d:I

    invoke-virtual {v2}, Landroid/telephony/CellInfoLte;->getCellSignalStrength()Landroid/telephony/CellSignalStrengthLte;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/CellSignalStrengthLte;->getAsuLevel()I

    move-result v2

    iput v2, v9, Liux;->e:I

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v2, v11, :cond_a

    invoke-virtual {v8}, Landroid/telephony/CellIdentityLte;->getEarfcn()I

    move-result v2

    iput v2, v9, Liux;->l:I

    :cond_a
    const/4 v2, 0x1

    iput v2, v9, Liux;->a:I

    invoke-virtual {v1}, Landroid/telephony/CellInfo;->isRegistered()Z

    move-result v1

    if-eqz v1, :cond_b

    move v1, v5

    :goto_7
    iput v1, v9, Liux;->b:I

    const/4 v1, 0x1

    iput v1, v9, Liux;->c:I

    iget-object v1, v3, Liuw;->c:Ljava/util/ArrayList;

    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_4

    :cond_b
    move v1, v6

    goto :goto_7

    :cond_c
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v8, 0x12

    if-lt v2, v8, :cond_4

    instance-of v2, v1, Landroid/telephony/CellInfoWcdma;

    if-eqz v2, :cond_4

    move-object v0, v1

    check-cast v0, Landroid/telephony/CellInfoWcdma;

    move-object v2, v0

    invoke-virtual {v2}, Landroid/telephony/CellInfoWcdma;->getCellIdentity()Landroid/telephony/CellIdentityWcdma;

    move-result-object v8

    new-instance v9, Liux;

    invoke-direct {v9}, Liux;-><init>()V

    invoke-virtual {v8}, Landroid/telephony/CellIdentityWcdma;->getMcc()I

    move-result v10

    iput v10, v9, Liux;->f:I

    invoke-virtual {v8}, Landroid/telephony/CellIdentityWcdma;->getMnc()I

    move-result v10

    iput v10, v9, Liux;->g:I

    invoke-virtual {v8}, Landroid/telephony/CellIdentityWcdma;->getLac()I

    move-result v10

    iput v10, v9, Liux;->h:I

    invoke-virtual {v8}, Landroid/telephony/CellIdentityWcdma;->getCid()I

    move-result v10

    iput v10, v9, Liux;->i:I

    invoke-virtual {v8}, Landroid/telephony/CellIdentityWcdma;->getPsc()I

    move-result v10

    iput v10, v9, Liux;->s:I

    invoke-virtual {v2}, Landroid/telephony/CellInfoWcdma;->getCellSignalStrength()Landroid/telephony/CellSignalStrengthWcdma;

    move-result-object v10

    invoke-virtual {v10}, Landroid/telephony/CellSignalStrengthWcdma;->getDbm()I

    move-result v10

    iput v10, v9, Liux;->d:I

    invoke-virtual {v2}, Landroid/telephony/CellInfoWcdma;->getCellSignalStrength()Landroid/telephony/CellSignalStrengthWcdma;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/CellSignalStrengthWcdma;->getAsuLevel()I

    move-result v2

    iput v2, v9, Liux;->e:I

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v2, v11, :cond_d

    invoke-virtual {v8}, Landroid/telephony/CellIdentityWcdma;->getUarfcn()I

    move-result v2

    iput v2, v9, Liux;->t:I

    :cond_d
    const/4 v2, 0x3

    iput v2, v9, Liux;->a:I

    invoke-virtual {v1}, Landroid/telephony/CellInfo;->isRegistered()Z

    move-result v1

    if-eqz v1, :cond_e

    move v1, v5

    :goto_8
    iput v1, v9, Liux;->b:I

    const/4 v1, 0x1

    iput v1, v9, Liux;->c:I

    iget-object v1, v3, Liuw;->c:Ljava/util/ArrayList;

    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_4

    :cond_e
    move v1, v6

    goto :goto_8

    :cond_f
    move-object v1, v3

    goto/16 :goto_3
.end method
