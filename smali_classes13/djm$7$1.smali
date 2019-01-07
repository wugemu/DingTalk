.class final Ldjm$7$1;
.super Ljava/lang/Object;
.source "DingUtil.java"

# interfaces
.implements Lcom/alibaba/wukong/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldjm$7;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/alibaba/wukong/Callback",
        "<",
        "Lcom/alibaba/wukong/im/Message;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/wukong/im/Conversation;

.field final synthetic b:Ldjm$7;


# direct methods
.method constructor <init>(Ldjm$7;Lcom/alibaba/wukong/im/Conversation;)V
    .locals 0
    .param p1, "this$0"    # Ldjm$7;

    .prologue
    .line 363
    iput-object p1, p0, Ldjm$7$1;->b:Ldjm$7;

    iput-object p2, p0, Ldjm$7$1;->a:Lcom/alibaba/wukong/im/Conversation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 391
    iget-object v0, p0, Ldjm$7$1;->b:Ldjm$7;

    iget-boolean v0, v0, Ldjm$7;->d:Z

    if-eqz v0, :cond_0

    .line 392
    iget-object v0, p0, Ldjm$7$1;->b:Ldjm$7;

    iget-object v0, v0, Ldjm$7;->c:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 394
    :cond_0
    const-string/jumbo v0, "sendDingOrPegMessage"

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string/jumbo v3, "sendDingOrPegMessage getMessage.onException code:"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p1, v1, v2

    const/4 v2, 0x2

    const-string/jumbo v3, ", reason:"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    aput-object p2, v1, v2

    invoke-static {v1}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1018
    const-string/jumbo v2, "im"

    invoke-static {v0, v1, v2}, Lhzt;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 395
    return-void
.end method

.method public final bridge synthetic onProgress(Ljava/lang/Object;I)V
    .locals 0

    .prologue
    .line 363
    return-void
.end method

.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 363
    check-cast p1, Lcom/alibaba/wukong/im/Message;

    .line 1367
    if-eqz p1, :cond_1

    .line 1368
    iget-object v0, p0, Ldjm$7$1;->b:Ldjm$7;

    iget-boolean v0, v0, Ldjm$7;->b:Z

    if-eqz v0, :cond_0

    .line 1369
    iget-object v0, p0, Ldjm$7$1;->b:Ldjm$7;

    iget-object v0, v0, Ldjm$7;->c:Landroid/app/Activity;

    iget-object v1, p0, Ldjm$7$1;->a:Lcom/alibaba/wukong/im/Conversation;

    iget-object v2, p0, Ldjm$7$1;->b:Ldjm$7;

    iget-boolean v2, v2, Ldjm$7;->d:Z

    .line 2049
    invoke-static {v0, v1, p1, v2}, Ldjm;->a(Landroid/content/Context;Lcom/alibaba/wukong/im/Conversation;Lcom/alibaba/wukong/im/Message;Z)V

    .line 1371
    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Ldjm$7$1;->b:Ldjm$7;

    iget-object v0, v0, Ldjm$7;->c:Landroid/app/Activity;

    iget-object v1, p0, Ldjm$7$1;->a:Lcom/alibaba/wukong/im/Conversation;

    iget-object v2, p0, Ldjm$7$1;->b:Ldjm$7;

    iget-boolean v2, v2, Ldjm$7;->d:Z

    invoke-static {v0, v1, p1, v2}, Ldjm;->a(Landroid/app/Activity;Lcom/alibaba/wukong/im/Conversation;Lcom/alibaba/wukong/im/Message;Z)V

    goto :goto_0

    .line 1375
    :cond_1
    iget-object v0, p0, Ldjm$7$1;->b:Ldjm$7;

    iget-boolean v0, v0, Ldjm$7;->d:Z

    if-eqz v0, :cond_2

    .line 1376
    iget-object v0, p0, Ldjm$7$1;->b:Ldjm$7;

    iget-object v0, v0, Ldjm$7;->c:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 1379
    :cond_2
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v0

    new-instance v1, Ldjm$7$1$1;

    invoke-direct {v1, p0}, Ldjm$7$1$1;-><init>(Ldjm$7$1;)V

    invoke-virtual {v0, v1}, Lhcv;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method
