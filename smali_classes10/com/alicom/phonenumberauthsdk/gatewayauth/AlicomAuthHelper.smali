.class public Lcom/alicom/phonenumberauthsdk/gatewayauth/AlicomAuthHelper;
.super Ljava/lang/Object;
.source "AlicomAuthHelper.java"


# static fields
.field private static volatile a:Lcom/alicom/phonenumberauthsdk/gatewayauth/AlicomAuthHelper;


# instance fields
.field private b:Landroid/content/Context;

.field private c:Lcom/alicom/phonenumberauthsdk/gatewayauth/TokenResultListener;

.field private d:Lcom/alicom/phonenumberauthsdk/gatewayauth/a/a;

.field private e:Lcom/alicom/phonenumberauthsdk/gatewayauth/b/a;

.field private f:Lcom/alicom/phonenumberauthsdk/gatewayauth/ctcc/a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    const/4 v0, 0x0

    sput-object v0, Lcom/alicom/phonenumberauthsdk/gatewayauth/AlicomAuthHelper;->a:Lcom/alicom/phonenumberauthsdk/gatewayauth/AlicomAuthHelper;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Lcom/alicom/phonenumberauthsdk/gatewayauth/TokenResultListener;)V
    .locals 1

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/alicom/phonenumberauthsdk/gatewayauth/AlicomAuthHelper;->b:Landroid/content/Context;

    .line 39
    iput-object p2, p0, Lcom/alicom/phonenumberauthsdk/gatewayauth/AlicomAuthHelper;->c:Lcom/alicom/phonenumberauthsdk/gatewayauth/TokenResultListener;

    .line 40
    return-void
.end method

