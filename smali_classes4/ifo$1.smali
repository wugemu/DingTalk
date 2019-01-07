.class final Lifo$1;
.super Liaa;
.source "CloudSettingServiceImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lifo;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/wukong/settings/CloudSetting$EffectScopeType;Lcom/alibaba/wukong/Callback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Liaa",
        "<",
        "Ljava/lang/Void;",
        "Lcom/alibaba/wukong/auth/ap;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Lcom/alibaba/wukong/settings/CloudSetting$EffectScopeType;

.field final synthetic e:Lifo;


# direct methods
.method constructor <init>(Lifo;Lcom/alibaba/wukong/Callback;ZLcom/alibaba/wukong/WKExecutor;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/wukong/settings/CloudSetting$EffectScopeType;)V
    .locals 1
    .param p1, "this$0"    # Lifo;
    .param p3, "needAfterRpc"    # Z
    .param p4, "executor"    # Lcom/alibaba/wukong/WKExecutor;

    .prologue
    .line 67
    .local p2, "listener":Lcom/alibaba/wukong/Callback;, "Lcom/alibaba/wukong/Callback<-Lcom/alibaba/wukong/auth/ap;>;"
    iput-object p1, p0, Lifo$1;->e:Lifo;

    iput-object p5, p0, Lifo$1;->a:Ljava/lang/String;

    iput-object p6, p0, Lifo$1;->b:Ljava/lang/String;

    iput-object p7, p0, Lifo$1;->c:Ljava/lang/String;

    iput-object p8, p0, Lifo$1;->d:Lcom/alibaba/wukong/settings/CloudSetting$EffectScopeType;

    const/4 v0, 0x1

    invoke-direct {p0, p2, v0, p4}, Liaa;-><init>(Lcom/alibaba/wukong/Callback;ZLcom/alibaba/wukong/WKExecutor;)V

    return-void
.end method


# virtual methods
.method public final onAfterRpc(Liaa$b;)Liaa$b;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Liaa",
            "<",
            "Ljava/lang/Void;",
            "Lcom/alibaba/wukong/auth/ap;",
            ">.b;)",
            "Liaa",
            "<",
            "Ljava/lang/Void;",
            "Lcom/alibaba/wukong/auth/ap;",
            ">.b;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 75
    .local p1, "rpcResult":Liaa$b;, "Liaa<Ljava/lang/Void;Lcom/alibaba/wukong/auth/ap;>.b;"
    iget-boolean v0, p1, Liaa$b;->a:Z

    if-eqz v0, :cond_0

    iget-object v0, p1, Liaa$b;->d:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 76
    iget-object v0, p0, Lifo$1;->e:Lifo;

    invoke-static {v0}, Lifo;->b(Lifo;)Lcom/alibaba/wukong/auth/aq;

    move-result-object v1

    iget-object v0, p1, Liaa$b;->d:Ljava/lang/Object;

    check-cast v0, Lcom/alibaba/wukong/settings/CloudSetting;

    invoke-virtual {v1, v0}, Lcom/alibaba/wukong/auth/aq;->c(Lcom/alibaba/wukong/settings/CloudSetting;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 78
    invoke-static {}, Lifo;->b()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    iget-object v1, p0, Lifo$1;->a:Ljava/lang/String;

    iget-object v2, p0, Lifo$1;->b:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/alibaba/wukong/auth/aq;->d(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p1, Liaa$b;->d:Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    iget-object v0, p0, Lifo$1;->e:Lifo;

    invoke-static {v0}, Lifo;->b(Lifo;)Lcom/alibaba/wukong/auth/aq;

    move-result-object v1

    iget-object v0, p1, Liaa$b;->d:Ljava/lang/Object;

    check-cast v0, Lcom/alibaba/wukong/auth/ap;

    invoke-virtual {v0}, Lcom/alibaba/wukong/auth/ap;->getVersion()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/alibaba/wukong/auth/aq;->a(J)Z

    .line 81
    iget-object v0, p1, Liaa$b;->d:Ljava/lang/Object;

    check-cast v0, Lcom/alibaba/wukong/settings/CloudSetting;

    invoke-static {v0}, Lcom/alibaba/wukong/auth/an;->a(Lcom/alibaba/wukong/settings/CloudSetting;)V

    .line 84
    :cond_0
    return-object p1
.end method

.method public final synthetic onExecuteRpc(Ljava/lang/Object;Lcom/alibaba/wukong/Callback;)V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 67
    .line 1070
    iget-object v0, p0, Lifo$1;->e:Lifo;

    invoke-static {v0}, Lifo;->a(Lifo;)Lcom/alibaba/wukong/auth/ar;

    move-result-object v0

    iget-object v1, p0, Lifo$1;->e:Lifo;

    iget-object v2, p0, Lifo$1;->a:Ljava/lang/String;

    iget-object v3, p0, Lifo$1;->b:Ljava/lang/String;

    iget-object v4, p0, Lifo$1;->c:Ljava/lang/String;

    iget-object v5, p0, Lifo$1;->d:Lcom/alibaba/wukong/settings/CloudSetting$EffectScopeType;

    invoke-static {v1, v2, v3, v4, v5}, Lifo;->a(Lifo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/wukong/settings/CloudSetting$EffectScopeType;)Lcom/alibaba/wukong/auth/x;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/alibaba/wukong/auth/ar;->a(Lcom/alibaba/wukong/auth/x;Lcom/alibaba/wukong/Callback;)V

    .line 67
    return-void
.end method
