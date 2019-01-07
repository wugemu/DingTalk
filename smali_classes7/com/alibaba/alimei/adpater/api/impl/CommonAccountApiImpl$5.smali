.class Lcom/alibaba/alimei/adpater/api/impl/CommonAccountApiImpl$5;
.super Ljava/lang/Object;
.source "CommonAccountApiImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/alimei/adpater/api/impl/CommonAccountApiImpl;->login4Gmail(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lxv;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/alimei/adpater/api/impl/CommonAccountApiImpl;

.field final synthetic val$authCode:Ljava/lang/String;

.field final synthetic val$listener:Lxv;

.field final synthetic val$mail:Ljava/lang/String;

.field final synthetic val$scopes:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/alibaba/alimei/adpater/api/impl/CommonAccountApiImpl;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Lxv;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/alimei/adpater/api/impl/CommonAccountApiImpl;

    .prologue
    .line 324
    iput-object p1, p0, Lcom/alibaba/alimei/adpater/api/impl/CommonAccountApiImpl$5;->this$0:Lcom/alibaba/alimei/adpater/api/impl/CommonAccountApiImpl;

    iput-object p2, p0, Lcom/alibaba/alimei/adpater/api/impl/CommonAccountApiImpl$5;->val$authCode:Ljava/lang/String;

    iput-object p3, p0, Lcom/alibaba/alimei/adpater/api/impl/CommonAccountApiImpl$5;->val$scopes:Ljava/util/List;

    iput-object p4, p0, Lcom/alibaba/alimei/adpater/api/impl/CommonAccountApiImpl$5;->val$mail:Ljava/lang/String;

    iput-object p5, p0, Lcom/alibaba/alimei/adpater/api/impl/CommonAccountApiImpl$5;->val$listener:Lxv;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 15

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v14

    invoke-static {v14}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v8, 0x1

    .line 327
    new-instance v13, Lzn;

    invoke-static {}, Lafv;->c()Lafy;

    .line 1137
    const/4 v0, 0x0

    .line 327
    iget-object v1, p0, Lcom/alibaba/alimei/adpater/api/impl/CommonAccountApiImpl$5;->val$authCode:Ljava/lang/String;

    iget-object v2, p0, Lcom/alibaba/alimei/adpater/api/impl/CommonAccountApiImpl$5;->val$scopes:Ljava/util/List;

    invoke-direct {v13, v0, v1, v2}, Lzn;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    .line 328
    .local v13, "getAccessToken":Lzn;
    invoke-virtual {v13}, Lzn;->a()Lzo;

    move-result-object v14

    .line 2066
    .local v14, "tokenModel":Lzo;
    iget-object v0, v14, Lzo;->c:Ljava/lang/String;

    .line 329
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 3050
    iget-object v0, v14, Lzo;->b:Ljava/lang/String;

    .line 329
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 330
    iget-object v0, p0, Lcom/alibaba/alimei/adpater/api/impl/CommonAccountApiImpl$5;->this$0:Lcom/alibaba/alimei/adpater/api/impl/CommonAccountApiImpl;

    iget-object v1, p0, Lcom/alibaba/alimei/adpater/api/impl/CommonAccountApiImpl$5;->val$mail:Ljava/lang/String;

    .line 3066
    iget-object v2, v14, Lzo;->c:Ljava/lang/String;

    .line 4050
    iget-object v3, v14, Lzo;->b:Ljava/lang/String;

    .line 5034
    iget-wide v4, v14, Lzo;->a:J

    .line 330
    const-string/jumbo v6, "imap.gmail.com"

    const-string/jumbo v7, "993"

    const-string/jumbo v9, "smtp.gmail.com"

    const-string/jumbo v10, "587"

    iget-object v12, p0, Lcom/alibaba/alimei/adpater/api/impl/CommonAccountApiImpl$5;->val$listener:Lxv;

    move v11, v8

    invoke-virtual/range {v0 .. v12}, Lcom/alibaba/alimei/adpater/api/impl/CommonAccountApiImpl;->loginOAuth(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;ZLxv;)V

    .line 338
    :cond_0
    :goto_0
    return-void

    .line 334
    :cond_1
    iget-object v0, p0, Lcom/alibaba/alimei/adpater/api/impl/CommonAccountApiImpl$5;->val$listener:Lxv;

    if-eqz v0, :cond_0

    .line 335
    iget-object v0, p0, Lcom/alibaba/alimei/adpater/api/impl/CommonAccountApiImpl$5;->val$listener:Lxv;

    sget-object v1, Lcom/alibaba/alimei/framework/SDKError;->CommonOAuthGetTokenFailed:Lcom/alibaba/alimei/framework/SDKError;

    invoke-static {v1}, Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;->buildSdkException(Lcom/alibaba/alimei/framework/SDKError;)Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    move-result-object v1

    invoke-interface {v0, v1}, Lxv;->onException(Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;)V

    goto :goto_0
.end method
