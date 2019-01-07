.class final Lgpt$5$2;
.super Ljava/lang/Object;
.source "ConversationUtils.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgpt$5;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcma",
        "<",
        "Lgrh;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/wukong/im/Conversation;

.field final synthetic b:Lcma;

.field final synthetic c:Lgpt$5;


# direct methods
.method constructor <init>(Lgpt$5;Lcom/alibaba/wukong/im/Conversation;Lcma;)V
    .locals 0
    .param p1, "this$0"    # Lgpt$5;

    .prologue
    .line 707
    iput-object p1, p0, Lgpt$5$2;->c:Lgpt$5;

    iput-object p2, p0, Lgpt$5$2;->a:Lcom/alibaba/wukong/im/Conversation;

    iput-object p3, p0, Lgpt$5$2;->b:Lcma;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 707
    check-cast p1, Lgrh;

    .line 1710
    iget-object v0, p0, Lgpt$5$2;->c:Lgpt$5;

    iget-object v0, v0, Lgpt$5;->c:Lcom/alibaba/alimei/cspace/model/DentryModel;

    invoke-static {v0}, Lgoc;->a(Lcom/alibaba/alimei/cspace/model/DentryModel;)Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;

    move-result-object v0

    .line 1711
    iget-wide v2, p1, Lgrh;->a:J

    iput-wide v2, v0, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;->duration:J

    .line 1712
    iget-object v1, p1, Lgrh;->b:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;->picUrl:Ljava/lang/String;

    .line 1713
    iget v1, p1, Lgrh;->e:I

    iput v1, v0, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;->picWidth:I

    .line 1714
    iget v1, p1, Lgrh;->f:I

    iput v1, v0, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;->picHeight:I

    .line 1715
    iget-object v1, p1, Lgrh;->c:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;->picAuthUrl:Ljava/lang/String;

    .line 1716
    iget-object v1, p1, Lgrh;->d:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;->picAuthCode:Ljava/lang/String;

    .line 1717
    iget-wide v2, p1, Lgrh;->h:J

    iput-wide v2, v0, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;->picSize:J

    .line 1718
    iget v1, p1, Lgrh;->g:I

    iput v1, v0, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;->rotation:I

    .line 1719
    iget-object v1, p0, Lgpt$5$2;->a:Lcom/alibaba/wukong/im/Conversation;

    iget-object v2, p0, Lgpt$5$2;->b:Lcma;

    invoke-static {v0, v1, v2}, Lgpt;->a(Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;Lcom/alibaba/wukong/im/Conversation;Lcma;)V

    .line 707
    return-void
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "errorCode"    # Ljava/lang/String;
    .param p2, "errorMsg"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 729
    const-string/jumbo v0, "CSpace"

    iget-object v1, p0, Lgpt$5$2;->c:Lgpt$5;

    iget-object v1, v1, Lgpt$5;->a:Ljava/lang/String;

    const-string/jumbo v2, "sendSpaceMessageToConversation infoMediaInfo"

    const/4 v3, 0x0

    invoke-static {v2, p1, p2, v3}, Lgot;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 732
    iget-object v0, p0, Lgpt$5$2;->c:Lgpt$5;

    iget-object v0, v0, Lgpt$5;->c:Lcom/alibaba/alimei/cspace/model/DentryModel;

    invoke-static {v0}, Lgoc;->a(Lcom/alibaba/alimei/cspace/model/DentryModel;)Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;

    move-result-object v0

    iget-object v1, p0, Lgpt$5$2;->a:Lcom/alibaba/wukong/im/Conversation;

    iget-object v2, p0, Lgpt$5$2;->b:Lcma;

    invoke-static {v0, v1, v2}, Lgpt;->a(Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;Lcom/alibaba/wukong/im/Conversation;Lcma;)V

    .line 733
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 725
    return-void
.end method
