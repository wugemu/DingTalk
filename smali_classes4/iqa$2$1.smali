.class final Liqa$2$1;
.super Ljava/lang/Object;
.source "JsonGwService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Liqa$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alipay/bis/common/service/facade/gw/zim/ZimValidateGwResponse;

.field final synthetic b:Liqa$2;


# direct methods
.method constructor <init>(Liqa$2;Lcom/alipay/bis/common/service/facade/gw/zim/ZimValidateGwResponse;)V
    .locals 0
    .param p1, "this$1"    # Liqa$2;

    .prologue
    .line 120
    iput-object p1, p0, Liqa$2$1;->b:Liqa$2;

    iput-object p2, p0, Liqa$2$1;->a:Lcom/alipay/bis/common/service/facade/gw/zim/ZimValidateGwResponse;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 123
    iget-object v0, p0, Liqa$2$1;->b:Liqa$2;

    iget-object v0, v0, Liqa$2;->c:Liqa;

    iget-object v0, v0, Liqa;->d:Lipz;

    if-eqz v0, :cond_0

    .line 124
    iget-object v0, p0, Liqa$2$1;->b:Liqa$2;

    iget-object v0, v0, Liqa$2;->c:Liqa;

    iget-object v0, v0, Liqa;->d:Lipz;

    iget-object v1, p0, Liqa$2$1;->a:Lcom/alipay/bis/common/service/facade/gw/zim/ZimValidateGwResponse;

    invoke-interface {v0, v1}, Lipz;->a(Lcom/alipay/bis/common/service/facade/gw/zim/ZimValidateGwResponse;)V

    .line 126
    :cond_0
    return-void
.end method
