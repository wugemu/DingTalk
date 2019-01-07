.class Lcom/alibaba/wukong/auth/b$1;
.super Ljava/lang/Object;
.source "AppStatusTracker.java"

# interfaces
.implements Lcom/alibaba/wukong/ConnectionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/wukong/auth/b;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic l:Lcom/alibaba/wukong/auth/b;


# direct methods
.method constructor <init>(Lcom/alibaba/wukong/auth/b;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/wukong/auth/b;

    .prologue
    .line 47
    iput-object p1, p0, Lcom/alibaba/wukong/auth/b$1;->l:Lcom/alibaba/wukong/auth/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConnected()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 51
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/alibaba/wukong/auth/b;->b(Z)Z

    .line 52
    const-string/jumbo v0, "Network"

    const-string/jumbo v1, "Connect"

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    invoke-static {v0, v1, v2, v3}, Lhzs;->a(Ljava/lang/String;Ljava/lang/String;D)V

    .line 53
    iget-object v0, p0, Lcom/alibaba/wukong/auth/b$1;->l:Lcom/alibaba/wukong/auth/b;

    iget-object v1, p0, Lcom/alibaba/wukong/auth/b$1;->l:Lcom/alibaba/wukong/auth/b;

    invoke-static {v1}, Lcom/alibaba/wukong/auth/b;->a(Lcom/alibaba/wukong/auth/b;)Z

    move-result v1

    invoke-static {v0, v1}, Lcom/alibaba/wukong/auth/b;->a(Lcom/alibaba/wukong/auth/b;Z)V

    .line 54
    return-void
.end method

.method public onDisconnected(Ljava/lang/String;)V
    .locals 2
    .param p1, "reason"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 58
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/alibaba/wukong/auth/b;->b(Z)Z

    .line 59
    iget-object v0, p0, Lcom/alibaba/wukong/auth/b$1;->l:Lcom/alibaba/wukong/auth/b;

    iget-object v1, p0, Lcom/alibaba/wukong/auth/b$1;->l:Lcom/alibaba/wukong/auth/b;

    invoke-static {v1}, Lcom/alibaba/wukong/auth/b;->a(Lcom/alibaba/wukong/auth/b;)Z

    move-result v1

    invoke-static {v0, v1}, Lcom/alibaba/wukong/auth/b;->a(Lcom/alibaba/wukong/auth/b;Z)V

    .line 60
    return-void
.end method
