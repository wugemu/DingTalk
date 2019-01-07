.class final Liqa$1$1;
.super Ljava/lang/Object;
.source "JsonGwService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Liqa$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alipay/bis/common/service/facade/gw/zim/ZimInitGwResponse;

.field final synthetic b:Liqa$1;


# direct methods
.method constructor <init>(Liqa$1;Lcom/alipay/bis/common/service/facade/gw/zim/ZimInitGwResponse;)V
    .locals 0
    .param p1, "this$1"    # Liqa$1;

    .prologue
    .line 69
    iput-object p1, p0, Liqa$1$1;->b:Liqa$1;

    iput-object p2, p0, Liqa$1$1;->a:Lcom/alipay/bis/common/service/facade/gw/zim/ZimInitGwResponse;

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
    .line 72
    iget-object v0, p0, Liqa$1$1;->b:Liqa$1;

    iget-object v0, v0, Liqa$1;->b:Liqa;

    iget-object v0, v0, Liqa;->d:Lipz;

    if-eqz v0, :cond_0

    .line 73
    iget-object v0, p0, Liqa$1$1;->b:Liqa$1;

    iget-object v0, v0, Liqa$1;->b:Liqa;

    iget-object v0, v0, Liqa;->d:Lipz;

    iget-object v1, p0, Liqa$1$1;->a:Lcom/alipay/bis/common/service/facade/gw/zim/ZimInitGwResponse;

    invoke-interface {v0, v1}, Lipz;->a(Lcom/alipay/bis/common/service/facade/gw/zim/ZimInitGwResponse;)V

    .line 75
    :cond_0
    return-void
.end method
