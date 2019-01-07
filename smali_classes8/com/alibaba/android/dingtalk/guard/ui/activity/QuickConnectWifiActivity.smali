.class public Lcom/alibaba/android/dingtalk/guard/ui/activity/QuickConnectWifiActivity;
.super Lcom/alibaba/android/dingtalk/guard/ui/activity/BaseConnectWifiActivity;
.source "QuickConnectWifiActivity.java"


# instance fields
.field private A:Ljava/lang/String;

.field private B:Landroid/view/View$OnClickListener;

.field private C:Landroid/view/View$OnClickListener;

.field private D:Lblv;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lblv",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private E:Ljava/lang/Boolean;

.field private e:Landroid/view/View;

.field private f:Landroid/widget/TextView;

.field private g:Landroid/view/View;

.field private h:Lcom/alibaba/android/dingtalk/guard/ui/activity/OneKeyWifiLayout;

.field private i:Landroid/view/View;

.field private j:Landroid/view/View;

.field private k:Landroid/widget/TextView;

.field private l:Landroid/view/View;

.field private m:Landroid/widget/TextView;

.field private n:Landroid/view/View;

.field private o:Landroid/view/View;

.field private p:Landroid/widget/TextView;

.field private q:Landroid/view/View;

.field private r:Landroid/widget/TextView;

.field private s:Landroid/view/View;

.field private t:Landroid/widget/TextView;

.field private u:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private v:Ljava/lang/String;

.field private w:Ljava/lang/String;

.field private x:J

.field private y:Ljava/lang/String;

.field private z:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/alibaba/android/dingtalk/guard/ui/activity/BaseConnectWifiActivity;-><init>()V

    .line 93
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/activity/QuickConnectWifiActivity;->E:Ljava/lang/Boolean;

    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalk/guard/ui/activity/QuickConnectWifiActivity;)Ljava/lang/Boolean;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalk/guard/ui/activity/QuickConnectWifiActivity;

    .prologue
    .line 54
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/activity/QuickConnectWifiActivity;->E:Ljava/lang/Boolean;

    return-object v0
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalk/guard/ui/activity/QuickConnectWifiActivity;Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/dingtalk/guard/ui/activity/QuickConnectWifiActivity;
    .param p1, "x1"    # Ljava/lang/Boolean;

    .prologue
    .line 54
    iput-object p1, p0, Lcom/alibaba/android/dingtalk/guard/ui/activity/QuickConnectWifiActivity;->E:Ljava/lang/Boolean;

    return-object p1
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalk/guard/ui/activity/QuickConnectWifiActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/dingtalk/guard/ui/activity/QuickConnectWifiActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 54
    iput-object p1, p0, Lcom/alibaba/android/dingtalk/guard/ui/activity/QuickConnectWifiActivity;->v:Ljava/lang/String;

    return-object p1
.end method

