.class final Lcom/alibaba/alimei/mail/activity/MultiMailChooserActivity$2;
.super Ljava/lang/Object;
.source "MultiMailChooserActivity.java"

# interfaces
.implements Lcom/alibaba/doraemon/navigator/IntentRewriter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/alimei/mail/activity/MultiMailChooserActivity;->a(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/alibaba/alimei/mail/activity/MultiMailChooserActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/alimei/mail/activity/MultiMailChooserActivity;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/alimei/mail/activity/MultiMailChooserActivity;

    .prologue
    .line 267
    iput-object p1, p0, Lcom/alibaba/alimei/mail/activity/MultiMailChooserActivity$2;->b:Lcom/alibaba/alimei/mail/activity/MultiMailChooserActivity;

    iput p2, p0, Lcom/alibaba/alimei/mail/activity/MultiMailChooserActivity$2;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onIntentRewrite(Landroid/content/Intent;)Landroid/content/Intent;
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 270
    const-string/jumbo v0, "domain"

    const-string/jumbo v1, ""

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 271
    const-string/jumbo v0, "mail_login_choose"

    iget v1, p0, Lcom/alibaba/alimei/mail/activity/MultiMailChooserActivity$2;->a:I

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 272
    return-object p1
.end method
