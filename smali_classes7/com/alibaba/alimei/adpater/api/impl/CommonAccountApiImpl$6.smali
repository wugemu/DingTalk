.class Lcom/alibaba/alimei/adpater/api/impl/CommonAccountApiImpl$6;
.super Ljava/lang/Object;
.source "CommonAccountApiImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/alimei/adpater/api/impl/CommonAccountApiImpl;->trustCertificateChain([Ljava/security/cert/X509Certificate;Lxv;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/alimei/adpater/api/impl/CommonAccountApiImpl;

.field final synthetic val$chain:[Ljava/security/cert/X509Certificate;

.field final synthetic val$listener:Lxv;


# direct methods
.method constructor <init>(Lcom/alibaba/alimei/adpater/api/impl/CommonAccountApiImpl;[Ljava/security/cert/X509Certificate;Lxv;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/alimei/adpater/api/impl/CommonAccountApiImpl;

    .prologue
    .line 349
    iput-object p1, p0, Lcom/alibaba/alimei/adpater/api/impl/CommonAccountApiImpl$6;->this$0:Lcom/alibaba/alimei/adpater/api/impl/CommonAccountApiImpl;

    iput-object p2, p0, Lcom/alibaba/alimei/adpater/api/impl/CommonAccountApiImpl$6;->val$chain:[Ljava/security/cert/X509Certificate;

    iput-object p3, p0, Lcom/alibaba/alimei/adpater/api/impl/CommonAccountApiImpl$6;->val$listener:Lxv;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 352
    invoke-static {}, Lcom/alibaba/alimei/emailcommon/api/CommonEmailSdk;->getCommonEmailAPI()Lcom/alibaba/alimei/emailcommon/api/CommonEmailApiImpl;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/alimei/adpater/api/impl/CommonAccountApiImpl$6;->val$chain:[Ljava/security/cert/X509Certificate;

    new-instance v2, Lcom/alibaba/alimei/adpater/api/impl/CommonAccountApiImpl$6$1;

    invoke-direct {v2, p0}, Lcom/alibaba/alimei/adpater/api/impl/CommonAccountApiImpl$6$1;-><init>(Lcom/alibaba/alimei/adpater/api/impl/CommonAccountApiImpl$6;)V

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/alimei/emailcommon/api/CommonEmailApiImpl;->trustCertificateChain([Ljava/security/cert/X509Certificate;Luv;)V

    .line 374
    return-void
.end method
