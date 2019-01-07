.class final Lqq$1;
.super Luv;
.source "FetchMailCalendarTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lqq;->c()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/alimei/sdk/db/mail/entry/Message;

.field final synthetic b:Lqq;


# direct methods
.method constructor <init>(Lqq;Lcom/alibaba/alimei/sdk/db/mail/entry/Message;)V
    .locals 0
    .param p1, "this$0"    # Lqq;

    .prologue
    .line 86
    iput-object p1, p0, Lqq$1;->b:Lqq;

    iput-object p2, p0, Lqq$1;->a:Lcom/alibaba/alimei/sdk/db/mail/entry/Message;

    invoke-direct {p0}, Luv;-><init>()V

    return-void
.end method


# virtual methods
.method public final fetchMailSummaryFailed(Lcom/alibaba/alimei/emailcommon/Account;Ljava/lang/String;JLjava/lang/Exception;)V
    .locals 3
    .param p1, "account"    # Lcom/alibaba/alimei/emailcommon/Account;
    .param p2, "folder"    # Ljava/lang/String;
    .param p3, "uid"    # J
    .param p5, "exception"    # Ljava/lang/Exception;

    .prologue
    .line 116
    invoke-super/range {p0 .. p5}, Luv;->fetchMailSummaryFailed(Lcom/alibaba/alimei/emailcommon/Account;Ljava/lang/String;JLjava/lang/Exception;)V

    .line 118
    iget-object v0, p0, Lqq$1;->b:Lqq;

    invoke-static {v0}, Lqq;->a(Lqq;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 119
    :try_start_0
    iget-object v0, p0, Lqq$1;->b:Lqq;

    invoke-static {v0}, Lqq;->a(Lqq;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 120
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final fetchMailSummaryFinished(Lcom/alibaba/alimei/emailcommon/Account;Ljava/lang/String;JLcom/alibaba/alimei/emailcommon/mail/Message;)V
    .locals 7
    .param p1, "account"    # Lcom/alibaba/alimei/emailcommon/Account;
    .param p2, "folder"    # Ljava/lang/String;
    .param p3, "uid"    # J
    .param p5, "part"    # Lcom/alibaba/alimei/emailcommon/mail/Message;

    .prologue
    .line 94
    invoke-super/range {p0 .. p5}, Luv;->fetchMailSummaryFinished(Lcom/alibaba/alimei/emailcommon/Account;Ljava/lang/String;JLcom/alibaba/alimei/emailcommon/mail/Message;)V

    .line 97
    :try_start_0
    invoke-static {}, Lafv;->b()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, p5}, Lvj;->a(Landroid/content/Context;Lcom/alibaba/alimei/emailcommon/mail/Message;)Lvj$i;

    move-result-object v1

    .line 99
    .local v1, "viewableContainer":Lvj$i;
    iget-object v2, v1, Lvj$i;->e:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 100
    iget-object v2, p0, Lqq$1;->b:Lqq;

    iget-object v3, p0, Lqq$1;->a:Lcom/alibaba/alimei/sdk/db/mail/entry/Message;

    iget-object v4, v1, Lvj$i;->e:Ljava/lang/String;

    invoke-static {v2, v3, v4}, Lqq;->a(Lqq;Lcom/alibaba/alimei/sdk/db/mail/entry/Message;Ljava/lang/String;)V

    .line 112
    .end local v1    # "viewableContainer":Lvj$i;
    :goto_0
    return-void

    .line 102
    .restart local v1    # "viewableContainer":Lvj$i;
    :cond_0
    new-instance v2, Lcom/alibaba/alimei/emailcommon/mail/MessagingException;

    sget-object v3, Lcom/alibaba/alimei/framework/SDKError;->PARSE_ERROR:Lcom/alibaba/alimei/framework/SDKError;

    const-string/jumbo v4, "no calendar part"

    invoke-direct {v2, v3, v4}, Lcom/alibaba/alimei/emailcommon/mail/MessagingException;-><init>(Lcom/alibaba/alimei/framework/SDKError;Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catch Lcom/alibaba/alimei/emailcommon/mail/MessagingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 105
    .end local v1    # "viewableContainer":Lvj$i;
    :catch_0
    move-exception v0

    .line 106
    .local v0, "e":Lcom/alibaba/alimei/emailcommon/mail/MessagingException;
    const-string/jumbo v2, "fetchMailSummary"

    invoke-virtual {p1}, Lcom/alibaba/alimei/emailcommon/Account;->e()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/alibaba/alimei/emailcommon/Account;->o()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Lcom/alibaba/alimei/emailcommon/mail/MessagingException;->getError()Lcom/alibaba/alimei/framework/SDKError;

    move-result-object v5

    invoke-virtual {v5}, Lcom/alibaba/alimei/framework/SDKError;->getErrorCode()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0}, Lcom/alibaba/alimei/emailcommon/mail/MessagingException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v3, v4, v5, v6}, Lyp;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    iget-object v2, p0, Lqq$1;->b:Lqq;

    invoke-static {v2}, Lqq;->a(Lqq;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    .line 109
    :try_start_1
    iget-object v2, p0, Lqq$1;->b:Lqq;

    invoke-static {v2}, Lqq;->a(Lqq;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->notify()V

    .line 110
    monitor-exit v3

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public final fetchMailSummaryStarted(Lcom/alibaba/alimei/emailcommon/Account;Ljava/lang/String;JLjava/lang/String;)V
    .locals 1
    .param p1, "account"    # Lcom/alibaba/alimei/emailcommon/Account;
    .param p2, "folder"    # Ljava/lang/String;
    .param p3, "uid"    # J
    .param p5, "partId"    # Ljava/lang/String;

    .prologue
    .line 89
    invoke-super/range {p0 .. p5}, Luv;->fetchMailSummaryStarted(Lcom/alibaba/alimei/emailcommon/Account;Ljava/lang/String;JLjava/lang/String;)V

    .line 90
    return-void
.end method
