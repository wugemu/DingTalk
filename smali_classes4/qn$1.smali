.class final Lqn$1;
.super Luv;
.source "ChangeImapFlagTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lqn;->c()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lya;

.field final synthetic b:Lqn;


# direct methods
.method constructor <init>(Lqn;Lya;)V
    .locals 0
    .param p1, "this$0"    # Lqn;

    .prologue
    .line 65
    iput-object p1, p0, Lqn$1;->b:Lqn;

    iput-object p2, p0, Lqn$1;->a:Lya;

    invoke-direct {p0}, Luv;-><init>()V

    return-void
.end method


# virtual methods
.method public final changeFlagFailed(Lcom/alibaba/alimei/emailcommon/Account;Ljava/lang/String;JZLjava/lang/Exception;)V
    .locals 5
    .param p1, "account"    # Lcom/alibaba/alimei/emailcommon/Account;
    .param p2, "folder"    # Ljava/lang/String;
    .param p3, "uid"    # J
    .param p5, "flag"    # Z
    .param p6, "e"    # Ljava/lang/Exception;

    .prologue
    .line 92
    invoke-super/range {p0 .. p6}, Luv;->changeFlagFailed(Lcom/alibaba/alimei/emailcommon/Account;Ljava/lang/String;JZLjava/lang/Exception;)V

    .line 95
    instance-of v2, p6, Lcom/alibaba/alimei/emailcommon/mail/MessagingException;

    if-eqz v2, :cond_0

    .line 96
    check-cast p6, Lcom/alibaba/alimei/emailcommon/mail/MessagingException;

    .end local p6    # "e":Ljava/lang/Exception;
    invoke-static {p6}, Lrb;->a(Lcom/alibaba/alimei/emailcommon/mail/MessagingException;)Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    move-result-object v1

    .line 102
    .local v1, "sdkException":Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;
    :goto_0
    new-instance v0, Lyc;

    const-string/jumbo v2, "mailTagsUpdate"

    iget-object v3, p0, Lqn$1;->b:Lqn;

    iget-object v3, v3, Lqn;->a:Ljava/lang/String;

    const/4 v4, 0x2

    invoke-direct {v0, v2, v3, v4}, Lyc;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 103
    .local v0, "eventMessage":Lyc;
    iput-object v1, v0, Lyc;->h:Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    .line 104
    iget-object v2, p0, Lqn$1;->b:Lqn;

    invoke-static {v2}, Lqn;->a(Lqn;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lyc;->f:Ljava/lang/String;

    .line 105
    iget-object v2, p0, Lqn$1;->a:Lya;

    invoke-interface {v2, v0}, Lya;->a(Lyc;)V

    .line 106
    return-void

    .line 98
    .end local v0    # "eventMessage":Lyc;
    .end local v1    # "sdkException":Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;
    .restart local p6    # "e":Ljava/lang/Exception;
    :cond_0
    sget-object v2, Lcom/alibaba/alimei/framework/SDKError;->Unknown:Lcom/alibaba/alimei/framework/SDKError;

    invoke-static {v2, p6}, Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;->buildSdkException(Lcom/alibaba/alimei/framework/SDKError;Ljava/lang/Throwable;)Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    move-result-object v1

    .line 99
    .restart local v1    # "sdkException":Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;->setIsCommonProtocolError(Z)V

    goto :goto_0
.end method

.method public final changeFlagFinished(Lcom/alibaba/alimei/emailcommon/Account;Ljava/lang/String;JZ)V
    .locals 9
    .param p1, "account"    # Lcom/alibaba/alimei/emailcommon/Account;
    .param p2, "folder"    # Ljava/lang/String;
    .param p3, "uid"    # J
    .param p5, "flag"    # Z

    .prologue
    const/4 v7, 0x1

    .line 73
    invoke-super/range {p0 .. p5}, Luv;->changeFlagFinished(Lcom/alibaba/alimei/emailcommon/Account;Ljava/lang/String;JZ)V

    .line 75
    invoke-static {}, Lcom/alibaba/alimei/sdk/datasource/DatasourceCenter;->getMessageDatasource()Lcom/alibaba/alimei/sdk/datasource/MessageDatasource;

    move-result-object v1

    .line 77
    .local v1, "datasource":Lcom/alibaba/alimei/sdk/datasource/MessageDatasource;
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6, v7}, Ljava/util/ArrayList;-><init>(I)V

    .line 78
    .local v6, "tags":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string/jumbo v2, "1"

    invoke-interface {v6, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 79
    if-eqz p5, :cond_0

    .line 80
    iget-object v2, p0, Lqn$1;->b:Lqn;

    iget-object v2, v2, Lqn;->b:Lcom/alibaba/alimei/framework/model/UserAccountModel;

    invoke-virtual {v2}, Lcom/alibaba/alimei/framework/model/UserAccountModel;->getId()J

    move-result-wide v2

    iget-object v4, p0, Lqn$1;->b:Lqn;

    iget-object v4, v4, Lqn;->a:Ljava/lang/String;

    iget-object v5, p0, Lqn$1;->b:Lqn;

    invoke-static {v5}, Lqn;->a(Lqn;)Ljava/lang/String;

    move-result-object v5

    invoke-interface/range {v1 .. v6}, Lcom/alibaba/alimei/sdk/datasource/MessageDatasource;->addMailTags(JLjava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    .line 85
    :goto_0
    new-instance v0, Lyc;

    const-string/jumbo v2, "mailTagsUpdate"

    iget-object v3, p0, Lqn$1;->b:Lqn;

    iget-object v3, v3, Lqn;->a:Ljava/lang/String;

    invoke-direct {v0, v2, v3, v7}, Lyc;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 86
    .local v0, "eventMessage":Lyc;
    iget-object v2, p0, Lqn$1;->b:Lqn;

    invoke-static {v2}, Lqn;->a(Lqn;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lyc;->f:Ljava/lang/String;

    .line 87
    iget-object v2, p0, Lqn$1;->a:Lya;

    invoke-interface {v2, v0}, Lya;->a(Lyc;)V

    .line 88
    return-void

    .line 82
    .end local v0    # "eventMessage":Lyc;
    :cond_0
    iget-object v2, p0, Lqn$1;->b:Lqn;

    iget-object v2, v2, Lqn;->b:Lcom/alibaba/alimei/framework/model/UserAccountModel;

    invoke-virtual {v2}, Lcom/alibaba/alimei/framework/model/UserAccountModel;->getId()J

    move-result-wide v2

    iget-object v4, p0, Lqn$1;->b:Lqn;

    iget-object v4, v4, Lqn;->a:Ljava/lang/String;

    iget-object v5, p0, Lqn$1;->b:Lqn;

    invoke-static {v5}, Lqn;->a(Lqn;)Ljava/lang/String;

    move-result-object v5

    invoke-interface/range {v1 .. v6}, Lcom/alibaba/alimei/sdk/datasource/MessageDatasource;->removeMailTags(JLjava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    goto :goto_0
.end method

.method public final changeFlagStarted(Lcom/alibaba/alimei/emailcommon/Account;Ljava/lang/String;JZ)V
    .locals 1
    .param p1, "account"    # Lcom/alibaba/alimei/emailcommon/Account;
    .param p2, "folder"    # Ljava/lang/String;
    .param p3, "uid"    # J
    .param p5, "flag"    # Z

    .prologue
    .line 68
    invoke-super/range {p0 .. p5}, Luv;->changeFlagStarted(Lcom/alibaba/alimei/emailcommon/Account;Ljava/lang/String;JZ)V

    .line 69
    return-void
.end method
