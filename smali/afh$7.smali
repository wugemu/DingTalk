.class final Lafh$7;
.super Ljava/lang/Object;
.source "MailUtils.java"

# interfaces
.implements Lcom/alibaba/wukong/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lafh;->a(Landroid/app/Activity;Lcom/alibaba/wukong/Callback;)V
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
.field final synthetic a:Lcom/alibaba/wukong/Callback;


# direct methods
.method constructor <init>(Lcom/alibaba/wukong/Callback;)V
    .locals 0

    .prologue
    .line 1702
    iput-object p1, p0, Lafh$7;->a:Lcom/alibaba/wukong/Callback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    .prologue
    .line 1713
    iget-object v0, p0, Lafh$7;->a:Lcom/alibaba/wukong/Callback;

    if-eqz v0, :cond_0

    .line 1714
    iget-object v0, p0, Lafh$7;->a:Lcom/alibaba/wukong/Callback;

    invoke-interface {v0, p1, p2}, Lcom/alibaba/wukong/Callback;->onException(Ljava/lang/String;Ljava/lang/String;)V

    .line 1716
    :cond_0
    const-string/jumbo v0, "getIMConversation: "

    invoke-static {v0, p1, p2}, Lafg;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1717
    return-void
.end method

.method public final bridge synthetic onProgress(Ljava/lang/Object;I)V
    .locals 1

    .prologue
    .line 1702
    check-cast p1, Lcom/alibaba/wukong/im/Conversation;

    .line 2721
    iget-object v0, p0, Lafh$7;->a:Lcom/alibaba/wukong/Callback;

    if-eqz v0, :cond_0

    .line 2722
    iget-object v0, p0, Lafh$7;->a:Lcom/alibaba/wukong/Callback;

    invoke-interface {v0, p1, p2}, Lcom/alibaba/wukong/Callback;->onProgress(Ljava/lang/Object;I)V

    .line 1702
    :cond_0
    return-void
.end method

.method public final bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 1702
    check-cast p1, Lcom/alibaba/wukong/im/Conversation;

    .line 3706
    iget-object v0, p0, Lafh$7;->a:Lcom/alibaba/wukong/Callback;

    if-eqz v0, :cond_0

    .line 3707
    iget-object v0, p0, Lafh$7;->a:Lcom/alibaba/wukong/Callback;

    invoke-interface {v0, p1}, Lcom/alibaba/wukong/Callback;->onSuccess(Ljava/lang/Object;)V

    .line 1702
    :cond_0
    return-void
.end method
