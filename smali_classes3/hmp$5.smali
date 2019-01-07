.class final Lhmp$5;
.super Lcom/alipay/mobile/nebula/callback/H5UpdateAppCallback;
.source "MiniAppBundleManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lhmp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lhlo;

.field final synthetic d:Lhmp;


# direct methods
.method constructor <init>(Lhmp;Ljava/lang/String;Ljava/lang/String;Lhlo;)V
    .locals 0
    .param p1, "this$0"    # Lhmp;

    .prologue
    .line 533
    iput-object p1, p0, Lhmp$5;->d:Lhmp;

    iput-object p2, p0, Lhmp$5;->a:Ljava/lang/String;

    iput-object p3, p0, Lhmp$5;->b:Ljava/lang/String;

    iput-object p4, p0, Lhmp$5;->c:Lhlo;

    invoke-direct {p0}, Lcom/alipay/mobile/nebula/callback/H5UpdateAppCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public final onResult(ZZ)V
    .locals 5
    .param p1, "success"    # Z
    .param p2, "isLimit"    # Z

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 536
    invoke-super {p0, p1, p2}, Lcom/alipay/mobile/nebula/callback/H5UpdateAppCallback;->onResult(ZZ)V

    .line 537
    if-eqz p1, :cond_0

    .line 538
    iget-object v0, p0, Lhmp$5;->d:Lhmp;

    iget-object v1, p0, Lhmp$5;->a:Ljava/lang/String;

    iget-object v2, p0, Lhmp$5;->b:Ljava/lang/String;

    const/4 v3, 0x2

    iget-object v4, p0, Lhmp$5;->c:Lhlo;

    invoke-static {v0, v1, v2, v3, v4}, Lhmp;->a(Lhmp;Ljava/lang/String;Ljava/lang/String;ILhlo;)V

    .line 540
    :cond_0
    return-void
.end method
