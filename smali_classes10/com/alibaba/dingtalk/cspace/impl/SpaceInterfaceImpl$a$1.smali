.class final Lcom/alibaba/dingtalk/cspace/impl/SpaceInterfaceImpl$a$1;
.super Ljava/lang/Object;
.source "SpaceInterfaceImpl.java"

# interfaces
.implements Lcom/alibaba/wukong/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/dingtalk/cspace/impl/SpaceInterfaceImpl$a;
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
.field final synthetic a:Lcom/alibaba/dingtalk/cspace/impl/SpaceInterfaceImpl$a;


# direct methods
.method constructor <init>(Lcom/alibaba/dingtalk/cspace/impl/SpaceInterfaceImpl$a;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/dingtalk/cspace/impl/SpaceInterfaceImpl$a;

    .prologue
    .line 337
    iput-object p1, p0, Lcom/alibaba/dingtalk/cspace/impl/SpaceInterfaceImpl$a$1;->a:Lcom/alibaba/dingtalk/cspace/impl/SpaceInterfaceImpl$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "errorCode"    # Ljava/lang/String;
    .param p2, "errorMsg"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 349
    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string/jumbo v3, "nav2SpaceDetail.findConversation"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string/jumbo v3, ", conversationId = "

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/alibaba/dingtalk/cspace/impl/SpaceInterfaceImpl$a$1;->a:Lcom/alibaba/dingtalk/cspace/impl/SpaceInterfaceImpl$a;

    iget-object v3, v3, Lcom/alibaba/dingtalk/cspace/impl/SpaceInterfaceImpl$a;->a:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-static {v1}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 351
    .local v0, "method":Ljava/lang/String;
    const-string/jumbo v1, "CSpace"

    const-string/jumbo v2, "SpaceInterfaceImpl"

    const/4 v3, 0x0

    .line 352
    invoke-static {v0, p1, p2, v3}, Lgot;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    .line 351
    invoke-static {v1, v2, v3}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 353
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/impl/SpaceInterfaceImpl$a$1;->a:Lcom/alibaba/dingtalk/cspace/impl/SpaceInterfaceImpl$a;

    .line 1327
    invoke-virtual {v1}, Lcom/alibaba/dingtalk/cspace/impl/SpaceInterfaceImpl$a;->a()V

    .line 354
    return-void
.end method

.method public final bridge synthetic onProgress(Ljava/lang/Object;I)V
    .locals 0

    .prologue
    .line 337
    return-void
.end method

.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 337
    check-cast p1, Lcom/alibaba/wukong/im/Conversation;

    .line 1340
    if-nez p1, :cond_0

    .line 1341
    const-string/jumbo v0, "null result"

    sget v1, Lfzs$h;->dt_cspace_invalid_result_tip:I

    invoke-static {v1}, Lgpr;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/alibaba/dingtalk/cspace/impl/SpaceInterfaceImpl$a$1;->onException(Ljava/lang/String;Ljava/lang/String;)V

    .line 2366
    :goto_0
    return-void

    .line 1344
    :cond_0
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/impl/SpaceInterfaceImpl$a$1;->a:Lcom/alibaba/dingtalk/cspace/impl/SpaceInterfaceImpl$a;

    .line 2364
    if-nez p1, :cond_1

    .line 2365
    invoke-virtual {v0}, Lcom/alibaba/dingtalk/cspace/impl/SpaceInterfaceImpl$a;->a()V

    goto :goto_0

    .line 2368
    :cond_1
    const-string/jumbo v1, "1"

    const-string/jumbo v2, "doc_readonly"

    .line 2369
    invoke-interface {p1, v2}, Lcom/alibaba/wukong/im/Conversation;->extension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2368
    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    .line 2370
    invoke-static {}, Lfzv;->a()Lfzv;

    move-result-object v2

    iget-object v3, v0, Lcom/alibaba/dingtalk/cspace/impl/SpaceInterfaceImpl$a;->b:Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;

    iget-object v3, v3, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;->spaceId:Ljava/lang/String;

    invoke-virtual {v2, v3, v1}, Lfzv;->b(Ljava/lang/String;Z)V

    .line 2371
    const-string/jumbo v1, "1"

    const-string/jumbo v2, "watermark"

    .line 2372
    invoke-interface {p1, v2}, Lcom/alibaba/wukong/im/Conversation;->extension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2371
    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    .line 2373
    invoke-static {}, Lfzv;->a()Lfzv;

    move-result-object v2

    iget-object v3, v0, Lcom/alibaba/dingtalk/cspace/impl/SpaceInterfaceImpl$a;->b:Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;

    iget-object v3, v3, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;->spaceId:Ljava/lang/String;

    invoke-virtual {v2, v3, v1}, Lfzv;->c(Ljava/lang/String;Z)V

    .line 2374
    invoke-virtual {v0}, Lcom/alibaba/dingtalk/cspace/impl/SpaceInterfaceImpl$a;->a()V

    goto :goto_0
.end method
