.class public Lcom/ali/user/open/tbauth/TbAuthLifecycleAdapter;
.super Ljava/lang/Object;


# static fields
.field public static final TAG:Ljava/lang/String; = "Member.TbAuthLifecycleAdapter"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static init()V
    .locals 6

    const/4 v5, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x0

    const-string/jumbo v0, "Member.TbAuthLifecycleAdapter"

    const-string/jumbo v1, "LoginLifecycle init "

    invoke-static {v0, v1}, Lcom/ali/user/open/core/trace/SDKLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/ali/user/open/tbauth/handler/TbAuthActivityResultHandler;

    invoke-direct {v0}, Lcom/ali/user/open/tbauth/handler/TbAuthActivityResultHandler;-><init>()V

    new-array v1, v4, [Ljava/lang/Class;

    const-class v2, Lcom/ali/user/open/tbauth/ui/support/ActivityResultHandler;

    aput-object v2, v1, v3

    invoke-static {v1, v0, v5}, Lcom/ali/user/open/core/context/KernelContext;->registerService([Ljava/lang/Class;Ljava/lang/Object;Ljava/util/Map;)Lcom/ali/user/open/core/registry/ServiceRegistration;

    new-instance v0, Lcom/ali/user/open/tbauth/TbAuthServiceImpl;

    invoke-direct {v0}, Lcom/ali/user/open/tbauth/TbAuthServiceImpl;-><init>()V

    new-array v1, v4, [Ljava/lang/Class;

    const-class v2, Lcom/ali/user/open/tbauth/TbAuthService;

    aput-object v2, v1, v3

    invoke-static {v1, v0, v5}, Lcom/ali/user/open/core/context/KernelContext;->registerService([Ljava/lang/Class;Ljava/lang/Object;Ljava/util/Map;)Lcom/ali/user/open/core/registry/ServiceRegistration;

    return-void
.end method
