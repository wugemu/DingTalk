.class public Lcom/alibaba/android/dingtalk/guard/ui/fragment/WifiUnavailableFragment;
.super Lcom/alibaba/android/dingtalk/guard/ui/fragment/BaseBleFragment;
.source "WifiUnavailableFragment.java"


# instance fields
.field private a:I

.field private b:Landroid/view/View;

.field private c:Landroid/widget/TextView;

.field private d:Lbsy$c;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BaseBleFragment;-><init>()V

    .line 28
    const/4 v0, 0x0

    iput v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/WifiUnavailableFragment;->a:I

    .line 158
    new-instance v0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/WifiUnavailableFragment$5;

    invoke-direct {v0, p0}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/WifiUnavailableFragment$5;-><init>(Lcom/alibaba/android/dingtalk/guard/ui/fragment/WifiUnavailableFragment;)V

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/WifiUnavailableFragment;->d:Lbsy$c;

    return-void
.end method

.method private E()Ljava/lang/String;
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 123
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/WifiUnavailableFragment;->m()Lbsw$b;

    move-result-object v0

    .line 124
    .local v0, "dataSource":Lbsw$b;
    if-eqz v0, :cond_0

    .line 125
    invoke-interface {v0}, Lbsw$b;->B()Ljava/lang/String;

    move-result-object v1

    .line 127
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalk/guard/ui/fragment/WifiUnavailableFragment;)I
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalk/guard/ui/fragment/WifiUnavailableFragment;

    .prologue
    .line 20
    iget v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/WifiUnavailableFragment;->a:I

    return v0
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalk/guard/ui/fragment/WifiUnavailableFragment;I)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/dingtalk/guard/ui/fragment/WifiUnavailableFragment;
    .param p1, "x1"    # I

    .prologue
    .line 20
    invoke-direct {p0, p1}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/WifiUnavailableFragment;->b(I)V

    return-void
.end method

