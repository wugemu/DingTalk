.class final Ldea$4;
.super Ljava/lang/Object;
.source "ChatSendPresenter.java"

# interfaces
.implements Lcom/alibaba/wukong/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ldea;->a(JLjava/lang/String;Ljava/lang/String;)V
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
        "Lcom/alibaba/wukong/im/Conversation;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:J

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Ldea;


# direct methods
.method constructor <init>(Ldea;JLjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Ldea;

    .prologue
    .line 709
    iput-object p1, p0, Ldea$4;->d:Ldea;

    iput-wide p2, p0, Ldea$4;->a:J

    iput-object p4, p0, Ldea$4;->b:Ljava/lang/String;

    iput-object p5, p0, Ldea$4;->c:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 802
    iget-object v0, p0, Ldea$4;->d:Ldea;

    .line 1095
    iget-object v0, v0, Ldea;->b:Lddz$b;

    .line 802
    invoke-interface {v0}, Lddz$b;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 803
    iget-object v0, p0, Ldea$4;->d:Ldea;

    .line 2095
    iget-object v0, v0, Ldea;->b:Lddz$b;

    .line 803
    const-string/jumbo v1, ""

    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v2

    invoke-virtual {v2}, Lcid;->c()Landroid/app/Application;

    move-result-object v2

    sget v3, Lctk$i;->msg_forward_failed:I

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v6

    .line 3056
    iget-object v6, v6, Lcid;->c:Lcmy;

    .line 803
    invoke-interface {v6, p1, p2}, Lcmy;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/app/Application;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lddz$b;->a_(Ljava/lang/String;Ljava/lang/String;)V

    .line 805
    :cond_0
    return-void
.end method

.method public final bridge synthetic onProgress(Ljava/lang/Object;I)V
    .locals 0

    .prologue
    .line 709
    return-void
.end method

.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .locals 7

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 709
    check-cast p1, Lcom/alibaba/wukong/im/Conversation;

    .line 3712
    iget-object v0, p0, Ldea$4;->d:Ldea;

    .line 4095
    iget-object v0, v0, Ldea;->c:Lcom/alibaba/wukong/im/Conversation;

    .line 3712
    if-eqz v0, :cond_0

    .line 3715
    iget-object v0, p0, Ldea$4;->d:Ldea;

    .line 5095
    iget-object v1, v0, Ldea;->c:Lcom/alibaba/wukong/im/Conversation;

    .line 3715
    iget-wide v2, p0, Ldea$4;->a:J

    const-string/jumbo v0, "EVENTBUTLER"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/eventbus/EventButler;

    new-instance v4, Ldea$4$1;

    invoke-direct {v4, p0, p1}, Ldea$4$1;-><init>(Ldea$4;Lcom/alibaba/wukong/im/Conversation;)V

    const-class v5, Lcom/alibaba/wukong/Callback;

    iget-object v6, p0, Ldea$4;->d:Ldea;

    .line 6095
    iget-object v6, v6, Ldea;->a:Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    .line 3715
    invoke-interface {v0, v4, v5, v6}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/Callback;

    invoke-interface {v1, v2, v3, v0}, Lcom/alibaba/wukong/im/Conversation;->getMessage(JLcom/alibaba/wukong/Callback;)V

    .line 709
    :cond_0
    return-void
.end method
