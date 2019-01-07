.class final Lddy$15;
.super Ljava/lang/Object;
.source "ChatLoadPresenter.java"

# interfaces
.implements Lcom/alibaba/wukong/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lddy;
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
.field final synthetic a:Lcom/alibaba/wukong/im/Message;

.field final synthetic b:I

.field final synthetic c:I

.field final synthetic d:I

.field final synthetic e:Lcom/alibaba/wukong/im/Message;

.field final synthetic f:Lddy;


# direct methods
.method constructor <init>(Lddy;Lcom/alibaba/wukong/im/Message;IIILcom/alibaba/wukong/im/Message;)V
    .locals 0
    .param p1, "this$0"    # Lddy;

    .prologue
    .line 1200
    iput-object p1, p0, Lddy$15;->f:Lddy;

    iput-object p2, p0, Lddy$15;->a:Lcom/alibaba/wukong/im/Message;

    iput p3, p0, Lddy$15;->b:I

    iput p4, p0, Lddy$15;->c:I

    iput p5, p0, Lddy$15;->d:I

    iput-object p6, p0, Lddy$15;->e:Lcom/alibaba/wukong/im/Message;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    .prologue
    .line 1237
    return-void
.end method

.method public final bridge synthetic onProgress(Ljava/lang/Object;I)V
    .locals 0

    .prologue
    .line 1200
    return-void
.end method

.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 1200
    check-cast p1, Lcom/alibaba/wukong/im/Message;

    .line 2203
    iget-object v0, p0, Lddy$15;->f:Lddy;

    .line 3066
    iget-object v0, v0, Lddy;->d:Lddx$b;

    .line 2203
    invoke-interface {v0}, Lddx$b;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    iget-object v0, p0, Lddy$15;->a:Lcom/alibaba/wukong/im/Message;

    if-eqz v0, :cond_0

    .line 2204
    iget-object v1, p0, Lddy$15;->a:Lcom/alibaba/wukong/im/Message;

    const/4 v2, 0x0

    const-string/jumbo v0, "EVENTBUTLER"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/eventbus/EventButler;

    new-instance v3, Lddy$15$1;

    invoke-direct {v3, p0, p1}, Lddy$15$1;-><init>(Lddy$15;Lcom/alibaba/wukong/im/Message;)V

    const-class v4, Lcom/alibaba/wukong/Callback;

    iget-object v5, p0, Lddy$15;->f:Lddy;

    .line 4066
    iget-object v5, v5, Lddy;->a:Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    .line 2204
    invoke-interface {v0, v3, v4, v5}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/Callback;

    invoke-interface {v1, p1, v2, v0}, Lcom/alibaba/wukong/im/Message;->compareOffset(Lcom/alibaba/wukong/im/Message;Lcom/alibaba/wukong/im/Message$CreatorType;Lcom/alibaba/wukong/Callback;)V

    .line 1200
    :cond_0
    return-void
.end method
