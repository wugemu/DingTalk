.class Lcom/ali/user/open/tbauth/task/LogoutTask$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ali/user/open/tbauth/task/LogoutTask;->a([Ljava/lang/Void;)Ljava/lang/Void;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ali/user/open/tbauth/task/LogoutTask;


# direct methods
.method constructor <init>(Lcom/ali/user/open/tbauth/task/LogoutTask;)V
    .locals 0

    iput-object p1, p0, Lcom/ali/user/open/tbauth/task/LogoutTask$2;->a:Lcom/ali/user/open/tbauth/task/LogoutTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/ali/user/open/tbauth/task/LogoutTask$2;->a:Lcom/ali/user/open/tbauth/task/LogoutTask;

    invoke-static {v0}, Lcom/ali/user/open/tbauth/task/LogoutTask;->a(Lcom/ali/user/open/tbauth/task/LogoutTask;)Lcom/ali/user/open/tbauth/callback/LogoutCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ali/user/open/tbauth/task/LogoutTask$2;->a:Lcom/ali/user/open/tbauth/task/LogoutTask;

    invoke-static {v0}, Lcom/ali/user/open/tbauth/task/LogoutTask;->a(Lcom/ali/user/open/tbauth/task/LogoutTask;)Lcom/ali/user/open/tbauth/callback/LogoutCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/ali/user/open/tbauth/callback/LogoutCallback;->onSuccess()V

    :cond_0
    return-void
.end method
