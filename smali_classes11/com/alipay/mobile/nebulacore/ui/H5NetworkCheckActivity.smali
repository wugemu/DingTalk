.class public Lcom/alipay/mobile/nebulacore/ui/H5NetworkCheckActivity;
.super Lcom/alipay/mobile/nebulacore/wallet/H5WalletBaseActivity;
.source "H5NetworkCheckActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/alipay/mobile/nebulacore/wallet/H5WalletBaseActivity;-><init>()V

    return-void
.end method

.method private intToIp(I)Ljava/lang/String;
    .locals 2
    .param p1, "paramInt"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 157
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    and-int/lit16 v1, p1, 0xff

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    shr-int/lit8 v1, p1, 0x8

    and-int/lit16 v1, v1, 0xff

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    shr-int/lit8 v1, p1, 0x10

    and-int/lit16 v1, v1, 0xff

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    shr-int/lit8 v1, p1, 0x18

    and-int/lit16 v1, v1, 0xff

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 26
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 28
    invoke-super/range {p0 .. p1}, Lcom/alipay/mobile/nebulacore/wallet/H5WalletBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 29
    sget v23, Lcom/alipay/mobile/nebula/R$layout;->h5_network_check_activity:I

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/nebulacore/ui/H5NetworkCheckActivity;->setContentView(I)V

    .line 30
    invoke-virtual/range {p0 .. p0}, Lcom/alipay/mobile/nebulacore/ui/H5NetworkCheckActivity;->getIntent()Landroid/content/Intent;

    move-result-object v11

    .line 33
    .local v11, "intent":Landroid/content/Intent;
    sget v23, Lcom/alipay/mobile/nebula/R$id;->h5_error_check_layout:I

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/nebulacore/ui/H5NetworkCheckActivity;->findViewById(I)Landroid/view/View;

    move-result-object v16

    check-cast v16, Landroid/widget/RelativeLayout;

    .line 36
    .local v16, "relativeLayout":Landroid/widget/RelativeLayout;
    invoke-static {}, Lcom/alipay/mobile/nebulacore/Nebula;->getProviderManager()Lcom/alipay/mobile/nebula/provider/H5ProviderManager;

    move-result-object v23

    const-class v24, Lcom/alipay/mobile/nebula/provider/H5NetworkCheckViewProvider;

    invoke-virtual/range {v24 .. v24}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Lcom/alipay/mobile/nebula/provider/H5ProviderManager;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/alipay/mobile/nebula/provider/H5NetworkCheckViewProvider;

    .line 38
    .local v10, "h5NetworkCheckViewProvider":Lcom/alipay/mobile/nebula/provider/H5NetworkCheckViewProvider;
    if-eqz v10, :cond_5

    .line 40
    move-object/from16 v0, p0

    invoke-interface {v10, v0}, Lcom/alipay/mobile/nebula/provider/H5NetworkCheckViewProvider;->getTitleBarView(Landroid/app/Activity;)Landroid/view/View;

    move-result-object v20

    .line 41
    .local v20, "view":Landroid/view/View;
    invoke-virtual/range {v16 .. v16}, Landroid/widget/RelativeLayout;->removeAllViews()V

    .line 42
    move-object/from16 v0, v16

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 56
    .end local v20    # "view":Landroid/view/View;
    :goto_0
    sget v23, Lcom/alipay/mobile/nebula/R$id;->error_code:I

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/nebulacore/ui/H5NetworkCheckActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 57
    .local v7, "errorCode":Landroid/widget/TextView;
    const-string/jumbo v23, "error_code"

    move-object/from16 v0, v23

    invoke-virtual {v11, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 58
    .local v8, "errorCodeStr":Ljava/lang/String;
    if-eqz v8, :cond_6

    const-string/jumbo v23, ""

    move-object/from16 v0, v23

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-nez v23, :cond_6

    .line 59
    const-string/jumbo v23, "error_code"

    move-object/from16 v0, v23

    invoke-virtual {v11, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v7, v0}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    .line 65
    :goto_1
    sget v23, Lcom/alipay/mobile/nebula/R$id;->url:I

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/nebulacore/ui/H5NetworkCheckActivity;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Landroid/widget/TextView;

    .line 66
    .local v18, "url":Landroid/widget/TextView;
    const-string/jumbo v23, "url"

    move-object/from16 v0, v23

    invoke-virtual {v11, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 67
    .local v19, "urlStr":Ljava/lang/String;
    if-eqz v19, :cond_7

    const-string/jumbo v23, ""

    move-object/from16 v0, v19

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-nez v23, :cond_7

    .line 68
    const-string/jumbo v23, "url"

    move-object/from16 v0, v23

    invoke-virtual {v11, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v18

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    .line 73
    :goto_2
    const-string/jumbo v23, "wifi"

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/nebulacore/ui/H5NetworkCheckActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Landroid/net/wifi/WifiManager;

    .line 74
    .local v21, "wifiManager":Landroid/net/wifi/WifiManager;
    const/4 v5, 0x0

    .line 75
    .local v5, "di":Landroid/net/DhcpInfo;
    const/16 v22, -0x1

    .line 76
    .local v22, "wifiState":I
    if-eqz v21, :cond_0

    .line 77
    invoke-virtual/range {v21 .. v21}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v22

    .line 78
    invoke-virtual/range {v21 .. v21}, Landroid/net/wifi/WifiManager;->getDhcpInfo()Landroid/net/DhcpInfo;

    move-result-object v5

    .line 80
    :cond_0
    const-string/jumbo v23, "connectivity"

    .line 81
    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/nebulacore/ui/H5NetworkCheckActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/ConnectivityManager;

    .line 82
    .local v4, "cm":Landroid/net/ConnectivityManager;
    invoke-virtual {v4}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v13

    .line 83
    .local v13, "ni":Landroid/net/NetworkInfo;
    const-string/jumbo v2, ""

    .line 84
    .local v2, "apn":Ljava/lang/String;
    if-eqz v13, :cond_1

    .line 85
    invoke-virtual {v13}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    move-result-object v2

    .line 86
    if-nez v2, :cond_1

    .line 87
    const-string/jumbo v2, ""

    .line 91
    :cond_1
    sget v23, Lcom/alipay/mobile/nebula/R$id;->state:I

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/nebulacore/ui/H5NetworkCheckActivity;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/TextView;

    .line 92
    .local v17, "state":Landroid/widget/TextView;
    invoke-static {}, Lcom/alipay/mobile/nebulacore/env/H5Environment;->getResources()Landroid/content/res/Resources;

    move-result-object v23

    sget v24, Lcom/alipay/mobile/nebula/R$string;->h5_network_check_wifi:I

    invoke-virtual/range {v23 .. v24}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v17

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    .line 93
    packed-switch v22, :pswitch_data_0

    .line 112
    invoke-static {}, Lcom/alipay/mobile/nebulacore/env/H5Environment;->getResources()Landroid/content/res/Resources;

    move-result-object v23

    sget v24, Lcom/alipay/mobile/nebula/R$string;->h5_network_check_unknow:I

    invoke-virtual/range {v23 .. v24}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v23

    .line 111
    move-object/from16 v0, v17

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    .line 115
    :goto_3
    new-instance v23, Ljava/lang/StringBuilder;

    const-string/jumbo v24, "\n"

    invoke-direct/range {v23 .. v24}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/alipay/mobile/nebulacore/env/H5Environment;->getResources()Landroid/content/res/Resources;

    move-result-object v24

    sget v25, Lcom/alipay/mobile/nebula/R$string;->h5_network_check_gate:I

    invoke-virtual/range {v24 .. v25}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v17

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    .line 116
    if-eqz v5, :cond_9

    .line 117
    iget v0, v5, Landroid/net/DhcpInfo;->gateway:I

    move/from16 v23, v0

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-direct {v0, v1}, Lcom/alipay/mobile/nebulacore/ui/H5NetworkCheckActivity;->intToIp(I)Ljava/lang/String;

    move-result-object v9

    .line 118
    .local v9, "gate":Ljava/lang/String;
    if-eqz v9, :cond_2

    const-string/jumbo v23, ""

    move-object/from16 v0, v23

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_8

    .line 120
    :cond_2
    invoke-static {}, Lcom/alipay/mobile/nebulacore/env/H5Environment;->getResources()Landroid/content/res/Resources;

    move-result-object v23

    sget v24, Lcom/alipay/mobile/nebula/R$string;->h5_network_check_unknow:I

    invoke-virtual/range {v23 .. v24}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v23

    .line 119
    move-object/from16 v0, v17

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    .line 127
    .end local v9    # "gate":Ljava/lang/String;
    :goto_4
    new-instance v23, Ljava/lang/StringBuilder;

    const-string/jumbo v24, "\n"

    invoke-direct/range {v23 .. v24}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/alipay/mobile/nebulacore/env/H5Environment;->getResources()Landroid/content/res/Resources;

    move-result-object v24

    sget v25, Lcom/alipay/mobile/nebula/R$string;->h5_network_check_apn:I

    invoke-virtual/range {v24 .. v25}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string/jumbo v24, ""

    .line 128
    move-object/from16 v0, v24

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_3

    .line 129
    invoke-static {}, Lcom/alipay/mobile/nebulacore/env/H5Environment;->getResources()Landroid/content/res/Resources;

    move-result-object v24

    sget v25, Lcom/alipay/mobile/nebula/R$string;->h5_network_check_unknow:I

    invoke-virtual/range {v24 .. v25}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .end local v2    # "apn":Ljava/lang/String;
    :cond_3
    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    .line 127
    move-object/from16 v0, v17

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    .line 131
    sget v23, Lcom/alipay/mobile/nebula/R$id;->dns:I

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/nebulacore/ui/H5NetworkCheckActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 132
    .local v6, "dns":Landroid/widget/TextView;
    invoke-static {}, Lcom/alipay/mobile/nebulacore/env/H5Environment;->getResources()Landroid/content/res/Resources;

    move-result-object v23

    sget v24, Lcom/alipay/mobile/nebula/R$string;->h5_network_check_ip:I

    invoke-virtual/range {v23 .. v24}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v6, v0}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    .line 133
    if-eqz v5, :cond_b

    .line 134
    iget v0, v5, Landroid/net/DhcpInfo;->ipAddress:I

    move/from16 v23, v0

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-direct {v0, v1}, Lcom/alipay/mobile/nebulacore/ui/H5NetworkCheckActivity;->intToIp(I)Ljava/lang/String;

    move-result-object v12

    .line 135
    .local v12, "ip":Ljava/lang/String;
    if-eqz v12, :cond_4

    const-string/jumbo v23, ""

    move-object/from16 v0, v23

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_a

    .line 137
    :cond_4
    invoke-static {}, Lcom/alipay/mobile/nebulacore/env/H5Environment;->getResources()Landroid/content/res/Resources;

    move-result-object v23

    sget v24, Lcom/alipay/mobile/nebula/R$string;->h5_network_check_unknow:I

    invoke-virtual/range {v23 .. v24}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v23

    .line 136
    move-object/from16 v0, v23

    invoke-virtual {v6, v0}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    .line 145
    .end local v12    # "ip":Ljava/lang/String;
    :goto_5
    sget v23, Lcom/alipay/mobile/nebula/R$id;->reason:I

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/nebulacore/ui/H5NetworkCheckActivity;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/TextView;

    .line 146
    .local v14, "reason":Landroid/widget/TextView;
    const-string/jumbo v23, "reason"

    move-object/from16 v0, v23

    invoke-virtual {v11, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 147
    .local v15, "reasonStr":Ljava/lang/String;
    invoke-static {}, Lcom/alipay/mobile/nebulacore/env/H5Environment;->getResources()Landroid/content/res/Resources;

    move-result-object v23

    sget v24, Lcom/alipay/mobile/nebula/R$string;->h5_network_check_reason:I

    invoke-virtual/range {v23 .. v24}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v14, v0}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    .line 148
    if-eqz v15, :cond_c

    const-string/jumbo v23, ""

    move-object/from16 v0, v23

    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-nez v23, :cond_c

    .line 149
    invoke-virtual {v14, v15}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    .line 153
    :goto_6
    return-void

    .line 46
    .end local v4    # "cm":Landroid/net/ConnectivityManager;
    .end local v5    # "di":Landroid/net/DhcpInfo;
    .end local v6    # "dns":Landroid/widget/TextView;
    .end local v7    # "errorCode":Landroid/widget/TextView;
    .end local v8    # "errorCodeStr":Ljava/lang/String;
    .end local v13    # "ni":Landroid/net/NetworkInfo;
    .end local v14    # "reason":Landroid/widget/TextView;
    .end local v15    # "reasonStr":Ljava/lang/String;
    .end local v17    # "state":Landroid/widget/TextView;
    .end local v18    # "url":Landroid/widget/TextView;
    .end local v19    # "urlStr":Ljava/lang/String;
    .end local v21    # "wifiManager":Landroid/net/wifi/WifiManager;
    .end local v22    # "wifiState":I
    :cond_5
    sget v23, Lcom/alipay/mobile/nebula/R$id;->h5_lv_nav_back:I

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/nebulacore/ui/H5NetworkCheckActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageButton;

    .line 47
    .local v3, "button":Landroid/widget/ImageButton;
    new-instance v23, Lcom/alipay/mobile/nebulacore/ui/H5NetworkCheckActivity$1;

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/alipay/mobile/nebulacore/ui/H5NetworkCheckActivity$1;-><init>(Lcom/alipay/mobile/nebulacore/ui/H5NetworkCheckActivity;)V

    move-object/from16 v0, v23

    invoke-virtual {v3, v0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_0

    .line 61
    .end local v3    # "button":Landroid/widget/ImageButton;
    .restart local v7    # "errorCode":Landroid/widget/TextView;
    .restart local v8    # "errorCodeStr":Ljava/lang/String;
    :cond_6
    invoke-static {}, Lcom/alipay/mobile/nebulacore/env/H5Environment;->getResources()Landroid/content/res/Resources;

    move-result-object v23

    sget v24, Lcom/alipay/mobile/nebula/R$string;->h5_network_check_unknow:I

    invoke-virtual/range {v23 .. v24}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v7, v0}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 70
    .restart local v18    # "url":Landroid/widget/TextView;
    .restart local v19    # "urlStr":Ljava/lang/String;
    :cond_7
    invoke-static {}, Lcom/alipay/mobile/nebulacore/env/H5Environment;->getResources()Landroid/content/res/Resources;

    move-result-object v23

    sget v24, Lcom/alipay/mobile/nebula/R$string;->h5_network_check_unknow:I

    invoke-virtual/range {v23 .. v24}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v18

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 96
    .restart local v2    # "apn":Ljava/lang/String;
    .restart local v4    # "cm":Landroid/net/ConnectivityManager;
    .restart local v5    # "di":Landroid/net/DhcpInfo;
    .restart local v13    # "ni":Landroid/net/NetworkInfo;
    .restart local v17    # "state":Landroid/widget/TextView;
    .restart local v21    # "wifiManager":Landroid/net/wifi/WifiManager;
    .restart local v22    # "wifiState":I
    :pswitch_0
    invoke-static {}, Lcom/alipay/mobile/nebulacore/env/H5Environment;->getResources()Landroid/content/res/Resources;

    move-result-object v23

    sget v24, Lcom/alipay/mobile/nebula/R$string;->h5_network_check_disabled:I

    invoke-virtual/range {v23 .. v24}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v23

    .line 95
    move-object/from16 v0, v17

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    .line 99
    :pswitch_1
    invoke-static {}, Lcom/alipay/mobile/nebulacore/env/H5Environment;->getResources()Landroid/content/res/Resources;

    move-result-object v23

    sget v24, Lcom/alipay/mobile/nebula/R$string;->h5_network_check_disabling:I

    invoke-virtual/range {v23 .. v24}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v17

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    .line 104
    :pswitch_2
    invoke-static {}, Lcom/alipay/mobile/nebulacore/env/H5Environment;->getResources()Landroid/content/res/Resources;

    move-result-object v23

    sget v24, Lcom/alipay/mobile/nebula/R$string;->h5_network_check_enabled:I

    invoke-virtual/range {v23 .. v24}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v23

    .line 103
    move-object/from16 v0, v17

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    .line 108
    :pswitch_3
    invoke-static {}, Lcom/alipay/mobile/nebulacore/env/H5Environment;->getResources()Landroid/content/res/Resources;

    move-result-object v23

    sget v24, Lcom/alipay/mobile/nebula/R$string;->h5_network_check_enabling:I

    invoke-virtual/range {v23 .. v24}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v23

    .line 107
    move-object/from16 v0, v17

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    .line 122
    .restart local v9    # "gate":Ljava/lang/String;
    :cond_8
    move-object/from16 v0, v17

    invoke-virtual {v0, v9}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    goto/16 :goto_4

    .line 125
    .end local v9    # "gate":Ljava/lang/String;
    :cond_9
    invoke-static {}, Lcom/alipay/mobile/nebulacore/env/H5Environment;->getResources()Landroid/content/res/Resources;

    move-result-object v23

    sget v24, Lcom/alipay/mobile/nebula/R$string;->h5_network_check_unknow:I

    invoke-virtual/range {v23 .. v24}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v17

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    goto/16 :goto_4

    .line 139
    .end local v2    # "apn":Ljava/lang/String;
    .restart local v6    # "dns":Landroid/widget/TextView;
    .restart local v12    # "ip":Ljava/lang/String;
    :cond_a
    invoke-virtual {v6, v12}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    goto/16 :goto_5

    .line 142
    .end local v12    # "ip":Ljava/lang/String;
    :cond_b
    invoke-static {}, Lcom/alipay/mobile/nebulacore/env/H5Environment;->getResources()Landroid/content/res/Resources;

    move-result-object v23

    sget v24, Lcom/alipay/mobile/nebula/R$string;->h5_network_check_unknow:I

    invoke-virtual/range {v23 .. v24}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v6, v0}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    goto/16 :goto_5

    .line 151
    .restart local v14    # "reason":Landroid/widget/TextView;
    .restart local v15    # "reasonStr":Ljava/lang/String;
    :cond_c
    invoke-static {}, Lcom/alipay/mobile/nebulacore/env/H5Environment;->getResources()Landroid/content/res/Resources;

    move-result-object v23

    sget v24, Lcom/alipay/mobile/nebula/R$string;->h5_network_check_unknow:I

    invoke-virtual/range {v23 .. v24}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v14, v0}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    goto/16 :goto_6

    .line 93
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method
