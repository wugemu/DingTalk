.class final Lcom/alipay/apmobilesecuritysdk/c/b;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/apmobilesecuritysdk/c/b;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/alipay/apmobilesecuritysdk/c/b;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/alipay/apmobilesecuritysdk/c/b;->c:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    iget-object v0, p0, Lcom/alipay/apmobilesecuritysdk/c/b;->a:Ljava/lang/String;

    iget-object v1, p0, Lcom/alipay/apmobilesecuritysdk/c/b;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/alipay/apmobilesecuritysdk/c/b;->c:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/alipay/apmobilesecuritysdk/c/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
