.class Lcom/alibaba/alimei/adpater/api/impl/CommonAccountApiImpl$2;
.super Ljava/lang/Object;
.source "CommonAccountApiImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/alimei/adpater/api/impl/CommonAccountApiImpl;->checkConfig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZLxv;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/alimei/adpater/api/impl/CommonAccountApiImpl;

.field final synthetic val$allowInvalidCertificates:Z

.field final synthetic val$incomingPassword:Ljava/lang/String;

.field final synthetic val$incomingPort:Ljava/lang/String;

.field final synthetic val$incomingServer:Ljava/lang/String;

.field final synthetic val$incomingSsl:Z

.field final synthetic val$listener:Lxv;

.field final synthetic val$mail:Ljava/lang/String;

.field final synthetic val$smtpPassword:Ljava/lang/String;

.field final synthetic val$smtpPort:Ljava/lang/String;

.field final synthetic val$smtpServer:Ljava/lang/String;

.field final synthetic val$smtpSsl:Z


# direct methods
.method constructor <init>(Lcom/alibaba/alimei/adpater/api/impl/CommonAccountApiImpl;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLxv;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/alimei/adpater/api/impl/CommonAccountApiImpl;

    .prologue
    .line 117
    iput-object p1, p0, Lcom/alibaba/alimei/adpater/api/impl/CommonAccountApiImpl$2;->this$0:Lcom/alibaba/alimei/adpater/api/impl/CommonAccountApiImpl;

    iput-object p2, p0, Lcom/alibaba/alimei/adpater/api/impl/CommonAccountApiImpl$2;->val$mail:Ljava/lang/String;

    iput-object p3, p0, Lcom/alibaba/alimei/adpater/api/impl/CommonAccountApiImpl$2;->val$incomingPassword:Ljava/lang/String;

    iput-object p4, p0, Lcom/alibaba/alimei/adpater/api/impl/CommonAccountApiImpl$2;->val$incomingServer:Ljava/lang/String;

    iput-object p5, p0, Lcom/alibaba/alimei/adpater/api/impl/CommonAccountApiImpl$2;->val$incomingPort:Ljava/lang/String;

    iput-boolean p6, p0, Lcom/alibaba/alimei/adpater/api/impl/CommonAccountApiImpl$2;->val$incomingSsl:Z

    iput-boolean p7, p0, Lcom/alibaba/alimei/adpater/api/impl/CommonAccountApiImpl$2;->val$allowInvalidCertificates:Z

    iput-object p8, p0, Lcom/alibaba/alimei/adpater/api/impl/CommonAccountApiImpl$2;->val$smtpPassword:Ljava/lang/String;

    iput-object p9, p0, Lcom/alibaba/alimei/adpater/api/impl/CommonAccountApiImpl$2;->val$smtpServer:Ljava/lang/String;

    iput-object p10, p0, Lcom/alibaba/alimei/adpater/api/impl/CommonAccountApiImpl$2;->val$smtpPort:Ljava/lang/String;

    iput-boolean p11, p0, Lcom/alibaba/alimei/adpater/api/impl/CommonAccountApiImpl$2;->val$smtpSsl:Z

    iput-object p12, p0, Lcom/alibaba/alimei/adpater/api/impl/CommonAccountApiImpl$2;->val$listener:Lxv;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 120
    invoke-static {}, Lcom/alibaba/alimei/emailcommon/api/CommonEmailSdk;->getCommonEmailAPI()Lcom/alibaba/alimei/emailcommon/api/CommonEmailApiImpl;

    move-result-object v0

    sget-object v1, Lcom/alibaba/alimei/emailcommon/api/CommonEmailSdk;->app:Landroid/content/Context;

    iget-object v2, p0, Lcom/alibaba/alimei/adpater/api/impl/CommonAccountApiImpl$2;->val$mail:Ljava/lang/String;

    iget-object v3, p0, Lcom/alibaba/alimei/adpater/api/impl/CommonAccountApiImpl$2;->val$incomingPassword:Ljava/lang/String;

    iget-object v4, p0, Lcom/alibaba/alimei/adpater/api/impl/CommonAccountApiImpl$2;->val$incomingServer:Ljava/lang/String;

    iget-object v5, p0, Lcom/alibaba/alimei/adpater/api/impl/CommonAccountApiImpl$2;->val$incomingPort:Ljava/lang/String;

    iget-boolean v6, p0, Lcom/alibaba/alimei/adpater/api/impl/CommonAccountApiImpl$2;->val$incomingSsl:Z

    iget-boolean v7, p0, Lcom/alibaba/alimei/adpater/api/impl/CommonAccountApiImpl$2;->val$allowInvalidCertificates:Z

    new-instance v8, Lcom/alibaba/alimei/adpater/api/impl/CommonAccountApiImpl$2$1;

    invoke-direct {v8, p0}, Lcom/alibaba/alimei/adpater/api/impl/CommonAccountApiImpl$2$1;-><init>(Lcom/alibaba/alimei/adpater/api/impl/CommonAccountApiImpl$2;)V

    invoke-virtual/range {v0 .. v8}, Lcom/alibaba/alimei/emailcommon/api/CommonEmailApiImpl;->checkAcocunt(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZLuv;)V

    .line 171
    return-void
.end method
