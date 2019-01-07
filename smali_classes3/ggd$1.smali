.class final Lggd$1;
.super Ljava/lang/Object;
.source "RecentConfigPresenter.java"

# interfaces
.implements Lcom/alibaba/wukong/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lggd;->a()V
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
.field final synthetic a:Lggd;


# direct methods
.method constructor <init>(Lggd;)V
    .locals 0
    .param p1, "this$0"    # Lggd;

    .prologue
    .line 39
    iput-object p1, p0, Lggd$1;->a:Lggd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "errorCode"    # Ljava/lang/String;
    .param p2, "errorMsg"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 53
    iget-object v0, p0, Lggd$1;->a:Lggd;

    .line 1023
    iget-object v0, v0, Lggd;->b:Lgge$b;

    .line 53
    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lgge$b;->a(Z)V

    .line 54
    iget-object v0, p0, Lggd$1;->a:Lggd;

    .line 2023
    iget-object v0, v0, Lggd;->b:Lgge$b;

    .line 54
    invoke-interface {v0, p1, p2}, Lgge$b;->a_(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    const-string/jumbo v0, "CSpace"

    const-string/jumbo v1, "RecentConfigPresenter"

    const-string/jumbo v2, "loadNotifySetting getConversation"

    const/4 v3, 0x0

    invoke-static {v2, p1, p2, v3}, Lgot;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    return-void
.end method

.method public final bridge synthetic onProgress(Ljava/lang/Object;I)V
    .locals 0

    .prologue
    .line 39
    return-void
.end method

.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 39
    check-cast p1, Lcom/alibaba/wukong/im/Conversation;

    .line 2042
    if-nez p1, :cond_0

    .line 2043
    iget-object v0, p0, Lggd$1;->a:Lggd;

    .line 3023
    iget-object v0, v0, Lggd;->b:Lgge$b;

    .line 2043
    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lgge$b;->a(Z)V

    .line 2044
    :goto_0
    return-void

    .line 2047
    :cond_0
    iget-object v0, p0, Lggd$1;->a:Lggd;

    .line 4023
    iput-object p1, v0, Lggd;->a:Lcom/alibaba/wukong/im/Conversation;

    .line 2048
    iget-object v0, p0, Lggd$1;->a:Lggd;

    .line 5023
    iget-object v0, v0, Lggd;->b:Lgge$b;

    .line 2048
    invoke-interface {p1}, Lcom/alibaba/wukong/im/Conversation;->isNotificationEnabled()Z

    move-result v1

    invoke-interface {v0, v1}, Lgge$b;->a(Z)V

    goto :goto_0
.end method
