.class final Ldac$7;
.super Ljava/lang/Object;
.source "UserToBasicDataDelegate.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldac;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Landroid/app/Activity;

.field final synthetic c:Lcom/alibaba/wukong/im/Message;

.field final synthetic d:Z

.field final synthetic e:Ldac;


# direct methods
.method constructor <init>(Ldac;Ljava/lang/String;Landroid/app/Activity;Lcom/alibaba/wukong/im/Message;Z)V
    .locals 0
    .param p1, "this$0"    # Ldac;

    .prologue
    .line 400
    iput-object p1, p0, Ldac$7;->e:Ldac;

    iput-object p2, p0, Ldac$7;->a:Ljava/lang/String;

    iput-object p3, p0, Ldac$7;->b:Landroid/app/Activity;

    iput-object p4, p0, Ldac$7;->c:Lcom/alibaba/wukong/im/Message;

    iput-boolean p5, p0, Ldac$7;->d:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 403
    iget-object v1, p0, Ldac$7;->a:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 404
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v1

    const-string/jumbo v2, "chat_unread_user_click"

    invoke-interface {v1, v2}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;)V

    .line 406
    const-string/jumbo v1, "STATISTICS"

    invoke-static {v1}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/statistics/Statistics;

    .line 407
    .local v0, "statistics":Lcom/alibaba/doraemon/statistics/Statistics;
    const-string/jumbo v1, "unread_message"

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/statistics/Statistics;->startOffLineDurationStatistics(Ljava/lang/String;)V

    .line 408
    const-string/jumbo v1, "unread_message"

    const-string/jumbo v2, "to_msg_unread_activity"

    invoke-interface {v0, v1, v2}, Lcom/alibaba/doraemon/statistics/Statistics;->startOffLineSubDurationStatistics(Ljava/lang/String;Ljava/lang/String;)V

    .line 411
    const-string/jumbo v1, "DD"

    const-string/jumbo v2, "unread_message"

    const-string/jumbo v3, "totalTime"

    invoke-interface {v0, v1, v2, v3}, Lcom/alibaba/doraemon/statistics/Statistics;->startDurationStatistics(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 414
    const-string/jumbo v1, "NAVIGATOR"

    invoke-static {v1}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/doraemon/navigator/Navigator;

    iget-object v2, p0, Ldac$7;->b:Landroid/app/Activity;

    invoke-interface {v1, v2}, Lcom/alibaba/doraemon/navigator/Navigator;->from(Landroid/content/Context;)Lcom/alibaba/doraemon/navigator/Navigator;

    move-result-object v1

    const-string/jumbo v2, "https://qr.dingtalk.com/msg_unread_member.html"

    new-instance v3, Ldac$7$1;

    invoke-direct {v3, p0}, Ldac$7$1;-><init>(Ldac$7;)V

    invoke-interface {v1, v2, v3}, Lcom/alibaba/doraemon/navigator/Navigator;->to(Ljava/lang/String;Lcom/alibaba/doraemon/navigator/IntentRewriter;)V

    .line 421
    iget-object v1, p0, Ldac$7;->e:Ldac;

    iget-object v1, v1, Ldac;->j:Lcts$b;

    if-eqz v1, :cond_0

    .line 422
    iget-object v1, p0, Ldac$7;->e:Ldac;

    iget-object v1, v1, Ldac;->j:Lcts$b;

    iget-object v2, p0, Ldac$7;->c:Lcom/alibaba/wukong/im/Message;

    invoke-interface {v1, v2}, Lcts$b;->c(Lcom/alibaba/wukong/im/Message;)V

    .line 425
    .end local v0    # "statistics":Lcom/alibaba/doraemon/statistics/Statistics;
    :cond_0
    return-void
.end method
