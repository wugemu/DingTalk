.class public Lcom/unicom/xiaowo/verify/sms/DefaultSim;
.super Ljava/lang/Object;
.source "DefaultSim.java"

# interfaces
.implements Lcom/unicom/xiaowo/verify/sms/ISim;


# instance fields
.field private _context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Lcom/unicom/xiaowo/verify/sms/DefaultSim;->_context:Landroid/content/Context;

    .line 15
    return-void
.end method

.method private getTelephonyManager()Landroid/telephony/TelephonyManager;
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 106
    iget-object v0, p0, Lcom/unicom/xiaowo/verify/sms/DefaultSim;->_context:Landroid/content/Context;

    const-string/jumbo v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    return-object v0
.end method


# virtual methods
.method public getIMEI(I)Ljava/lang/String;
    .locals 1

    .prologue
    .line 46
    if-eqz p1, :cond_0

    .line 47
    const-string/jumbo v0, ""

    .line 49
    :goto_0
    return-object v0

    :cond_0
    invoke-direct {p0}, Lcom/unicom/xiaowo/verify/sms/DefaultSim;->getTelephonyManager()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getIMSI(I)Ljava/lang/String;
    .locals 1

    .prologue
    .line 39
    if-eqz p1, :cond_0

    .line 40
    const-string/jumbo v0, ""

    .line 42
    :goto_0
    return-object v0

    :cond_0
    invoke-direct {p0}, Lcom/unicom/xiaowo/verify/sms/DefaultSim;->getTelephonyManager()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 102
    const-string/jumbo v0, "DefaultSim"

    return-object v0
.end method

.method public getNetworkOperator(I)Ljava/lang/String;
    .locals 1

    .prologue
    .line 18
    if-eqz p1, :cond_0

    .line 19
    const-string/jumbo v0, ""

    .line 21
    :goto_0
    return-object v0

    :cond_0
    invoke-direct {p0}, Lcom/unicom/xiaowo/verify/sms/DefaultSim;->getTelephonyManager()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getSimOperator(I)Ljava/lang/String;
    .locals 1

    .prologue
    .line 25
    if-eqz p1, :cond_0

    .line 26
    const-string/jumbo v0, ""

    .line 28
    :goto_0
    return-object v0

    :cond_0
    invoke-direct {p0}, Lcom/unicom/xiaowo/verify/sms/DefaultSim;->getTelephonyManager()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getSimSerialNumber(I)Ljava/lang/String;
    .locals 1

    .prologue
    .line 32
    if-eqz p1, :cond_0

    .line 33
    const-string/jumbo v0, ""

    .line 35
    :goto_0
    return-object v0

    :cond_0
    invoke-direct {p0}, Lcom/unicom/xiaowo/verify/sms/DefaultSim;->getTelephonyManager()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimSerialNumber()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getSimState(I)I
    .locals 1

    .prologue
    .line 53
    if-eqz p1, :cond_0

    .line 54
    const/4 v0, -0x1

    .line 56
    :goto_0
    return v0

    :cond_0
    invoke-direct {p0}, Lcom/unicom/xiaowo/verify/sms/DefaultSim;->getTelephonyManager()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v0

    goto :goto_0
.end method

.method public getSubId(I)J
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 94
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public isDataConnectEnabled(I)Z
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v0, 0x0

    .line 60
    if-eqz p1, :cond_1

    .line 63
    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-direct {p0}, Lcom/unicom/xiaowo/verify/sms/DefaultSim;->getTelephonyManager()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getDataState()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isNetworkRoaming(I)Z
    .locals 1

    .prologue
    .line 67
    if-eqz p1, :cond_0

    .line 68
    const/4 v0, 0x0

    .line 70
    :goto_0
    return v0

    :cond_0
    invoke-direct {p0}, Lcom/unicom/xiaowo/verify/sms/DefaultSim;->getTelephonyManager()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->isNetworkRoaming()Z

    move-result v0

    goto :goto_0
.end method

.method public isReady()Z
    .locals 1

    .prologue
    .line 98
    const/4 v0, 0x1

    return v0
.end method

.method public sendDataMessage(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)Z
    .locals 7

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 85
    if-eqz p1, :cond_0

    .line 86
    const/4 v3, 0x0

    .line 90
    :goto_0
    return v3

    .line 89
    :cond_0
    invoke-static {}, Landroid/telephony/SmsManager;->getDefault()Landroid/telephony/SmsManager;

    move-result-object v0

    invoke-virtual {p4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    move-object v1, p2

    move-object v5, p5

    move-object v6, v2

    invoke-virtual/range {v0 .. v6}, Landroid/telephony/SmsManager;->sendDataMessage(Ljava/lang/String;Ljava/lang/String;S[BLandroid/app/PendingIntent;Landroid/app/PendingIntent;)V

    goto :goto_0
.end method

.method public sendTextMessage(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)Z
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 75
    if-eqz p1, :cond_0

    .line 76
    const/4 v0, 0x0

    .line 80
    :goto_0
    return v0

    .line 79
    :cond_0
    invoke-static {}, Landroid/telephony/SmsManager;->getDefault()Landroid/telephony/SmsManager;

    move-result-object v0

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    move-object v5, p6

    invoke-virtual/range {v0 .. v5}, Landroid/telephony/SmsManager;->sendTextMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)V

    .line 80
    const/4 v0, 0x1

    goto :goto_0
.end method
