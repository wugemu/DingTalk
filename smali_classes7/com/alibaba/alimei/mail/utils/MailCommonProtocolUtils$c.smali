.class final Lcom/alibaba/alimei/mail/utils/MailCommonProtocolUtils$c;
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
    name = "c"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 216
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(B)V
    .locals 0

    .prologue
    .line 216
    invoke-direct {p0}, Lcom/alibaba/alimei/mail/utils/MailCommonProtocolUtils$c;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialog;Ljava/lang/String;Laer;)V
    .locals 5
    .param p1, "dialog"    # Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialog;
    .param p2, "detailMessage"    # Ljava/lang/String;
    .param p3, "handler"    # Laer;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 228
    if-nez p1, :cond_0

    .line 257
    :goto_0
    return-void

    .line 232
    :cond_0
    invoke-virtual {p1}, Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 235
    .local v0, "context":Landroid/content/Context;
    invoke-static {v0}, Lcms;->d(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 236
    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    sget v4, Laxo$i;->dt_mail_agent_server_no_response:I

    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string/jumbo v4, "\r\n"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    aput-object p2, v2, v3

    invoke-static {v2}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1239
    .local v1, "message":Ljava/lang/String;
    :goto_1
    iput-object v1, p1, Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialog;->d:Ljava/lang/String;

    .line 243
    sget v2, Laxo$b;->mail_login_failed_choose1:I

    new-instance v3, Lcom/alibaba/alimei/mail/utils/MailCommonProtocolUtils$c$1;

    invoke-direct {v3, p0, p1, p3}, Lcom/alibaba/alimei/mail/utils/MailCommonProtocolUtils$c$1;-><init>(Lcom/alibaba/alimei/mail/utils/MailCommonProtocolUtils$c;Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialog;Laer;)V

    invoke-virtual {p1, v2, v3}, Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialog;->a(ILandroid/content/DialogInterface$OnClickListener;)V

    goto :goto_0

    .line 238
    .end local v1    # "message":Ljava/lang/String;
    :cond_1
    sget v2, Laxo$i;->network_no_connection:I

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "message":Ljava/lang/String;
    goto :goto_1
.end method

.method public final a(Ljava/lang/String;Lcom/alibaba/alimei/mail/utils/MailCommonProtocolUtils$Scene;)Z
    .locals 1
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "scene"    # Lcom/alibaba/alimei/mail/utils/MailCommonProtocolUtils$Scene;

    .prologue
    .line 221
    sget-object v0, Lcom/alibaba/alimei/framework/SDKError;->INCOMING_CONNECTION_ERROR:Lcom/alibaba/alimei/framework/SDKError;

    invoke-virtual {v0}, Lcom/alibaba/alimei/framework/SDKError;->getErrorCode()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/alibaba/alimei/framework/SDKError;->OUTING_CONNECTION_ERROR:Lcom/alibaba/alimei/framework/SDKError;

    .line 222
    invoke-virtual {v0}, Lcom/alibaba/alimei/framework/SDKError;->getErrorCode()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/alibaba/alimei/framework/SDKError;->TIMED_OUT_ERROR:Lcom/alibaba/alimei/framework/SDKError;

    .line 223
    invoke-virtual {v0}, Lcom/alibaba/alimei/framework/SDKError;->getErrorCode()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
