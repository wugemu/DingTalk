.class final Lcom/alibaba/alimei/mail/utils/MailCommonProtocolUtils$k;
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
    name = "k"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 301
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(B)V
    .locals 0

    .prologue
    .line 301
    invoke-direct {p0}, Lcom/alibaba/alimei/mail/utils/MailCommonProtocolUtils$k;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialog;Ljava/lang/String;Laer;)V
    .locals 3
    .param p1, "dialog"    # Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialog;
    .param p2, "detailMessage"    # Ljava/lang/String;
    .param p3, "handler"    # Laer;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 311
    if-nez p1, :cond_0

    .line 343
    :goto_0
    return-void

    .line 315
    :cond_0
    invoke-virtual {p1}, Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 317
    .local v0, "context":Landroid/content/Context;
    sget v1, Laxo$i;->dt_mail_agent_login_tip1:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1239
    iput-object v1, p1, Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialog;->d:Ljava/lang/String;

    .line 319
    sget v1, Laxo$b;->mail_login_failed_choose11:I

    new-instance v2, Lcom/alibaba/alimei/mail/utils/MailCommonProtocolUtils$k$1;

    invoke-direct {v2, p0, p1, p3}, Lcom/alibaba/alimei/mail/utils/MailCommonProtocolUtils$k$1;-><init>(Lcom/alibaba/alimei/mail/utils/MailCommonProtocolUtils$k;Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialog;Laer;)V

    invoke-virtual {p1, v1, v2}, Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialog;->a(ILandroid/content/DialogInterface$OnClickListener;)V

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;Lcom/alibaba/alimei/mail/utils/MailCommonProtocolUtils$Scene;)Z
    .locals 1
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "scene"    # Lcom/alibaba/alimei/mail/utils/MailCommonProtocolUtils$Scene;

    .prologue
    .line 306
    sget-object v0, Lcom/alibaba/alimei/mail/utils/MailCommonProtocolUtils$Scene;->LOGIN:Lcom/alibaba/alimei/mail/utils/MailCommonProtocolUtils$Scene;

    if-ne p2, v0, :cond_0

    sget-object v0, Lcom/alibaba/alimei/framework/SDKError;->USERNAME_OR_PASSWORD_ERROR:Lcom/alibaba/alimei/framework/SDKError;

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
