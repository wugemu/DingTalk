.class public Lcom/mybank/android/phone/common/initialize/PreLoader;
.super Ljava/lang/Object;
.source "PreLoader.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private a:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/mybank/android/phone/common/initialize/PreLoader;->a:Landroid/content/Context;

    .line 26
    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 31
    new-instance v0, Lcom/mybank/android/phone/common/MYBankExceptionHandler;

    iget-object v1, p0, Lcom/mybank/android/phone/common/initialize/PreLoader;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/mybank/android/phone/common/MYBankExceptionHandler;-><init>(Landroid/content/Context;)V

    .line 1027
    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v1

    iput-object v1, v0, Lcom/mybank/android/phone/common/MYBankExceptionHandler;->a:Ljava/lang/Thread$UncaughtExceptionHandler;

    .line 1028
    invoke-static {v0}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    .line 1029
    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 1033
    new-instance v2, Lcom/mybank/android/phone/common/MYBankExceptionHandler$1;

    invoke-direct {v2, v0}, Lcom/mybank/android/phone/common/MYBankExceptionHandler$1;-><init>(Lcom/mybank/android/phone/common/MYBankExceptionHandler;)V

    const-wide/32 v4, 0xea60

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 33
    iget-object v0, p0, Lcom/mybank/android/phone/common/initialize/PreLoader;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lijo;->a(Landroid/content/Context;)Lijo;

    .line 35
    iget-object v0, p0, Lcom/mybank/android/phone/common/initialize/PreLoader;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lijn;->a(Landroid/content/Context;)Lijn;

    .line 37
    invoke-static {}, Lijn;->a()Lijn;

    move-result-object v0

    const-string/jumbo v1, "release"

    .line 1090
    iput-object v1, v0, Lijn;->d:Ljava/lang/String;

    .line 39
    invoke-static {}, Lijn;->a()Lijn;

    move-result-object v0

    const-string/jumbo v1, "DINGTALK_BANK_ANDROID"

    .line 1205
    iget-object v2, v0, Lijn;->e:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string/jumbo v3, "productId"

    invoke-interface {v2, v3, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1206
    iput-object v1, v0, Lijn;->a:Ljava/lang/String;

    .line 41
    invoke-static {}, Lijn;->a()Lijn;

    move-result-object v0

    const-string/jumbo v1, "mybank"

    .line 2200
    iget-object v2, v0, Lijn;->e:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string/jumbo v3, "channels"

    invoke-interface {v2, v3, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 2201
    iput-object v1, v0, Lijn;->c:Ljava/lang/String;

    .line 43
    return-void
.end method