.method public static getInstance(Landroid/content/Context;Lcom/alicom/phonenumberauthsdk/gatewayauth/TokenResultListener;)Lcom/alicom/phonenumberauthsdk/gatewayauth/AlicomAuthHelper;
    .locals 2

    .prologue
    .line 48
    sget-object v0, Lcom/alicom/phonenumberauthsdk/gatewayauth/AlicomAuthHelper;->a:Lcom/alicom/phonenumberauthsdk/gatewayauth/AlicomAuthHelper;

    if-nez v0, :cond_1

    .line 49
    const-class v1, Lcom/alicom/phonenumberauthsdk/gatewayauth/AlicomAuthHelper;

    monitor-enter v1

    .line 50
    :try_start_0
    sget-object v0, Lcom/alicom/phonenumberauthsdk/gatewayauth/AlicomAuthHelper;->a:Lcom/alicom/phonenumberauthsdk/gatewayauth/AlicomAuthHelper;

    if-nez v0, :cond_0

    .line 51
    new-instance v0, Lcom/alicom/phonenumberauthsdk/gatewayauth/AlicomAuthHelper;

    invoke-direct {v0, p0, p1}, Lcom/alicom/phonenumberauthsdk/gatewayauth/AlicomAuthHelper;-><init>(Landroid/content/Context;Lcom/alicom/phonenumberauthsdk/gatewayauth/TokenResultListener;)V

    sput-object v0, Lcom/alicom/phonenumberauthsdk/gatewayauth/AlicomAuthHelper;->a:Lcom/alicom/phonenumberauthsdk/gatewayauth/AlicomAuthHelper;

    .line 53
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 55
    :cond_1
    sget-object v0, Lcom/alicom/phonenumberauthsdk/gatewayauth/AlicomAuthHelper;->a:Lcom/alicom/phonenumberauthsdk/gatewayauth/AlicomAuthHelper;

    return-object v0

    .line 53
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public getAuthToken(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alicom/phonenumberauthsdk/gatewayauth/model/VendorConfig;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 141
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/alicom/phonenumberauthsdk/gatewayauth/AlicomAuthHelper;->getAuthToken(Ljava/util/List;I)V

    .line 142
    return-void
.end method

.method public getAuthToken(Ljava/util/List;I)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alicom/phonenumberauthsdk/gatewayauth/model/VendorConfig;",
            ">;I)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v1, 0x0

    .line 150
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 151
    :cond_0
    new-instance v0, Lcom/alicom/phonenumberauthsdk/gatewayauth/model/TokenFailRet;

    invoke-direct {v0}, Lcom/alicom/phonenumberauthsdk/gatewayauth/model/TokenFailRet;-><init>()V

    .line 152
    const-string/jumbo v1, "TokenFailedRet: vendor config illegal!"

    invoke-virtual {v0, v1}, Lcom/alicom/phonenumberauthsdk/gatewayauth/model/TokenFailRet;->setMsg(Ljava/lang/String;)V

    .line 153
    iget-object v1, p0, Lcom/alicom/phonenumberauthsdk/gatewayauth/AlicomAuthHelper;->c:Lcom/alicom/phonenumberauthsdk/gatewayauth/TokenResultListener;

    invoke-static {v0}, Lgxk;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/alicom/phonenumberauthsdk/gatewayauth/TokenResultListener;->onTokenFailed(Ljava/lang/String;)V

    .line 175
    :goto_0
    return-void

    .line 157
    :cond_1
    if-gtz p2, :cond_2

    move p2, v1

    .line 161
    :cond_2
    const-string/jumbo v2, "cm_zyhl"

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alicom/phonenumberauthsdk/gatewayauth/model/VendorConfig;

    invoke-virtual {v0}, Lcom/alicom/phonenumberauthsdk/gatewayauth/model/VendorConfig;->getVendorKey()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alicom/phonenumberauthsdk/gatewayauth/model/VendorConfig;

    invoke-virtual {v0}, Lcom/alicom/phonenumberauthsdk/gatewayauth/model/VendorConfig;->getKeyParam()Ljava/lang/String;

    move-result-object v0

    .line 2191
    invoke-static {v3, v0}, Lcom/alicom/phonenumberauthsdk/gatewayauth/c/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 161
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 162
    iget-object v2, p0, Lcom/alicom/phonenumberauthsdk/gatewayauth/AlicomAuthHelper;->b:Landroid/content/Context;

    iget-object v3, p0, Lcom/alicom/phonenumberauthsdk/gatewayauth/AlicomAuthHelper;->c:Lcom/alicom/phonenumberauthsdk/gatewayauth/TokenResultListener;

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alicom/phonenumberauthsdk/gatewayauth/model/VendorConfig;

    invoke-virtual {v0}, Lcom/alicom/phonenumberauthsdk/gatewayauth/model/VendorConfig;->getVendorAccessId()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alicom/phonenumberauthsdk/gatewayauth/model/VendorConfig;

    invoke-virtual {v0}, Lcom/alicom/phonenumberauthsdk/gatewayauth/model/VendorConfig;->getKeyParam()Ljava/lang/String;

    move-result-object v0

    .line 3191
    invoke-static {v4, v0}, Lcom/alicom/phonenumberauthsdk/gatewayauth/c/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 162
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alicom/phonenumberauthsdk/gatewayauth/model/VendorConfig;

    invoke-virtual {v0}, Lcom/alicom/phonenumberauthsdk/gatewayauth/model/VendorConfig;->getVendorAccessSecret()Ljava/lang/String;

    move-result-object v5

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alicom/phonenumberauthsdk/gatewayauth/model/VendorConfig;

    invoke-virtual {v0}, Lcom/alicom/phonenumberauthsdk/gatewayauth/model/VendorConfig;->getKeyParam()Ljava/lang/String;

    move-result-object v0

    .line 4191
    invoke-static {v5, v0}, Lcom/alicom/phonenumberauthsdk/gatewayauth/c/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 162
    invoke-static {v2, v3, v4, v0, p2}, Lcom/alicom/phonenumberauthsdk/gatewayauth/a/a;->a(Landroid/content/Context;Lcom/alicom/phonenumberauthsdk/gatewayauth/TokenResultListener;Ljava/lang/String;Ljava/lang/String;I)Lcom/alicom/phonenumberauthsdk/gatewayauth/a/a;

    move-result-object v0

    iput-object v0, p0, Lcom/alicom/phonenumberauthsdk/gatewayauth/AlicomAuthHelper;->d:Lcom/alicom/phonenumberauthsdk/gatewayauth/a/a;

    .line 163
    iget-object v0, p0, Lcom/alicom/phonenumberauthsdk/gatewayauth/AlicomAuthHelper;->d:Lcom/alicom/phonenumberauthsdk/gatewayauth/a/a;

    invoke-virtual {v0}, Lcom/alicom/phonenumberauthsdk/gatewayauth/a/a;->a()V

    goto :goto_0

    .line 164
    :cond_3
    const-string/jumbo v2, "cu_xw"

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alicom/phonenumberauthsdk/gatewayauth/model/VendorConfig;

    invoke-virtual {v0}, Lcom/alicom/phonenumberauthsdk/gatewayauth/model/VendorConfig;->getVendorKey()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alicom/phonenumberauthsdk/gatewayauth/model/VendorConfig;

    invoke-virtual {v0}, Lcom/alicom/phonenumberauthsdk/gatewayauth/model/VendorConfig;->getKeyParam()Ljava/lang/String;

    move-result-object v0

    .line 5191
    invoke-static {v3, v0}, Lcom/alicom/phonenumberauthsdk/gatewayauth/c/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 164
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 165
    iget-object v2, p0, Lcom/alicom/phonenumberauthsdk/gatewayauth/AlicomAuthHelper;->b:Landroid/content/Context;

    iget-object v3, p0, Lcom/alicom/phonenumberauthsdk/gatewayauth/AlicomAuthHelper;->c:Lcom/alicom/phonenumberauthsdk/gatewayauth/TokenResultListener;

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alicom/phonenumberauthsdk/gatewayauth/model/VendorConfig;

    invoke-virtual {v0}, Lcom/alicom/phonenumberauthsdk/gatewayauth/model/VendorConfig;->getVendorAccessId()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alicom/phonenumberauthsdk/gatewayauth/model/VendorConfig;

    invoke-virtual {v0}, Lcom/alicom/phonenumberauthsdk/gatewayauth/model/VendorConfig;->getKeyParam()Ljava/lang/String;

    move-result-object v0

    .line 6191
    invoke-static {v4, v0}, Lcom/alicom/phonenumberauthsdk/gatewayauth/c/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 165
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alicom/phonenumberauthsdk/gatewayauth/model/VendorConfig;

    invoke-virtual {v0}, Lcom/alicom/phonenumberauthsdk/gatewayauth/model/VendorConfig;->getVendorAccessSecret()Ljava/lang/String;

    move-result-object v5

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alicom/phonenumberauthsdk/gatewayauth/model/VendorConfig;

    invoke-virtual {v0}, Lcom/alicom/phonenumberauthsdk/gatewayauth/model/VendorConfig;->getKeyParam()Ljava/lang/String;

    move-result-object v0

    .line 7191
    invoke-static {v5, v0}, Lcom/alicom/phonenumberauthsdk/gatewayauth/c/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 165
    invoke-static {v2, v3, v4, v0, p2}, Lcom/alicom/phonenumberauthsdk/gatewayauth/b/a;->a(Landroid/content/Context;Lcom/alicom/phonenumberauthsdk/gatewayauth/TokenResultListener;Ljava/lang/String;Ljava/lang/String;I)Lcom/alicom/phonenumberauthsdk/gatewayauth/b/a;

    move-result-object v0

    iput-object v0, p0, Lcom/alicom/phonenumberauthsdk/gatewayauth/AlicomAuthHelper;->e:Lcom/alicom/phonenumberauthsdk/gatewayauth/b/a;

    .line 166
    iget-object v0, p0, Lcom/alicom/phonenumberauthsdk/gatewayauth/AlicomAuthHelper;->e:Lcom/alicom/phonenumberauthsdk/gatewayauth/b/a;

    invoke-virtual {v0}, Lcom/alicom/phonenumberauthsdk/gatewayauth/b/a;->a()V

    goto/16 :goto_0

    .line 167
    :cond_4
    const-string/jumbo v2, "ct_sjl"

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alicom/phonenumberauthsdk/gatewayauth/model/VendorConfig;

    invoke-virtual {v0}, Lcom/alicom/phonenumberauthsdk/gatewayauth/model/VendorConfig;->getVendorKey()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alicom/phonenumberauthsdk/gatewayauth/model/VendorConfig;

    invoke-virtual {v0}, Lcom/alicom/phonenumberauthsdk/gatewayauth/model/VendorConfig;->getKeyParam()Ljava/lang/String;

    move-result-object v0

    .line 8191
    invoke-static {v3, v0}, Lcom/alicom/phonenumberauthsdk/gatewayauth/c/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 167
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 168
    iget-object v2, p0, Lcom/alicom/phonenumberauthsdk/gatewayauth/AlicomAuthHelper;->b:Landroid/content/Context;

    iget-object v3, p0, Lcom/alicom/phonenumberauthsdk/gatewayauth/AlicomAuthHelper;->c:Lcom/alicom/phonenumberauthsdk/gatewayauth/TokenResultListener;

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alicom/phonenumberauthsdk/gatewayauth/model/VendorConfig;

    invoke-virtual {v0}, Lcom/alicom/phonenumberauthsdk/gatewayauth/model/VendorConfig;->getVendorAccessId()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alicom/phonenumberauthsdk/gatewayauth/model/VendorConfig;

    invoke-virtual {v0}, Lcom/alicom/phonenumberauthsdk/gatewayauth/model/VendorConfig;->getKeyParam()Ljava/lang/String;

    move-result-object v0

    .line 9191
    invoke-static {v4, v0}, Lcom/alicom/phonenumberauthsdk/gatewayauth/c/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 168
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alicom/phonenumberauthsdk/gatewayauth/model/VendorConfig;

    invoke-virtual {v0}, Lcom/alicom/phonenumberauthsdk/gatewayauth/model/VendorConfig;->getVendorAccessSecret()Ljava/lang/String;

    move-result-object v5

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alicom/phonenumberauthsdk/gatewayauth/model/VendorConfig;

    invoke-virtual {v0}, Lcom/alicom/phonenumberauthsdk/gatewayauth/model/VendorConfig;->getKeyParam()Ljava/lang/String;

    move-result-object v0

    .line 10191
    invoke-static {v5, v0}, Lcom/alicom/phonenumberauthsdk/gatewayauth/c/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 168
    invoke-static {v2, v3, v4, v0, p2}, Lcom/alicom/phonenumberauthsdk/gatewayauth/ctcc/a;->a(Landroid/content/Context;Lcom/alicom/phonenumberauthsdk/gatewayauth/TokenResultListener;Ljava/lang/String;Ljava/lang/String;I)Lcom/alicom/phonenumberauthsdk/gatewayauth/ctcc/a;

    move-result-object v0

    iput-object v0, p0, Lcom/alicom/phonenumberauthsdk/gatewayauth/AlicomAuthHelper;->f:Lcom/alicom/phonenumberauthsdk/gatewayauth/ctcc/a;

    .line 169
    iget-object v0, p0, Lcom/alicom/phonenumberauthsdk/gatewayauth/AlicomAuthHelper;->f:Lcom/alicom/phonenumberauthsdk/gatewayauth/ctcc/a;

    invoke-virtual {v0}, Lcom/alicom/phonenumberauthsdk/gatewayauth/ctcc/a;->a()V

    goto/16 :goto_0

    .line 171
    :cond_5
    new-instance v0, Lcom/alicom/phonenumberauthsdk/gatewayauth/model/TokenFailRet;

    invoke-direct {v0}, Lcom/alicom/phonenumberauthsdk/gatewayauth/model/TokenFailRet;-><init>()V

    .line 172
    const-string/jumbo v1, "TokenFailedRet: vendor key illegal"

    invoke-virtual {v0, v1}, Lcom/alicom/phonenumberauthsdk/gatewayauth/model/TokenFailRet;->setMsg(Ljava/lang/String;)V

    .line 173
    iget-object v1, p0, Lcom/alicom/phonenumberauthsdk/gatewayauth/AlicomAuthHelper;->c:Lcom/alicom/phonenumberauthsdk/gatewayauth/TokenResultListener;

    invoke-static {v0}, Lgxk;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/alicom/phonenumberauthsdk/gatewayauth/TokenResultListener;->onTokenFailed(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 60
    const-string/jumbo v0, "2.0"

    return-object v0
.end method

.method public init()Lcom/alicom/phonenumberauthsdk/gatewayauth/model/InitResult;
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 71
    new-instance v3, Lcom/alicom/phonenumberauthsdk/gatewayauth/model/InitResult;

    invoke-direct {v3}, Lcom/alicom/phonenumberauthsdk/gatewayauth/model/InitResult;-><init>()V

    .line 72
    iget-object v0, p0, Lcom/alicom/phonenumberauthsdk/gatewayauth/AlicomAuthHelper;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/alicom/phonenumberauthsdk/gatewayauth/c/c;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 73
    const-string/jumbo v4, "-2"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 74
    const/4 v0, -0x2

    invoke-virtual {v3, v0}, Lcom/alicom/phonenumberauthsdk/gatewayauth/model/InitResult;->setSimPhoneNumberRetCode(I)V

    .line 75
    const-string/jumbo v0, ""

    invoke-virtual {v3, v0}, Lcom/alicom/phonenumberauthsdk/gatewayauth/model/InitResult;->setSimPhoneNumber(Ljava/lang/String;)V

    .line 83
    :goto_0
    iget-object v0, p0, Lcom/alicom/phonenumberauthsdk/gatewayauth/AlicomAuthHelper;->b:Landroid/content/Context;

    .line 1193
    const-string/jumbo v4, "phone"

    .line 1194
    invoke-virtual {v0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 1195
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v0

    .line 1196
    const/4 v4, 0x5

    if-ne v0, v4, :cond_2

    move v0, v1

    .line 83
    :goto_1
    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/alicom/phonenumberauthsdk/gatewayauth/AlicomAuthHelper;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/alicom/phonenumberauthsdk/gatewayauth/c/b;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    move v0, v1

    :goto_2
    invoke-virtual {v3, v0}, Lcom/alicom/phonenumberauthsdk/gatewayauth/model/InitResult;->setCan4GAuth(Z)V

    .line 84
    return-object v3

    .line 76
    :cond_0
    const-string/jumbo v4, "-1"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 77
    const/4 v0, -0x1

    invoke-virtual {v3, v0}, Lcom/alicom/phonenumberauthsdk/gatewayauth/model/InitResult;->setSimPhoneNumberRetCode(I)V

    .line 78
    const-string/jumbo v0, ""

    invoke-virtual {v3, v0}, Lcom/alicom/phonenumberauthsdk/gatewayauth/model/InitResult;->setSimPhoneNumber(Ljava/lang/String;)V

    goto :goto_0

    .line 80
    :cond_1
    invoke-virtual {v3, v2}, Lcom/alicom/phonenumberauthsdk/gatewayauth/model/InitResult;->setSimPhoneNumberRetCode(I)V

    .line 81
    iget-object v0, p0, Lcom/alicom/phonenumberauthsdk/gatewayauth/AlicomAuthHelper;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/alicom/phonenumberauthsdk/gatewayauth/c/c;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/alicom/phonenumberauthsdk/gatewayauth/model/InitResult;->setSimPhoneNumber(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    move v0, v2

    .line 1196
    goto :goto_1

    :cond_3
    move v0, v2

    .line 83
    goto :goto_2
.end method

.method public onDestroy()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v1, 0x0

    .line 214
    iget-object v0, p0, Lcom/alicom/phonenumberauthsdk/gatewayauth/AlicomAuthHelper;->d:Lcom/alicom/phonenumberauthsdk/gatewayauth/a/a;

    if-eqz v0, :cond_0

    .line 215
    iget-object v0, p0, Lcom/alicom/phonenumberauthsdk/gatewayauth/AlicomAuthHelper;->d:Lcom/alicom/phonenumberauthsdk/gatewayauth/a/a;

    invoke-virtual {v0}, Lcom/alicom/phonenumberauthsdk/gatewayauth/a/a;->b()V

    .line 216
    iput-object v1, p0, Lcom/alicom/phonenumberauthsdk/gatewayauth/AlicomAuthHelper;->d:Lcom/alicom/phonenumberauthsdk/gatewayauth/a/a;

    .line 218
    :cond_0
    iget-object v0, p0, Lcom/alicom/phonenumberauthsdk/gatewayauth/AlicomAuthHelper;->e:Lcom/alicom/phonenumberauthsdk/gatewayauth/b/a;

    if-eqz v0, :cond_1

    .line 219
    iget-object v0, p0, Lcom/alicom/phonenumberauthsdk/gatewayauth/AlicomAuthHelper;->e:Lcom/alicom/phonenumberauthsdk/gatewayauth/b/a;

    invoke-virtual {v0}, Lcom/alicom/phonenumberauthsdk/gatewayauth/b/a;->b()V

    .line 220
    iput-object v1, p0, Lcom/alicom/phonenumberauthsdk/gatewayauth/AlicomAuthHelper;->e:Lcom/alicom/phonenumberauthsdk/gatewayauth/b/a;

    .line 222
    :cond_1
    iget-object v0, p0, Lcom/alicom/phonenumberauthsdk/gatewayauth/AlicomAuthHelper;->f:Lcom/alicom/phonenumberauthsdk/gatewayauth/ctcc/a;

    if-eqz v0, :cond_2

    .line 223
    iget-object v0, p0, Lcom/alicom/phonenumberauthsdk/gatewayauth/AlicomAuthHelper;->f:Lcom/alicom/phonenumberauthsdk/gatewayauth/ctcc/a;

    invoke-virtual {v0}, Lcom/alicom/phonenumberauthsdk/gatewayauth/ctcc/a;->b()V

    .line 224
    iput-object v1, p0, Lcom/alicom/phonenumberauthsdk/gatewayauth/AlicomAuthHelper;->f:Lcom/alicom/phonenumberauthsdk/gatewayauth/ctcc/a;

    .line 226
    :cond_2
    iput-object v1, p0, Lcom/alicom/phonenumberauthsdk/gatewayauth/AlicomAuthHelper;->c:Lcom/alicom/phonenumberauthsdk/gatewayauth/TokenResultListener;

    .line 227
    sput-object v1, Lcom/alicom/phonenumberauthsdk/gatewayauth/AlicomAuthHelper;->a:Lcom/alicom/phonenumberauthsdk/gatewayauth/AlicomAuthHelper;

    .line 228
    return-void
.end method

.method public setAuthListener(Lcom/alicom/phonenumberauthsdk/gatewayauth/TokenResultListener;)V
    .locals 1

    .prologue
    .line 178
    iput-object p1, p0, Lcom/alicom/phonenumberauthsdk/gatewayauth/AlicomAuthHelper;->c:Lcom/alicom/phonenumberauthsdk/gatewayauth/TokenResultListener;

    .line 179
    iget-object v0, p0, Lcom/alicom/phonenumberauthsdk/gatewayauth/AlicomAuthHelper;->d:Lcom/alicom/phonenumberauthsdk/gatewayauth/a/a;

    if-eqz v0, :cond_0

    .line 180
    iget-object v0, p0, Lcom/alicom/phonenumberauthsdk/gatewayauth/AlicomAuthHelper;->d:Lcom/alicom/phonenumberauthsdk/gatewayauth/a/a;

    invoke-virtual {v0, p1}, Lcom/alicom/phonenumberauthsdk/gatewayauth/a/a;->a(Lcom/alicom/phonenumberauthsdk/gatewayauth/TokenResultListener;)V

    .line 182
    :cond_0
    iget-object v0, p0, Lcom/alicom/phonenumberauthsdk/gatewayauth/AlicomAuthHelper;->e:Lcom/alicom/phonenumberauthsdk/gatewayauth/b/a;

    if-eqz v0, :cond_1

    .line 183
    iget-object v0, p0, Lcom/alicom/phonenumberauthsdk/gatewayauth/AlicomAuthHelper;->e:Lcom/alicom/phonenumberauthsdk/gatewayauth/b/a;

    invoke-virtual {v0, p1}, Lcom/alicom/phonenumberauthsdk/gatewayauth/b/a;->a(Lcom/alicom/phonenumberauthsdk/gatewayauth/TokenResultListener;)V

    .line 185
    :cond_1
    iget-object v0, p0, Lcom/alicom/phonenumberauthsdk/gatewayauth/AlicomAuthHelper;->f:Lcom/alicom/phonenumberauthsdk/gatewayauth/ctcc/a;

    if-eqz v0, :cond_2

    .line 186
    iget-object v0, p0, Lcom/alicom/phonenumberauthsdk/gatewayauth/AlicomAuthHelper;->f:Lcom/alicom/phonenumberauthsdk/gatewayauth/ctcc/a;

    invoke-virtual {v0, p1}, Lcom/alicom/phonenumberauthsdk/gatewayauth/ctcc/a;->a(Lcom/alicom/phonenumberauthsdk/gatewayauth/TokenResultListener;)V

    .line 188
    :cond_2
    return-void
.end method

.method public setDebugMode(Z)V
    .locals 0

    .prologue
    .line 108
    invoke-static {p1}, Lcom/alicom/phonenumberauthsdk/gatewayauth/c/d;->a(Z)V

    .line 109
    return-void
.end method
