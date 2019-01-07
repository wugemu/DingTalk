.class public Lcom/alipay/mobile/nebulacore/dev/ui/H5DevConfigEditActivity;
.super Lcom/alipay/mobile/nebulacore/wallet/H5WalletBaseActivity;
.source "H5DevConfigEditActivity.java"


# instance fields
.field private TAG:Ljava/lang/String;

.field private configService:Ljava/lang/Object;

.field private et:Landroid/widget/EditText;

.field private getConfig:Ljava/lang/reflect/Method;

.field private handler:Landroid/os/Handler;

.field private saveConfig:Ljava/lang/reflect/Method;

.field private sp:Landroid/content/SharedPreferences;

.field private tv:Landroid/widget/EditText;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/alipay/mobile/nebulacore/wallet/H5WalletBaseActivity;-><init>()V

    .line 25
    const-string/jumbo v0, "H5DevConfigEditActivity"

    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/dev/ui/H5DevConfigEditActivity;->TAG:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/alipay/mobile/nebulacore/dev/ui/H5DevConfigEditActivity;)Landroid/widget/EditText;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/nebulacore/dev/ui/H5DevConfigEditActivity;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/dev/ui/H5DevConfigEditActivity;->tv:Landroid/widget/EditText;

    return-object v0
.end method

