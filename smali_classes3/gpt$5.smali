.class final Lgpt$5;
.super Ljava/lang/Object;
.source "ConversationUtils.java"

# interfaces
.implements Lcom/alibaba/wukong/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lgpt;->a(Lcom/alibaba/alimei/cspace/model/DentryModel;Ljava/lang/String;Ljava/lang/String;Lcma;)V
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
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcma;

.field final synthetic c:Lcom/alibaba/alimei/cspace/model/DentryModel;


# direct methods
.method constructor <init>(Ljava/lang/String;Lcma;Lcom/alibaba/alimei/cspace/model/DentryModel;)V
    .locals 0

    .prologue
    .line 665
    iput-object p1, p0, Lgpt$5;->a:Ljava/lang/String;

    iput-object p2, p0, Lgpt$5;->b:Lcma;

    iput-object p3, p0, Lgpt$5;->c:Lcom/alibaba/alimei/cspace/model/DentryModel;

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
    .line 742
    const-string/jumbo v0, "CSpace"

    iget-object v1, p0, Lgpt$5;->a:Ljava/lang/String;

    const-string/jumbo v2, "sendMessageToConversation"

    const/4 v3, 0x0

    invoke-static {v2, p1, p2, v3}, Lgot;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 744
    iget-object v0, p0, Lgpt$5;->b:Lcma;

    if-eqz v0, :cond_0

    .line 745
    iget-object v0, p0, Lgpt$5;->b:Lcma;

    invoke-interface {v0, p1, p2}, Lcma;->onException(Ljava/lang/String;Ljava/lang/String;)V

    .line 747
    :cond_0
    return-void
.end method

.method public final bridge synthetic onProgress(Ljava/lang/Object;I)V
    .locals 0

    .prologue
    .line 665
    return-void
.end method

.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .locals 7

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    const-wide/16 v4, 0x0

    .line 665
    check-cast p1, Lcom/alibaba/wukong/im/Conversation;

    .line 1668
    if-nez p1, :cond_1

    .line 1669
    const-string/jumbo v0, "CSpace"

    iget-object v1, p0, Lgpt$5;->a:Ljava/lang/String;

    const-string/jumbo v2, "sendMessageToConversation"

    const-string/jumbo v3, "20170720"

    const-string/jumbo v4, "getConversation and result is null"

    const/4 v5, 0x0

    invoke-static {v2, v3, v4, v5}, Lgot;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1671
    iget-object v0, p0, Lgpt$5;->b:Lcma;

    if-eqz v0, :cond_0

    .line 1672
    iget-object v0, p0, Lgpt$5;->b:Lcma;

    const-string/jumbo v1, "20170720"

    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v2

    invoke-virtual {v2}, Lcid;->c()Landroid/app/Application;

    move-result-object v2

    sget v3, Lfzs$h;->send_fail:I

    invoke-virtual {v2, v3}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcma;->onException(Ljava/lang/String;Ljava/lang/String;)V

    .line 1704
    :cond_0
    :goto_0
    return-void

    .line 1677
    :cond_1
    new-instance v0, Lgpt$5$1;

    invoke-direct {v0, p0}, Lgpt$5$1;-><init>(Lgpt$5;)V

    .line 1700
    invoke-static {}, Lcom/alibaba/dingtalk/cspacebase/space/SpaceInterface;->n()Lcom/alibaba/dingtalk/cspacebase/space/SpaceInterface;

    move-result-object v1

    iget-object v2, p0, Lgpt$5;->c:Lcom/alibaba/alimei/cspace/model/DentryModel;

    invoke-virtual {v2}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getExtension()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/alibaba/dingtalk/cspacebase/space/SpaceInterface;->g(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 1701
    invoke-static {}, Lcom/alibaba/dingtalk/cspacebase/space/SpaceInterface;->n()Lcom/alibaba/dingtalk/cspacebase/space/SpaceInterface;

    move-result-object v1

    iget-object v2, p0, Lgpt$5;->c:Lcom/alibaba/alimei/cspace/model/DentryModel;

    invoke-virtual {v2}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getExtension()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/alibaba/dingtalk/cspacebase/space/SpaceInterface;->f(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 1703
    iget-object v1, p0, Lgpt$5;->c:Lcom/alibaba/alimei/cspace/model/DentryModel;

    invoke-static {v1}, Lgoc;->a(Lcom/alibaba/alimei/cspace/model/DentryModel;)Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;

    move-result-object v1

    invoke-static {v1, p1, v0}, Lgpt;->a(Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;Lcom/alibaba/wukong/im/Conversation;Lcma;)V

    goto :goto_0

    .line 1707
    :cond_2
    new-instance v6, Lgpt$5$2;

    invoke-direct {v6, p0, p1, v0}, Lgpt$5$2;-><init>(Lgpt$5;Lcom/alibaba/wukong/im/Conversation;Lcma;)V

    .line 1737
    invoke-static {}, Lgon;->a()Lgon;

    move-result-object v1

    iget-object v0, p0, Lgpt$5;->c:Lcom/alibaba/alimei/cspace/model/DentryModel;

    invoke-virtual {v0}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getSpaceId()Ljava/lang/String;

    move-result-object v0

    .line 2109
    invoke-static {v0, v4, v5}, Lcoc;->a(Ljava/lang/String;J)J

    move-result-wide v2

    .line 1737
    iget-object v0, p0, Lgpt$5;->c:Lcom/alibaba/alimei/cspace/model/DentryModel;

    invoke-virtual {v0}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getServerId()Ljava/lang/String;

    move-result-object v0

    .line 3109
    invoke-static {v0, v4, v5}, Lcoc;->a(Ljava/lang/String;J)J

    move-result-wide v4

    .line 1737
    invoke-virtual/range {v1 .. v6}, Lgon;->a(JJLcma;)V

    goto :goto_0
.end method
