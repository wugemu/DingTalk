.class final Lacp$27;
.super Ljava/lang/Object;
.source "MailDialogManager.java"

# interfaces
.implements Lcom/alibaba/alimei/mail/widget/MailGuideFullScreenDialog$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lacp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

.field final synthetic b:Lcom/alibaba/alimei/mail/widget/MailGuideFullScreenDialog;

.field final synthetic c:Lacp;


# direct methods
.method constructor <init>(Lacp;Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;Lcom/alibaba/alimei/mail/widget/MailGuideFullScreenDialog;)V
    .locals 0
    .param p1, "this$0"    # Lacp;

    .prologue
    .line 1228
    iput-object p1, p0, Lacp$27;->c:Lacp;

    iput-object p2, p0, Lacp$27;->a:Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    iput-object p3, p0, Lacp$27;->b:Lcom/alibaba/alimei/mail/widget/MailGuideFullScreenDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 1231
    iget-object v0, p0, Lacp$27;->a:Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    invoke-static {}, Lacg;->c()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "signature_guide"

    invoke-static {v0, v1, v2}, Lacg;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 1233
    const-string/jumbo v0, "1"

    invoke-static {v0}, Lacq;->a(Ljava/lang/String;)V

    .line 1234
    iget-object v0, p0, Lacp$27;->b:Lcom/alibaba/alimei/mail/widget/MailGuideFullScreenDialog;

    invoke-virtual {v0}, Lcom/alibaba/alimei/mail/widget/MailGuideFullScreenDialog;->dismiss()V

    .line 1235
    return-void
.end method

.method public final b()V
    .locals 1

    .prologue
    .line 1239
    iget-object v0, p0, Lacp$27;->b:Lcom/alibaba/alimei/mail/widget/MailGuideFullScreenDialog;

    invoke-virtual {v0}, Lcom/alibaba/alimei/mail/widget/MailGuideFullScreenDialog;->dismiss()V

    .line 1240
    return-void
.end method
