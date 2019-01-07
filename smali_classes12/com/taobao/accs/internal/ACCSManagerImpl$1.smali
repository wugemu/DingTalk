.class final Lcom/taobao/accs/internal/ACCSManagerImpl$1;
.super Ljava/lang/Object;
.source "ACCSManagerImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/accs/internal/ACCSManagerImpl;->startChannelService(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/taobao/accs/internal/ACCSManagerImpl;


# direct methods
.method constructor <init>(Lcom/taobao/accs/internal/ACCSManagerImpl;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 143
    iput-object p1, p0, Lcom/taobao/accs/internal/ACCSManagerImpl$1;->b:Lcom/taobao/accs/internal/ACCSManagerImpl;

    iput-object p2, p0, Lcom/taobao/accs/internal/ACCSManagerImpl$1;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 146
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "com.taobao.accs.intent.action.START_SERVICE"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 147
    .local v1, "startIntent":Landroid/content/Intent;
    const-string/jumbo v2, "appKey"

    iget-object v3, p0, Lcom/taobao/accs/internal/ACCSManagerImpl$1;->a:Landroid/content/Context;

    invoke-static {v3}, Lcom/taobao/accs/utl/UtilityImpl;->getAppkey(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 148
    const-string/jumbo v2, "ttid"

    iget-object v3, p0, Lcom/taobao/accs/internal/ACCSManagerImpl$1;->a:Landroid/content/Context;

    invoke-static {v3}, Lcom/taobao/accs/utl/UtilityImpl;->getTtId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 149
    const-string/jumbo v2, "packageName"

    iget-object v3, p0, Lcom/taobao/accs/internal/ACCSManagerImpl$1;->a:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 150
    const-string/jumbo v2, "app_sercet"

    iget-object v3, p0, Lcom/taobao/accs/internal/ACCSManagerImpl$1;->a:Landroid/content/Context;

    invoke-static {v3}, Ljim;->a(Landroid/content/Context;)Ljim;

    move-result-object v3

    .line 1100
    iget-object v3, v3, Ljim;->b:Ljava/lang/String;

    .line 150
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 151
    iget-object v2, p0, Lcom/taobao/accs/internal/ACCSManagerImpl$1;->a:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "com.taobao.accs.ChannelService"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 152
    iget-object v2, p0, Lcom/taobao/accs/internal/ACCSManagerImpl$1;->a:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 154
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 155
    .local v0, "agoointent":Landroid/content/Intent;
    const-string/jumbo v2, "org.agoo.android.intent.action.REPORT"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 156
    iget-object v2, p0, Lcom/taobao/accs/internal/ACCSManagerImpl$1;->a:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 157
    iget-object v2, p0, Lcom/taobao/accs/internal/ACCSManagerImpl$1;->a:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/taobao/accs/internal/ACCSManagerImpl$1;->a:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljik;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 158
    iget-object v2, p0, Lcom/taobao/accs/internal/ACCSManagerImpl$1;->a:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 159
    return-void
.end method
