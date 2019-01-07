.class Lcom/ali/user/open/tbauth/TbAuthServiceImpl$a;
.super Landroid/os/AsyncTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ali/user/open/tbauth/TbAuthServiceImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Object;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field a:Lcom/ali/user/open/core/callback/MemberCallback;

.field final synthetic b:Lcom/ali/user/open/tbauth/TbAuthServiceImpl;


# direct methods
.method constructor <init>(Lcom/ali/user/open/tbauth/TbAuthServiceImpl;Lcom/ali/user/open/core/callback/MemberCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/ali/user/open/tbauth/TbAuthServiceImpl$a;->b:Lcom/ali/user/open/tbauth/TbAuthServiceImpl;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    iput-object p2, p0, Lcom/ali/user/open/tbauth/TbAuthServiceImpl$a;->a:Lcom/ali/user/open/core/callback/MemberCallback;

    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Object;)Ljava/lang/Void;
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    sget-object v0, Lcom/ali/user/open/cookies/CookieManagerWrapper;->INSTANCE:Lcom/ali/user/open/cookies/CookieManagerWrapper;

    const-string/jumbo v1, ".taobao.com"

    invoke-virtual {v0, v1}, Lcom/ali/user/open/cookies/CookieManagerWrapper;->refreshCookie(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method protected a(Ljava/lang/Void;)V
    .locals 1

    iget-object v0, p0, Lcom/ali/user/open/tbauth/TbAuthServiceImpl$a;->a:Lcom/ali/user/open/core/callback/MemberCallback;

    invoke-interface {v0, p1}, Lcom/ali/user/open/core/callback/MemberCallback;->onSuccess(Ljava/lang/Object;)V

    return-void
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/ali/user/open/tbauth/TbAuthServiceImpl$a;->a([Ljava/lang/Object;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/ali/user/open/tbauth/TbAuthServiceImpl$a;->a(Ljava/lang/Void;)V

    return-void
.end method
