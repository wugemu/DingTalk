.class public Lcom/alibaba/security/biometrics/auth/processor/AuthActivityProcessor;
.super Lhwh;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/security/biometrics/auth/processor/AuthActivityProcessor$a;
    }
.end annotation


# static fields
.field protected static a:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/alibaba/security/biometrics/AuthContext;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field protected b:Lcom/alibaba/security/biometrics/auth/processor/AuthActivityProcessor$a;

.field protected c:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 4

    invoke-direct {p0}, Lhwh;-><init>()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/security/biometrics/auth/processor/AuthActivityProcessor;->c:Ljava/lang/String;

    return-void
.end method

.method public static a(Ljava/lang/String;)Lcom/alibaba/security/biometrics/AuthContext;
    .locals 1

    sget-object v0, Lcom/alibaba/security/biometrics/auth/processor/AuthActivityProcessor;->a:Ljava/util/concurrent/ConcurrentHashMap;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/alibaba/security/biometrics/auth/processor/AuthActivityProcessor;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/security/biometrics/AuthContext;

    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v0, "getAuthContext authContextMap is null"

    invoke-static {v0}, Lhzj;->a(Ljava/lang/String;)V

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;Lcom/alibaba/security/biometrics/AuthContext;)V
    .locals 1

    sget-object v0, Lcom/alibaba/security/biometrics/auth/processor/AuthActivityProcessor;->a:Ljava/util/concurrent/ConcurrentHashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/alibaba/security/biometrics/auth/processor/AuthActivityProcessor;->a:Ljava/util/concurrent/ConcurrentHashMap;

    :cond_0
    sget-object v0, Lcom/alibaba/security/biometrics/auth/processor/AuthActivityProcessor;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static b(Ljava/lang/String;)Lcom/alibaba/security/biometrics/AuthContext;
    .locals 3

    sget-object v0, Lcom/alibaba/security/biometrics/auth/processor/AuthActivityProcessor;->a:Ljava/util/concurrent/ConcurrentHashMap;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/alibaba/security/biometrics/auth/processor/AuthActivityProcessor;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/security/biometrics/AuthContext;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "removeAuthContext return remove,ctx="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected b(Lcom/alibaba/security/biometrics/AuthContext;)Z
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v3, 0x0

    .line 0
    iget-object v0, p0, Lcom/alibaba/security/biometrics/auth/processor/AuthActivityProcessor;->b:Lcom/alibaba/security/biometrics/auth/processor/AuthActivityProcessor$a;

    if-nez v0, :cond_0

    new-instance v0, Lcom/alibaba/security/biometrics/auth/processor/AuthActivityProcessor$a;

    invoke-direct {v0, p0}, Lcom/alibaba/security/biometrics/auth/processor/AuthActivityProcessor$a;-><init>(Lcom/alibaba/security/biometrics/auth/processor/AuthActivityProcessor;)V

    iput-object v0, p0, Lcom/alibaba/security/biometrics/auth/processor/AuthActivityProcessor;->b:Lcom/alibaba/security/biometrics/auth/processor/AuthActivityProcessor$a;

    new-instance v0, Landroid/content/IntentFilter;

    iget-object v1, p0, Lcom/alibaba/security/biometrics/auth/processor/AuthActivityProcessor;->c:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/alibaba/security/biometrics/AuthContext;->a()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lhxw;->a(Landroid/content/Context;)Lhxw;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/security/biometrics/auth/processor/AuthActivityProcessor;->b:Lcom/alibaba/security/biometrics/auth/processor/AuthActivityProcessor$a;

    invoke-virtual {v1, v2, v0}, Lhxw;->a(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    :cond_0
    invoke-virtual {p1, p0}, Lcom/alibaba/security/biometrics/AuthContext;->a(Lhwh;)V

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    invoke-virtual {p1}, Lcom/alibaba/security/biometrics/AuthContext;->a()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v1, 0x30000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string/jumbo v1, "K_PROCESSOR_NAME"

    iget-object v2, p0, Lcom/alibaba/security/biometrics/auth/processor/AuthActivityProcessor;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {v3, p1}, Lcom/alibaba/security/biometrics/auth/processor/AuthActivityProcessor;->a(Ljava/lang/String;Lcom/alibaba/security/biometrics/AuthContext;)V

    .line 1000
    iget-object v1, p0, Lhwh;->f:Lcom/alibaba/security/biometrics/AuthContext;

    .line 0
    invoke-virtual {v1}, Lcom/alibaba/security/biometrics/AuthContext;->a()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    const/4 v0, 0x1

    return v0
.end method
