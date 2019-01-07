.class final Lpy$2;
.super Ljava/lang/Object;
.source "SendMailController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lpy;->a(Lcom/alibaba/alimei/emailcommon/Account;Ljava/lang/String;Lcom/alibaba/alimei/emailcommon/mail/Message;Luv;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/alimei/emailcommon/Account;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/alibaba/alimei/emailcommon/mail/Message;

.field final synthetic d:Luv;

.field final synthetic e:Lpy;


# direct methods
.method constructor <init>(Lpy;Lcom/alibaba/alimei/emailcommon/Account;Ljava/lang/String;Lcom/alibaba/alimei/emailcommon/mail/Message;Luv;)V
    .locals 0
    .param p1, "this$0"    # Lpy;

    .prologue
    .line 50
    iput-object p1, p0, Lpy$2;->e:Lpy;

    iput-object p2, p0, Lpy$2;->a:Lcom/alibaba/alimei/emailcommon/Account;

    iput-object p3, p0, Lpy$2;->b:Ljava/lang/String;

    iput-object p4, p0, Lpy$2;->c:Lcom/alibaba/alimei/emailcommon/mail/Message;

    iput-object p5, p0, Lpy$2;->d:Luv;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 53
    invoke-static {}, Lcom/alibaba/alimei/emailcommon/api/CommonEmailSdk;->getCommonEmailAPI()Lcom/alibaba/alimei/emailcommon/api/CommonEmailApiImpl;

    move-result-object v0

    iget-object v1, p0, Lpy$2;->a:Lcom/alibaba/alimei/emailcommon/Account;

    iget-object v2, p0, Lpy$2;->b:Ljava/lang/String;

    iget-object v3, p0, Lpy$2;->c:Lcom/alibaba/alimei/emailcommon/mail/Message;

    iget-object v4, p0, Lpy$2;->d:Luv;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/alibaba/alimei/emailcommon/api/CommonEmailApiImpl;->appendMail(Lcom/alibaba/alimei/emailcommon/Account;Ljava/lang/String;Lcom/alibaba/alimei/emailcommon/mail/Message;Luv;)V

    .line 54
    return-void
.end method
