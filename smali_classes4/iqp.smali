.class final Liqp;
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
    .line 55
    iput-object p1, p0, Liqp;->a:Liqo;

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
    .line 59
    iget-object v0, p0, Liqp;->a:Liqo;

    iget-object v0, v0, Liqo;->b:Lcom/alipay/sdk/app/b;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/alipay/sdk/app/b;->a(Lcom/alipay/sdk/app/b;Z)Z

    .line 60
    iget-object v0, p0, Liqp;->a:Liqo;

    iget-object v0, v0, Liqo;->a:Landroid/webkit/SslErrorHandler;

    invoke-virtual {v0}, Landroid/webkit/SslErrorHandler;->proceed()V

    .line 61
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 62
    return-void
.end method
