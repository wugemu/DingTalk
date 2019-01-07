.class final Lcn/com/chinatelecom/gateway/lib/d;
.super Lcn/com/chinatelecom/gateway/lib/n$a;
.source "AuthManager.java"


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Ljava/lang/String;

.field final synthetic e:Lcn/com/chinatelecom/gateway/lib/PreCodeListener;

.field final synthetic f:Lcn/com/chinatelecom/gateway/lib/a;


# direct methods
.method constructor <init>(Lcn/com/chinatelecom/gateway/lib/a;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcn/com/chinatelecom/gateway/lib/PreCodeListener;)V
    .locals 0

    .prologue
    .line 89
    iput-object p1, p0, Lcn/com/chinatelecom/gateway/lib/d;->f:Lcn/com/chinatelecom/gateway/lib/a;

    iput-object p2, p0, Lcn/com/chinatelecom/gateway/lib/d;->a:Landroid/content/Context;

    iput-object p3, p0, Lcn/com/chinatelecom/gateway/lib/d;->b:Ljava/lang/String;

    iput-object p4, p0, Lcn/com/chinatelecom/gateway/lib/d;->c:Ljava/lang/String;

    iput-object p5, p0, Lcn/com/chinatelecom/gateway/lib/d;->d:Ljava/lang/String;

    iput-object p6, p0, Lcn/com/chinatelecom/gateway/lib/d;->e:Lcn/com/chinatelecom/gateway/lib/PreCodeListener;

    invoke-direct {p0}, Lcn/com/chinatelecom/gateway/lib/n$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 92
    new-instance v0, Lcn/com/chinatelecom/gateway/lib/h;

    invoke-direct {v0}, Lcn/com/chinatelecom/gateway/lib/h;-><init>()V

    .line 93
    iget-object v1, p0, Lcn/com/chinatelecom/gateway/lib/d;->a:Landroid/content/Context;

    const-string/jumbo v2, "http://id6.me/openapi/networkauth/preGetMobile.do"

    invoke-virtual {v0, v1, v2}, Lcn/com/chinatelecom/gateway/lib/h;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    .line 94
    if-eqz v0, :cond_2

    .line 95
    invoke-virtual {p0}, Lcn/com/chinatelecom/gateway/lib/d;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 103
    :cond_0
    :goto_0
    return-void

    .line 96
    :cond_1
    iget-object v0, p0, Lcn/com/chinatelecom/gateway/lib/d;->a:Landroid/content/Context;

    iget-object v1, p0, Lcn/com/chinatelecom/gateway/lib/d;->b:Ljava/lang/String;

    iget-object v2, p0, Lcn/com/chinatelecom/gateway/lib/d;->c:Ljava/lang/String;

    iget-object v3, p0, Lcn/com/chinatelecom/gateway/lib/d;->d:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-static {v0, v1, v2, v3, v4}, Lcn/com/chinatelecom/gateway/lib/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/Network;)Ljava/lang/String;

    move-result-object v0

    .line 97
    invoke-virtual {p0}, Lcn/com/chinatelecom/gateway/lib/d;->b()Z

    move-result v1

    if-nez v1, :cond_0

    .line 98
    iget-object v1, p0, Lcn/com/chinatelecom/gateway/lib/d;->e:Lcn/com/chinatelecom/gateway/lib/PreCodeListener;

    invoke-static {v0, v1}, Lcn/com/chinatelecom/gateway/lib/CtAuth;->postResultOnMainThread(Ljava/lang/String;Lcn/com/chinatelecom/gateway/lib/PreCodeListener;)V

    goto :goto_0

    .line 100
    :cond_2
    invoke-virtual {p0}, Lcn/com/chinatelecom/gateway/lib/d;->b()Z

    move-result v0

    if-nez v0, :cond_0

    .line 101
    const v0, -0xafc82

    const-string/jumbo v1, "\u5207\u6362\u79fb\u52a8\u7f51\u7edc\u8d85\u65f6(4.x)"

    invoke-static {v0, v1}, Lcn/com/chinatelecom/gateway/lib/a$a;->a(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcn/com/chinatelecom/gateway/lib/d;->e:Lcn/com/chinatelecom/gateway/lib/PreCodeListener;

    invoke-static {v0, v1}, Lcn/com/chinatelecom/gateway/lib/CtAuth;->postResultOnMainThread(Ljava/lang/String;Lcn/com/chinatelecom/gateway/lib/PreCodeListener;)V

    goto :goto_0
.end method
