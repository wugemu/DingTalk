.class final Lglj$a$2;
.super Ljava/lang/Object;
.source "SpaceLinkManager.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lglj$a;
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
        "Lcom/alibaba/alimei/cspace/model/DentryModel;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lglj$a;


# direct methods
.method constructor <init>(Lglj$a;)V
    .locals 0
    .param p1, "this$0"    # Lglj$a;

    .prologue
    .line 344
    iput-object p1, p0, Lglj$a$2;->a:Lglj$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 344
    check-cast p1, Lcom/alibaba/alimei/cspace/model/DentryModel;

    .line 2347
    iget-object v0, p0, Lglj$a$2;->a:Lglj$a;

    iget-object v0, v0, Lglj$a;->a:Landroid/app/Activity;

    invoke-static {v0}, Lgpk;->a(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2350
    if-nez p1, :cond_1

    .line 2351
    const-string/jumbo v0, "RESULT_NULL"

    sget v1, Lfzs$h;->dt_cspace_fail_tip:I

    invoke-static {v1}, Lgpr;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lglj$a$2;->onException(Ljava/lang/String;Ljava/lang/String;)V

    .line 2352
    :cond_0
    :goto_0
    return-void

    .line 2354
    :cond_1
    iget-object v0, p0, Lglj$a$2;->a:Lglj$a;

    invoke-virtual {v0}, Lglj$a;->c()V

    .line 2355
    iget-object v0, p0, Lglj$a$2;->a:Lglj$a;

    .line 3280
    iget-object v0, v0, Lglj$a;->b:Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceLinkDo;

    .line 2355
    invoke-virtual {p1}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getSpaceId()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceLinkDo;->linkSpaceId:Ljava/lang/String;

    .line 2356
    iget-object v0, p0, Lglj$a$2;->a:Lglj$a;

    .line 4280
    iget-object v0, v0, Lglj$a;->b:Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceLinkDo;

    .line 2356
    invoke-virtual {p1}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getServerId()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceLinkDo;->linkFileId:Ljava/lang/String;

    .line 2357
    iget-object v0, p0, Lglj$a$2;->a:Lglj$a;

    .line 5280
    iget-object v0, v0, Lglj$a;->d:Lcma;

    .line 2357
    iget-object v1, p0, Lglj$a$2;->a:Lglj$a;

    .line 6280
    iget-object v1, v1, Lglj$a;->b:Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceLinkDo;

    .line 2357
    invoke-interface {v0, v1}, Lcma;->onDataReceived(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "errorCode"    # Ljava/lang/String;
    .param p2, "errorMsg"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 366
    const-string/jumbo v0, "CSpace"

    const-string/jumbo v1, "SpaceLinkManager"

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "createDentryLink: convId: "

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lglj$a$2;->a:Lglj$a;

    .line 1280
    iget-object v4, v4, Lglj$a;->c:Lcom/alibaba/wukong/im/Conversation;

    .line 367
    invoke-interface {v4}, Lcom/alibaba/wukong/im/Conversation;->conversationId()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string/jumbo v4, ", errorCode: "

    aput-object v4, v2, v3

    const/4 v3, 0x3

    aput-object p1, v2, v3

    const/4 v3, 0x4

    const-string/jumbo v4, ", errorMsg: "

    aput-object v4, v2, v3

    const/4 v3, 0x5

    aput-object p2, v2, v3

    .line 366
    invoke-static {v2}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 370
    iget-object v0, p0, Lglj$a$2;->a:Lglj$a;

    iget-object v0, v0, Lglj$a;->a:Landroid/app/Activity;

    invoke-static {v0}, Lgpk;->a(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 375
    :goto_0
    return-void

    .line 373
    :cond_0
    iget-object v0, p0, Lglj$a$2;->a:Lglj$a;

    invoke-virtual {v0}, Lglj$a;->c()V

    .line 374
    iget-object v0, p0, Lglj$a$2;->a:Lglj$a;

    .line 2280
    iget-object v0, v0, Lglj$a;->d:Lcma;

    .line 374
    invoke-interface {v0, p1, p2}, Lcma;->onException(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 362
    return-void
.end method
