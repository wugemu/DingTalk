.class public Lcom/alibaba/android/dingtalk/guard/ui/activity/FloatConnectWifiActivity;
.super Lcom/alibaba/android/dingtalk/guard/ui/activity/BaseConnectWifiActivity;
.source "FloatConnectWifiActivity.java"


# instance fields
.field private e:Landroid/view/ViewStub;

.field private f:Landroid/view/View;

.field private g:Landroid/view/ViewStub;

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;

.field private k:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/alibaba/android/dingtalk/guard/ui/activity/BaseConnectWifiActivity;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalk/guard/ui/activity/FloatConnectWifiActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalk/guard/ui/activity/FloatConnectWifiActivity;

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/alibaba/android/dingtalk/guard/ui/activity/FloatConnectWifiActivity;->d()Z

    move-result v0

    return v0
.end method

.method private d()Z
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 169
    invoke-static {}, Lbma;->a()Lbma;

    invoke-static {}, Lbma;->d()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1178
    const-string/jumbo v0, "FloatConnectWifiActivity"

    const-string/jumbo v1, "alpha_float_connect_wifi_guide_enter"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcps;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 1179
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/activity/FloatConnectWifiActivity;->e:Landroid/view/ViewStub;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/ViewStub;->setVisibility(I)V

    .line 1180
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/activity/FloatConnectWifiActivity;->g:Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    .line 1181
    if-eqz v0, :cond_0

    .line 1182
    sget v1, Lbrx$d;->tv_single:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 1183
    new-instance v1, Lcom/alibaba/android/dingtalk/guard/ui/activity/FloatConnectWifiActivity$5;

    invoke-direct {v1, p0}, Lcom/alibaba/android/dingtalk/guard/ui/activity/FloatConnectWifiActivity$5;-><init>(Lcom/alibaba/android/dingtalk/guard/ui/activity/FloatConnectWifiActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 171
    :cond_0
    invoke-static {}, Lbma;->a()Lbma;

    invoke-static {}, Lbma;->e()V

    .line 172
    const/4 v0, 0x1

    .line 174
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public finish()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v1, 0x0

    .line 194
    invoke-super {p0}, Lcom/alibaba/android/dingtalk/guard/ui/activity/BaseConnectWifiActivity;->finish()V

    .line 195
    invoke-virtual {p0, v1, v1}, Lcom/alibaba/android/dingtalk/guard/ui/activity/FloatConnectWifiActivity;->overridePendingTransition(II)V

    .line 196
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/guard/ui/activity/FloatConnectWifiActivity;->f:Landroid/view/View;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/alibaba/android/dingtalk/guard/ui/activity/FloatConnectWifiActivity;->f:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    .line 197
    sget v1, Lbrx$a;->device_alpha_top_exit:I

    .line 198
    invoke-static {p0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 199
    .local v0, "animation":Landroid/view/animation/Animation;
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/guard/ui/activity/FloatConnectWifiActivity;->f:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setAnimation(Landroid/view/animation/Animation;)V

    .line 201
    .end local v0    # "animation":Landroid/view/animation/Animation;
    :cond_0
    return-void
.end method

.method public onBackPressed()V
    .locals 1

    .prologue
    .line 205
    invoke-direct {p0}, Lcom/alibaba/android/dingtalk/guard/ui/activity/FloatConnectWifiActivity;->d()Z

    move-result v0

    if-nez v0, :cond_0

    .line 206
    invoke-super {p0}, Lcom/alibaba/android/dingtalk/guard/ui/activity/BaseConnectWifiActivity;->onBackPressed()V

    .line 208
    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 10
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v2, 0x0

    const/4 v9, 0x0

    .line 53
    invoke-super {p0, p1}, Lcom/alibaba/android/dingtalk/guard/ui/activity/BaseConnectWifiActivity;->onCreate(Landroid/os/Bundle;)V

    .line 54
    invoke-virtual {p0, v9, v9}, Lcom/alibaba/android/dingtalk/guard/ui/activity/FloatConnectWifiActivity;->overridePendingTransition(II)V

    .line 56
    sget v1, Lbrx$e;->activity_device_float_connect_wifi:I

    invoke-virtual {p0, v1}, Lcom/alibaba/android/dingtalk/guard/ui/activity/FloatConnectWifiActivity;->setContentView(I)V

    .line 1105
    sget v1, Lbrx$d;->vs_float_connect_wifi:I

    invoke-virtual {p0, v1}, Lcom/alibaba/android/dingtalk/guard/ui/activity/FloatConnectWifiActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewStub;

    iput-object v1, p0, Lcom/alibaba/android/dingtalk/guard/ui/activity/FloatConnectWifiActivity;->e:Landroid/view/ViewStub;

    .line 1106
    sget v1, Lbrx$d;->vs_guide:I

    invoke-virtual {p0, v1}, Lcom/alibaba/android/dingtalk/guard/ui/activity/FloatConnectWifiActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewStub;

    iput-object v1, p0, Lcom/alibaba/android/dingtalk/guard/ui/activity/FloatConnectWifiActivity;->g:Landroid/view/ViewStub;

    .line 60
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalk/guard/ui/activity/FloatConnectWifiActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 61
    .local v0, "intent":Landroid/content/Intent;
    if-eqz v0, :cond_0

    .line 62
    const-string/jumbo v1, "action"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/android/dingtalk/guard/ui/activity/FloatConnectWifiActivity;->h:Ljava/lang/String;

    .line 63
    const-string/jumbo v1, "corpId"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/android/dingtalk/guard/ui/activity/FloatConnectWifiActivity;->i:Ljava/lang/String;

    .line 64
    const-string/jumbo v1, "ssid"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/android/dingtalk/guard/ui/activity/FloatConnectWifiActivity;->j:Ljava/lang/String;

    .line 65
    const-string/jumbo v1, "psk"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/android/dingtalk/guard/ui/activity/FloatConnectWifiActivity;->k:Ljava/lang/String;

    .line 68
    :cond_0
    const-string/jumbo v1, "requestLocationPermission"

    iget-object v3, p0, Lcom/alibaba/android/dingtalk/guard/ui/activity/FloatConnectWifiActivity;->h:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 69
    new-instance v1, Lcom/alibaba/android/dingtalk/guard/ui/activity/FloatConnectWifiActivity$1;

    invoke-direct {v1, p0}, Lcom/alibaba/android/dingtalk/guard/ui/activity/FloatConnectWifiActivity$1;-><init>(Lcom/alibaba/android/dingtalk/guard/ui/activity/FloatConnectWifiActivity;)V

    invoke-virtual {p0, v9, v1}, Lcom/alibaba/android/dingtalk/guard/ui/activity/FloatConnectWifiActivity;->a(ZLbzc;)V

    .line 99
    :cond_1
    const-string/jumbo v1, "floatConnectWifi"

    iget-object v3, p0, Lcom/alibaba/android/dingtalk/guard/ui/activity/FloatConnectWifiActivity;->h:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 100
    iget-object v3, p0, Lcom/alibaba/android/dingtalk/guard/ui/activity/FloatConnectWifiActivity;->i:Ljava/lang/String;

    iget-object v4, p0, Lcom/alibaba/android/dingtalk/guard/ui/activity/FloatConnectWifiActivity;->j:Ljava/lang/String;

    iget-object v5, p0, Lcom/alibaba/android/dingtalk/guard/ui/activity/FloatConnectWifiActivity;->k:Ljava/lang/String;

    .line 1110
    const-string/jumbo v1, "FloatConnectWifiActivity"

    const-string/jumbo v6, "alpha_float_connect_wifi_enter"

    invoke-static {v1, v6, v2}, Lcps;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 1111
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/guard/ui/activity/FloatConnectWifiActivity;->e:Landroid/view/ViewStub;

    invoke-virtual {v1}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/android/dingtalk/guard/ui/activity/FloatConnectWifiActivity;->f:Landroid/view/View;

    .line 1112
    sget v1, Lbrx$a;->device_alpha_top_enter:I

    .line 1113
    invoke-static {p0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    .line 1114
    iget-object v6, p0, Lcom/alibaba/android/dingtalk/guard/ui/activity/FloatConnectWifiActivity;->f:Landroid/view/View;

    invoke-virtual {v6, v1}, Landroid/view/View;->setAnimation(Landroid/view/animation/Animation;)V

    .line 1115
    sget v1, Lbrx$d;->layout_one_key_wifi:I

    invoke-virtual {p0, v1}, Lcom/alibaba/android/dingtalk/guard/ui/activity/FloatConnectWifiActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/dingtalk/guard/ui/activity/OneKeyWifiLayout;

    .line 1116
    sget v6, Lbrx$d;->layout_close:I

    invoke-virtual {p0, v6}, Lcom/alibaba/android/dingtalk/guard/ui/activity/FloatConnectWifiActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    .line 1119
    invoke-static {v3}, Lbly;->b(Ljava/lang/String;)Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    move-result-object v7

    .line 1120
    if-eqz v7, :cond_2

    .line 1121
    iget-object v2, v7, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgName:Ljava/lang/String;

    .line 1124
    :cond_2
    new-instance v7, Lcom/alibaba/android/dingtalk/guard/ui/activity/FloatConnectWifiActivity$2;

    invoke-direct {v7, p0, v1}, Lcom/alibaba/android/dingtalk/guard/ui/activity/FloatConnectWifiActivity$2;-><init>(Lcom/alibaba/android/dingtalk/guard/ui/activity/FloatConnectWifiActivity;Lcom/alibaba/android/dingtalk/guard/ui/activity/OneKeyWifiLayout;)V

    invoke-virtual {p0, v1, v7}, Lcom/alibaba/android/dingtalk/guard/ui/activity/FloatConnectWifiActivity;->a(Lcom/alibaba/android/dingtalk/guard/ui/activity/OneKeyWifiLayout;Lcom/alibaba/android/dingtalk/guard/ui/activity/OneKeyWifiLayout$a;)Lcom/alibaba/android/dingtalk/alphabase/callback/QuickConnectWifiCallback;

    move-result-object v7

    iput-object v7, p0, Lcom/alibaba/android/dingtalk/guard/ui/activity/FloatConnectWifiActivity;->d:Lcom/alibaba/android/dingtalk/alphabase/callback/QuickConnectWifiCallback;

    .line 1139
    sget-object v7, Lcom/alibaba/android/dingtalk/guard/ui/activity/OneKeyWifiLayout$Style;->SMALL:Lcom/alibaba/android/dingtalk/guard/ui/activity/OneKeyWifiLayout$Style;

    invoke-virtual {v1, v7}, Lcom/alibaba/android/dingtalk/guard/ui/activity/OneKeyWifiLayout;->setStyle(Lcom/alibaba/android/dingtalk/guard/ui/activity/OneKeyWifiLayout$Style;)V

    .line 1140
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalk/guard/ui/activity/FloatConnectWifiActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    sget v8, Lbrx$g;->dt_alpha_wifi_found:I

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Lcom/alibaba/android/dingtalk/guard/ui/activity/OneKeyWifiLayout;->setTitle(Ljava/lang/String;)V

    .line 1141
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_3

    .line 1142
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalk/guard/ui/activity/FloatConnectWifiActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    sget v8, Lbrx$g;->and_alpha_wifi_found:I

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    aput-object v2, v8, v9

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/alibaba/android/dingtalk/guard/ui/activity/OneKeyWifiLayout;->setTitle(Ljava/lang/String;)V

    .line 1144
    :cond_3
    invoke-virtual {v1, v4}, Lcom/alibaba/android/dingtalk/guard/ui/activity/OneKeyWifiLayout;->a(Ljava/lang/String;)V

    .line 1145
    new-instance v2, Lcom/alibaba/android/dingtalk/guard/ui/activity/FloatConnectWifiActivity$3;

    invoke-direct {v2, p0, v3, v4, v5}, Lcom/alibaba/android/dingtalk/guard/ui/activity/FloatConnectWifiActivity$3;-><init>(Lcom/alibaba/android/dingtalk/guard/ui/activity/FloatConnectWifiActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/alibaba/android/dingtalk/guard/ui/activity/OneKeyWifiLayout;->setOneKeyWifiListener(Landroid/view/View$OnClickListener;)V

    .line 1158
    new-instance v1, Lcom/alibaba/android/dingtalk/guard/ui/activity/FloatConnectWifiActivity$4;

    invoke-direct {v1, p0}, Lcom/alibaba/android/dingtalk/guard/ui/activity/FloatConnectWifiActivity$4;-><init>(Lcom/alibaba/android/dingtalk/guard/ui/activity/FloatConnectWifiActivity;)V

    invoke-virtual {v6, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 102
    :cond_4
    return-void
.end method