.method static synthetic b(Lcom/alibaba/android/dingtalk/guard/ui/fragment/WifiUnavailableFragment;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalk/guard/ui/fragment/WifiUnavailableFragment;

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/WifiUnavailableFragment;->E()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private b(I)V
    .locals 2
    .param p1, "state"    # I

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/16 v1, 0x8

    .line 139
    iput p1, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/WifiUnavailableFragment;->a:I

    .line 140
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 141
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/WifiUnavailableFragment;->b:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 142
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/WifiUnavailableFragment;->c:Landroid/widget/TextView;

    sget v1, Lbrx$g;->dt_device_config_wifi_connecting:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 150
    :goto_0
    return-void

    .line 143
    :cond_0
    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    .line 144
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/WifiUnavailableFragment;->b:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 145
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/WifiUnavailableFragment;->c:Landroid/widget/TextView;

    sget v1, Lbrx$g;->dt_door_guard_connected_wifi:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 147
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/WifiUnavailableFragment;->b:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 148
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/WifiUnavailableFragment;->c:Landroid/widget/TextView;

    sget v1, Lbrx$g;->dt_smart_device_config_wire_net_retry:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0
.end method

.method static synthetic c(Lcom/alibaba/android/dingtalk/guard/ui/fragment/WifiUnavailableFragment;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalk/guard/ui/fragment/WifiUnavailableFragment;

    .prologue
    .line 20
    .line 1131
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/WifiUnavailableFragment;->m()Lbsw$b;

    move-result-object v0

    .line 1132
    if-eqz v0, :cond_0

    .line 1133
    invoke-interface {v0}, Lbsw$b;->C()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    .line 1135
    :cond_0
    const/4 v0, 0x0

    .line 20
    goto :goto_0
.end method


# virtual methods
.method public onDestroy()V
    .locals 1

    .prologue
    .line 154
    invoke-super {p0}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BaseBleFragment;->onDestroy()V

    .line 155
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/WifiUnavailableFragment;->d:Lbsy$c;

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/WifiUnavailableFragment;->b(Lbsy$a;)V

    .line 156
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 9
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/16 v8, 0x8

    const/4 v7, 0x0

    .line 40
    invoke-super {p0, p1, p2}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BaseBleFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 42
    sget v6, Lbrx$d;->state_loading:I

    invoke-virtual {p0, v6}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/WifiUnavailableFragment;->a(I)Landroid/view/View;

    move-result-object v6

    iput-object v6, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/WifiUnavailableFragment;->b:Landroid/view/View;

    .line 43
    sget v6, Lbrx$d;->state_text:I

    invoke-virtual {p0, v6}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/WifiUnavailableFragment;->a(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/WifiUnavailableFragment;->c:Landroid/widget/TextView;

    .line 46
    sget v6, Lbrx$d;->retry_layout:I

    invoke-virtual {p1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 47
    .local v0, "retryLayout":Landroid/view/View;
    new-instance v6, Lcom/alibaba/android/dingtalk/guard/ui/fragment/WifiUnavailableFragment$1;

    invoke-direct {v6, p0}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/WifiUnavailableFragment$1;-><init>(Lcom/alibaba/android/dingtalk/guard/ui/fragment/WifiUnavailableFragment;)V

    invoke-virtual {v0, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 58
    sget v6, Lbrx$d;->skip_layout:I

    invoke-virtual {p1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 59
    .local v1, "skipLayout":Landroid/view/View;
    new-instance v6, Lcom/alibaba/android/dingtalk/guard/ui/fragment/WifiUnavailableFragment$2;

    invoke-direct {v6, p0}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/WifiUnavailableFragment$2;-><init>(Lcom/alibaba/android/dingtalk/guard/ui/fragment/WifiUnavailableFragment;)V

    invoke-virtual {v1, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 71
    sget v6, Lbrx$d;->static_ip_layout:I

    invoke-virtual {p1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 1115
    .local v4, "staticIpLayout":Landroid/view/View;
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/WifiUnavailableFragment;->m()Lbsw$b;

    move-result-object v6

    .line 1116
    if-eqz v6, :cond_1

    .line 1117
    invoke-interface {v6}, Lbsw$b;->o()Z

    move-result v6

    .line 73
    :goto_0
    if-eqz v6, :cond_2

    .line 74
    invoke-virtual {v4, v7}, Landroid/view/View;->setVisibility(I)V

    .line 75
    new-instance v6, Lcom/alibaba/android/dingtalk/guard/ui/fragment/WifiUnavailableFragment$3;

    invoke-direct {v6, p0}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/WifiUnavailableFragment$3;-><init>(Lcom/alibaba/android/dingtalk/guard/ui/fragment/WifiUnavailableFragment;)V

    invoke-virtual {v4, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 90
    :goto_1
    sget v6, Lbrx$d;->ll_switch_wire_network:I

    invoke-virtual {p1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    .line 91
    .local v5, "switchWireLayout":Landroid/view/View;
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/WifiUnavailableFragment;->f()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 92
    invoke-virtual {v5, v7}, Landroid/view/View;->setVisibility(I)V

    .line 93
    new-instance v6, Lcom/alibaba/android/dingtalk/guard/ui/fragment/WifiUnavailableFragment$4;

    invoke-direct {v6, p0}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/WifiUnavailableFragment$4;-><init>(Lcom/alibaba/android/dingtalk/guard/ui/fragment/WifiUnavailableFragment;)V

    invoke-virtual {v5, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 103
    :goto_2
    sget v6, Lbrx$d;->ssid_tv:I

    invoke-virtual {p1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 104
    .local v3, "ssidTextView":Landroid/widget/TextView;
    invoke-direct {p0}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/WifiUnavailableFragment;->E()Ljava/lang/String;

    move-result-object v2

    .line 105
    .local v2, "ssid":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 106
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 109
    :cond_0
    invoke-direct {p0, v7}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/WifiUnavailableFragment;->b(I)V

    .line 110
    iget-object v6, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/WifiUnavailableFragment;->d:Lbsy$c;

    invoke-virtual {p0, v6}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/WifiUnavailableFragment;->a(Lbsy$a;)V

    .line 111
    return-void

    .end local v2    # "ssid":Ljava/lang/String;
    .end local v3    # "ssidTextView":Landroid/widget/TextView;
    .end local v5    # "switchWireLayout":Landroid/view/View;
    :cond_1
    move v6, v7

    .line 1119
    goto :goto_0

    .line 86
    :cond_2
    invoke-virtual {v4, v8}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 100
    .restart local v5    # "switchWireLayout":Landroid/view/View;
    :cond_3
    invoke-virtual {v5, v8}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2
.end method

.method protected final r_()I
    .locals 1

    .prologue
    .line 35
    sget v0, Lbrx$e;->activity_device_config_wifi_unavailiable:I

    return v0
.end method
