.class final Liqq;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Liqo;


# direct methods
.method constructor <init>(Liqo;)V
    .locals 0

    .prologue
    .line 63
    iput-object p1, p0, Liqq;->a:Liqo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 67
    iget-object v0, p0, Liqq;->a:Liqo;

    iget-object v0, v0, Liqo;->a:Landroid/webkit/SslErrorHandler;

    invoke-virtual {v0}, Landroid/webkit/SslErrorHandler;->cancel()V

    .line 68
    iget-object v0, p0, Liqq;->a:Liqo;

    iget-object v0, v0, Liqo;->b:Lcom/alipay/sdk/app/b;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/alipay/sdk/app/b;->a(Lcom/alipay/sdk/app/b;Z)Z

    .line 69
    invoke-static {}, Liqu;->a()Ljava/lang/String;

    move-result-object v0

    .line 1015
    sput-object v0, Liqu;->a:Ljava/lang/String;

    .line 70
    iget-object v0, p0, Liqq;->a:Liqo;

    iget-object v0, v0, Liqo;->b:Lcom/alipay/sdk/app/b;

    invoke-static {v0}, Lcom/alipay/sdk/app/b;->a(Lcom/alipay/sdk/app/b;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 71
    return-void
.end method
