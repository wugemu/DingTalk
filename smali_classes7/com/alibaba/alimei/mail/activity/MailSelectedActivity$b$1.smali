.class final Lcom/alibaba/alimei/mail/activity/MailSelectedActivity$b$1;
.super Ljava/lang/Object;
.source "MailSelectedActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/alimei/mail/activity/MailSelectedActivity$b;->a(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/alimei/mail/activity/MailSelectedActivity$b;


# direct methods
.method constructor <init>(Lcom/alibaba/alimei/mail/activity/MailSelectedActivity$b;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/alimei/mail/activity/MailSelectedActivity$b;

    .prologue
    .line 296
    iput-object p1, p0, Lcom/alibaba/alimei/mail/activity/MailSelectedActivity$b$1;->a:Lcom/alibaba/alimei/mail/activity/MailSelectedActivity$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 299
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailSelectedActivity$b$1;->a:Lcom/alibaba/alimei/mail/activity/MailSelectedActivity$b;

    iget-object v0, v0, Lcom/alibaba/alimei/mail/activity/MailSelectedActivity$b;->a:Lcom/alibaba/alimei/mail/activity/MailSelectedActivity;

    invoke-static {v0}, Lcom/alibaba/alimei/mail/activity/MailSelectedActivity;->k(Lcom/alibaba/alimei/mail/activity/MailSelectedActivity;)Landroid/widget/TextView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 300
    return-void
.end method
