.class public Lcom/alipay/mobile/verifyidentity/ui/helper/DialogActivityHelper;
.super Ljava/lang/Object;
.source "DialogActivityHelper.java"


# static fields
.field private static b:Lcom/alipay/mobile/verifyidentity/ui/helper/DialogActivityHelper;


# instance fields
.field private a:Landroid/app/Activity;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const-class v0, Lcom/alipay/android/hackbyte/ClassVerifier;

    invoke-virtual {v0}, Ljava/lang/Class;->toString()Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public static getInstance()Lcom/alipay/mobile/verifyidentity/ui/helper/DialogActivityHelper;
    .locals 2

    .prologue
    .line 19
    sget-object v0, Lcom/alipay/mobile/verifyidentity/ui/helper/DialogActivityHelper;->b:Lcom/alipay/mobile/verifyidentity/ui/helper/DialogActivityHelper;

    if-nez v0, :cond_1

    .line 20
    const-class v1, Lcom/alipay/mobile/verifyidentity/ui/helper/DialogActivityHelper;

    monitor-enter v1

    .line 21
    :try_start_0
    sget-object v0, Lcom/alipay/mobile/verifyidentity/ui/helper/DialogActivityHelper;->b:Lcom/alipay/mobile/verifyidentity/ui/helper/DialogActivityHelper;

    if-nez v0, :cond_0

    .line 22
    new-instance v0, Lcom/alipay/mobile/verifyidentity/ui/helper/DialogActivityHelper;

    invoke-direct {v0}, Lcom/alipay/mobile/verifyidentity/ui/helper/DialogActivityHelper;-><init>()V

    sput-object v0, Lcom/alipay/mobile/verifyidentity/ui/helper/DialogActivityHelper;->b:Lcom/alipay/mobile/verifyidentity/ui/helper/DialogActivityHelper;

    .line 24
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 26
    :cond_1
    sget-object v0, Lcom/alipay/mobile/verifyidentity/ui/helper/DialogActivityHelper;->b:Lcom/alipay/mobile/verifyidentity/ui/helper/DialogActivityHelper;

    return-object v0

    .line 24
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public getDialogActivity()Ljava/lang/ref/WeakReference;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 34
    new-instance v0, Ljava/lang/ref/WeakReference;

    iget-object v1, p0, Lcom/alipay/mobile/verifyidentity/ui/helper/DialogActivityHelper;->a:Landroid/app/Activity;

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method public updateDialogActivity(Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 30
    iput-object p1, p0, Lcom/alipay/mobile/verifyidentity/ui/helper/DialogActivityHelper;->a:Landroid/app/Activity;

    .line 31
    return-void
.end method
