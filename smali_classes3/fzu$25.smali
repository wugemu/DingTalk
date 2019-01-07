.class final Lfzu$25;
.super Ljava/lang/Object;
.source "SpaceNavigator.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfzu;->a(Landroid/content/Context;Lcom/alibaba/wukong/im/Conversation;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcma",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/alibaba/wukong/im/Conversation;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/alibaba/wukong/im/Conversation;)V
    .locals 0

    .prologue
    .line 2479
    iput-object p1, p0, Lfzu$25;->a:Landroid/content/Context;

    iput-object p2, p0, Lfzu$25;->b:Ljava/lang/String;

    iput-object p3, p0, Lfzu$25;->c:Lcom/alibaba/wukong/im/Conversation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x2

    .line 2479
    check-cast p1, Ljava/lang/String;

    .line 4482
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4483
    const-string/jumbo v0, "null result"

    sget v1, Lfzs$h;->dt_cspace_invalid_result_tip:I

    invoke-static {v1}, Lgpr;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lfzu$25;->onException(Ljava/lang/String;Ljava/lang/String;)V

    .line 4484
    :cond_0
    :goto_0
    return-void

    .line 4486
    :cond_1
    iget-object v0, p0, Lfzu$25;->a:Landroid/content/Context;

    invoke-static {v0}, Lglo;->a(Landroid/content/Context;)Lglo;

    move-result-object v1

    iget-object v0, p0, Lfzu$25;->b:Ljava/lang/String;

    .line 5219
    invoke-static {p1, v0}, Lglo;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 5220
    iget-object v0, v1, Lglo;->c:Ljava/util/HashMap;

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 5221
    iget-object v0, v1, Lglo;->c:Ljava/util/HashMap;

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/alimei/cspace/model/DentryModel;

    .line 5222
    if-eqz v0, :cond_2

    .line 5223
    invoke-static {}, Lgpe;->a()Lgpe;

    iget-object v3, v1, Lglo;->b:Landroid/content/Context;

    invoke-static {v3, v0, v4}, Lgpe;->a(Landroid/content/Context;Lcom/alibaba/alimei/cspace/model/DentryModel;I)V

    .line 6207
    :cond_2
    iget-object v0, v1, Lglo;->c:Ljava/util/HashMap;

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 6208
    iget-object v0, v1, Lglo;->c:Ljava/util/HashMap;

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6210
    :cond_3
    iget-object v0, v1, Lglo;->c:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 6233
    invoke-static {}, Lgpe;->a()Lgpe;

    iget-object v0, v1, Lglo;->b:Landroid/content/Context;

    invoke-static {v0, v4}, Lgpe;->a(Landroid/content/Context;I)V

    .line 6234
    iget-object v0, v1, Lglo;->c:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 6235
    iput-object v5, v1, Lglo;->b:Landroid/content/Context;

    .line 6236
    sput-object v5, Lglo;->a:Lglo;

    goto :goto_0
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "errorCode"    # Ljava/lang/String;
    .param p2, "errorMsg"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 2495
    .line 3500
    const/4 v0, 0x3

    new-array v1, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string/jumbo v2, "cancelUpload"

    aput-object v2, v1, v0

    const/4 v0, 0x1

    const-string/jumbo v2, ", conversationId = "

    aput-object v2, v1, v0

    const/4 v2, 0x2

    iget-object v0, p0, Lfzu$25;->c:Lcom/alibaba/wukong/im/Conversation;

    if-nez v0, :cond_0

    const-string/jumbo v0, "null"

    .line 3501
    :goto_0
    aput-object v0, v1, v2

    .line 3500
    invoke-static {v1}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3502
    const-string/jumbo v1, "CSpace"

    sget-object v2, Lfzu;->c:Ljava/lang/String;

    const/4 v3, 0x0

    .line 3503
    invoke-static {v0, p1, p2, v3}, Lgot;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    .line 3502
    invoke-static {v1, v2, v0}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2496
    invoke-static {p1, p2}, Lcms;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2497
    return-void

    .line 3500
    :cond_0
    iget-object v0, p0, Lfzu$25;->c:Lcom/alibaba/wukong/im/Conversation;

    .line 3501
    invoke-interface {v0}, Lcom/alibaba/wukong/im/Conversation;->conversationId()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 2491
    return-void
.end method
