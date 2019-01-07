.class final Lbnh$3;
.super Ljava/lang/Object;
.source "AlphaStorage.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbnh;->a(Ljava/lang/String;Lblv;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lblv;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Lbnh;


# direct methods
.method constructor <init>(Lbnh;Ljava/lang/String;Lblv;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lbnh;

    .prologue
    .line 156
    iput-object p1, p0, Lbnh$3;->d:Lbnh;

    iput-object p2, p0, Lbnh$3;->a:Ljava/lang/String;

    iput-object p3, p0, Lbnh$3;->b:Lblv;

    iput-object p4, p0, Lbnh$3;->c:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 159
    iget-object v3, p0, Lbnh$3;->d:Lbnh;

    invoke-static {v3}, Lbnh;->a(Lbnh;)Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/taobao/wireless/security/sdk/SecurityGuardManager;->getInstance(Landroid/content/Context;)Lcom/taobao/wireless/security/sdk/SecurityGuardManager;

    move-result-object v2

    .line 160
    .local v2, "sgMgr":Lcom/taobao/wireless/security/sdk/SecurityGuardManager;
    invoke-virtual {v2}, Lcom/taobao/wireless/security/sdk/SecurityGuardManager;->getDynamicDataStoreComp()Lcom/taobao/wireless/security/sdk/dynamicdatastore/IDynamicDataStoreComponent;

    move-result-object v0

    .line 162
    .local v0, "ddsComp":Lcom/taobao/wireless/security/sdk/dynamicdatastore/IDynamicDataStoreComponent;
    if-nez v0, :cond_0

    .line 163
    const-string/jumbo v3, "AlphaStorage"

    const-string/jumbo v4, "ddsComp is null when getPsk"

    invoke-static {v3, v4}, Lblu;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    iget-object v3, p0, Lbnh$3;->d:Lbnh;

    iget-object v4, p0, Lbnh$3;->a:Ljava/lang/String;

    const/4 v5, 0x0

    iget-object v6, p0, Lbnh$3;->b:Lblv;

    const/4 v7, 0x0

    invoke-static {v3, v4, v5, v6, v7}, Lbnh;->a(Lbnh;Ljava/lang/String;Ljava/lang/String;Lblv;Z)V

    .line 169
    :goto_0
    return-void

    .line 167
    :cond_0
    iget-object v3, p0, Lbnh$3;->c:Ljava/lang/String;

    invoke-interface {v0, v3}, Lcom/taobao/wireless/security/sdk/dynamicdatastore/IDynamicDataStoreComponent;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 168
    .local v1, "psk":Ljava/lang/String;
    iget-object v3, p0, Lbnh$3;->d:Lbnh;

    iget-object v4, p0, Lbnh$3;->a:Ljava/lang/String;

    iget-object v5, p0, Lbnh$3;->b:Lblv;

    const/4 v6, 0x1

    invoke-static {v3, v4, v1, v5, v6}, Lbnh;->a(Lbnh;Ljava/lang/String;Ljava/lang/String;Lblv;Z)V

    goto :goto_0
.end method
