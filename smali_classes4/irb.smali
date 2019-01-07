.class public final Lirb;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/webkit/SslErrorHandler;

.field final synthetic b:Lcom/alipay/sdk/auth/AuthActivity$b;


# direct methods
.method public constructor <init>(Lcom/alipay/sdk/auth/AuthActivity$b;Landroid/webkit/SslErrorHandler;)V
    .locals 0

    .prologue
    .line 198
    iput-object p1, p0, Lirb;->b:Lcom/alipay/sdk/auth/AuthActivity$b;

    iput-object p2, p0, Lirb;->a:Landroid/webkit/SslErrorHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 200
    iget-object v0, p0, Lirb;->b:Lcom/alipay/sdk/auth/AuthActivity$b;

    iget-object v0, v0, Lcom/alipay/sdk/auth/AuthActivity$b;->a:Lcom/alipay/sdk/auth/AuthActivity;

    const-string/jumbo v1, "\u5b89\u5168\u8b66\u544a"

    const-string/jumbo v2, "\u7531\u4e8e\u60a8\u7684\u8bbe\u5907\u7f3a\u5c11\u6839\u8bc1\u4e66\uff0c\u5c06\u65e0\u6cd5\u6821\u9a8c\u8be5\u8bbf\u95ee\u7ad9\u70b9\u7684\u5b89\u5168\u6027\uff0c\u53ef\u80fd\u5b58\u5728\u98ce\u9669\uff0c\u8bf7\u9009\u62e9\u662f\u5426\u7ee7\u7eed\uff1f"

    const-string/jumbo v3, "\u7ee7\u7eed"

    new-instance v4, Lirc;

    invoke-direct {v4, p0}, Lirc;-><init>(Lirb;)V

    const-string/jumbo v5, "\u9000\u51fa"

    new-instance v6, Lird;

    invoke-direct {v6, p0}, Lird;-><init>(Lirb;)V

    invoke-static/range {v0 .. v6}, Lisw;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/Dialog;

    .line 221
    return-void
.end method
