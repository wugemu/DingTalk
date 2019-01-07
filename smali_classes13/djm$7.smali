.class final Ldjm$7;
.super Ljava/lang/Object;
.source "DingUtil.java"

# interfaces
.implements Lcom/alibaba/wukong/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ldjm;->a(Landroid/app/Activity;Ljava/lang/String;JZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/alibaba/wukong/Callback",
        "<",
        "Lcom/alibaba/wukong/im/Conversation;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:J

.field final synthetic b:Z

.field final synthetic c:Landroid/app/Activity;

.field final synthetic d:Z


# direct methods
.method constructor <init>(JZLandroid/app/Activity;Z)V
    .locals 1

    .prologue
    .line 358
    iput-wide p1, p0, Ldjm$7;->a:J

    iput-boolean p3, p0, Ldjm$7;->b:Z

    iput-object p4, p0, Ldjm$7;->c:Landroid/app/Activity;

    iput-boolean p5, p0, Ldjm$7;->d:Z

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
    .line 413
    iget-boolean v0, p0, Ldjm$7;->d:Z

    if-eqz v0, :cond_0

    .line 414
    iget-object v0, p0, Ldjm$7;->c:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 416
    :cond_0
    const-string/jumbo v0, "sendDingOrPegMessage"

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string/jumbo v3, "sendDingOrPegMessage getConversation.onException code:"

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

    .line 417
    return-void
.end method

.method public final bridge synthetic onProgress(Ljava/lang/Object;I)V
    .locals 0

    .prologue
    .line 358
    return-void
.end method

.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 358
    check-cast p1, Lcom/alibaba/wukong/im/Conversation;

    .line 1362
    if-eqz p1, :cond_1

    .line 1363
    iget-wide v2, p0, Ldjm$7;->a:J

    new-instance v0, Ldjm$7$1;

    invoke-direct {v0, p0, p1}, Ldjm$7$1;-><init>(Ldjm$7;Lcom/alibaba/wukong/im/Conversation;)V

    const-class v1, Lcom/alibaba/wukong/Callback;

    iget-object v4, p0, Ldjm$7;->c:Landroid/app/Activity;

    invoke-static {v0, v1, v4}, Lcon;->a(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/Callback;

    invoke-interface {p1, v2, v3, v0}, Lcom/alibaba/wukong/im/Conversation;->getMessage(JLcom/alibaba/wukong/Callback;)V

    :cond_0
    :goto_0
    return-void

    .line 1404
    :cond_1
    iget-boolean v0, p0, Ldjm$7;->d:Z

    if-eqz v0, :cond_0

    .line 1405
    iget-object v0, p0, Ldjm$7;->c:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_0
.end method