.method private getConfig(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p1, "key"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 94
    :try_start_0
    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/dev/ui/H5DevConfigEditActivity;->getConfig:Ljava/lang/reflect/Method;

    iget-object v3, p0, Lcom/alipay/mobile/nebulacore/dev/ui/H5DevConfigEditActivity;->configService:Ljava/lang/Object;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 95
    .local v1, "value":Ljava/lang/Object;
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 99
    .end local v1    # "value":Ljava/lang/Object;
    :goto_0
    return-object v2

    .line 96
    :catch_0
    move-exception v0

    .line 97
    .local v0, "e":Ljava/lang/Throwable;
    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/dev/ui/H5DevConfigEditActivity;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "get "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " error "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    const-string/jumbo v2, ""

    goto :goto_0
.end method

.method private out(Ljava/lang/String;)V
    .locals 2
    .param p1, "msg"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 111
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/dev/ui/H5DevConfigEditActivity;->TAG:Ljava/lang/String;

    invoke-static {v1, p1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 113
    .local v0, "message":Landroid/os/Message;
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 114
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/dev/ui/H5DevConfigEditActivity;->handler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 116
    return-void
.end method

.method private saveConfigs(Ljava/util/Map;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 104
    .local p1, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :try_start_0
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/dev/ui/H5DevConfigEditActivity;->saveConfig:Ljava/lang/reflect/Method;

    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/dev/ui/H5DevConfigEditActivity;->configService:Ljava/lang/Object;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 108
    :goto_0
    return-void

    .line 105
    :catch_0
    move-exception v0

    .line 106
    .local v0, "e":Ljava/lang/Throwable;
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/dev/ui/H5DevConfigEditActivity;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "saveConfig error "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v7, 0x0

    .line 37
    invoke-super {p0, p1}, Lcom/alipay/mobile/nebulacore/wallet/H5WalletBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 38
    sget v2, Lcom/alipay/mobile/nebula/R$layout;->h5_dev_config_edit_activity:I

    invoke-virtual {p0, v2}, Lcom/alipay/mobile/nebulacore/dev/ui/H5DevConfigEditActivity;->setContentView(I)V

    .line 39
    sget v2, Lcom/alipay/mobile/nebula/R$id;->textView1:I

    invoke-virtual {p0, v2}, Lcom/alipay/mobile/nebulacore/dev/ui/H5DevConfigEditActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    iput-object v2, p0, Lcom/alipay/mobile/nebulacore/dev/ui/H5DevConfigEditActivity;->tv:Landroid/widget/EditText;

    .line 40
    sget v2, Lcom/alipay/mobile/nebula/R$id;->et1:I

    invoke-virtual {p0, v2}, Lcom/alipay/mobile/nebulacore/dev/ui/H5DevConfigEditActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    iput-object v2, p0, Lcom/alipay/mobile/nebulacore/dev/ui/H5DevConfigEditActivity;->et:Landroid/widget/EditText;

    .line 41
    new-instance v2, Lcom/alipay/mobile/nebulacore/dev/ui/H5DevConfigEditActivity$1;

    invoke-direct {v2, p0}, Lcom/alipay/mobile/nebulacore/dev/ui/H5DevConfigEditActivity$1;-><init>(Lcom/alipay/mobile/nebulacore/dev/ui/H5DevConfigEditActivity;)V

    iput-object v2, p0, Lcom/alipay/mobile/nebulacore/dev/ui/H5DevConfigEditActivity;->handler:Landroid/os/Handler;

    .line 50
    invoke-static {}, Lcom/alipay/mobile/framework/b;->a()Lcom/alipay/mobile/framework/b;

    .line 51
    const-string/jumbo v2, "com.alipay.mobile.base.config.ConfigService"

    .line 52
    invoke-static {v2}, Lcom/alipay/mobile/framework/c;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    iput-object v2, p0, Lcom/alipay/mobile/nebulacore/dev/ui/H5DevConfigEditActivity;->configService:Ljava/lang/Object;

    .line 54
    :try_start_0
    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/dev/ui/H5DevConfigEditActivity;->configService:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string/jumbo v3, "getConfig"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    const-class v6, Ljava/lang/String;

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    iput-object v2, p0, Lcom/alipay/mobile/nebulacore/dev/ui/H5DevConfigEditActivity;->getConfig:Ljava/lang/reflect/Method;

    .line 55
    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/dev/ui/H5DevConfigEditActivity;->configService:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string/jumbo v3, "saveConfigs"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    const-class v6, Ljava/util/Map;

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    iput-object v2, p0, Lcom/alipay/mobile/nebulacore/dev/ui/H5DevConfigEditActivity;->saveConfig:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    .line 59
    :goto_0
    const-string/jumbo v2, "xltest"

    invoke-virtual {p0, v2, v7}, Lcom/alipay/mobile/nebulacore/dev/ui/H5DevConfigEditActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    iput-object v2, p0, Lcom/alipay/mobile/nebulacore/dev/ui/H5DevConfigEditActivity;->sp:Landroid/content/SharedPreferences;

    .line 60
    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/dev/ui/H5DevConfigEditActivity;->sp:Landroid/content/SharedPreferences;

    const-string/jumbo v3, "configKey"

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 61
    .local v1, "key":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 62
    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/dev/ui/H5DevConfigEditActivity;->et:Landroid/widget/EditText;

    invoke-virtual {v2, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 63
    invoke-direct {p0, v1}, Lcom/alipay/mobile/nebulacore/dev/ui/H5DevConfigEditActivity;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/alipay/mobile/nebulacore/dev/ui/H5DevConfigEditActivity;->out(Ljava/lang/String;)V

    .line 65
    :cond_0
    return-void

    .line 56
    .end local v1    # "key":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 57
    .local v0, "e":Ljava/lang/NoSuchMethodException;
    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/dev/ui/H5DevConfigEditActivity;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/NoSuchMethodException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public queryBtn(Landroid/view/View;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 68
    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/dev/ui/H5DevConfigEditActivity;->et:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 69
    .local v0, "key":Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/alipay/mobile/nebulacore/dev/ui/H5DevConfigEditActivity;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 70
    .local v1, "value":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 71
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "\u67e5\u8be2 "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " \u5bf9\u5e94\u7684\u914d\u7f6e\u4e0d\u5b58\u5728\u6216\u4e3a\u7a7a"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/alipay/mobile/nebulacore/dev/ui/H5DevConfigEditActivity;->out(Ljava/lang/String;)V

    .line 76
    :goto_0
    return-void

    .line 73
    :cond_0
    invoke-direct {p0, v1}, Lcom/alipay/mobile/nebulacore/dev/ui/H5DevConfigEditActivity;->out(Ljava/lang/String;)V

    .line 74
    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/dev/ui/H5DevConfigEditActivity;->sp:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string/jumbo v3, "configKey"

    invoke-interface {v2, v3, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0
.end method

.method public saveBtn(Landroid/view/View;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 79
    iget-object v3, p0, Lcom/alipay/mobile/nebulacore/dev/ui/H5DevConfigEditActivity;->et:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 80
    .local v0, "key":Ljava/lang/String;
    iget-object v3, p0, Lcom/alipay/mobile/nebulacore/dev/ui/H5DevConfigEditActivity;->tv:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 81
    .local v2, "value":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 82
    const-string/jumbo v3, "key\u4e3a\u7a7a,\u65e0\u6cd5\u66f4\u65b0"

    invoke-direct {p0, v3}, Lcom/alipay/mobile/nebulacore/dev/ui/H5DevConfigEditActivity;->out(Ljava/lang/String;)V

    .line 89
    :goto_0
    return-void

    .line 84
    :cond_0
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 85
    .local v1, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    invoke-direct {p0, v1}, Lcom/alipay/mobile/nebulacore/dev/ui/H5DevConfigEditActivity;->saveConfigs(Ljava/util/Map;)V

    goto :goto_0
.end method
