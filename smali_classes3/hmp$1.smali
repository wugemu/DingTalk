.class final Lhmp$1;
.super Ljava/lang/Object;
.source "MiniAppBundleManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lhmp;->a(Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/nebula/callback/H5AppInstallCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alipay/mobile/nebula/provider/H5AppProvider;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Lcom/alipay/mobile/nebula/callback/H5AppInstallCallback;

.field final synthetic e:Lhmp;


# direct methods
.method constructor <init>(Lhmp;Lcom/alipay/mobile/nebula/provider/H5AppProvider;Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/nebula/callback/H5AppInstallCallback;)V
    .locals 0
    .param p1, "this$0"    # Lhmp;

    .prologue
    .line 321
    iput-object p1, p0, Lhmp$1;->e:Lhmp;

    iput-object p2, p0, Lhmp$1;->a:Lcom/alipay/mobile/nebula/provider/H5AppProvider;

    iput-object p3, p0, Lhmp$1;->b:Ljava/lang/String;

    iput-object p4, p0, Lhmp$1;->c:Ljava/lang/String;

    iput-object p5, p0, Lhmp$1;->d:Lcom/alipay/mobile/nebula/callback/H5AppInstallCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 324
    iget-object v0, p0, Lhmp$1;->a:Lcom/alipay/mobile/nebula/provider/H5AppProvider;

    iget-object v1, p0, Lhmp$1;->b:Ljava/lang/String;

    iget-object v2, p0, Lhmp$1;->c:Ljava/lang/String;

    iget-object v3, p0, Lhmp$1;->d:Lcom/alipay/mobile/nebula/callback/H5AppInstallCallback;

    invoke-interface {v0, v1, v2, v3}, Lcom/alipay/mobile/nebula/provider/H5AppProvider;->installApp(Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/nebula/callback/H5AppInstallCallback;)V

    .line 325
    return-void
.end method
