.class Lcom/ali/user/open/core/registry/a/b$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/reflect/InvocationHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ali/user/open/core/registry/a/b;->a(Ljava/lang/Class;Ljava/util/Map;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/Class;

.field final synthetic b:Ljava/util/Map;

.field final synthetic c:Lcom/ali/user/open/core/registry/a/b;


# direct methods
.method constructor <init>(Lcom/ali/user/open/core/registry/a/b;Ljava/lang/Class;Ljava/util/Map;)V
    .locals 0

    iput-object p1, p0, Lcom/ali/user/open/core/registry/a/b$1;->c:Lcom/ali/user/open/core/registry/a/b;

    iput-object p2, p0, Lcom/ali/user/open/core/registry/a/b$1;->a:Ljava/lang/Class;

    iput-object p3, p0, Lcom/ali/user/open/core/registry/a/b$1;->b:Ljava/util/Map;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar7;->b(I)V

    iget-object v0, p0, Lcom/ali/user/open/core/registry/a/b$1;->c:Lcom/ali/user/open/core/registry/a/b;

    invoke-static {v0}, Lcom/ali/user/open/core/registry/a/b;->a(Lcom/ali/user/open/core/registry/a/b;)Lcom/ali/user/open/core/registry/a;

    move-result-object v0

    iget-object v1, p0, Lcom/ali/user/open/core/registry/a/b$1;->a:Ljava/lang/Class;

    iget-object v2, p0, Lcom/ali/user/open/core/registry/a/b$1;->b:Ljava/util/Map;

    invoke-interface {v0, v1, v2}, Lcom/ali/user/open/core/registry/a;->a(Ljava/lang/Class;Ljava/util/Map;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "kernel"

    const-string/jumbo v1, "SERVICE_NOT_AVAILABLE_ERROR"

    invoke-static {v0, v1}, Lcom/ali/user/open/core/trace/SDKLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p2, v0, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method
