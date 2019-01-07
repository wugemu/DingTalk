.class Lcom/alibaba/wukong/auth/b$3;
.super Ljava/lang/Object;
.source "AppStatusTracker.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/wukong/auth/b;
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
    .line 127
    iput-object p1, p0, Lcom/alibaba/wukong/auth/b$3;->l:Lcom/alibaba/wukong/auth/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v2, 0x1

    .line 131
    iget-object v0, p0, Lcom/alibaba/wukong/auth/b$3;->l:Lcom/alibaba/wukong/auth/b;

    invoke-static {v0, v2}, Lcom/alibaba/wukong/auth/b;->c(Lcom/alibaba/wukong/auth/b;Z)Z

    .line 132
    invoke-static {}, Lcom/alibaba/wukong/auth/b;->access$000()Z

    move-result v0

    if-nez v0, :cond_0

    .line 133
    iget-object v0, p0, Lcom/alibaba/wukong/auth/b$3;->l:Lcom/alibaba/wukong/auth/b;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/alibaba/wukong/auth/b;->d(Lcom/alibaba/wukong/auth/b;Z)Z

    .line 151
    :goto_0
    return-void

    .line 136
    :cond_0
    iget-object v0, p0, Lcom/alibaba/wukong/auth/b$3;->l:Lcom/alibaba/wukong/auth/b;

    new-instance v1, Lcom/alibaba/wukong/auth/b$3$1;

    invoke-direct {v1, p0}, Lcom/alibaba/wukong/auth/b$3$1;-><init>(Lcom/alibaba/wukong/auth/b$3;)V

    invoke-static {v0, v2, v1}, Lcom/alibaba/wukong/auth/b;->a(Lcom/alibaba/wukong/auth/b;ILcom/alibaba/wukong/Callback;)V

    goto :goto_0
.end method
