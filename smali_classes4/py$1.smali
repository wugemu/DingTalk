.class final Lpy$1;
.super Ljava/lang/Object;
.source "SendMailController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lpy;->a(Lcom/alibaba/alimei/emailcommon/Account;Lcom/alibaba/alimei/emailcommon/mail/Message;Luv;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/alimei/emailcommon/Account;

.field final synthetic b:Lcom/alibaba/alimei/emailcommon/mail/Message;

.field final synthetic c:Luv;

.field final synthetic d:Lpy;


# direct methods
.method constructor <init>(Lpy;Lcom/alibaba/alimei/emailcommon/Account;Lcom/alibaba/alimei/emailcommon/mail/Message;Luv;)V
    .locals 0
    .param p1, "this$0"    # Lpy;

    .prologue
    .line 34
    iput-object p1, p0, Lpy$1;->d:Lpy;

    iput-object p2, p0, Lpy$1;->a:Lcom/alibaba/alimei/emailcommon/Account;

    iput-object p3, p0, Lpy$1;->b:Lcom/alibaba/alimei/emailcommon/mail/Message;

    iput-object p4, p0, Lpy$1;->c:Luv;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 37
    invoke-static {}, Lcom/alibaba/alimei/emailcommon/api/CommonEmailSdk;->getCommonEmailAPI()Lcom/alibaba/alimei/emailcommon/api/CommonEmailApiImpl;

    move-result-object v0

    iget-object v1, p0, Lpy$1;->a:Lcom/alibaba/alimei/emailcommon/Account;

    iget-object v2, p0, Lpy$1;->b:Lcom/alibaba/alimei/emailcommon/mail/Message;

    iget-object v3, p0, Lpy$1;->c:Luv;

    invoke-virtual {v0, v1, v2, v3}, Lcom/alibaba/alimei/emailcommon/api/CommonEmailApiImpl;->sendMail(Lcom/alibaba/alimei/emailcommon/Account;Lcom/alibaba/alimei/emailcommon/mail/Message;Luv;)V

    .line 38
    return-void
.end method
