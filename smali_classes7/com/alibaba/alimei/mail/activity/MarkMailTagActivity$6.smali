.class final Lcom/alibaba/alimei/mail/activity/MarkMailTagActivity$6;
.super Ljava/lang/Object;
.source "MarkMailTagActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/alimei/mail/activity/MarkMailTagActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/alimei/sdk/model/MailTagModel;

.field final synthetic b:Lcom/alibaba/alimei/mail/activity/MarkMailTagActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/alimei/mail/activity/MarkMailTagActivity;Lcom/alibaba/alimei/sdk/model/MailTagModel;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/alimei/mail/activity/MarkMailTagActivity;

    .prologue
    .line 586
    iput-object p1, p0, Lcom/alibaba/alimei/mail/activity/MarkMailTagActivity$6;->b:Lcom/alibaba/alimei/mail/activity/MarkMailTagActivity;

    iput-object p2, p0, Lcom/alibaba/alimei/mail/activity/MarkMailTagActivity$6;->a:Lcom/alibaba/alimei/sdk/model/MailTagModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 589
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MarkMailTagActivity$6;->b:Lcom/alibaba/alimei/mail/activity/MarkMailTagActivity;

    iget-object v1, p0, Lcom/alibaba/alimei/mail/activity/MarkMailTagActivity$6;->a:Lcom/alibaba/alimei/sdk/model/MailTagModel;

    invoke-static {v0, v1}, Lcom/alibaba/alimei/mail/activity/MarkMailTagActivity;->a(Lcom/alibaba/alimei/mail/activity/MarkMailTagActivity;Lcom/alibaba/alimei/sdk/model/MailTagModel;)V

    .line 590
    return-void
.end method
