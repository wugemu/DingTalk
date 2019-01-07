.class final Lcn/com/chinatelecom/gateway/lib/b;
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
    .line 34
    iput-object p1, p0, Lcn/com/chinatelecom/gateway/lib/b;->f:Lcn/com/chinatelecom/gateway/lib/a;

    iput-object p2, p0, Lcn/com/chinatelecom/gateway/lib/b;->a:Landroid/content/Context;

    iput-object p3, p0, Lcn/com/chinatelecom/gateway/lib/b;->b:Ljava/lang/String;

    iput-object p4, p0, Lcn/com/chinatelecom/gateway/lib/b;->c:Ljava/lang/String;

    iput-object p5, p0, Lcn/com/chinatelecom/gateway/lib/b;->d:Ljava/lang/String;

    iput-object p6, p0, Lcn/com/chinatelecom/gateway/lib/b;->e:Lcn/com/chinatelecom/gateway/lib/PreCodeListener;

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
    .line 37
    iget-object v0, p0, Lcn/com/chinatelecom/gateway/lib/b;->a:Landroid/content/Context;

    iget-object v1, p0, Lcn/com/chinatelecom/gateway/lib/b;->b:Ljava/lang/String;

    iget-object v2, p0, Lcn/com/chinatelecom/gateway/lib/b;->c:Ljava/lang/String;

    iget-object v3, p0, Lcn/com/chinatelecom/gateway/lib/b;->d:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-static {v0, v1, v2, v3, v4}, Lcn/com/chinatelecom/gateway/lib/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/Network;)Ljava/lang/String;

    move-result-object v0

    .line 38
    invoke-virtual {p0}, Lcn/com/chinatelecom/gateway/lib/b;->b()Z

    move-result v1

    if-nez v1, :cond_0

    .line 39
    iget-object v1, p0, Lcn/com/chinatelecom/gateway/lib/b;->e:Lcn/com/chinatelecom/gateway/lib/PreCodeListener;

    invoke-static {v0, v1}, Lcn/com/chinatelecom/gateway/lib/CtAuth;->postResultOnMainThread(Ljava/lang/String;Lcn/com/chinatelecom/gateway/lib/PreCodeListener;)V

    .line 41
    :cond_0
    return-void
.end method
