.class final Lcom/alibaba/alimei/mail/utils/MailCommonProtocolUtils$h;
.super Ljava/lang/Object;
.source "MailCommonProtocolUtils.java"

# interfaces
.implements Lcom/alibaba/alimei/mail/utils/MailCommonProtocolUtils$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/alimei/mail/utils/MailCommonProtocolUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "h"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(B)V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/alibaba/alimei/mail/utils/MailCommonProtocolUtils$h;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialog;Ljava/lang/String;Laer;)V
    .locals 6
    .param p1, "dialog"    # Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialog;
    .param p2, "detailMessage"    # Ljava/lang/String;
    .param p3, "handler"    # Laer;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 60
    if-nez p1, :cond_0

    .line 95
    :goto_0
    return-void

    .line 64
    :cond_0
    invoke-virtual {p1}, Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 1039
    .local v0, "context":Landroid/content/Context;
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 1040
    const-string/jumbo v3, "http"

    invoke-virtual {p2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    .line 1041
    if-ltz v3, :cond_1

    .line 1042
    invoke-virtual {p2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 1044
    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "qq tip url: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lafg;->a(Ljava/lang/String;)V

    .line 68
    .local v2, "tipURLString":Ljava/lang/String;
    :goto_1
    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    sget v5, Laxo$i;->dt_mail_qq_login_tip1:I

    invoke-virtual {v0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-string/jumbo v5, "\r\n"

    aput-object v5, v3, v4

    const/4 v4, 0x2

    aput-object v2, v3, v4

    invoke-static {v3}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1239
    .local v1, "message":Ljava/lang/String;
    iput-object v1, p1, Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialog;->d:Ljava/lang/String;

    .line 71
    sget v3, Laxo$b;->mail_login_failed_choose7:I

    new-instance v4, Lcom/alibaba/alimei/mail/utils/MailCommonProtocolUtils$h$1;

    invoke-direct {v4, p0, p1, p3}, Lcom/alibaba/alimei/mail/utils/MailCommonProtocolUtils$h$1;-><init>(Lcom/alibaba/alimei/mail/utils/MailCommonProtocolUtils$h;Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialog;Laer;)V

    invoke-virtual {p1, v3, v4}, Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialog;->a(ILandroid/content/DialogInterface$OnClickListener;)V

    goto :goto_0

    .line 1050
    .end local v1    # "message":Ljava/lang/String;
    .end local v2    # "tipURLString":Ljava/lang/String;
    :cond_1
    const-string/jumbo v2, ""

    goto :goto_1
.end method

.method public final a(Ljava/lang/String;Lcom/alibaba/alimei/mail/utils/MailCommonProtocolUtils$Scene;)Z
    .locals 1
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "scene"    # Lcom/alibaba/alimei/mail/utils/MailCommonProtocolUtils$Scene;

    .prologue
    .line 55
    sget-object v0, Lcom/alibaba/alimei/mail/utils/MailCommonProtocolUtils$Scene;->LOGIN:Lcom/alibaba/alimei/mail/utils/MailCommonProtocolUtils$Scene;

    if-ne p2, v0, :cond_0

    sget-object v0, Lcom/alibaba/alimei/framework/SDKError;->QQMAIL_AUTHORIZED_CODE_ERROR:Lcom/alibaba/alimei/framework/SDKError;

    invoke-virtual {v0}, Lcom/alibaba/alimei/framework/SDKError;->getErrorCode()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
