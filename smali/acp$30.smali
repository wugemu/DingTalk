.class final Lacp$30;
.super Ljava/lang/Object;
.source "MailDialogManager.java"

# interfaces
.implements Lcom/alibaba/wukong/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lacp;
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
.field final synthetic a:Ljava/lang/Runnable;

.field final synthetic b:Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

.field final synthetic c:Lacp;


# direct methods
.method constructor <init>(Lacp;Ljava/lang/Runnable;Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;)V
    .locals 0
    .param p1, "this$0"    # Lacp;

    .prologue
    .line 316
    iput-object p1, p0, Lacp$30;->c:Lacp;

    iput-object p2, p0, Lacp$30;->a:Ljava/lang/Runnable;

    iput-object p3, p0, Lacp$30;->b:Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "s1"    # Ljava/lang/String;

    .prologue
    .line 337
    iget-object v0, p0, Lacp$30;->a:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 338
    iget-object v0, p0, Lacp$30;->a:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 340
    :cond_0
    return-void
.end method

.method public final bridge synthetic onProgress(Ljava/lang/Object;I)V
    .locals 0

    .prologue
    .line 316
    return-void
.end method

.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 316
    check-cast p1, Lcom/alibaba/wukong/im/Conversation;

    .line 1319
    if-eqz p1, :cond_1

    invoke-interface {p1}, Lcom/alibaba/wukong/im/Conversation;->getTop()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    .line 1320
    iget-object v0, p0, Lacp$30;->a:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 1321
    iget-object v0, p0, Lacp$30;->a:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 1323
    :cond_0
    :goto_0
    return-void

    .line 1325
    :cond_1
    iget-object v0, p0, Lacp$30;->b:Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    if-eqz v0, :cond_0

    .line 1326
    iget-object v0, p0, Lacp$30;->b:Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    new-instance v1, Lacp$30$1;

    invoke-direct {v1, p0, p1}, Lacp$30$1;-><init>(Lacp$30;Lcom/alibaba/wukong/im/Conversation;)V

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method
