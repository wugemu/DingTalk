.class public final Lhqf;
.super Ljava/lang/Object;
.source "OAuthAccessor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lhqf$b;,
        Lhqf$a;,
        Lhqf$c;,
        Lhqf$d;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(B)V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Lhqf;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Lhqf$a;)V
    .locals 2
    .param p1, "miniAppId"    # Ljava/lang/String;
    .param p2, "callback"    # Lhqf$a;

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 135
    const-class v1, Lcom/alibaba/lightapp/runtime/miniapp/rpc/OpenAppAuthIService;

    invoke-static {v1}, Liyx;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/lightapp/runtime/miniapp/rpc/OpenAppAuthIService;

    .line 136
    .local v0, "service":Lcom/alibaba/lightapp/runtime/miniapp/rpc/OpenAppAuthIService;
    new-instance v1, Lhqf$5;

    invoke-direct {v1, p0, p2}, Lhqf$5;-><init>(Lhqf;Lhqf$a;)V

    invoke-interface {v0, p1, v1}, Lcom/alibaba/lightapp/runtime/miniapp/rpc/OpenAppAuthIService;->getOpenAppUserAuthInfo4MiniApp(Ljava/lang/String;Liyv;)V

    .line 153
    return-void
.end method
