.class final Lbnh$1;
.super Ljava/lang/Object;
.source "AlphaStorage.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbnh;->a(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lbnh;


# direct methods
.method constructor <init>(Lbnh;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lbnh;

    .prologue
    .line 84
    iput-object p1, p0, Lbnh$1;->c:Lbnh;

    iput-object p2, p0, Lbnh$1;->a:Ljava/lang/String;

    iput-object p3, p0, Lbnh$1;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 87
    iget-object v2, p0, Lbnh$1;->c:Lbnh;

    invoke-static {v2}, Lbnh;->a(Lbnh;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/taobao/wireless/security/sdk/SecurityGuardManager;->getInstance(Landroid/content/Context;)Lcom/taobao/wireless/security/sdk/SecurityGuardManager;

    move-result-object v1

    .line 88
    .local v1, "sgMgr":Lcom/taobao/wireless/security/sdk/SecurityGuardManager;
    invoke-virtual {v1}, Lcom/taobao/wireless/security/sdk/SecurityGuardManager;->getDynamicDataStoreComp()Lcom/taobao/wireless/security/sdk/dynamicdatastore/IDynamicDataStoreComponent;

    move-result-object v0

    .line 90
    .local v0, "ddsComp":Lcom/taobao/wireless/security/sdk/dynamicdatastore/IDynamicDataStoreComponent;
    if-nez v0, :cond_0

    .line 91
    const-string/jumbo v2, "AlphaStorage"

    const-string/jumbo v3, "ddsComp is null when savePsk"

    invoke-static {v2, v3}, Lblu;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    :goto_0
    return-void

    .line 95
    :cond_0
    iget-object v2, p0, Lbnh$1;->c:Lbnh;

    iget-object v3, p0, Lbnh$1;->a:Ljava/lang/String;

    invoke-static {v2, v3}, Lbnh;->a(Lbnh;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lbnh$1;->b:Ljava/lang/String;

    invoke-interface {v0, v2, v3}, Lcom/taobao/wireless/security/sdk/dynamicdatastore/IDynamicDataStoreComponent;->putString(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
