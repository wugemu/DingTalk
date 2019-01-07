.class public Lcom/alipay/mobile/nebulacore/util/H5ErrorMsgUtil;
.super Ljava/lang/Object;
.source "H5ErrorMsgUtil.java"


# static fields
.field public static final H5_NETWORK_AUTH_ERROR:I = 0x8

.field public static final H5_NETWORK_CANCEL_ERROR:I = 0xd

.field public static final H5_NETWORK_CONNECTION_EXCEPTION:I = 0x3

.field public static final H5_NETWORK_DNS_ERROR:I = 0x9

.field public static final H5_NETWORK_IO_EXCEPTION:I = 0x6

.field public static final H5_NETWORK_SCHEDULE_ERROR:I = 0x7

.field public static final H5_NETWORK_SERVER_EXCEPTION:I = 0x5

.field public static final H5_NETWORK_SOCKET_EXCEPTION:I = 0x4

.field public static final H5_NETWORK_SSL_EXCEPTION:I = 0x2

.field public static final H5_NETWORK_TRAFIC_BEYOND_LIMIT:I = 0xb

.field public static final H5_NETWORK_UNAVAILABLE:I = 0x1

.field public static final H5_NETWORK_UNKNOWN_ERROR:I = 0x0

.field public static final H5_UC_NETWORK_UNAVAILABLE:I = -0x50

.field public static final H5_URL_ERROR:I = 0xa


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getErrorPageMsg(I)Ljava/lang/String;
    .locals 3
    .param p0, "statusCode"    # I

    .prologue
    .line 44
    const/4 v1, -0x6

    if-eq p0, v1, :cond_0

    const/4 v1, -0x7

    if-eq p0, v1, :cond_0

    const/16 v1, -0x50

    if-eq p0, v1, :cond_0

    const/4 v1, 0x1

    if-ne p0, v1, :cond_1

    .line 47
    :cond_0
    invoke-static {}, Lcom/alipay/mobile/nebulacore/env/H5Environment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/alipay/mobile/nebula/R$string;->h5_network_unavailable:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 92
    .local v0, "errorResult":Ljava/lang/String;
    :goto_0
    return-object v0

    .line 48
    .end local v0    # "errorResult":Ljava/lang/String;
    :cond_1
    const/4 v1, -0x2

    if-eq p0, v1, :cond_2

    const/16 v1, 0x9

    if-ne p0, v1, :cond_3

    .line 50
    :cond_2
    invoke-static {}, Lcom/alipay/mobile/nebulacore/env/H5Environment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/alipay/mobile/nebula/R$string;->h5_DNS_resolution_failed_new:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "errorResult":Ljava/lang/String;
    goto :goto_0

    .line 51
    .end local v0    # "errorResult":Ljava/lang/String;
    :cond_3
    const/4 v1, -0x4

    if-eq p0, v1, :cond_4

    const/16 v1, -0xc

    if-eq p0, v1, :cond_4

    const/4 v1, -0x5

    if-eq p0, v1, :cond_4

    const/16 v1, -0xa

    if-eq p0, v1, :cond_4

    const/16 v1, -0xb

    if-eq p0, v1, :cond_4

    const/16 v1, 0xa

    if-eq p0, v1, :cond_4

    const/16 v1, 0x8

    if-eq p0, v1, :cond_4

    const/4 v1, 0x7

    if-ne p0, v1, :cond_5

    .line 59
    :cond_4
    invoke-static {}, Lcom/alipay/mobile/nebulacore/env/H5Environment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/alipay/mobile/nebula/R$string;->h5_URL_error_new:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "errorResult":Ljava/lang/String;
    goto :goto_0

    .line 60
    .end local v0    # "errorResult":Ljava/lang/String;
    :cond_5
    const/4 v1, -0x8

    if-eq p0, v1, :cond_6

    const/4 v1, 0x3

    if-eq p0, v1, :cond_6

    const/4 v1, 0x4

    if-ne p0, v1, :cond_7

    .line 63
    :cond_6
    invoke-static {}, Lcom/alipay/mobile/nebulacore/env/H5Environment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/alipay/mobile/nebula/R$string;->h5_error_timeout_new:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "errorResult":Ljava/lang/String;
    goto :goto_0

    .line 64
    .end local v0    # "errorResult":Ljava/lang/String;
    :cond_7
    const/16 v1, -0x9

    if-ne p0, v1, :cond_8

    .line 65
    invoke-static {}, Lcom/alipay/mobile/nebulacore/env/H5Environment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/alipay/mobile/nebula/R$string;->h5_redirect_loop:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "errorResult":Ljava/lang/String;
    goto :goto_0

    .line 66
    .end local v0    # "errorResult":Ljava/lang/String;
    :cond_8
    const/4 v1, -0x1

    if-eq p0, v1, :cond_9

    const/4 v1, -0x3

    if-eq p0, v1, :cond_9

    const/16 v1, -0xd

    if-eq p0, v1, :cond_9

    const/16 v1, -0xe

    if-eq p0, v1, :cond_9

    const/16 v1, -0xf

    if-eq p0, v1, :cond_9

    if-eqz p0, :cond_9

    const/4 v1, 0x5

    if-eq p0, v1, :cond_9

    const/4 v1, 0x6

    if-eq p0, v1, :cond_9

    const/16 v1, 0xb

    if-eq p0, v1, :cond_9

    const/16 v1, 0xd

    if-eq p0, v1, :cond_9

    const/4 v1, 0x2

    if-ne p0, v1, :cond_a

    .line 77
    :cond_9
    invoke-static {}, Lcom/alipay/mobile/nebulacore/env/H5Environment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/alipay/mobile/nebula/R$string;->h5_network_error_new:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "errorResult":Ljava/lang/String;
    goto/16 :goto_0

    .line 78
    .end local v0    # "errorResult":Ljava/lang/String;
    :cond_a
    const/16 v1, 0x190

    if-eq p0, v1, :cond_b

    const/16 v1, 0x1f7

    if-eq p0, v1, :cond_b

    const/16 v1, 0x191

    if-eq p0, v1, :cond_b

    const/16 v1, 0x199

    if-eq p0, v1, :cond_b

    const/16 v1, 0x19a

    if-eq p0, v1, :cond_b

    const/16 v1, 0x19b

    if-eq p0, v1, :cond_b

    const/16 v1, 0x19c

    if-eq p0, v1, :cond_b

    const/16 v1, 0x1f4

    if-eq p0, v1, :cond_b

    const/16 v1, 0x1f5

    if-eq p0, v1, :cond_b

    const/16 v1, 0x1f6

    if-ne p0, v1, :cond_c

    .line 88
    :cond_b
    invoke-static {}, Lcom/alipay/mobile/nebulacore/env/H5Environment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/alipay/mobile/nebula/R$string;->h5_server_error_new:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "errorResult":Ljava/lang/String;
    goto/16 :goto_0

    .line 90
    .end local v0    # "errorResult":Ljava/lang/String;
    :cond_c
    invoke-static {}, Lcom/alipay/mobile/nebulacore/env/H5Environment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/alipay/mobile/nebula/R$string;->h5_unknown_error:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "errorResult":Ljava/lang/String;
    goto/16 :goto_0
.end method
