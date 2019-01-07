.class final Lacg$68;
.super Ljava/lang/Object;
.source "MailNavigator.java"

# interfaces
.implements Lcom/alibaba/wukong/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lacg;->a(Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;Landroid/content/Context;Lcom/alibaba/alimei/sdk/model/MailSnippetModel;Z)V
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
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/alibaba/alimei/sdk/model/MailSnippetModel;

.field final synthetic c:Z


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/alibaba/alimei/sdk/model/MailSnippetModel;Z)V
    .locals 0

    .prologue
    .line 4538
    iput-object p1, p0, Lacg$68;->a:Landroid/content/Context;

    iput-object p2, p0, Lacg$68;->b:Lcom/alibaba/alimei/sdk/model/MailSnippetModel;

    iput-boolean p3, p0, Lacg$68;->c:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 4562
    const-string/jumbo v0, "navToChatWithMail, getIMService:"

    invoke-static {v0, p1, p2}, Lafg;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 4563
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v0

    invoke-virtual {v0}, Lcid;->c()Landroid/app/Application;

    move-result-object v0

    sget v1, Laxo$i;->create_con_error:I

    invoke-virtual {v0, v1}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcms;->a(Ljava/lang/String;)V

    .line 4564
    return-void
.end method

.method public final bridge synthetic onProgress(Ljava/lang/Object;I)V
    .locals 0

    .prologue
    .line 4538
    return-void
.end method

.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 4538
    check-cast p1, Lcom/alibaba/wukong/im/Conversation;

    .line 5545
    if-eqz p1, :cond_1

    .line 5546
    iget-object v0, p0, Lacg$68;->a:Landroid/content/Context;

    invoke-interface {p1}, Lcom/alibaba/wukong/im/Conversation;->conversationId()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lacg$68;->b:Lcom/alibaba/alimei/sdk/model/MailSnippetModel;

    iget-boolean v3, p0, Lacg$68;->c:Z

    const/4 v4, 0x0

    invoke-static {v0, v1, v2, v3, v4}, Lacg;->a(Landroid/content/Context;Ljava/lang/String;Lcom/alibaba/alimei/sdk/model/MailSnippetModel;ZLcma;)V

    .line 5547
    invoke-static {}, Lcom/alibaba/dingtalk/cmailbase/mail/MailInterface;->s()Lcom/alibaba/dingtalk/cmailbase/mail/MailInterface;

    move-result-object v0

    .line 5548
    invoke-virtual {v0}, Lcom/alibaba/dingtalk/cmailbase/mail/MailInterface;->d()V

    .line 5551
    invoke-interface {p1}, Lcom/alibaba/wukong/im/Conversation;->unreadMessageCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 5552
    invoke-interface {p1}, Lcom/alibaba/wukong/im/Conversation;->resetUnreadCount()V

    .line 5554
    :cond_0
    :goto_0
    return-void

    .line 5555
    :cond_1
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v0

    invoke-virtual {v0}, Lcid;->c()Landroid/app/Application;

    move-result-object v0

    sget v1, Laxo$i;->create_con_error:I

    invoke-virtual {v0, v1}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcms;->a(Ljava/lang/String;)V

    goto :goto_0
.end method
