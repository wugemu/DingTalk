.class final Ldfj;
.super Ldpi;
.source "SvcGrpMenuReplyHandler.java"


# instance fields
.field private final d:Z

.field private final e:Landroid/content/Intent;


# direct methods
.method constructor <init>(ZLandroid/content/Intent;)V
    .locals 1
    .param p1, "replyDirectly"    # Z
    .param p2, "extra"    # Landroid/content/Intent;

    .prologue
    .line 18
    invoke-direct {p0}, Ldpi;-><init>()V

    .line 19
    iput-boolean p1, p0, Ldfj;->d:Z

    .line 20
    invoke-static {p2}, Lcom/alibaba/doraemon/utils/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    iput-object v0, p0, Ldfj;->e:Landroid/content/Intent;

    .line 21
    return-void
.end method


# virtual methods
.method protected final a(Landroid/content/Intent;)V
    .locals 6
    .param p1, "intent"    # Landroid/content/Intent;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 25
    invoke-super {p0, p1}, Ldpi;->a(Landroid/content/Intent;)V

    .line 26
    const-string/jumbo v0, "extra_from_svc_grp"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 27
    const-string/jumbo v0, "extra_reply_directly"

    iget-boolean v1, p0, Ldfj;->d:Z

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 28
    iget-object v0, p0, Ldfj;->e:Landroid/content/Intent;

    if-eqz v0, :cond_0

    .line 29
    const-string/jumbo v0, "result_msg_id"

    iget-object v1, p0, Ldfj;->e:Landroid/content/Intent;

    const-string/jumbo v2, "result_msg_id"

    const-wide/16 v4, -0x1

    invoke-virtual {v1, v2, v4, v5}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v2

    invoke-virtual {p1, v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 30
    const-string/jumbo v0, "result_answer_id"

    iget-object v1, p0, Ldfj;->e:Landroid/content/Intent;

    const-string/jumbo v2, "result_answer_id"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 32
    :cond_0
    return-void
.end method
