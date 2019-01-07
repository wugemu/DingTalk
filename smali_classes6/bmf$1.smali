.class final Lbmf$1;
.super Ljava/lang/Object;
.source "ClientNpcProxy.java"

# interfaces
.implements Lblp;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbmf;->invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/reflect/Method;

.field final synthetic b:Lbmi;

.field final synthetic c:[Ljava/lang/Object;

.field final synthetic d:Lbmf;


# direct methods
.method constructor <init>(Lbmf;Ljava/lang/reflect/Method;Lbmi;[Ljava/lang/Object;)V
    .locals 0
    .param p1, "this$0"    # Lbmf;

    .prologue
    .line 52
    iput-object p1, p0, Lbmf$1;->d:Lbmf;

    iput-object p2, p0, Lbmf$1;->a:Ljava/lang/reflect/Method;

    iput-object p3, p0, Lbmf$1;->b:Lbmi;

    iput-object p4, p0, Lbmf$1;->c:[Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 7

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    const/4 v6, 0x0

    .line 55
    iget-object v4, p0, Lbmf$1;->a:Ljava/lang/reflect/Method;

    invoke-virtual {v4}, Ljava/lang/reflect/Method;->getGenericParameterTypes()[Ljava/lang/reflect/Type;

    move-result-object v3

    .line 56
    .local v3, "types":[Ljava/lang/reflect/Type;
    const/4 v4, 0x1

    aget-object v1, v3, v4

    check-cast v1, Ljava/lang/reflect/ParameterizedType;

    .line 57
    .local v1, "parameterizedType":Ljava/lang/reflect/ParameterizedType;
    invoke-interface {v1}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v4

    aget-object v2, v4, v6

    .line 59
    .local v2, "respType":Ljava/lang/reflect/Type;
    new-instance v0, Lbmg;

    iget-object v4, p0, Lbmf$1;->b:Lbmi;

    invoke-direct {v0, v2, v4}, Lbmg;-><init>(Ljava/lang/reflect/Type;Lbmi;)V

    .line 60
    .local v0, "clientNpcRespWrapper":Lbmg;
    invoke-static {}, Lcom/alibaba/android/dingtalk/alpha/AlphaManager;->getInstance()Lcom/alibaba/android/dingtalk/alpha/AlphaManager;

    move-result-object v5

    iget-object v4, p0, Lbmf$1;->c:[Ljava/lang/Object;

    aget-object v4, v4, v6

    check-cast v4, Liyn;

    iget-object v6, p0, Lbmf$1;->a:Ljava/lang/reflect/Method;

    invoke-virtual {v6}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v4, v6, v0}, Lcom/alibaba/android/dingtalk/alpha/AlphaManager;->sendCall(Liyn;Ljava/lang/String;Lbmg;)V

    .line 61
    return-void
.end method

.method public final a(ILjava/lang/String;)V
    .locals 4
    .param p1, "code"    # I
    .param p2, "reason"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 70
    const-string/jumbo v0, "ClientNpcProxy"

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    iget-object v3, p0, Lbmf$1;->a:Ljava/lang/reflect/Method;

    invoke-virtual {v3}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string/jumbo v3, " code = "

    aput-object v3, v1, v2

    const/4 v2, 0x2

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-string/jumbo v3, ", reason = "

    aput-object v3, v1, v2

    const/4 v2, 0x4

    aput-object p2, v1, v2

    invoke-static {v1}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lblu;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    iget-object v0, p0, Lbmf$1;->b:Lbmi;

    invoke-interface {v0, p1, p2}, Lbmi;->a(ILjava/lang/String;)V

    .line 72
    return-void
.end method

.method public final b()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 65
    const-string/jumbo v0, "ClientNpcProxy"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    iget-object v3, p0, Lbmf$1;->a:Ljava/lang/reflect/Method;

    invoke-virtual {v3}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string/jumbo v3, " onClientClosed"

    aput-object v3, v1, v2

    invoke-static {v1}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lblu;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    return-void
.end method
