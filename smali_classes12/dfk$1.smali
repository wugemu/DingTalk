.class public final Ldfk$1;
.super Ljava/lang/Object;
.source "SvcGrpPresenter.java"

# interfaces
.implements Lcom/alibaba/wukong/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldfk;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
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
.field final synthetic a:Landroid/content/Intent;

.field final synthetic b:I

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:J

.field final synthetic e:Ldfk;


# direct methods
.method public constructor <init>(Ldfk;Landroid/content/Intent;ILjava/lang/String;J)V
    .locals 1
    .param p1, "this$0"    # Ldfk;

    .prologue
    .line 213
    iput-object p1, p0, Ldfk$1;->e:Ldfk;

    iput-object p2, p0, Ldfk$1;->a:Landroid/content/Intent;

    iput p3, p0, Ldfk$1;->b:I

    iput-object p4, p0, Ldfk$1;->c:Ljava/lang/String;

    iput-wide p5, p0, Ldfk$1;->d:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 226
    const-string/jumbo v0, "im"

    const-string/jumbo v1, "SvcGrpPresenter"

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "code = "

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p1, v2, v3

    const/4 v3, 0x2

    const-string/jumbo v4, "reason = "

    aput-object v4, v2, v3

    const/4 v3, 0x3

    aput-object p2, v2, v3

    const/4 v3, 0x4

    const-string/jumbo v4, "msgId = "

    aput-object v4, v2, v3

    const/4 v3, 0x5

    iget-wide v4, p0, Ldfk$1;->d:J

    .line 228
    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    .line 226
    invoke-static {v2}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 229
    return-void
.end method

.method public final bridge synthetic onProgress(Ljava/lang/Object;I)V
    .locals 0

    .prologue
    .line 213
    return-void
.end method

.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .locals 12

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v11

    invoke-static {v11}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v1, 0x1

    .line 213
    move-object v3, p1

    check-cast v3, Lcom/alibaba/wukong/im/Message;

    .line 1216
    if-nez v3, :cond_0

    .line 1217
    const-string/jumbo v0, "im"

    const-string/jumbo v1, "SvcGrpPresenter"

    const-string/jumbo v2, "get null message"

    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2251
    :goto_0
    return-void

    .line 1221
    :cond_0
    iget-object v4, p0, Ldfk$1;->e:Ldfk;

    iget-object v2, p0, Ldfk$1;->a:Landroid/content/Intent;

    iget v5, p0, Ldfk$1;->b:I

    iget-object v6, p0, Ldfk$1;->c:Ljava/lang/String;

    .line 2249
    iget-object v0, v4, Ldfk;->b:Lcom/alibaba/wukong/im/Conversation;

    if-eqz v0, :cond_1

    iget-wide v8, v4, Ldfk;->c:J

    const-wide/16 v10, 0x0

    cmp-long v0, v8, v10

    if-gtz v0, :cond_2

    .line 2250
    :cond_1
    const-string/jumbo v0, "im"

    const-string/jumbo v1, "SvcGrpPresenter"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "mConversationObject = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v4, Ldfk;->b:Lcom/alibaba/wukong/im/Conversation;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", mMenuSeed = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v4, v4, Ldfk;->c:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2253
    :cond_2
    new-instance v0, Ldfj;

    if-ne v5, v1, :cond_3

    :goto_1
    invoke-direct {v0, v1, v2}, Ldfj;-><init>(ZLandroid/content/Intent;)V

    .line 3091
    iput-object v6, v0, Ldpi;->a:Ljava/lang/String;

    .line 2255
    iget-object v1, v4, Ldfk;->a:Landroid/app/Activity;

    iget-object v2, v4, Ldfk;->b:Lcom/alibaba/wukong/im/Conversation;

    iget-wide v4, v4, Ldfk;->c:J

    new-instance v6, Leav;

    invoke-direct {v6}, Leav;-><init>()V

    invoke-virtual/range {v0 .. v6}, Ldpi;->a(Landroid/content/Context;Lcom/alibaba/wukong/im/Conversation;Lcom/alibaba/wukong/im/Message;JLeav;)V

    goto :goto_0

    .line 2253
    :cond_3
    const/4 v1, 0x0

    goto :goto_1
.end method
