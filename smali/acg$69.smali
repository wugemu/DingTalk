.class final Lacg$69;
.super Ljava/lang/Object;
.source "MailNavigator.java"

# interfaces
.implements Lcom/alibaba/wukong/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lacg;->a(Ljava/util/List;Landroid/app/Activity;Ljava/util/Map;Lcom/alibaba/alimei/sdk/model/MailSnippetModel;Z)V
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
.field final synthetic a:Landroid/app/Activity;

.field final synthetic b:Z

.field final synthetic c:Lcom/alibaba/alimei/sdk/model/MailSnippetModel;

.field final synthetic d:Ljava/util/Map;


# direct methods
.method constructor <init>(Landroid/app/Activity;ZLcom/alibaba/alimei/sdk/model/MailSnippetModel;Ljava/util/Map;)V
    .locals 0

    .prologue
    .line 4608
    iput-object p1, p0, Lacg$69;->a:Landroid/app/Activity;

    iput-boolean p2, p0, Lacg$69;->b:Z

    iput-object p3, p0, Lacg$69;->c:Lcom/alibaba/alimei/sdk/model/MailSnippetModel;

    iput-object p4, p0, Lacg$69;->d:Ljava/util/Map;

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
    .line 4632
    const-string/jumbo v0, "navToChatWithMail, getIMService:"

    invoke-static {v0, p1, p2}, Lafg;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 4633
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v0

    invoke-virtual {v0}, Lcid;->c()Landroid/app/Application;

    move-result-object v0

    sget v1, Laxo$i;->create_con_error:I

    invoke-virtual {v0, v1}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcms;->a(Ljava/lang/String;)V

    .line 4634
    return-void
.end method

.method public final bridge synthetic onProgress(Ljava/lang/Object;I)V
    .locals 0

    .prologue
    .line 4608
    return-void
.end method

.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 4608
    check-cast p1, Lcom/alibaba/wukong/im/Conversation;

    .line 5615
    if-eqz p1, :cond_1

    .line 5616
    iget-object v0, p0, Lacg$69;->a:Landroid/app/Activity;

    invoke-interface {p1}, Lcom/alibaba/wukong/im/Conversation;->conversationId()Ljava/lang/String;

    move-result-object v1

    iget-boolean v2, p0, Lacg$69;->b:Z

    invoke-static {v0, v1, v2}, Lacg;->b(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 5619
    invoke-interface {p1}, Lcom/alibaba/wukong/im/Conversation;->unreadMessageCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 5620
    invoke-interface {p1}, Lcom/alibaba/wukong/im/Conversation;->resetUnreadCount()V

    .line 5622
    :cond_0
    invoke-static {}, Lcom/alibaba/dingtalk/cmailbase/mail/MailInterface;->s()Lcom/alibaba/dingtalk/cmailbase/mail/MailInterface;

    move-result-object v0

    .line 5623
    invoke-virtual {v0}, Lcom/alibaba/dingtalk/cmailbase/mail/MailInterface;->d()V

    .line 5624
    iget-object v0, p0, Lacg$69;->c:Lcom/alibaba/alimei/sdk/model/MailSnippetModel;

    invoke-interface {p1}, Lcom/alibaba/wukong/im/Conversation;->conversationId()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lacg$69;->d:Ljava/util/Map;

    invoke-static {v0, v1, v2}, Lacg;->a(Lcom/alibaba/alimei/sdk/model/MailSnippetModel;Ljava/lang/String;Ljava/util/Map;)V

    .line 5625
    :goto_0
    return-void

    .line 5626
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
