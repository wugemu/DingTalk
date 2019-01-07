.class final Ldea$4$1$1;
.super Ljava/lang/Object;
.source "ChatSendPresenter.java"

# interfaces
.implements Lcom/alibaba/wukong/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldea$4$1;
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
.field final synthetic a:Ldea$4$1;


# direct methods
.method constructor <init>(Ldea$4$1;)V
    .locals 0
    .param p1, "this$2"    # Ldea$4$1;

    .prologue
    .line 756
    iput-object p1, p0, Ldea$4$1$1;->a:Ldea$4$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v7, 0x0

    .line 770
    const-string/jumbo v0, "101008"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 771
    iget-object v0, p0, Ldea$4$1$1;->a:Ldea$4$1;

    iget-object v0, v0, Ldea$4$1;->b:Ldea$4;

    iget-object v0, v0, Ldea$4;->d:Ldea;

    .line 1095
    iget-object v0, v0, Ldea;->b:Lddz$b;

    .line 771
    invoke-interface {v0}, Lddz$b;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 772
    iget-object v0, p0, Ldea$4$1$1;->a:Ldea$4$1;

    iget-object v0, v0, Ldea$4$1;->b:Ldea$4;

    iget-object v0, v0, Ldea$4;->d:Ldea;

    .line 2095
    iget-object v0, v0, Ldea;->b:Lddz$b;

    .line 772
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

    .line 772
    invoke-interface {v6, p1, p2}, Lcmy;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/app/Application;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lddz$b;->a_(Ljava/lang/String;Ljava/lang/String;)V

    .line 775
    :cond_0
    iget-object v0, p0, Ldea$4$1$1;->a:Ldea$4$1;

    iget-object v0, v0, Ldea$4$1;->b:Ldea$4;

    iget-object v0, v0, Ldea$4;->c:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 776
    new-instance v0, Ldiz;

    iget-object v1, p0, Ldea$4$1$1;->a:Ldea$4$1;

    iget-object v1, v1, Ldea$4$1;->a:Lcom/alibaba/wukong/im/Conversation;

    invoke-direct {v0, v1}, Ldiz;-><init>(Lcom/alibaba/wukong/im/Conversation;)V

    iget-object v1, p0, Ldea$4$1$1;->a:Ldea$4$1;

    iget-object v1, v1, Ldea$4$1;->b:Ldea$4;

    iget-object v1, v1, Ldea$4;->c:Ljava/lang/String;

    .line 3413
    invoke-virtual {v0, v1, v7, v7}, Ldiz;->a(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)Z

    .line 778
    :cond_1
    return-void
.end method

.method public final bridge synthetic onProgress(Ljava/lang/Object;I)V
    .locals 0

    .prologue
    .line 756
    return-void
.end method

.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .locals 8

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v7, 0x0

    .line 756
    .line 3759
    iget-object v0, p0, Ldea$4$1$1;->a:Ldea$4$1;

    iget-object v0, v0, Ldea$4$1;->b:Ldea$4;

    iget-object v0, v0, Ldea$4;->d:Ldea;

    .line 4095
    iget-object v0, v0, Ldea;->b:Lddz$b;

    .line 3759
    invoke-interface {v0}, Lddz$b;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3760
    iget-object v0, p0, Ldea$4$1$1;->a:Ldea$4$1;

    iget-object v0, v0, Ldea$4$1;->b:Ldea$4;

    iget-object v0, v0, Ldea$4;->d:Ldea;

    .line 5095
    iget-object v0, v0, Ldea;->b:Lddz$b;

    .line 3760
    const-string/jumbo v1, ""

    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v2

    invoke-virtual {v2}, Lcid;->c()Landroid/app/Application;

    move-result-object v2

    sget v3, Lctk$i;->msg_forward_success:I

    invoke-virtual {v2, v3}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lddz$b;->a_(Ljava/lang/String;Ljava/lang/String;)V

    .line 3762
    :cond_0
    iget-object v0, p0, Ldea$4$1$1;->a:Ldea$4$1;

    iget-object v0, v0, Ldea$4$1;->b:Ldea$4;

    iget-object v1, v0, Ldea$4;->d:Ldea;

    iget-object v0, p0, Ldea$4$1$1;->a:Ldea$4$1;

    iget-object v0, v0, Ldea$4$1;->b:Ldea$4;

    iget-object v0, v0, Ldea$4;->b:Ljava/lang/String;

    iget-object v2, p0, Ldea$4$1$1;->a:Ldea$4$1;

    iget-object v2, v2, Ldea$4$1;->b:Ldea$4;

    iget-wide v4, v2, Ldea$4;->a:J

    .line 6818
    invoke-static {v0}, Ldjl;->a(Ljava/lang/String;)J

    move-result-wide v2

    .line 6819
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v6

    new-instance v0, Ldea$5;

    invoke-direct/range {v0 .. v5}, Ldea$5;-><init>(Ldea;JJ)V

    invoke-virtual {v6, v2, v3, v0}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a(JLcma;)V

    .line 3763
    iget-object v0, p0, Ldea$4$1$1;->a:Ldea$4$1;

    iget-object v0, v0, Ldea$4$1;->b:Ldea$4;

    iget-object v0, v0, Ldea$4;->c:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 3764
    new-instance v0, Ldiz;

    iget-object v1, p0, Ldea$4$1$1;->a:Ldea$4$1;

    iget-object v1, v1, Ldea$4$1;->a:Lcom/alibaba/wukong/im/Conversation;

    invoke-direct {v0, v1}, Ldiz;-><init>(Lcom/alibaba/wukong/im/Conversation;)V

    iget-object v1, p0, Ldea$4$1$1;->a:Ldea$4$1;

    iget-object v1, v1, Ldea$4$1;->b:Ldea$4;

    iget-object v1, v1, Ldea$4;->c:Ljava/lang/String;

    .line 7413
    invoke-virtual {v0, v1, v7, v7}, Ldiz;->a(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)Z

    .line 756
    :cond_1
    return-void
.end method
