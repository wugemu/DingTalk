.class Lcom/alibaba/alimei/adpater/api/impl/CommonAccountApiImpl$3;
.super Ljava/lang/Object;
.source "CommonAccountApiImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/alimei/adpater/api/impl/CommonAccountApiImpl;->loginOAuth(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;ZLxv;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/alimei/adpater/api/impl/CommonAccountApiImpl;

.field final synthetic val$incomingPort:Ljava/lang/String;

.field final synthetic val$incomingServer:Ljava/lang/String;

.field final synthetic val$incomingSsl:Z

.field final synthetic val$listener:Lxv;

.field final synthetic val$mail:Ljava/lang/String;

.field final synthetic val$oauthToken:Ljava/lang/String;

.field final synthetic val$smtpPort:Ljava/lang/String;

.field final synthetic val$smtpSecurity:Z

.field final synthetic val$smtpServer:Ljava/lang/String;

.field final synthetic val$tokenExpireTime:Ljava/lang/Long;


# direct methods
.method constructor <init>(Lcom/alibaba/alimei/adpater/api/impl/CommonAccountApiImpl;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;ZLjava/lang/Long;Lxv;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/alimei/adpater/api/impl/CommonAccountApiImpl;

    .prologue
    .line 178
    iput-object p1, p0, Lcom/alibaba/alimei/adpater/api/impl/CommonAccountApiImpl$3;->this$0:Lcom/alibaba/alimei/adpater/api/impl/CommonAccountApiImpl;

    iput-object p2, p0, Lcom/alibaba/alimei/adpater/api/impl/CommonAccountApiImpl$3;->val$mail:Ljava/lang/String;

    iput-object p3, p0, Lcom/alibaba/alimei/adpater/api/impl/CommonAccountApiImpl$3;->val$oauthToken:Ljava/lang/String;

    iput-object p4, p0, Lcom/alibaba/alimei/adpater/api/impl/CommonAccountApiImpl$3;->val$incomingServer:Ljava/lang/String;

    iput-object p5, p0, Lcom/alibaba/alimei/adpater/api/impl/CommonAccountApiImpl$3;->val$incomingPort:Ljava/lang/String;

    iput-boolean p6, p0, Lcom/alibaba/alimei/adpater/api/impl/CommonAccountApiImpl$3;->val$incomingSsl:Z

    iput-object p7, p0, Lcom/alibaba/alimei/adpater/api/impl/CommonAccountApiImpl$3;->val$smtpServer:Ljava/lang/String;

    iput-object p8, p0, Lcom/alibaba/alimei/adpater/api/impl/CommonAccountApiImpl$3;->val$smtpPort:Ljava/lang/String;

    iput-boolean p9, p0, Lcom/alibaba/alimei/adpater/api/impl/CommonAccountApiImpl$3;->val$smtpSecurity:Z

    iput-object p10, p0, Lcom/alibaba/alimei/adpater/api/impl/CommonAccountApiImpl$3;->val$tokenExpireTime:Ljava/lang/Long;

    iput-object p11, p0, Lcom/alibaba/alimei/adpater/api/impl/CommonAccountApiImpl$3;->val$listener:Lxv;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 181
    invoke-static {}, Lcom/alibaba/alimei/emailcommon/api/CommonEmailSdk;->getCommonEmailAPI()Lcom/alibaba/alimei/emailcommon/api/CommonEmailApiImpl;

    move-result-object v0

    sget-object v1, Lcom/alibaba/alimei/emailcommon/api/CommonEmailSdk;->app:Landroid/content/Context;

    iget-object v2, p0, Lcom/alibaba/alimei/adpater/api/impl/CommonAccountApiImpl$3;->val$mail:Ljava/lang/String;

    iget-object v3, p0, Lcom/alibaba/alimei/adpater/api/impl/CommonAccountApiImpl$3;->val$oauthToken:Ljava/lang/String;

    iget-object v4, p0, Lcom/alibaba/alimei/adpater/api/impl/CommonAccountApiImpl$3;->val$incomingServer:Ljava/lang/String;

    iget-object v5, p0, Lcom/alibaba/alimei/adpater/api/impl/CommonAccountApiImpl$3;->val$incomingPort:Ljava/lang/String;

    iget-boolean v6, p0, Lcom/alibaba/alimei/adpater/api/impl/CommonAccountApiImpl$3;->val$incomingSsl:Z

    new-instance v7, Lcom/alibaba/alimei/adpater/api/impl/CommonAccountApiImpl$3$1;

    invoke-direct {v7, p0}, Lcom/alibaba/alimei/adpater/api/impl/CommonAccountApiImpl$3$1;-><init>(Lcom/alibaba/alimei/adpater/api/impl/CommonAccountApiImpl$3;)V

    invoke-virtual/range {v0 .. v7}, Lcom/alibaba/alimei/emailcommon/api/CommonEmailApiImpl;->checkOAuthAcocunt(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLuv;)V

    .line 234
    return-void
.end method
