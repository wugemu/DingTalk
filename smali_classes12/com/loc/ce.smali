.class public final Lcom/loc/ce;
.super Ljava/lang/Object;
.source "CgiManager.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "NewApi"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/loc/ce$a;
    }
.end annotation


# instance fields
.field public a:I

.field public b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljcz;",
            ">;"
        }
    .end annotation
.end field

.field public c:Ljava/lang/String;

.field public d:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljcz;",
            ">;"
        }
    .end annotation
.end field

.field public e:I

.field public f:Landroid/telephony/TelephonyManager;

.field public g:Ljcy;

.field public h:Ljava/lang/Object;

.field i:J

.field j:Landroid/telephony/CellLocation;

.field public k:J

.field l:Z

.field public m:Landroid/telephony/PhoneStateListener;

.field public n:Ljava/lang/String;

.field o:Z

.field p:Ljava/lang/StringBuilder;

.field public q:Landroid/os/HandlerThread;

.field public r:Z

.field public s:Ljava/lang/Object;

.field private t:Landroid/content/Context;

.field private u:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 6

    const-wide/16 v4, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v3, p0, Lcom/loc/ce;->a:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/loc/ce;->b:Ljava/util/ArrayList;

    iput-object v2, p0, Lcom/loc/ce;->c:Ljava/lang/String;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/loc/ce;->d:Ljava/util/ArrayList;

    const/16 v0, -0x71

    iput v0, p0, Lcom/loc/ce;->e:I

    iput-object v2, p0, Lcom/loc/ce;->f:Landroid/telephony/TelephonyManager;

    iput-object v2, p0, Lcom/loc/ce;->g:Ljcy;

    iput-wide v4, p0, Lcom/loc/ce;->i:J

    iput v3, p0, Lcom/loc/ce;->u:I

    iput-wide v4, p0, Lcom/loc/ce;->k:J

    iput-boolean v3, p0, Lcom/loc/ce;->l:Z

    iput-object v2, p0, Lcom/loc/ce;->m:Landroid/telephony/PhoneStateListener;

    iput-object v2, p0, Lcom/loc/ce;->n:Ljava/lang/String;

    iput-boolean v3, p0, Lcom/loc/ce;->o:Z

    iput-object v2, p0, Lcom/loc/ce;->p:Ljava/lang/StringBuilder;

    iput-object v2, p0, Lcom/loc/ce;->q:Landroid/os/HandlerThread;

    iput-boolean v3, p0, Lcom/loc/ce;->r:Z

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/loc/ce;->s:Ljava/lang/Object;

    iput-object p1, p0, Lcom/loc/ce;->t:Landroid/content/Context;

    iget-object v0, p0, Lcom/loc/ce;->f:Landroid/telephony/TelephonyManager;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/loc/ce;->t:Landroid/content/Context;

    const-string/jumbo v1, "phone"

    invoke-static {v0, v1}, Ljdx;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/loc/ce;->f:Landroid/telephony/TelephonyManager;

    :cond_0
    iget-object v0, p0, Lcom/loc/ce;->f:Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_1

    :try_start_0
    iget-object v0, p0, Lcom/loc/ce;->f:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getCellLocation()Landroid/telephony/CellLocation;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/loc/ce;->c(Landroid/telephony/CellLocation;)I

    move-result v0

    iput v0, p0, Lcom/loc/ce;->a:I
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    :try_start_1
    invoke-direct {p0}, Lcom/loc/ce;->i()I

    move-result v0

    iput v0, p0, Lcom/loc/ce;->u:I

    iget v0, p0, Lcom/loc/ce;->u:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/loc/ce;->t:Landroid/content/Context;

    const-string/jumbo v1, "phone2"

    invoke-static {v0, v1}, Ljdx;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/loc/ce;->h:Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_2

    :goto_1
    iget-object v0, p0, Lcom/loc/ce;->q:Landroid/os/HandlerThread;

    if-nez v0, :cond_1

    new-instance v0, Lcom/loc/ce$a;

    const-string/jumbo v1, "listenerPhoneStateThread"

    invoke-direct {v0, p0, v1}, Lcom/loc/ce$a;-><init>(Lcom/loc/ce;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/loc/ce;->q:Landroid/os/HandlerThread;

    iget-object v0, p0, Lcom/loc/ce;->q:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    :cond_1
    new-instance v0, Ljcy;

    invoke-direct {v0}, Ljcy;-><init>()V

    iput-object v0, p0, Lcom/loc/ce;->g:Ljcy;

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/SecurityException;->getMessage()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/loc/ce;->n:Ljava/lang/String;

    goto :goto_0

    :catch_1
    move-exception v0

    iput-object v2, p0, Lcom/loc/ce;->n:Ljava/lang/String;

    const-string/jumbo v1, "CgiManager"

    const-string/jumbo v2, "CgiManager"

    invoke-static {v0, v1, v2}, Ljdo;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    iput v3, p0, Lcom/loc/ce;->a:I

    goto :goto_0

    :pswitch_0
    :try_start_2
    iget-object v0, p0, Lcom/loc/ce;->t:Landroid/content/Context;

    const-string/jumbo v1, "phone_msim"

    invoke-static {v0, v1}, Ljdx;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/loc/ce;->h:Ljava/lang/Object;

    goto :goto_1

    :catch_2
    move-exception v0

    goto :goto_1

    :pswitch_1
    iget-object v0, p0, Lcom/loc/ce;->t:Landroid/content/Context;

    const-string/jumbo v1, "phone2"

    invoke-static {v0, v1}, Ljdx;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/loc/ce;->h:Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method static synthetic a(Lcom/loc/ce;J)J
    .locals 1

    iput-wide p1, p0, Lcom/loc/ce;->k:J

    return-wide p1
.end method

.method private varargs a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Landroid/telephony/CellLocation;
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    const/4 v1, 0x0

    if-nez p1, :cond_1

    move-object v0, v1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    :try_start_0
    invoke-static {p1, p2, p3}, Ljdr;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    check-cast v0, Landroid/telephony/CellLocation;

    :goto_1
    invoke-direct {p0, v0}, Lcom/loc/ce;->b(Landroid/telephony/CellLocation;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-nez v2, :cond_0

    :goto_2
    move-object v0, v1

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_2

    :cond_2
    move-object v0, v1

    goto :goto_1
.end method

.method private a(Ljava/util/List;)Landroid/telephony/CellLocation;
    .locals 8
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/telephony/CellInfo;",
            ">;)",
            "Landroid/telephony/CellLocation;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar1;->b(I)V

    const/4 v6, 0x0

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-object v6

    :cond_1
    const/4 v0, 0x0

    move v1, v0

    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_a

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/CellInfo;

    if-eqz v0, :cond_2

    :try_start_0
    invoke-virtual {v0}, Landroid/telephony/CellInfo;->isRegistered()Z

    move-result v2

    instance-of v3, v0, Landroid/telephony/CellInfoCdma;

    if-eqz v3, :cond_4

    check-cast v0, Landroid/telephony/CellInfoCdma;

    invoke-virtual {v0}, Landroid/telephony/CellInfoCdma;->getCellIdentity()Landroid/telephony/CellIdentityCdma;

    move-result-object v3

    invoke-static {v3}, Lcom/loc/ce;->a(Landroid/telephony/CellIdentityCdma;)Z

    move-result v3

    if-nez v3, :cond_3

    :cond_2
    :goto_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_3
    invoke-direct {p0, v0, v2}, Lcom/loc/ce;->a(Landroid/telephony/CellInfoCdma;Z)Ljcz;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_3

    move-result-object v0

    move-object v5, v0

    :goto_3
    if-eqz v5, :cond_8

    :try_start_1
    iget v0, v5, Ljcz;->k:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_7

    new-instance v0, Landroid/telephony/cdma/CdmaCellLocation;

    invoke-direct {v0}, Landroid/telephony/cdma/CdmaCellLocation;-><init>()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    :try_start_2
    iget v1, v5, Ljcz;->i:I

    iget v2, v5, Ljcz;->e:I

    iget v3, v5, Ljcz;->f:I

    iget v4, v5, Ljcz;->g:I

    iget v5, v5, Ljcz;->h:I

    invoke-virtual/range {v0 .. v5}, Landroid/telephony/cdma/CdmaCellLocation;->setCellLocationData(IIIII)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    :goto_4
    if-eqz v0, :cond_0

    move-object v6, v0

    goto :goto_0

    :cond_4
    :try_start_3
    instance-of v3, v0, Landroid/telephony/CellInfoGsm;

    if-eqz v3, :cond_5

    check-cast v0, Landroid/telephony/CellInfoGsm;

    invoke-virtual {v0}, Landroid/telephony/CellInfoGsm;->getCellIdentity()Landroid/telephony/CellIdentityGsm;

    move-result-object v3

    invoke-static {v3}, Lcom/loc/ce;->a(Landroid/telephony/CellIdentityGsm;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-static {v0, v2}, Lcom/loc/ce;->a(Landroid/telephony/CellInfoGsm;Z)Ljcz;

    move-result-object v0

    move-object v5, v0

    goto :goto_3

    :cond_5
    instance-of v3, v0, Landroid/telephony/CellInfoWcdma;

    if-eqz v3, :cond_6

    check-cast v0, Landroid/telephony/CellInfoWcdma;

    invoke-virtual {v0}, Landroid/telephony/CellInfoWcdma;->getCellIdentity()Landroid/telephony/CellIdentityWcdma;

    move-result-object v3

    invoke-static {v3}, Lcom/loc/ce;->a(Landroid/telephony/CellIdentityWcdma;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-static {v0, v2}, Lcom/loc/ce;->a(Landroid/telephony/CellInfoWcdma;Z)Ljcz;

    move-result-object v0

    move-object v5, v0

    goto :goto_3

    :cond_6
    instance-of v3, v0, Landroid/telephony/CellInfoLte;

    if-eqz v3, :cond_9

    check-cast v0, Landroid/telephony/CellInfoLte;

    invoke-virtual {v0}, Landroid/telephony/CellInfoLte;->getCellIdentity()Landroid/telephony/CellIdentityLte;

    move-result-object v3

    invoke-static {v3}, Lcom/loc/ce;->a(Landroid/telephony/CellIdentityLte;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-static {v0, v2}, Lcom/loc/ce;->a(Landroid/telephony/CellInfoLte;Z)Ljcz;
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_3

    move-result-object v0

    :goto_5
    move-object v5, v0

    goto :goto_3

    :cond_7
    :try_start_4
    new-instance v0, Landroid/telephony/gsm/GsmCellLocation;

    invoke-direct {v0}, Landroid/telephony/gsm/GsmCellLocation;-><init>()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0

    :try_start_5
    iget v1, v5, Ljcz;->c:I

    iget v2, v5, Ljcz;->d:I

    invoke-virtual {v0, v1, v2}, Landroid/telephony/gsm/GsmCellLocation;->setLacAndCid(II)V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_2

    :goto_6
    move-object v7, v6

    move-object v6, v0

    move-object v0, v7

    goto :goto_4

    :catch_0
    move-exception v0

    move-object v0, v6

    :goto_7
    move-object v7, v6

    move-object v6, v0

    move-object v0, v7

    goto :goto_4

    :catch_1
    move-exception v1

    move-object v7, v0

    move-object v0, v6

    move-object v6, v7

    goto :goto_7

    :catch_2
    move-exception v1

    goto :goto_7

    :catch_3
    move-exception v0

    goto/16 :goto_2

    :cond_8
    move-object v0, v6

    goto :goto_6

    :cond_9
    move-object v0, v6

    goto :goto_5

    :cond_a
    move-object v5, v6

    goto/16 :goto_3
.end method

.method static synthetic a(Lcom/loc/ce;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/loc/ce;->s:Ljava/lang/Object;

    return-object v0
.end method

.method private static a(IZIIIII)Ljcz;
    .locals 1

    new-instance v0, Ljcz;

    invoke-direct {v0, p0, p1}, Ljcz;-><init>(IZ)V

    iput p2, v0, Ljcz;->a:I

    iput p3, v0, Ljcz;->b:I

    iput p4, v0, Ljcz;->c:I

    iput p5, v0, Ljcz;->d:I

    iput p6, v0, Ljcz;->j:I

    return-object v0
.end method

.method private a(Landroid/telephony/CellInfoCdma;Z)Ljcz;
    .locals 8
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar1;->b(I)V

    const/4 v4, 0x0

    invoke-virtual {p1}, Landroid/telephony/CellInfoCdma;->getCellIdentity()Landroid/telephony/CellIdentityCdma;

    move-result-object v7

    iget-object v0, p0, Lcom/loc/ce;->f:Landroid/telephony/TelephonyManager;

    invoke-static {v0}, Ljdx;->a(Landroid/telephony/TelephonyManager;)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    :try_start_0
    aget-object v1, v0, v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    const/4 v1, 0x1

    :try_start_1
    aget-object v0, v0, v1

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    move-result v3

    :goto_0
    const/4 v0, 0x2

    invoke-virtual {p1}, Landroid/telephony/CellInfoCdma;->getCellSignalStrength()Landroid/telephony/CellSignalStrengthCdma;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/CellSignalStrengthCdma;->getCdmaDbm()I

    move-result v6

    move v1, p2

    move v5, v4

    invoke-static/range {v0 .. v6}, Lcom/loc/ce;->a(IZIIIII)Ljcz;

    move-result-object v0

    invoke-virtual {v7}, Landroid/telephony/CellIdentityCdma;->getSystemId()I

    move-result v1

    iput v1, v0, Ljcz;->g:I

    invoke-virtual {v7}, Landroid/telephony/CellIdentityCdma;->getNetworkId()I

    move-result v1

    iput v1, v0, Ljcz;->h:I

    invoke-virtual {v7}, Landroid/telephony/CellIdentityCdma;->getBasestationId()I

    move-result v1

    iput v1, v0, Ljcz;->i:I

    invoke-virtual {v7}, Landroid/telephony/CellIdentityCdma;->getLatitude()I

    move-result v1

    iput v1, v0, Ljcz;->e:I

    invoke-virtual {v7}, Landroid/telephony/CellIdentityCdma;->getLongitude()I

    move-result v1

    iput v1, v0, Ljcz;->f:I

    return-object v0

    :catch_0
    move-exception v0

    move v2, v4

    :goto_1
    move v3, v4

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method private static a(Landroid/telephony/CellInfoGsm;Z)Ljcz;
    .locals 7
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    invoke-virtual {p0}, Landroid/telephony/CellInfoGsm;->getCellIdentity()Landroid/telephony/CellIdentityGsm;

    move-result-object v1

    const/4 v0, 0x1

    invoke-virtual {v1}, Landroid/telephony/CellIdentityGsm;->getMcc()I

    move-result v2

    invoke-virtual {v1}, Landroid/telephony/CellIdentityGsm;->getMnc()I

    move-result v3

    invoke-virtual {v1}, Landroid/telephony/CellIdentityGsm;->getLac()I

    move-result v4

    invoke-virtual {v1}, Landroid/telephony/CellIdentityGsm;->getCid()I

    move-result v5

    invoke-virtual {p0}, Landroid/telephony/CellInfoGsm;->getCellSignalStrength()Landroid/telephony/CellSignalStrengthGsm;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/CellSignalStrengthGsm;->getDbm()I

    move-result v6

    move v1, p1

    invoke-static/range {v0 .. v6}, Lcom/loc/ce;->a(IZIIIII)Ljcz;

    move-result-object v0

    return-object v0
.end method

.method private static a(Landroid/telephony/CellInfoLte;Z)Ljcz;
    .locals 7
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    invoke-virtual {p0}, Landroid/telephony/CellInfoLte;->getCellIdentity()Landroid/telephony/CellIdentityLte;

    move-result-object v1

    const/4 v0, 0x3

    invoke-virtual {v1}, Landroid/telephony/CellIdentityLte;->getMcc()I

    move-result v2

    invoke-virtual {v1}, Landroid/telephony/CellIdentityLte;->getMnc()I

    move-result v3

    invoke-virtual {v1}, Landroid/telephony/CellIdentityLte;->getTac()I

    move-result v4

    invoke-virtual {v1}, Landroid/telephony/CellIdentityLte;->getCi()I

    move-result v5

    invoke-virtual {p0}, Landroid/telephony/CellInfoLte;->getCellSignalStrength()Landroid/telephony/CellSignalStrengthLte;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/CellSignalStrengthLte;->getDbm()I

    move-result v6

    move v1, p1

    invoke-static/range {v0 .. v6}, Lcom/loc/ce;->a(IZIIIII)Ljcz;

    move-result-object v0

    return-object v0
.end method

.method private static a(Landroid/telephony/CellInfoWcdma;Z)Ljcz;
    .locals 7
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    invoke-virtual {p0}, Landroid/telephony/CellInfoWcdma;->getCellIdentity()Landroid/telephony/CellIdentityWcdma;

    move-result-object v1

    const/4 v0, 0x4

    invoke-virtual {v1}, Landroid/telephony/CellIdentityWcdma;->getMcc()I

    move-result v2

    invoke-virtual {v1}, Landroid/telephony/CellIdentityWcdma;->getMnc()I

    move-result v3

    invoke-virtual {v1}, Landroid/telephony/CellIdentityWcdma;->getLac()I

    move-result v4

    invoke-virtual {v1}, Landroid/telephony/CellIdentityWcdma;->getCid()I

    move-result v5

    invoke-virtual {p0}, Landroid/telephony/CellInfoWcdma;->getCellSignalStrength()Landroid/telephony/CellSignalStrengthWcdma;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/CellSignalStrengthWcdma;->getDbm()I

    move-result v6

    move v1, p1

    invoke-static/range {v0 .. v6}, Lcom/loc/ce;->a(IZIIIII)Ljcz;

    move-result-object v0

    return-object v0
.end method

.method private static a(Landroid/telephony/NeighboringCellInfo;[Ljava/lang/String;)Ljcz;
    .locals 3

    :try_start_0
    new-instance v0, Ljcz;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljcz;-><init>(IZ)V

    const/4 v1, 0x0

    aget-object v1, p1, v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Ljcz;->a:I

    const/4 v1, 0x1

    aget-object v1, p1, v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Ljcz;->b:I

    const-string/jumbo v1, "getLac"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p0, v1, v2}, Ljdr;->b(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)I

    move-result v1

    iput v1, v0, Ljcz;->c:I

    invoke-virtual {p0}, Landroid/telephony/NeighboringCellInfo;->getCid()I

    move-result v1

    iput v1, v0, Ljcz;->d:I

    invoke-virtual {p0}, Landroid/telephony/NeighboringCellInfo;->getRssi()I

    move-result v1

    invoke-static {v1}, Ljdx;->a(I)I

    move-result v1

    iput v1, v0, Ljcz;->j:I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const-string/jumbo v1, "CgiManager"

    const-string/jumbo v2, "getGsm"

    invoke-static {v0, v1, v2}, Ljdo;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private a(Landroid/telephony/CellLocation;[Ljava/lang/String;Z)V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    const/4 v3, 0x1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/loc/ce;->f:Landroid/telephony/TelephonyManager;

    if-nez v0, :cond_1

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/loc/ce;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    invoke-direct {p0, p1}, Lcom/loc/ce;->b(Landroid/telephony/CellLocation;)Z

    move-result v0

    if-eqz v0, :cond_0

    iput v3, p0, Lcom/loc/ce;->a:I

    iget-object v0, p0, Lcom/loc/ce;->b:Ljava/util/ArrayList;

    check-cast p1, Landroid/telephony/gsm/GsmCellLocation;

    new-instance v1, Ljcz;

    invoke-direct {v1, v3, v3}, Ljcz;-><init>(IZ)V

    const/4 v2, 0x0

    aget-object v2, p2, v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v1, Ljcz;->a:I

    aget-object v2, p2, v3

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v1, Ljcz;->b:I

    invoke-virtual {p1}, Landroid/telephony/gsm/GsmCellLocation;->getLac()I

    move-result v2

    iput v2, v1, Ljcz;->c:I

    invoke-virtual {p1}, Landroid/telephony/gsm/GsmCellLocation;->getCid()I

    move-result v2

    iput v2, v1, Ljcz;->d:I

    iget v2, p0, Lcom/loc/ce;->e:I

    iput v2, v1, Ljcz;->j:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-nez p3, :cond_0

    iget-object v0, p0, Lcom/loc/ce;->f:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNeighboringCellInfo()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/NeighboringCellInfo;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/telephony/NeighboringCellInfo;->getLac()I

    move-result v2

    invoke-virtual {v0}, Landroid/telephony/NeighboringCellInfo;->getCid()I

    move-result v3

    invoke-static {v2, v3}, Lcom/loc/ce;->a(II)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {v0, p2}, Lcom/loc/ce;->a(Landroid/telephony/NeighboringCellInfo;[Ljava/lang/String;)Ljcz;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v2, p0, Lcom/loc/ce;->b:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/loc/ce;->b:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method static synthetic a(Lcom/loc/ce;I)V
    .locals 2

    const/16 v0, -0x71

    if-ne p1, v0, :cond_1

    iput v0, p0, Lcom/loc/ce;->e:I

    :cond_0
    :goto_0
    return-void

    :cond_1
    iput p1, p0, Lcom/loc/ce;->e:I

    iget v0, p0, Lcom/loc/ce;->a:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lcom/loc/ce;->b:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/loc/ce;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/loc/ce;->b:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljcz;

    iget v1, p0, Lcom/loc/ce;->e:I

    iput v1, v0, Ljcz;->j:I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private static a(I)Z
    .locals 1

    const/4 v0, -0x1

    if-eq p0, v0, :cond_0

    if-eqz p0, :cond_0

    const v0, 0xffff

    if-le p0, v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private static a(II)Z
    .locals 3

    const v2, 0xffff

    const/4 v1, -0x1

    const/4 v0, 0x1

    if-eq p0, v1, :cond_0

    if-eqz p0, :cond_0

    if-gt p0, v2, :cond_0

    if-eq p1, v1, :cond_0

    if-eqz p1, :cond_0

    if-eq p1, v2, :cond_0

    const v1, 0xfffffff

    if-lt p1, v1, :cond_1

    :cond_0
    const/4 v0, 0x0

    :cond_1
    return v0
.end method

.method private static a(Landroid/telephony/CellIdentityCdma;)Z
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p0, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0}, Landroid/telephony/CellIdentityCdma;->getSystemId()I

    move-result v1

    if-lez v1, :cond_0

    invoke-virtual {p0}, Landroid/telephony/CellIdentityCdma;->getNetworkId()I

    move-result v1

    if-ltz v1, :cond_0

    invoke-virtual {p0}, Landroid/telephony/CellIdentityCdma;->getBasestationId()I

    move-result v1

    if-ltz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method private static a(Landroid/telephony/CellIdentityGsm;)Z
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p0, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0}, Landroid/telephony/CellIdentityGsm;->getLac()I

    move-result v1

    invoke-static {v1}, Lcom/loc/ce;->a(I)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Landroid/telephony/CellIdentityGsm;->getCid()I

    move-result v1

    invoke-static {v1}, Lcom/loc/ce;->b(I)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method private static a(Landroid/telephony/CellIdentityLte;)Z
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p0, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0}, Landroid/telephony/CellIdentityLte;->getTac()I

    move-result v1

    invoke-static {v1}, Lcom/loc/ce;->a(I)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Landroid/telephony/CellIdentityLte;->getCi()I

    move-result v1

    invoke-static {v1}, Lcom/loc/ce;->b(I)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method private static a(Landroid/telephony/CellIdentityWcdma;)Z
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p0, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0}, Landroid/telephony/CellIdentityWcdma;->getLac()I

    move-result v1

    invoke-static {v1}, Lcom/loc/ce;->a(I)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Landroid/telephony/CellIdentityWcdma;->getCid()I

    move-result v1

    invoke-static {v1}, Lcom/loc/ce;->b(I)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method private static b(I)Z
    .locals 1

    const/4 v0, -0x1

    if-eq p0, v0, :cond_0

    if-eqz p0, :cond_0

    const v0, 0xffff

    if-eq p0, v0, :cond_0

    const v0, 0xfffffff

    if-lt p0, v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private b(Landroid/telephony/CellLocation;)Z
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    invoke-virtual {p0, p1}, Lcom/loc/ce;->a(Landroid/telephony/CellLocation;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v1, 0x0

    iput v1, p0, Lcom/loc/ce;->a:I

    :cond_0
    return v0
.end method

.method static synthetic b(Lcom/loc/ce;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/loc/ce;->r:Z

    return v0
.end method

.method private c(Landroid/telephony/CellLocation;)I
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    const/4 v0, 0x0

    iget-boolean v1, p0, Lcom/loc/ce;->o:Z

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    if-eqz p1, :cond_0

    instance-of v1, p1, Landroid/telephony/gsm/GsmCellLocation;

    if-eqz v1, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    :try_start_0
    const-string/jumbo v1, "android.telephony.cdma.CdmaCellLocation"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x2

    goto :goto_0

    :catch_0
    move-exception v1

    const-string/jumbo v2, "Utils"

    const-string/jumbo v3, "getCellLocT"

    invoke-static {v1, v2, v3}, Ljdo;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private e()Landroid/telephony/CellLocation;
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/loc/ce;->f:Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/loc/ce;->f:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getCellLocation()Landroid/telephony/CellLocation;

    move-result-object v0

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/loc/ce;->n:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/loc/ce;->b(Landroid/telephony/CellLocation;)Z

    move-result v2

    if-eqz v2, :cond_0

    iput-object v0, p0, Lcom/loc/ce;->j:Landroid/telephony/CellLocation;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/SecurityException;->getMessage()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/loc/ce;->n:Ljava/lang/String;

    :cond_0
    :goto_1
    move-object v0, v1

    goto :goto_0

    :catch_1
    move-exception v0

    iput-object v1, p0, Lcom/loc/ce;->n:Ljava/lang/String;

    const-string/jumbo v2, "CgiManager"

    const-string/jumbo v3, "getCellLocation"

    invoke-static {v0, v2, v3}, Ljdo;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private f()Landroid/telephony/CellLocation;
    .locals 6
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    const/4 v0, 0x0

    const/4 v5, 0x0

    const/4 v4, 0x1

    iget-object v2, p0, Lcom/loc/ce;->f:Landroid/telephony/TelephonyManager;

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    invoke-direct {p0}, Lcom/loc/ce;->e()Landroid/telephony/CellLocation;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/loc/ce;->b(Landroid/telephony/CellLocation;)Z

    move-result v3

    if-eqz v3, :cond_2

    move-object v0, v1

    goto :goto_0

    :cond_2
    invoke-static {}, Ljdx;->c()I

    move-result v1

    const/16 v3, 0x12

    if-lt v1, v3, :cond_3

    :try_start_0
    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getAllCellInfo()Ljava/util/List;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/loc/ce;->a(Ljava/util/List;)Landroid/telephony/CellLocation;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :cond_3
    :goto_1
    if-nez v0, :cond_0

    const-string/jumbo v0, "getCellLocationExt"

    new-array v1, v4, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v5

    invoke-direct {p0, v2, v0, v1}, Lcom/loc/ce;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Landroid/telephony/CellLocation;

    move-result-object v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "getCellLocationGemini"

    new-array v1, v4, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v5

    invoke-direct {p0, v2, v0, v1}, Lcom/loc/ce;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Landroid/telephony/CellLocation;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/SecurityException;->getMessage()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/loc/ce;->n:Ljava/lang/String;

    goto :goto_1
.end method

.method private g()Landroid/telephony/CellLocation;
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/loc/ce;->h:Ljava/lang/Object;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    :try_start_0
    invoke-direct {p0}, Lcom/loc/ce;->h()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2, v1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    const-string/jumbo v2, "getCellLocation"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-direct {p0, v1, v2, v3}, Lcom/loc/ce;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Landroid/telephony/CellLocation;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-direct {p0, v1, v2, v3}, Lcom/loc/ce;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Landroid/telephony/CellLocation;

    move-result-object v0

    if-nez v0, :cond_0

    const-string/jumbo v2, "getCellLocationGemini"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-direct {p0, v1, v2, v3}, Lcom/loc/ce;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Landroid/telephony/CellLocation;

    move-result-object v0

    if-nez v0, :cond_0

    const-string/jumbo v2, "getAllCellInfo"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-direct {p0, v1, v2, v3}, Lcom/loc/ce;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Landroid/telephony/CellLocation;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string/jumbo v2, "CgiManager"

    const-string/jumbo v3, "getSim2Cgi"

    invoke-static {v1, v2, v3}, Ljdo;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private h()Ljava/lang/Class;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    const/4 v1, 0x0

    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    iget v0, p0, Lcom/loc/ce;->u:I

    packed-switch v0, :pswitch_data_0

    move-object v0, v1

    :goto_0
    :try_start_0
    invoke-virtual {v2, v0}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_1
    return-object v1

    :pswitch_0
    const-string/jumbo v0, "android.telephony.MSimTelephonyManager"

    goto :goto_0

    :pswitch_1
    const-string/jumbo v0, "android.telephony.TelephonyManager2"

    goto :goto_0

    :pswitch_2
    const-string/jumbo v0, "android.telephony.TelephonyManager"

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v2, "CgiManager"

    const-string/jumbo v3, "getSim2TmClass"

    invoke-static {v0, v2, v3}, Ljdo;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private i()I
    .locals 1

    :try_start_0
    const-string/jumbo v0, "android.telephony.MSimTelephonyManager"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    const/4 v0, 0x1

    iput v0, p0, Lcom/loc/ce;->u:I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    iget v0, p0, Lcom/loc/ce;->u:I

    if-nez v0, :cond_0

    :try_start_1
    const-string/jumbo v0, "android.telephony.TelephonyManager2"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    const/4 v0, 0x2

    iput v0, p0, Lcom/loc/ce;->u:I
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    :cond_0
    :goto_1
    iget v0, p0, Lcom/loc/ce;->u:I

    return v0

    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method public final a()Ljcz;
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    const/4 v0, 0x0

    iget-boolean v1, p0, Lcom/loc/ce;->o:Z

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    iget-object v1, p0, Lcom/loc/ce;->b:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_0

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljcz;

    goto :goto_0
.end method

.method public final a(ZZ)V
    .locals 14

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v13

    invoke-static {v13}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 0
    :try_start_0
    iget-object v0, p0, Lcom/loc/ce;->t:Landroid/content/Context;

    invoke-static {v0}, Ljdx;->a(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/loc/ce;->o:Z

    const/4 v0, 0x1

    iget-boolean v1, p0, Lcom/loc/ce;->o:Z

    if-eqz v1, :cond_9

    const/4 v0, 0x0

    :cond_0
    :goto_0
    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/loc/ce;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1e

    :cond_1
    iget-boolean v0, p0, Lcom/loc/ce;->o:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/loc/ce;->f:Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_3

    invoke-direct {p0}, Lcom/loc/ce;->f()Landroid/telephony/CellLocation;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/loc/ce;->b(Landroid/telephony/CellLocation;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-direct {p0}, Lcom/loc/ce;->g()Landroid/telephony/CellLocation;

    move-result-object v0

    :cond_2
    invoke-direct {p0, v0}, Lcom/loc/ce;->b(Landroid/telephony/CellLocation;)Z

    move-result v1

    if-eqz v1, :cond_a

    iput-object v0, p0, Lcom/loc/ce;->j:Landroid/telephony/CellLocation;

    invoke-static {}, Ljdx;->b()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/loc/ce;->k:J

    :cond_3
    :goto_1
    const/4 v0, 0x0

    iget-boolean v1, p0, Lcom/loc/ce;->l:Z

    if-nez v1, :cond_5

    iget-object v1, p0, Lcom/loc/ce;->j:Landroid/telephony/CellLocation;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_2

    if-nez v1, :cond_5

    if-eqz p2, :cond_5

    :cond_4
    const-wide/16 v2, 0xa

    :try_start_1
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_2

    :goto_2
    add-int/lit8 v0, v0, 0x1

    :try_start_2
    iget-object v1, p0, Lcom/loc/ce;->j:Landroid/telephony/CellLocation;

    if-nez v1, :cond_5

    const/16 v1, 0x32

    if-lt v0, v1, :cond_4

    :cond_5
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/loc/ce;->l:Z

    iget-object v0, p0, Lcom/loc/ce;->j:Landroid/telephony/CellLocation;

    invoke-direct {p0, v0}, Lcom/loc/ce;->b(Landroid/telephony/CellLocation;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/loc/ce;->f:Landroid/telephony/TelephonyManager;

    invoke-static {v0}, Ljdx;->a(Landroid/telephony/TelephonyManager;)[Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lcom/loc/ce;->j:Landroid/telephony/CellLocation;

    invoke-direct {p0, v0}, Lcom/loc/ce;->c(Landroid/telephony/CellLocation;)I
    :try_end_2
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2

    move-result v0

    packed-switch v0, :pswitch_data_0

    :cond_6
    :goto_3
    :try_start_3
    invoke-static {}, Ljdx;->c()I

    move-result v0

    const/16 v1, 0x12

    if-lt v0, v1, :cond_1c

    iget-object v0, p0, Lcom/loc/ce;->f:Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_1c

    const/4 v1, 0x0

    iget-object v5, p0, Lcom/loc/ce;->d:Ljava/util/ArrayList;

    iget-object v6, p0, Lcom/loc/ce;->g:Ljcy;
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_7
    .catch Ljava/lang/SecurityException; {:try_start_3 .. :try_end_3} :catch_0

    :try_start_4
    iget-object v0, p0, Lcom/loc/ce;->f:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getAllCellInfo()Ljava/util/List;

    move-result-object v1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/loc/ce;->n:Ljava/lang/String;
    :try_end_4
    .catch Ljava/lang/SecurityException; {:try_start_4 .. :try_end_4} :catch_5
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_7

    move-object v2, v1

    :goto_4
    if-eqz v2, :cond_15

    :try_start_5
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-eqz v3, :cond_15

    if-eqz v5, :cond_7

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    :cond_7
    const/4 v0, 0x0

    move v1, v0

    :goto_5
    if-ge v1, v3, :cond_15

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/CellInfo;
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_7
    .catch Ljava/lang/SecurityException; {:try_start_5 .. :try_end_5} :catch_0

    if-eqz v0, :cond_8

    :try_start_6
    invoke-virtual {v0}, Landroid/telephony/CellInfo;->isRegistered()Z

    move-result v4

    instance-of v7, v0, Landroid/telephony/CellInfoCdma;

    if-eqz v7, :cond_12

    check-cast v0, Landroid/telephony/CellInfoCdma;

    invoke-virtual {v0}, Landroid/telephony/CellInfoCdma;->getCellIdentity()Landroid/telephony/CellIdentityCdma;

    move-result-object v7

    invoke-static {v7}, Lcom/loc/ce;->a(Landroid/telephony/CellIdentityCdma;)Z
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_6
    .catch Ljava/lang/SecurityException; {:try_start_6 .. :try_end_6} :catch_0

    move-result v7

    if-nez v7, :cond_11

    :cond_8
    :goto_6
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_5

    :cond_9
    :try_start_7
    invoke-static {}, Ljdx;->b()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/loc/ce;->i:J

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x2710

    cmp-long v1, v2, v4

    if-gez v1, :cond_0

    const/4 v0, 0x0

    goto/16 :goto_0

    :cond_a
    invoke-static {}, Ljdx;->b()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/loc/ce;->k:J

    sub-long/2addr v0, v2

    const-wide/32 v2, 0xea60

    cmp-long v0, v0, v2

    if-lez v0, :cond_3

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/loc/ce;->j:Landroid/telephony/CellLocation;

    iget-object v0, p0, Lcom/loc/ce;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/loc/ce;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V
    :try_end_7
    .catch Ljava/lang/SecurityException; {:try_start_7 .. :try_end_7} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_2

    goto/16 :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/SecurityException;->getMessage()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/loc/ce;->n:Ljava/lang/String;

    :cond_b
    :goto_7
    return-void

    :catch_1
    move-exception v1

    :try_start_8
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V
    :try_end_8
    .catch Ljava/lang/SecurityException; {:try_start_8 .. :try_end_8} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_2

    goto/16 :goto_2

    :catch_2
    move-exception v0

    const-string/jumbo v1, "CgiManager"

    const-string/jumbo v2, "refresh"

    invoke-static {v0, v1, v2}, Ljdo;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_7

    :pswitch_0
    :try_start_9
    iget-object v0, p0, Lcom/loc/ce;->j:Landroid/telephony/CellLocation;

    invoke-direct {p0, v0, v2, p1}, Lcom/loc/ce;->a(Landroid/telephony/CellLocation;[Ljava/lang/String;Z)V

    goto/16 :goto_3

    :pswitch_1
    iget-object v3, p0, Lcom/loc/ce;->j:Landroid/telephony/CellLocation;

    if-eqz v3, :cond_6

    iget-object v0, p0, Lcom/loc/ce;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    invoke-static {}, Ljdx;->c()I
    :try_end_9
    .catch Ljava/lang/SecurityException; {:try_start_9 .. :try_end_9} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_2

    move-result v0

    const/4 v1, 0x5

    if-lt v0, v1, :cond_6

    :try_start_a
    iget-object v0, p0, Lcom/loc/ce;->h:Ljava/lang/Object;
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_3
    .catch Ljava/lang/SecurityException; {:try_start_a .. :try_end_a} :catch_0

    if-eqz v0, :cond_d

    const/4 v1, 0x0

    :try_start_b
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string/jumbo v4, "mGsmCellLoc"

    invoke-virtual {v0, v4}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/reflect/Field;->isAccessible()Z

    move-result v4

    if-nez v4, :cond_c

    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    :cond_c
    invoke-virtual {v0, v3}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/gsm/GsmCellLocation;

    if-eqz v0, :cond_10

    invoke-direct {p0, v0}, Lcom/loc/ce;->b(Landroid/telephony/CellLocation;)Z

    move-result v4

    if-eqz v4, :cond_10

    invoke-direct {p0, v0, v2, p1}, Lcom/loc/ce;->a(Landroid/telephony/CellLocation;[Ljava/lang/String;Z)V
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_b} :catch_4
    .catch Ljava/lang/SecurityException; {:try_start_b .. :try_end_b} :catch_0

    const/4 v0, 0x1

    :goto_8
    if-nez v0, :cond_6

    :cond_d
    :try_start_c
    invoke-direct {p0, v3}, Lcom/loc/ce;->b(Landroid/telephony/CellLocation;)Z

    move-result v0

    if-eqz v0, :cond_6

    const/4 v0, 0x2

    iput v0, p0, Lcom/loc/ce;->a:I

    new-instance v0, Ljcz;

    const/4 v1, 0x2

    const/4 v4, 0x1

    invoke-direct {v0, v1, v4}, Ljcz;-><init>(IZ)V

    const/4 v1, 0x0

    aget-object v1, v2, v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Ljcz;->a:I

    const/4 v1, 0x1

    aget-object v1, v2, v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Ljcz;->b:I

    const-string/jumbo v1, "getSystemId"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v3, v1, v2}, Ljdr;->b(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)I

    move-result v1

    iput v1, v0, Ljcz;->g:I

    const-string/jumbo v1, "getNetworkId"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v3, v1, v2}, Ljdr;->b(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)I

    move-result v1

    iput v1, v0, Ljcz;->h:I

    const-string/jumbo v1, "getBaseStationId"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v3, v1, v2}, Ljdr;->b(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)I

    move-result v1

    iput v1, v0, Ljcz;->i:I

    iget v1, p0, Lcom/loc/ce;->e:I

    iput v1, v0, Ljcz;->j:I

    const-string/jumbo v1, "getBaseStationLatitude"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v3, v1, v2}, Ljdr;->b(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)I

    move-result v1

    iput v1, v0, Ljcz;->e:I

    const-string/jumbo v1, "getBaseStationLongitude"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v3, v1, v2}, Ljdr;->b(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)I

    move-result v1

    iput v1, v0, Ljcz;->f:I

    iget v1, v0, Ljcz;->e:I

    if-ltz v1, :cond_e

    iget v1, v0, Ljcz;->f:I

    if-ltz v1, :cond_e

    iget v1, v0, Ljcz;->e:I

    const v2, 0x7fffffff

    if-eq v1, v2, :cond_e

    iget v1, v0, Ljcz;->f:I

    const v2, 0x7fffffff

    if-eq v1, v2, :cond_e

    iget v1, v0, Ljcz;->e:I

    iget v2, v0, Ljcz;->f:I

    if-ne v1, v2, :cond_f

    iget v1, v0, Ljcz;->e:I

    if-lez v1, :cond_f

    :cond_e
    const/4 v1, 0x0

    iput v1, v0, Ljcz;->e:I

    const/4 v1, 0x0

    iput v1, v0, Ljcz;->f:I

    :cond_f
    iget-object v1, p0, Lcom/loc/ce;->b:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    iget-object v1, p0, Lcom/loc/ce;->b:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_c
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_c} :catch_3
    .catch Ljava/lang/SecurityException; {:try_start_c .. :try_end_c} :catch_0

    goto/16 :goto_3

    :catch_3
    move-exception v0

    :try_start_d
    const-string/jumbo v1, "CgiManager"

    const-string/jumbo v2, "hdlCdmaLocChange"

    invoke-static {v0, v1, v2}, Ljdo;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_d
    .catch Ljava/lang/SecurityException; {:try_start_d .. :try_end_d} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_d} :catch_2

    goto/16 :goto_3

    :catch_4
    move-exception v0

    :cond_10
    move v0, v1

    goto/16 :goto_8

    :catch_5
    move-exception v0

    :try_start_e
    invoke-virtual {v0}, Ljava/lang/SecurityException;->getMessage()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/loc/ce;->n:Ljava/lang/String;
    :try_end_e
    .catch Ljava/lang/Throwable; {:try_start_e .. :try_end_e} :catch_7
    .catch Ljava/lang/SecurityException; {:try_start_e .. :try_end_e} :catch_0

    move-object v2, v1

    goto/16 :goto_4

    :cond_11
    :try_start_f
    invoke-direct {p0, v0, v4}, Lcom/loc/ce;->a(Landroid/telephony/CellInfoCdma;Z)Ljcz;

    move-result-object v0

    const-wide/32 v8, 0xffff

    invoke-virtual {v6, v0}, Ljcy;->a(Ljcz;)J

    move-result-wide v10

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v8

    long-to-int v4, v8

    int-to-short v4, v4

    iput-short v4, v0, Ljcz;->l:S

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_6

    :catch_6
    move-exception v0

    goto/16 :goto_6

    :cond_12
    instance-of v7, v0, Landroid/telephony/CellInfoGsm;

    if-eqz v7, :cond_13

    check-cast v0, Landroid/telephony/CellInfoGsm;

    invoke-virtual {v0}, Landroid/telephony/CellInfoGsm;->getCellIdentity()Landroid/telephony/CellIdentityGsm;

    move-result-object v7

    invoke-static {v7}, Lcom/loc/ce;->a(Landroid/telephony/CellIdentityGsm;)Z

    move-result v7

    if-eqz v7, :cond_8

    invoke-static {v0, v4}, Lcom/loc/ce;->a(Landroid/telephony/CellInfoGsm;Z)Ljcz;

    move-result-object v0

    const-wide/32 v8, 0xffff

    invoke-virtual {v6, v0}, Ljcy;->a(Ljcz;)J

    move-result-wide v10

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v8

    long-to-int v4, v8

    int-to-short v4, v4

    iput-short v4, v0, Ljcz;->l:S

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_6

    :cond_13
    instance-of v7, v0, Landroid/telephony/CellInfoWcdma;

    if-eqz v7, :cond_14

    check-cast v0, Landroid/telephony/CellInfoWcdma;

    invoke-virtual {v0}, Landroid/telephony/CellInfoWcdma;->getCellIdentity()Landroid/telephony/CellIdentityWcdma;

    move-result-object v7

    invoke-static {v7}, Lcom/loc/ce;->a(Landroid/telephony/CellIdentityWcdma;)Z

    move-result v7

    if-eqz v7, :cond_8

    invoke-static {v0, v4}, Lcom/loc/ce;->a(Landroid/telephony/CellInfoWcdma;Z)Ljcz;

    move-result-object v0

    const-wide/32 v8, 0xffff

    invoke-virtual {v6, v0}, Ljcy;->a(Ljcz;)J

    move-result-wide v10

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v8

    long-to-int v4, v8

    int-to-short v4, v4

    iput-short v4, v0, Ljcz;->l:S

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_6

    :cond_14
    instance-of v7, v0, Landroid/telephony/CellInfoLte;

    if-eqz v7, :cond_8

    check-cast v0, Landroid/telephony/CellInfoLte;

    invoke-virtual {v0}, Landroid/telephony/CellInfoLte;->getCellIdentity()Landroid/telephony/CellIdentityLte;

    move-result-object v7

    invoke-static {v7}, Lcom/loc/ce;->a(Landroid/telephony/CellIdentityLte;)Z

    move-result v7

    if-eqz v7, :cond_8

    invoke-static {v0, v4}, Lcom/loc/ce;->a(Landroid/telephony/CellInfoLte;Z)Ljcz;

    move-result-object v0

    const-wide/32 v8, 0xffff

    invoke-virtual {v6, v0}, Ljcy;->a(Ljcz;)J

    move-result-wide v10

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v8

    long-to-int v4, v8

    int-to-short v4, v4

    iput-short v4, v0, Ljcz;->l:S

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_f
    .catch Ljava/lang/Throwable; {:try_start_f .. :try_end_f} :catch_6
    .catch Ljava/lang/SecurityException; {:try_start_f .. :try_end_f} :catch_0

    goto/16 :goto_6

    :cond_15
    if-eqz v5, :cond_1c

    :try_start_10
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1c

    iget v0, p0, Lcom/loc/ce;->a:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/loc/ce;->a:I

    .line 1000
    if-eqz v5, :cond_1c

    invoke-static {}, Ljdx;->b()J

    move-result-wide v8

    iget-wide v0, v6, Ljcy;->b:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_16

    iget-wide v0, v6, Ljcy;->b:J

    sub-long v0, v8, v0

    const-wide/32 v2, 0xea60

    cmp-long v0, v0, v2

    if-ltz v0, :cond_1c

    :cond_16
    iget-object v7, v6, Ljcy;->a:Ljava/util/HashMap;

    const-wide/16 v2, 0x0

    const/4 v0, 0x0

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v10

    move v4, v0

    :goto_9
    if-ge v4, v10, :cond_19

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljcz;

    iget-boolean v1, v0, Ljcz;->o:Z

    if-eqz v1, :cond_18

    iget v1, v0, Ljcz;->k:I

    packed-switch v1, :pswitch_data_1

    :goto_a
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v7, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljcz;

    if-eqz v1, :cond_18

    .line 2000
    iget v11, v1, Ljcz;->j:I

    .line 3000
    iget v12, v0, Ljcz;->j:I

    .line 1000
    if-ne v11, v12, :cond_17

    iget-wide v12, v1, Ljcz;->m:J

    iput-wide v12, v0, Ljcz;->m:J

    move-wide v0, v2

    :goto_b
    add-int/lit8 v2, v4, 0x1

    move v4, v2

    move-wide v2, v0

    goto :goto_9

    :pswitch_2
    iget v1, v0, Ljcz;->c:I

    iget v2, v0, Ljcz;->d:I

    invoke-static {v1, v2}, Ljcy;->a(II)J

    move-result-wide v2

    goto :goto_a

    :pswitch_3
    iget v1, v0, Ljcz;->h:I

    iget v2, v0, Ljcz;->i:I

    invoke-static {v1, v2}, Ljcy;->a(II)J

    move-result-wide v2

    goto :goto_a

    :cond_17
    iput-wide v8, v0, Ljcz;->m:J

    :cond_18
    move-wide v0, v2

    goto :goto_b

    :cond_19
    invoke-virtual {v7}, Ljava/util/HashMap;->clear()V

    const/4 v0, 0x0

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v10

    move v4, v0

    :goto_c
    if-ge v4, v10, :cond_1b

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljcz;

    iget-boolean v1, v0, Ljcz;->o:Z

    if-eqz v1, :cond_1a

    iget v1, v0, Ljcz;->k:I

    packed-switch v1, :pswitch_data_2

    :goto_d
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v7, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1a
    move-wide v0, v2

    add-int/lit8 v2, v4, 0x1

    move v4, v2

    move-wide v2, v0

    goto :goto_c

    .line 4000
    :pswitch_4
    iget v1, v0, Ljcz;->c:I

    .line 5000
    iget v2, v0, Ljcz;->d:I

    .line 1000
    invoke-static {v1, v2}, Ljcy;->a(II)J

    move-result-wide v2

    goto :goto_d

    .line 6000
    :pswitch_5
    iget v1, v0, Ljcz;->h:I

    .line 7000
    iget v2, v0, Ljcz;->i:I

    .line 1000
    invoke-static {v1, v2}, Ljcy;->a(II)J

    move-result-wide v2

    goto :goto_d

    :cond_1b
    iput-wide v8, v6, Ljcy;->b:J
    :try_end_10
    .catch Ljava/lang/Throwable; {:try_start_10 .. :try_end_10} :catch_7
    .catch Ljava/lang/SecurityException; {:try_start_10 .. :try_end_10} :catch_0

    .line 0
    :cond_1c
    :goto_e
    :try_start_11
    iget-object v0, p0, Lcom/loc/ce;->f:Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_1d

    iget-object v0, p0, Lcom/loc/ce;->f:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/loc/ce;->c:Ljava/lang/String;

    iget-object v0, p0, Lcom/loc/ce;->c:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1d

    iget v0, p0, Lcom/loc/ce;->a:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/loc/ce;->a:I

    :cond_1d
    invoke-static {}, Ljdx;->b()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/loc/ce;->i:J

    :cond_1e
    iget-boolean v0, p0, Lcom/loc/ce;->o:Z

    if-eqz v0, :cond_1f

    invoke-virtual {p0}, Lcom/loc/ce;->b()V

    goto/16 :goto_7

    :cond_1f
    iget v0, p0, Lcom/loc/ce;->a:I

    and-int/lit8 v0, v0, 0x3

    packed-switch v0, :pswitch_data_3

    goto/16 :goto_7

    :pswitch_6
    iget-object v0, p0, Lcom/loc/ce;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_b

    const/4 v0, 0x0

    iput v0, p0, Lcom/loc/ce;->a:I

    goto/16 :goto_7

    :pswitch_7
    iget-object v0, p0, Lcom/loc/ce;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_b

    const/4 v0, 0x0

    iput v0, p0, Lcom/loc/ce;->a:I
    :try_end_11
    .catch Ljava/lang/SecurityException; {:try_start_11 .. :try_end_11} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_11 .. :try_end_11} :catch_2

    goto/16 :goto_7

    :catch_7
    move-exception v0

    goto :goto_e

    .line 1000
    .line 0
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_2
        :pswitch_3
        :pswitch_2
        :pswitch_2
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_4
        :pswitch_5
        :pswitch_4
        :pswitch_4
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x1
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method final a(Landroid/telephony/CellLocation;)Z
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    const/4 v1, 0x0

    if-nez p1, :cond_0

    :goto_0
    return v1

    :cond_0
    const/4 v0, 0x1

    invoke-direct {p0, p1}, Lcom/loc/ce;->c(Landroid/telephony/CellLocation;)I

    move-result v2

    packed-switch v2, :pswitch_data_0

    :cond_1
    :goto_1
    move v1, v0

    goto :goto_0

    :pswitch_0
    :try_start_0
    check-cast p1, Landroid/telephony/gsm/GsmCellLocation;

    invoke-virtual {p1}, Landroid/telephony/gsm/GsmCellLocation;->getLac()I

    move-result v1

    invoke-virtual {p1}, Landroid/telephony/gsm/GsmCellLocation;->getCid()I

    move-result v2

    invoke-static {v1, v2}, Lcom/loc/ce;->a(II)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_1

    :catch_0
    move-exception v1

    const-string/jumbo v2, "CgiManager"

    const-string/jumbo v3, "cgiUseful Cgi.iGsmT"

    invoke-static {v1, v2, v3}, Ljdo;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :pswitch_1
    :try_start_1
    const-string/jumbo v2, "getSystemId"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p1, v2, v3}, Ljdr;->b(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)I

    move-result v2

    if-lez v2, :cond_2

    const-string/jumbo v2, "getNetworkId"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p1, v2, v3}, Ljdr;->b(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)I

    move-result v2

    if-ltz v2, :cond_2

    const-string/jumbo v2, "getBaseStationId"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p1, v2, v3}, Ljdr;->b(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)I
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    move-result v2

    if-gez v2, :cond_1

    :cond_2
    move v0, v1

    goto :goto_1

    :catch_1
    move-exception v1

    const-string/jumbo v2, "CgiManager"

    const-string/jumbo v3, "cgiUseful Cgi.iCdmaT"

    invoke-static {v1, v2, v3}, Ljdo;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method final b()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/loc/ce;->n:Ljava/lang/String;

    iput-object v0, p0, Lcom/loc/ce;->j:Landroid/telephony/CellLocation;

    const/4 v0, 0x0

    iput v0, p0, Lcom/loc/ce;->a:I

    iget-object v0, p0, Lcom/loc/ce;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/loc/ce;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public final c()Ljava/lang/String;
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    const/4 v3, 0x0

    iget-boolean v0, p0, Lcom/loc/ce;->o:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/loc/ce;->b()V

    :cond_0
    iget-object v0, p0, Lcom/loc/ce;->p:Ljava/lang/StringBuilder;

    if-nez v0, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/loc/ce;->p:Ljava/lang/StringBuilder;

    :goto_0
    iget v0, p0, Lcom/loc/ce;->a:I

    and-int/lit8 v0, v0, 0x3

    packed-switch v0, :pswitch_data_0

    :cond_1
    iget-object v0, p0, Lcom/loc/ce;->p:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_2

    iget-object v0, p0, Lcom/loc/ce;->p:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    :cond_2
    iget-object v0, p0, Lcom/loc/ce;->p:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_3
    iget-object v0, p0, Lcom/loc/ce;->p:Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/loc/ce;->p:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    invoke-virtual {v0, v3, v1}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    goto :goto_0

    :pswitch_0
    const/4 v0, 0x1

    move v1, v0

    :goto_1
    iget-object v0, p0, Lcom/loc/ce;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    iget-object v0, p0, Lcom/loc/ce;->p:Ljava/lang/StringBuilder;

    const-string/jumbo v2, "#"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p0, Lcom/loc/ce;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljcz;

    iget v0, v0, Ljcz;->b:I

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/loc/ce;->p:Ljava/lang/StringBuilder;

    const-string/jumbo v2, "|"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p0, Lcom/loc/ce;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljcz;

    iget v0, v0, Ljcz;->c:I

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/loc/ce;->p:Ljava/lang/StringBuilder;

    const-string/jumbo v2, "|"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p0, Lcom/loc/ce;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljcz;

    iget v0, v0, Ljcz;->d:I

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public final d()Z
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    const/4 v0, 0x1

    :try_start_0
    iget-object v1, p0, Lcom/loc/ce;->f:Landroid/telephony/TelephonyManager;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/loc/ce;->f:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/loc/ce;->f:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getSimCountryIso()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    if-eqz v1, :cond_0

    :cond_2
    :goto_1
    :try_start_1
    iget-object v1, p0, Lcom/loc/ce;->t:Landroid/content/Context;

    invoke-static {v1}, Ljdx;->c(Landroid/content/Context;)Landroid/net/NetworkInfo;

    move-result-object v1

    invoke-static {v1}, Ljdx;->a(Landroid/net/NetworkInfo;)I
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    move-result v1

    if-eqz v1, :cond_0

    const/4 v2, 0x4

    if-eq v1, v2, :cond_0

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    const/4 v2, 0x5

    if-eq v1, v2, :cond_0

    const/4 v2, 0x3

    if-eq v1, v2, :cond_0

    :goto_2
    const/4 v0, 0x0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_2

    :catch_1
    move-exception v1

    goto :goto_1
.end method