.method private a(Lcma;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcma",
            "<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 111
    .local p1, "callback":Lcma;, "Lcma<Ljava/lang/Boolean;>;"
    new-instance v0, Lcom/alibaba/android/dingtalk/guard/ui/activity/QuickConnectWifiActivity$1;

    invoke-direct {v0, p0, p1}, Lcom/alibaba/android/dingtalk/guard/ui/activity/QuickConnectWifiActivity$1;-><init>(Lcom/alibaba/android/dingtalk/guard/ui/activity/QuickConnectWifiActivity;Lcma;)V

    .line 136
    .local v0, "listener":Lcma;, "Lcma<Lbmw;>;"
    invoke-static {}, Lbnc;->a()Lbnc;

    move-result-object v3

    iget-object v4, p0, Lcom/alibaba/android/dingtalk/guard/ui/activity/QuickConnectWifiActivity;->w:Ljava/lang/String;

    const-class v1, Lcma;

    iget-object v2, p0, Lcom/alibaba/android/dingtalk/guard/ui/activity/QuickConnectWifiActivity;->b:Landroid/app/Activity;

    invoke-static {v0, v1, v2}, Lcon;->a(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcma;

    .line 6397
    const-string/jumbo v2, "ApDeviceService"

    const-string/jumbo v5, "querySimpleOrgNetSettings"

    invoke-static {v2, v5}, Lblu;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 6398
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 6399
    const-string/jumbo v2, "ApDeviceService"

    const-string/jumbo v3, "querySimpleOrgNetSettings corpId is null"

    invoke-static {v2, v3}, Lblu;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 6400
    if-eqz v1, :cond_0

    .line 6401
    const-string/jumbo v2, ""

    const-string/jumbo v3, "corpId is null"

    invoke-interface {v1, v2, v3}, Lcma;->onException(Ljava/lang/String;Ljava/lang/String;)V

    .line 6410
    :cond_0
    :goto_0
    return-void

    .line 6405
    :cond_1
    const-class v2, Lcom/alibaba/android/dingtalk/alpha/rpc/idl/service/ApDeviceIService;

    invoke-static {v2}, Liyx;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/android/dingtalk/alpha/rpc/idl/service/ApDeviceIService;

    .line 6406
    if-nez v2, :cond_2

    .line 6407
    if-eqz v1, :cond_0

    .line 6408
    const-string/jumbo v2, ""

    const-string/jumbo v3, "service is null"

    invoke-interface {v1, v2, v3}, Lcma;->onException(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 6412
    :cond_2
    new-instance v5, Lbnc$2;

    invoke-direct {v5, v3, v1}, Lbnc$2;-><init>(Lbnc;Lcma;)V

    invoke-interface {v2, v4, v5}, Lcom/alibaba/android/dingtalk/alpha/rpc/idl/service/ApDeviceIService;->querySimpleOrgNetSettings(Ljava/lang/String;Liyv;)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalk/guard/ui/activity/QuickConnectWifiActivity;Lcma;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/dingtalk/guard/ui/activity/QuickConnectWifiActivity;
    .param p1, "x1"    # Lcma;

    .prologue
    .line 54
    invoke-direct {p0, p1}, Lcom/alibaba/android/dingtalk/guard/ui/activity/QuickConnectWifiActivity;->a(Lcma;)V

    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalk/guard/ui/activity/QuickConnectWifiActivity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p0, "x0"    # Lcom/alibaba/android/dingtalk/guard/ui/activity/QuickConnectWifiActivity;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 54
    .line 12231
    const/4 v0, 0x0

    .line 12233
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 12236
    :goto_0
    const v1, 0x7a1201

    if-ne v1, v0, :cond_0

    .line 12237
    invoke-direct {p0, p2}, Lcom/alibaba/android/dingtalk/guard/ui/activity/QuickConnectWifiActivity;->a(Ljava/lang/String;)V

    :goto_1
    return-void

    .line 12239
    :cond_0
    invoke-static {p1, p2}, Lcms;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalk/guard/ui/activity/QuickConnectWifiActivity;Ljava/lang/String;ZIZ)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/dingtalk/guard/ui/activity/QuickConnectWifiActivity;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Z
    .param p3, "x3"    # I
    .param p4, "x4"    # Z

    .prologue
    .line 54
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/alibaba/android/dingtalk/guard/ui/activity/QuickConnectWifiActivity;->a(Ljava/lang/String;ZIZ)V

    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalk/guard/ui/activity/QuickConnectWifiActivity;Ljava/util/List;)V
    .locals 4
    .param p0, "x0"    # Lcom/alibaba/android/dingtalk/guard/ui/activity/QuickConnectWifiActivity;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 54
    .line 10169
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 10170
    :cond_0
    const-string/jumbo v0, "QuickConnectWifiActivity"

    const-string/jumbo v1, "ssids is null"

    invoke-static {v0, v1}, Lblu;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 10220
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/alibaba/android/dingtalk/guard/ui/activity/QuickConnectWifiActivity;->a(Ljava/lang/String;)V

    .line 10182
    :goto_0
    return-void

    .line 10175
    :cond_1
    iput-object p1, p0, Lcom/alibaba/android/dingtalk/guard/ui/activity/QuickConnectWifiActivity;->u:Ljava/util/List;

    .line 10177
    invoke-static {}, Lcom/alibaba/android/dingtalk/alpha/common/WifiUtil;->f()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 10178
    invoke-static {}, Lcom/alibaba/android/dingtalk/alpha/common/WifiUtil;->d()Landroid/net/wifi/WifiInfo;

    move-result-object v1

    .line 10179
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 10180
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/alibaba/android/dingtalk/alpha/common/WifiUtil;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 10181
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/guard/ui/activity/QuickConnectWifiActivity;->h:Lcom/alibaba/android/dingtalk/guard/ui/activity/OneKeyWifiLayout;

    invoke-virtual {v1, v0}, Lcom/alibaba/android/dingtalk/guard/ui/activity/OneKeyWifiLayout;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 11191
    :cond_3
    new-instance v0, Lcom/alibaba/android/dingtalk/guard/ui/activity/QuickConnectWifiActivity$6;

    invoke-direct {v0, p0}, Lcom/alibaba/android/dingtalk/guard/ui/activity/QuickConnectWifiActivity$6;-><init>(Lcom/alibaba/android/dingtalk/guard/ui/activity/QuickConnectWifiActivity;)V

    .line 11216
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/guard/ui/activity/QuickConnectWifiActivity;->w:Ljava/lang/String;

    const-class v2, Lcma;

    iget-object v3, p0, Lcom/alibaba/android/dingtalk/guard/ui/activity/QuickConnectWifiActivity;->b:Landroid/app/Activity;

    invoke-static {v0, v2, v3}, Lcon;->a(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcma;

    invoke-static {v1, v0}, Lblz;->a(Ljava/lang/String;Lcma;)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalk/guard/ui/activity/QuickConnectWifiActivity;ZIZ)V
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalk/guard/ui/activity/QuickConnectWifiActivity;
    .param p1, "x1"    # Z
    .param p2, "x2"    # I
    .param p3, "x3"    # Z

    .prologue
    const/4 v0, 0x0

    .line 54
    invoke-direct {p0, p1, v0, v0}, Lcom/alibaba/android/dingtalk/guard/ui/activity/QuickConnectWifiActivity;->a(ZIZ)V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 3
    .param p1, "tips"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 224
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/activity/QuickConnectWifiActivity;->g:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 225
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/activity/QuickConnectWifiActivity;->e:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 226
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/activity/QuickConnectWifiActivity;->f:Landroid/widget/TextView;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget v1, Lbrx$g;->dt_alpha_get_ssid_fail:I

    invoke-virtual {p0, v1}, Lcom/alibaba/android/dingtalk/guard/ui/activity/QuickConnectWifiActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    .end local p1    # "tips":Ljava/lang/String;
    :cond_0
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 227
    const-string/jumbo v0, "QuickConnectWifiActivity"

    const-string/jumbo v1, "alpha_ssid_empty"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcps;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 228
    return-void
.end method

.method private a(Ljava/lang/String;ZIZ)V
    .locals 3
    .param p1, "ssid"    # Ljava/lang/String;
    .param p2, "scanWifi"    # Z
    .param p3, "scanTimeout"    # I
    .param p4, "connectDirectly"    # Z

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 393
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/guard/ui/activity/QuickConnectWifiActivity;->c:Lbni$a;

    iget-object v2, p0, Lcom/alibaba/android/dingtalk/guard/ui/activity/QuickConnectWifiActivity;->w:Ljava/lang/String;

    .line 394
    invoke-virtual {v1, v2}, Lbni$a;->a(Ljava/lang/String;)Lbni$a;

    move-result-object v1

    invoke-virtual {v1, p1}, Lbni$a;->b(Ljava/lang/String;)Lbni$a;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/android/dingtalk/guard/ui/activity/QuickConnectWifiActivity;->v:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lbni$a;->c(Ljava/lang/String;)Lbni$a;

    move-result-object v1

    .line 395
    invoke-virtual {v1, p2}, Lbni$a;->a(Z)Lbni$a;

    move-result-object v1

    .line 7050
    iget-object v2, v1, Lbni$a;->a:Lbni;

    iput p3, v2, Lbni;->e:I

    .line 396
    invoke-virtual {v1, p4}, Lbni$a;->b(Z)Lbni$a;

    move-result-object v1

    const/4 v2, 0x1

    .line 397
    invoke-virtual {v1, v2}, Lbni$a;->c(Z)Lbni$a;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/android/dingtalk/guard/ui/activity/QuickConnectWifiActivity;->d:Lcom/alibaba/android/dingtalk/alphabase/callback/QuickConnectWifiCallback;

    .line 398
    invoke-virtual {v1, v2}, Lbni$a;->a(Lcom/alibaba/android/dingtalk/alphabase/callback/QuickConnectWifiCallback;)Lbni$a;

    move-result-object v1

    .line 7070
    iget-object v0, v1, Lbni$a;->a:Lbni;

    .line 400
    .local v0, "request":Lbni;
    invoke-static {}, Lbmc;->a()Lbmc;

    move-result-object v1

    invoke-virtual {v1, v0}, Lbmc;->a(Lbni;)V

    .line 401
    return-void
.end method

.method private a(ZIZ)V
    .locals 9
    .param p1, "scanWifi"    # Z
    .param p2, "scanTimeout"    # I
    .param p3, "connectDirectly"    # Z

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 349
    const-string/jumbo v1, "QuickConnectWifiActivity"

    const/4 v3, 0x6

    new-array v3, v3, [Ljava/lang/Object;

    const-string/jumbo v4, "tryToConnectWifi scanWifi:"

    aput-object v4, v3, v6

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v3, v7

    const-string/jumbo v4, ", scanTimeout:"

    aput-object v4, v3, v8

    const/4 v4, 0x3

    .line 350
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x4

    const-string/jumbo v5, ", connectDirectly:"

    aput-object v5, v3, v4

    const/4 v4, 0x5

    .line 351
    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v3, v4

    .line 349
    invoke-static {v3}, Lcom/alibaba/doraemon/utils/CommonUtils;->getAppendString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lblu;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 352
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/guard/ui/activity/QuickConnectWifiActivity;->u:Ljava/util/List;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/alibaba/android/dingtalk/guard/ui/activity/QuickConnectWifiActivity;->u:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 353
    :cond_0
    const-string/jumbo v1, "QuickConnectWifiActivity"

    const-string/jumbo v3, "ssids is empty, return"

    invoke-static {v1, v3}, Lblu;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 390
    :cond_1
    :goto_0
    return-void

    .line 356
    :cond_2
    invoke-direct {p0}, Lcom/alibaba/android/dingtalk/guard/ui/activity/QuickConnectWifiActivity;->e()Ljava/lang/String;

    move-result-object v2

    .line 357
    .local v2, "ssid":Ljava/lang/String;
    const-string/jumbo v1, "QuickConnectWifiActivity"

    new-array v3, v8, [Ljava/lang/String;

    const-string/jumbo v4, "tryToConnectWifi ssid = "

    aput-object v4, v3, v6

    aput-object v2, v3, v7

    invoke-static {v3}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lblu;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 358
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 362
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/guard/ui/activity/QuickConnectWifiActivity;->v:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 363
    invoke-direct {p0, v2, p1, p2, p3}, Lcom/alibaba/android/dingtalk/guard/ui/activity/QuickConnectWifiActivity;->a(Ljava/lang/String;ZIZ)V

    goto :goto_0

    .line 365
    :cond_3
    new-instance v0, Lcom/alibaba/android/dingtalk/guard/ui/activity/QuickConnectWifiActivity$9;

    move-object v1, p0

    move v3, p1

    move v4, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/alibaba/android/dingtalk/guard/ui/activity/QuickConnectWifiActivity$9;-><init>(Lcom/alibaba/android/dingtalk/guard/ui/activity/QuickConnectWifiActivity;Ljava/lang/String;ZIZ)V

    .line 388
    .local v0, "getPskListener":Lcma;, "Lcma<Ljava/lang/String;>;"
    iget-object v3, p0, Lcom/alibaba/android/dingtalk/guard/ui/activity/QuickConnectWifiActivity;->w:Ljava/lang/String;

    const-class v1, Lcma;

    iget-object v4, p0, Lcom/alibaba/android/dingtalk/guard/ui/activity/QuickConnectWifiActivity;->b:Landroid/app/Activity;

    invoke-static {v0, v1, v4}, Lcon;->a(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcma;

    invoke-static {v3, v1}, Lblz;->a(Ljava/lang/String;Lcma;)V

    goto :goto_0
.end method

.method static synthetic b(Lcom/alibaba/android/dingtalk/guard/ui/activity/QuickConnectWifiActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalk/guard/ui/activity/QuickConnectWifiActivity;

    .prologue
    .line 54
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/activity/QuickConnectWifiActivity;->w:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic c(Lcom/alibaba/android/dingtalk/guard/ui/activity/QuickConnectWifiActivity;)V
    .locals 10
    .param p0, "x0"    # Lcom/alibaba/android/dingtalk/guard/ui/activity/QuickConnectWifiActivity;

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 54
    .line 11320
    invoke-direct {p0}, Lcom/alibaba/android/dingtalk/guard/ui/activity/QuickConnectWifiActivity;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/alibaba/android/dingtalk/guard/ui/activity/QuickConnectWifiActivity;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 11321
    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v0

    invoke-virtual {v0}, Lccr;->c()J

    move-result-wide v0

    .line 11322
    invoke-static {}, Lblx;->b()Ljava/lang/String;

    move-result-object v2

    .line 11323
    const-string/jumbo v3, "QuickConnectWifiActivity"

    new-array v4, v8, [Ljava/lang/Object;

    const-string/jumbo v5, "uuid = "

    aput-object v5, v4, v6

    aput-object v2, v4, v7

    invoke-static {v4}, Lcom/alibaba/doraemon/utils/CommonUtils;->getAppendString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lblu;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 11324
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 11325
    const-string/jumbo v4, "uid_uuid"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v5, v6

    const-string/jumbo v0, "_"

    aput-object v0, v5, v7

    aput-object v2, v5, v8

    invoke-static {v5}, Lcom/alibaba/doraemon/utils/CommonUtils;->getAppendString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11326
    const-string/jumbo v0, "timestamp"

    new-array v1, v7, [Ljava/lang/Object;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v1, v6

    invoke-static {v1}, Lcom/alibaba/doraemon/utils/CommonUtils;->getAppendString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v3, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11327
    const-string/jumbo v0, "QuickConnectWifiActivity"

    const-string/jumbo v1, "alpha_quick_connect_wifi_begin"

    invoke-static {v0, v1, v3}, Lcps;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 11329
    const-string/jumbo v0, "QuickConnectWifiActivity"

    const-string/jumbo v1, "alpha_auto_scan_wifi"

    invoke-static {v0, v1, v9}, Lcps;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 11331
    invoke-direct {p0, v7, v6, v6}, Lcom/alibaba/android/dingtalk/guard/ui/activity/QuickConnectWifiActivity;->a(ZIZ)V

    .line 11335
    :goto_0
    return-void

    .line 11333
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/activity/QuickConnectWifiActivity;->h:Lcom/alibaba/android/dingtalk/guard/ui/activity/OneKeyWifiLayout;

    invoke-direct {p0}, Lcom/alibaba/android/dingtalk/guard/ui/activity/QuickConnectWifiActivity;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalk/guard/ui/activity/OneKeyWifiLayout;->a(Ljava/lang/String;)V

    .line 11334
    invoke-static {}, Lcom/alibaba/android/dingtalk/alpha/common/WifiUtil;->a()Z

    move-result v0

    if-nez v0, :cond_1

    .line 11335
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalk/guard/ui/activity/QuickConnectWifiActivity;->c()V

    goto :goto_0

    .line 11337
    :cond_1
    invoke-virtual {p0, v7, v9}, Lcom/alibaba/android/dingtalk/guard/ui/activity/QuickConnectWifiActivity;->a(ZLbzc;)V

    goto :goto_0
.end method

.method static synthetic d(Lcom/alibaba/android/dingtalk/guard/ui/activity/QuickConnectWifiActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalk/guard/ui/activity/QuickConnectWifiActivity;

    .prologue
    .line 54
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/activity/QuickConnectWifiActivity;->A:Ljava/lang/String;

    return-object v0
.end method

.method private d()Z
    .locals 1

    .prologue
    .line 343
    invoke-static {}, Lcom/alibaba/android/dingtalk/alpha/common/WifiUtil;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 344
    invoke-static {}, Lcom/alibaba/android/dingtalk/alpha/common/WifiUtil;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 345
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalk/guard/ui/activity/QuickConnectWifiActivity;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic e(Lcom/alibaba/android/dingtalk/guard/ui/activity/QuickConnectWifiActivity;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalk/guard/ui/activity/QuickConnectWifiActivity;

    .prologue
    .line 54
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/activity/QuickConnectWifiActivity;->k:Landroid/widget/TextView;

    return-object v0
.end method

.method private e()Ljava/lang/String;
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 404
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/activity/QuickConnectWifiActivity;->u:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/activity/QuickConnectWifiActivity;->u:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 405
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/activity/QuickConnectWifiActivity;->u:Ljava/util/List;

    iget-object v1, p0, Lcom/alibaba/android/dingtalk/guard/ui/activity/QuickConnectWifiActivity;->u:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 407
    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v0, ""

    goto :goto_0
.end method

.method static synthetic f(Lcom/alibaba/android/dingtalk/guard/ui/activity/QuickConnectWifiActivity;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalk/guard/ui/activity/QuickConnectWifiActivity;

    .prologue
    .line 54
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/activity/QuickConnectWifiActivity;->t:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic g(Lcom/alibaba/android/dingtalk/guard/ui/activity/QuickConnectWifiActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalk/guard/ui/activity/QuickConnectWifiActivity;

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/alibaba/android/dingtalk/guard/ui/activity/QuickConnectWifiActivity;->e()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic h(Lcom/alibaba/android/dingtalk/guard/ui/activity/QuickConnectWifiActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalk/guard/ui/activity/QuickConnectWifiActivity;

    .prologue
    .line 54
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/activity/QuickConnectWifiActivity;->v:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic i(Lcom/alibaba/android/dingtalk/guard/ui/activity/QuickConnectWifiActivity;)Lcom/alibaba/android/dingtalk/guard/ui/activity/OneKeyWifiLayout;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalk/guard/ui/activity/QuickConnectWifiActivity;

    .prologue
    .line 54
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/activity/QuickConnectWifiActivity;->h:Lcom/alibaba/android/dingtalk/guard/ui/activity/OneKeyWifiLayout;

    return-object v0
.end method

.method static synthetic j(Lcom/alibaba/android/dingtalk/guard/ui/activity/QuickConnectWifiActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalk/guard/ui/activity/QuickConnectWifiActivity;

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/alibaba/android/dingtalk/guard/ui/activity/QuickConnectWifiActivity;->d()Z

    move-result v0

    return v0
.end method

.method static synthetic k(Lcom/alibaba/android/dingtalk/guard/ui/activity/QuickConnectWifiActivity;)V
    .locals 5
    .param p0, "x0"    # Lcom/alibaba/android/dingtalk/guard/ui/activity/QuickConnectWifiActivity;

    .prologue
    .line 54
    .line 12551
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/activity/QuickConnectWifiActivity;->v:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 12552
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/guard/ui/activity/QuickConnectWifiActivity;->b:Landroid/app/Activity;

    iget-object v2, p0, Lcom/alibaba/android/dingtalk/guard/ui/activity/QuickConnectWifiActivity;->v:Ljava/lang/String;

    iget-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/activity/QuickConnectWifiActivity;->E:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/activity/QuickConnectWifiActivity;->E:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    :goto_0
    invoke-static {v1, v2, v0}, Lblz;->a(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 12553
    :goto_1
    return-void

    .line 12552
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 12555
    :cond_1
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalk/guard/ui/activity/QuickConnectWifiActivity;->showLoadingDialog()V

    .line 12556
    new-instance v0, Lcom/alibaba/android/dingtalk/guard/ui/activity/QuickConnectWifiActivity$3;

    invoke-direct {v0, p0}, Lcom/alibaba/android/dingtalk/guard/ui/activity/QuickConnectWifiActivity$3;-><init>(Lcom/alibaba/android/dingtalk/guard/ui/activity/QuickConnectWifiActivity;)V

    .line 12576
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/guard/ui/activity/QuickConnectWifiActivity;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/alibaba/android/dingtalk/guard/ui/activity/QuickConnectWifiActivity;->w:Ljava/lang/String;

    const-class v3, Lcma;

    iget-object v4, p0, Lcom/alibaba/android/dingtalk/guard/ui/activity/QuickConnectWifiActivity;->b:Landroid/app/Activity;

    invoke-static {v0, v3, v4}, Lcon;->a(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcma;

    invoke-static {v1, v2, v0}, Lblz;->a(Landroid/content/Context;Ljava/lang/String;Lcma;)V

    goto :goto_1
.end method

.method static synthetic l(Lcom/alibaba/android/dingtalk/guard/ui/activity/QuickConnectWifiActivity;)V
    .locals 5
    .param p0, "x0"    # Lcom/alibaba/android/dingtalk/guard/ui/activity/QuickConnectWifiActivity;

    .prologue
    .line 54
    .line 12580
    sget v0, Lbrx$g;->dt_alpha_reset_exclusive_psk_loading:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalk/guard/ui/activity/QuickConnectWifiActivity;->showLoadingDialog(I)V

    .line 12581
    invoke-static {}, Lbnc;->a()Lbnc;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/android/dingtalk/guard/ui/activity/QuickConnectWifiActivity;->w:Ljava/lang/String;

    new-instance v3, Lcom/alibaba/android/dingtalk/guard/ui/activity/QuickConnectWifiActivity$4;

    invoke-direct {v3, p0}, Lcom/alibaba/android/dingtalk/guard/ui/activity/QuickConnectWifiActivity$4;-><init>(Lcom/alibaba/android/dingtalk/guard/ui/activity/QuickConnectWifiActivity;)V

    .line 13338
    const-string/jumbo v0, "ApDeviceService"

    const-string/jumbo v4, "resetPass"

    invoke-static {v0, v4}, Lblu;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 13339
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 13340
    const-string/jumbo v0, "ApDeviceService"

    const-string/jumbo v1, "resetPass corpId is null"

    invoke-static {v0, v1}, Lblu;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 13345
    :cond_0
    :goto_0
    return-void

    .line 13343
    :cond_1
    const-class v0, Lcom/alibaba/android/dingtalk/alpha/rpc/idl/service/ApDeviceIService;

    invoke-static {v0}, Liyx;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalk/alpha/rpc/idl/service/ApDeviceIService;

    .line 13344
    if-eqz v0, :cond_0

    .line 13347
    new-instance v4, Lbnc$10;

    invoke-direct {v4, v1, v3}, Lbnc$10;-><init>(Lbnc;Lcma;)V

    invoke-interface {v0, v2, v4}, Lcom/alibaba/android/dingtalk/alpha/rpc/idl/service/ApDeviceIService;->resetPass(Ljava/lang/String;Liyv;)V

    goto :goto_0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 9
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v8, 0x0

    const/16 v3, 0x8

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v1, 0x0

    .line 97
    invoke-super {p0, p1}, Lcom/alibaba/android/dingtalk/guard/ui/activity/BaseConnectWifiActivity;->onCreate(Landroid/os/Bundle;)V

    .line 98
    sget v0, Lbrx$g;->dt_alpha_connect_wifi_title:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalk/guard/ui/activity/QuickConnectWifiActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalk/guard/ui/activity/QuickConnectWifiActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 99
    sget v0, Lbrx$e;->activity_device_quick_connect_wifi:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalk/guard/ui/activity/QuickConnectWifiActivity;->setContentView(I)V

    .line 1278
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/activity/QuickConnectWifiActivity;->D:Lblv;

    if-nez v0, :cond_0

    .line 1279
    new-instance v0, Lcom/alibaba/android/dingtalk/guard/ui/activity/QuickConnectWifiActivity$8;

    invoke-direct {v0, p0}, Lcom/alibaba/android/dingtalk/guard/ui/activity/QuickConnectWifiActivity$8;-><init>(Lcom/alibaba/android/dingtalk/guard/ui/activity/QuickConnectWifiActivity;)V

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/activity/QuickConnectWifiActivity;->D:Lblv;

    .line 1285
    invoke-static {}, Lcom/alibaba/android/dingtalk/alpha/rpc/push/AlphaPushManager;->a()Lcom/alibaba/android/dingtalk/alpha/rpc/push/AlphaPushManager;

    move-result-object v0

    iget-object v2, p0, Lcom/alibaba/android/dingtalk/guard/ui/activity/QuickConnectWifiActivity;->D:Lblv;

    .line 2254
    if-nez v2, :cond_3

    .line 1287
    :cond_0
    :goto_0
    invoke-static {}, Lbma;->a()Lbma;

    move-result-object v0

    .line 3243
    iput-boolean v6, v0, Lbma;->a:Z

    .line 3299
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalk/guard/ui/activity/QuickConnectWifiActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    .line 3300
    const-string/jumbo v2, "corpId"

    invoke-static {v0, v2}, Lbtm;->a(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/alibaba/android/dingtalk/guard/ui/activity/QuickConnectWifiActivity;->w:Ljava/lang/String;

    .line 3301
    const-string/jumbo v2, "from"

    invoke-static {v0, v2}, Lbtm;->a(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/activity/QuickConnectWifiActivity;->z:Ljava/lang/String;

    .line 3302
    const-string/jumbo v0, "QuickConnectWifiActivity"

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/String;

    const-string/jumbo v4, "corpId = "

    aput-object v4, v2, v1

    iget-object v4, p0, Lcom/alibaba/android/dingtalk/guard/ui/activity/QuickConnectWifiActivity;->w:Ljava/lang/String;

    aput-object v4, v2, v6

    const-string/jumbo v4, ", from = "

    aput-object v4, v2, v7

    const/4 v4, 0x3

    iget-object v5, p0, Lcom/alibaba/android/dingtalk/guard/ui/activity/QuickConnectWifiActivity;->z:Ljava/lang/String;

    aput-object v5, v2, v4

    invoke-static {v2}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lblu;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 3305
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/activity/QuickConnectWifiActivity;->w:Ljava/lang/String;

    invoke-static {v0}, Lbly;->b(Ljava/lang/String;)Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    move-result-object v0

    .line 3306
    if-eqz v0, :cond_a

    .line 3307
    iget-wide v4, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgId:J

    iput-wide v4, p0, Lcom/alibaba/android/dingtalk/guard/ui/activity/QuickConnectWifiActivity;->x:J

    .line 3308
    iget-object v2, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgName:Ljava/lang/String;

    iput-object v2, p0, Lcom/alibaba/android/dingtalk/guard/ui/activity/QuickConnectWifiActivity;->y:Ljava/lang/String;

    .line 3309
    iget-object v2, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgStaffId:Ljava/lang/String;

    iput-object v2, p0, Lcom/alibaba/android/dingtalk/guard/ui/activity/QuickConnectWifiActivity;->A:Ljava/lang/String;

    .line 3310
    iget-boolean v0, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->mIsAdmin:Z

    .line 3313
    :goto_1
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 3314
    const-string/jumbo v5, "from"

    iget-object v2, p0, Lcom/alibaba/android/dingtalk/guard/ui/activity/QuickConnectWifiActivity;->z:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_5

    const-string/jumbo v2, ""

    :goto_2
    invoke-interface {v4, v5, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3315
    const-string/jumbo v2, "role"

    if-eqz v0, :cond_6

    const-string/jumbo v0, "employer"

    :goto_3
    invoke-interface {v4, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3316
    const-string/jumbo v0, "QuickConnectWifiActivity"

    const-string/jumbo v2, "alpha_quick_connect_wifi_enter"

    invoke-static {v0, v2, v4}, Lcps;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 3411
    sget v0, Lbrx$d;->layout_empty:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalk/guard/ui/activity/QuickConnectWifiActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/activity/QuickConnectWifiActivity;->e:Landroid/view/View;

    .line 3412
    sget v0, Lbrx$d;->tv_empty:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalk/guard/ui/activity/QuickConnectWifiActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/activity/QuickConnectWifiActivity;->f:Landroid/widget/TextView;

    .line 3413
    sget v0, Lbrx$d;->layout_quick_connect:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalk/guard/ui/activity/QuickConnectWifiActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/activity/QuickConnectWifiActivity;->g:Landroid/view/View;

    .line 3414
    sget v0, Lbrx$d;->layout_one_key_wifi:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalk/guard/ui/activity/QuickConnectWifiActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalk/guard/ui/activity/OneKeyWifiLayout;

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/activity/QuickConnectWifiActivity;->h:Lcom/alibaba/android/dingtalk/guard/ui/activity/OneKeyWifiLayout;

    .line 3416
    sget v0, Lbrx$d;->bottom_layout_v1:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalk/guard/ui/activity/QuickConnectWifiActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/activity/QuickConnectWifiActivity;->i:Landroid/view/View;

    .line 3417
    sget v0, Lbrx$d;->layout_get_dynamic_pwd:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalk/guard/ui/activity/QuickConnectWifiActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/activity/QuickConnectWifiActivity;->l:Landroid/view/View;

    .line 3418
    sget v0, Lbrx$d;->tv_get_dynamic_pwd:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalk/guard/ui/activity/QuickConnectWifiActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/activity/QuickConnectWifiActivity;->m:Landroid/widget/TextView;

    .line 3419
    sget v0, Lbrx$d;->layout_client_auth:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalk/guard/ui/activity/QuickConnectWifiActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/activity/QuickConnectWifiActivity;->j:Landroid/view/View;

    .line 3420
    sget v0, Lbrx$d;->tv_client_auth:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalk/guard/ui/activity/QuickConnectWifiActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/activity/QuickConnectWifiActivity;->k:Landroid/widget/TextView;

    .line 3422
    sget v0, Lbrx$d;->bottom_layout_v2:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalk/guard/ui/activity/QuickConnectWifiActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/activity/QuickConnectWifiActivity;->n:Landroid/view/View;

    .line 3423
    sget v0, Lbrx$d;->layout_get_psk:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalk/guard/ui/activity/QuickConnectWifiActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/activity/QuickConnectWifiActivity;->o:Landroid/view/View;

    .line 3424
    sget v0, Lbrx$d;->tv_get_psk:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalk/guard/ui/activity/QuickConnectWifiActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/activity/QuickConnectWifiActivity;->p:Landroid/widget/TextView;

    .line 3425
    sget v0, Lbrx$d;->layout_reset_psk:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalk/guard/ui/activity/QuickConnectWifiActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/activity/QuickConnectWifiActivity;->q:Landroid/view/View;

    .line 3426
    sget v0, Lbrx$d;->tv_reset_psk:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalk/guard/ui/activity/QuickConnectWifiActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/activity/QuickConnectWifiActivity;->r:Landroid/widget/TextView;

    .line 3427
    sget v0, Lbrx$d;->layout_client_list:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalk/guard/ui/activity/QuickConnectWifiActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/activity/QuickConnectWifiActivity;->s:Landroid/view/View;

    .line 3428
    sget v0, Lbrx$d;->tv_client_list:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalk/guard/ui/activity/QuickConnectWifiActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/activity/QuickConnectWifiActivity;->t:Landroid/widget/TextView;

    .line 3430
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/activity/QuickConnectWifiActivity;->h:Lcom/alibaba/android/dingtalk/guard/ui/activity/OneKeyWifiLayout;

    .line 4147
    invoke-virtual {p0, v0, v8}, Lcom/alibaba/android/dingtalk/guard/ui/activity/BaseConnectWifiActivity;->a(Lcom/alibaba/android/dingtalk/guard/ui/activity/OneKeyWifiLayout;Lcom/alibaba/android/dingtalk/guard/ui/activity/OneKeyWifiLayout$a;)Lcom/alibaba/android/dingtalk/alphabase/callback/QuickConnectWifiCallback;

    move-result-object v0

    .line 3430
    iput-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/activity/QuickConnectWifiActivity;->d:Lcom/alibaba/android/dingtalk/alphabase/callback/QuickConnectWifiCallback;

    .line 3432
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/activity/QuickConnectWifiActivity;->y:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 3433
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/activity/QuickConnectWifiActivity;->h:Lcom/alibaba/android/dingtalk/guard/ui/activity/OneKeyWifiLayout;

    sget v2, Lbrx$g;->and_alpha_org_wifi_title:I

    invoke-virtual {p0, v2}, Lcom/alibaba/android/dingtalk/guard/ui/activity/QuickConnectWifiActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v4, v6, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/alibaba/android/dingtalk/guard/ui/activity/QuickConnectWifiActivity;->y:Ljava/lang/String;

    aput-object v5, v4, v1

    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/alibaba/android/dingtalk/guard/ui/activity/OneKeyWifiLayout;->setTitle(Ljava/lang/String;)V

    .line 3436
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/activity/QuickConnectWifiActivity;->h:Lcom/alibaba/android/dingtalk/guard/ui/activity/OneKeyWifiLayout;

    new-instance v2, Lcom/alibaba/android/dingtalk/guard/ui/activity/QuickConnectWifiActivity$10;

    invoke-direct {v2, p0}, Lcom/alibaba/android/dingtalk/guard/ui/activity/QuickConnectWifiActivity$10;-><init>(Lcom/alibaba/android/dingtalk/guard/ui/activity/QuickConnectWifiActivity;)V

    invoke-virtual {v0, v2}, Lcom/alibaba/android/dingtalk/guard/ui/activity/OneKeyWifiLayout;->setOneKeyWifiListener(Landroid/view/View$OnClickListener;)V

    .line 3476
    new-instance v0, Lcom/alibaba/android/dingtalk/guard/ui/activity/QuickConnectWifiActivity$11;

    invoke-direct {v0, p0}, Lcom/alibaba/android/dingtalk/guard/ui/activity/QuickConnectWifiActivity$11;-><init>(Lcom/alibaba/android/dingtalk/guard/ui/activity/QuickConnectWifiActivity;)V

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/activity/QuickConnectWifiActivity;->C:Landroid/view/View$OnClickListener;

    .line 3510
    new-instance v0, Lcom/alibaba/android/dingtalk/guard/ui/activity/QuickConnectWifiActivity$12;

    invoke-direct {v0, p0}, Lcom/alibaba/android/dingtalk/guard/ui/activity/QuickConnectWifiActivity$12;-><init>(Lcom/alibaba/android/dingtalk/guard/ui/activity/QuickConnectWifiActivity;)V

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/activity/QuickConnectWifiActivity;->B:Landroid/view/View$OnClickListener;

    .line 3520
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/activity/QuickConnectWifiActivity;->l:Landroid/view/View;

    iget-object v2, p0, Lcom/alibaba/android/dingtalk/guard/ui/activity/QuickConnectWifiActivity;->C:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3521
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/activity/QuickConnectWifiActivity;->j:Landroid/view/View;

    iget-object v2, p0, Lcom/alibaba/android/dingtalk/guard/ui/activity/QuickConnectWifiActivity;->B:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3524
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/activity/QuickConnectWifiActivity;->o:Landroid/view/View;

    iget-object v2, p0, Lcom/alibaba/android/dingtalk/guard/ui/activity/QuickConnectWifiActivity;->C:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3525
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/activity/QuickConnectWifiActivity;->s:Landroid/view/View;

    iget-object v2, p0, Lcom/alibaba/android/dingtalk/guard/ui/activity/QuickConnectWifiActivity;->B:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3527
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/activity/QuickConnectWifiActivity;->q:Landroid/view/View;

    new-instance v2, Lcom/alibaba/android/dingtalk/guard/ui/activity/QuickConnectWifiActivity$2;

    invoke-direct {v2, p0}, Lcom/alibaba/android/dingtalk/guard/ui/activity/QuickConnectWifiActivity$2;-><init>(Lcom/alibaba/android/dingtalk/guard/ui/activity/QuickConnectWifiActivity;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3544
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v0

    const-string/jumbo v2, "alpha_psk_reset_enabled"

    iget-wide v4, p0, Lcom/alibaba/android/dingtalk/guard/ui/activity/QuickConnectWifiActivity;->x:J

    invoke-virtual {v0, v2, v4, v5}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a(Ljava/lang/String;J)Z

    move-result v2

    .line 3545
    const-string/jumbo v0, "QuickConnectWifiActivity"

    new-array v4, v7, [Ljava/lang/Object;

    const-string/jumbo v5, "pskResetEnabled = "

    aput-object v5, v4, v1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v4}, Lcom/alibaba/doraemon/utils/CommonUtils;->getAppendString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lblu;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 3546
    iget-object v4, p0, Lcom/alibaba/android/dingtalk/guard/ui/activity/QuickConnectWifiActivity;->i:Landroid/view/View;

    if-eqz v2, :cond_7

    move v0, v3

    :goto_4
    invoke-virtual {v4, v0}, Landroid/view/View;->setVisibility(I)V

    .line 3547
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/activity/QuickConnectWifiActivity;->n:Landroid/view/View;

    if-eqz v2, :cond_8

    :goto_5
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 5140
    new-instance v0, Lcom/alibaba/android/dingtalk/guard/ui/activity/QuickConnectWifiActivity$5;

    invoke-direct {v0, p0}, Lcom/alibaba/android/dingtalk/guard/ui/activity/QuickConnectWifiActivity$5;-><init>(Lcom/alibaba/android/dingtalk/guard/ui/activity/QuickConnectWifiActivity;)V

    .line 5165
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/guard/ui/activity/QuickConnectWifiActivity;->w:Ljava/lang/String;

    const-class v2, Lcma;

    iget-object v3, p0, Lcom/alibaba/android/dingtalk/guard/ui/activity/QuickConnectWifiActivity;->b:Landroid/app/Activity;

    invoke-static {v0, v2, v3}, Lcon;->a(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcma;

    .line 5215
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 5216
    if-eqz v0, :cond_2

    .line 5217
    const-string/jumbo v1, ""

    const-string/jumbo v2, "corpId is null"

    invoke-interface {v0, v1, v2}, Lcma;->onException(Ljava/lang/String;Ljava/lang/String;)V

    .line 6244
    :cond_2
    :goto_6
    new-instance v0, Lcom/alibaba/android/dingtalk/guard/ui/activity/QuickConnectWifiActivity$7;

    invoke-direct {v0, p0}, Lcom/alibaba/android/dingtalk/guard/ui/activity/QuickConnectWifiActivity$7;-><init>(Lcom/alibaba/android/dingtalk/guard/ui/activity/QuickConnectWifiActivity;)V

    .line 6273
    invoke-static {}, Lcmx;->a()Lcom/alibaba/doraemon/eventbus/EventButler;

    move-result-object v1

    const-class v2, Lcma;

    iget-object v3, p0, Lcom/alibaba/android/dingtalk/guard/ui/activity/QuickConnectWifiActivity;->b:Landroid/app/Activity;

    invoke-interface {v1, v0, v2, v3}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcma;

    .line 6274
    invoke-static {}, Lbnc;->a()Lbnc;

    move-result-object v1

    iget-wide v2, p0, Lcom/alibaba/android/dingtalk/guard/ui/activity/QuickConnectWifiActivity;->x:J

    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v0

    invoke-virtual {v0}, Lccr;->c()J

    move-result-wide v4

    invoke-virtual/range {v1 .. v6}, Lbnc;->a(JJLcma;)V

    .line 107
    invoke-direct {p0, v8}, Lcom/alibaba/android/dingtalk/guard/ui/activity/QuickConnectWifiActivity;->a(Lcma;)V

    .line 108
    return-void

    .line 2257
    :cond_3
    iget-object v4, v0, Lcom/alibaba/android/dingtalk/alpha/rpc/push/AlphaPushManager;->b:Ljava/util/List;

    if-nez v4, :cond_4

    .line 2258
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, v0, Lcom/alibaba/android/dingtalk/alpha/rpc/push/AlphaPushManager;->b:Ljava/util/List;

    .line 2260
    :cond_4
    iget-object v0, v0, Lcom/alibaba/android/dingtalk/alpha/rpc/push/AlphaPushManager;->b:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 3314
    :cond_5
    iget-object v2, p0, Lcom/alibaba/android/dingtalk/guard/ui/activity/QuickConnectWifiActivity;->z:Ljava/lang/String;

    goto/16 :goto_2

    .line 3315
    :cond_6
    const-string/jumbo v0, "employee"

    goto/16 :goto_3

    :cond_7
    move v0, v1

    .line 3546
    goto :goto_4

    :cond_8
    move v1, v3

    .line 3547
    goto :goto_5

    .line 5221
    :cond_9
    invoke-static {}, Lbnc;->a()Lbnc;

    move-result-object v2

    const-wide/16 v4, 0xbb8

    new-instance v3, Lblz$6;

    invoke-direct {v3, v1, v0}, Lblz$6;-><init>(Ljava/lang/String;Lcma;)V

    invoke-virtual {v2, v4, v5, v3}, Lbnc;->a(JLcma;)V

    goto :goto_6

    :cond_a
    move v0, v1

    goto/16 :goto_1
.end method

.method protected onDestroy()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 608
    invoke-super {p0}, Lcom/alibaba/android/dingtalk/guard/ui/activity/BaseConnectWifiActivity;->onDestroy()V

    .line 7291
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/activity/QuickConnectWifiActivity;->D:Lblv;

    if-eqz v0, :cond_1

    .line 7292
    invoke-static {}, Lcom/alibaba/android/dingtalk/alpha/rpc/push/AlphaPushManager;->a()Lcom/alibaba/android/dingtalk/alpha/rpc/push/AlphaPushManager;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/dingtalk/guard/ui/activity/QuickConnectWifiActivity;->D:Lblv;

    .line 8264
    if-nez v1, :cond_2

    .line 7293
    :cond_0
    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/activity/QuickConnectWifiActivity;->D:Lblv;

    .line 7295
    :cond_1
    invoke-static {}, Lbma;->a()Lbma;

    move-result-object v0

    const/4 v1, 0x0

    .line 9243
    iput-boolean v1, v0, Lbma;->a:Z

    .line 610
    return-void

    .line 8267
    :cond_2
    iget-object v2, v0, Lcom/alibaba/android/dingtalk/alpha/rpc/push/AlphaPushManager;->b:Ljava/util/List;

    if-eqz v2, :cond_0

    iget-object v2, v0, Lcom/alibaba/android/dingtalk/alpha/rpc/push/AlphaPushManager;->b:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 8268
    iget-object v0, v0, Lcom/alibaba/android/dingtalk/alpha/rpc/push/AlphaPushManager;->b:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_0
.end method
