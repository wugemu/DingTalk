.class final Lacg$64;
.super Ljava/lang/Object;
.source "MailNavigator.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lacg;
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
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Landroid/content/Context;

.field final synthetic c:Lcom/alibaba/wukong/im/Conversation;

.field final synthetic d:Lcom/alibaba/android/dingtalkbase/models/dos/mail/MailDo;

.field final synthetic e:I

.field final synthetic f:Lcma;


# direct methods
.method constructor <init>(Ljava/lang/String;Landroid/content/Context;Lcom/alibaba/wukong/im/Conversation;Lcom/alibaba/android/dingtalkbase/models/dos/mail/MailDo;ILcma;)V
    .locals 0

    .prologue
    .line 4256
    iput-object p1, p0, Lacg$64;->a:Ljava/lang/String;

    iput-object p2, p0, Lacg$64;->b:Landroid/content/Context;

    iput-object p3, p0, Lacg$64;->c:Lcom/alibaba/wukong/im/Conversation;

    iput-object p4, p0, Lacg$64;->d:Lcom/alibaba/android/dingtalkbase/models/dos/mail/MailDo;

    iput p5, p0, Lacg$64;->e:I

    iput-object p6, p0, Lacg$64;->f:Lcma;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 4256
    .line 5259
    iget-object v0, p0, Lacg$64;->a:Ljava/lang/String;

    .line 5260
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 5261
    sget-object v0, Lacg;->a:Ljava/lang/String;

    .line 5264
    :cond_0
    invoke-static {v0}, Lacn;->c(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 5265
    invoke-static {}, Lacn;->b()Ljava/lang/String;

    move-result-object v2

    .line 5269
    :goto_0
    const-string/jumbo v0, "MailNavigator"

    const/4 v1, 0x6

    new-array v1, v1, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "account: "

    aput-object v4, v1, v3

    const/4 v3, 0x1

    aput-object v2, v1, v3

    const/4 v3, 0x2

    const-string/jumbo v4, ", mCurrentAccountName: "

    aput-object v4, v1, v3

    const/4 v3, 0x3

    sget-object v4, Lacg;->a:Ljava/lang/String;

    aput-object v4, v1, v3

    const/4 v3, 0x4

    const-string/jumbo v4, ", receiverAccountName: "

    aput-object v4, v1, v3

    const/4 v3, 0x5

    iget-object v4, p0, Lacg$64;->a:Ljava/lang/String;

    aput-object v4, v1, v3

    invoke-static {v1}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lafg;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 5273
    invoke-static {}, Lacg;->h()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 5275
    invoke-static {}, Lss;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5276
    new-instance v0, Lacg$64$1;

    invoke-direct {v0, p0, v2}, Lacg$64$1;-><init>(Lacg$64;Ljava/lang/String;)V

    .line 5294
    sget-object v1, Lcom/alibaba/alimei/sdk/threadpool/ThreadPriority;->NORMAL:Lcom/alibaba/alimei/sdk/threadpool/ThreadPriority;

    invoke-static {v1}, Laif;->a(Lcom/alibaba/alimei/sdk/threadpool/ThreadPriority;)Laie;

    move-result-object v1

    .line 5295
    invoke-interface {v1, v0}, Laie;->a(Ljava/lang/Runnable;)V

    .line 5308
    :goto_1
    return-void

    .line 5297
    :cond_1
    iget-object v0, p0, Lacg$64;->b:Landroid/content/Context;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lacg$64;->b:Landroid/content/Context;

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_2

    .line 5298
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {v2}, Lafh;->e(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 5299
    invoke-static {v2}, Lacn;->c(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 5300
    iget-object v0, p0, Lacg$64;->b:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    new-instance v1, Lacg$64$2;

    invoke-direct {v1, p0}, Lacg$64$2;-><init>(Lacg$64;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_1

    .line 5308
    :cond_2
    iget-object v0, p0, Lacg$64;->b:Landroid/content/Context;

    iget-object v1, p0, Lacg$64;->c:Lcom/alibaba/wukong/im/Conversation;

    iget-object v3, p0, Lacg$64;->d:Lcom/alibaba/android/dingtalkbase/models/dos/mail/MailDo;

    iget v4, p0, Lacg$64;->e:I

    iget-object v5, p0, Lacg$64;->f:Lcma;

    invoke-static/range {v0 .. v5}, Lacg;->a(Landroid/content/Context;Lcom/alibaba/wukong/im/Conversation;Ljava/lang/String;Lcom/alibaba/android/dingtalkbase/models/dos/mail/MailDo;ILcma;)V

    goto :goto_1

    .line 5312
    :cond_3
    iget-object v0, p0, Lacg$64;->b:Landroid/content/Context;

    iget-object v1, p0, Lacg$64;->c:Lcom/alibaba/wukong/im/Conversation;

    iget-object v3, p0, Lacg$64;->d:Lcom/alibaba/android/dingtalkbase/models/dos/mail/MailDo;

    iget v4, p0, Lacg$64;->e:I

    iget-object v5, p0, Lacg$64;->f:Lcma;

    invoke-static/range {v0 .. v5}, Lacg;->a(Landroid/content/Context;Lcom/alibaba/wukong/im/Conversation;Ljava/lang/String;Lcom/alibaba/android/dingtalkbase/models/dos/mail/MailDo;ILcma;)V

    goto :goto_1

    :cond_4
    move-object v2, v0

    goto/16 :goto_0
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    .prologue
    .line 4323
    const-string/jumbo v0, "queryMailDetail, checkLogin:"

    invoke-static {v0, p1, p2}, Lafg;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 4324
    iget-object v0, p0, Lacg$64;->f:Lcma;

    if-eqz v0, :cond_0

    .line 4325
    iget-object v0, p0, Lacg$64;->f:Lcma;

    invoke-interface {v0, p1, p2}, Lcma;->onException(Ljava/lang/String;Ljava/lang/String;)V

    .line 4327
    :cond_0
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "id"    # Ljava/lang/Object;
    .param p2, "progress"    # I

    .prologue
    .line 4319
    return-void
.end method
