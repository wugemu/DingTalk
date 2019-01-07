.class Lcom/alibaba/wukong/auth/b$4;
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
    .line 155
    iput-object p1, p0, Lcom/alibaba/wukong/auth/b$4;->l:Lcom/alibaba/wukong/auth/b;

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
    .line 158
    invoke-static {}, Lcom/alibaba/wukong/auth/b;->access$000()Z

    move-result v0

    if-nez v0, :cond_0

    .line 159
    iget-object v0, p0, Lcom/alibaba/wukong/auth/b$4;->l:Lcom/alibaba/wukong/auth/b;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/alibaba/wukong/auth/b;->d(Lcom/alibaba/wukong/auth/b;Z)Z

    .line 177
    :goto_0
    return-void

    .line 162
    :cond_0
    iget-object v0, p0, Lcom/alibaba/wukong/auth/b$4;->l:Lcom/alibaba/wukong/auth/b;

    const/4 v1, 0x0

    new-instance v2, Lcom/alibaba/wukong/auth/b$4$1;

    invoke-direct {v2, p0}, Lcom/alibaba/wukong/auth/b$4$1;-><init>(Lcom/alibaba/wukong/auth/b$4;)V

    invoke-static {v0, v1, v2}, Lcom/alibaba/wukong/auth/b;->a(Lcom/alibaba/wukong/auth/b;ILcom/alibaba/wukong/Callback;)V

    goto :goto_0
.end method
