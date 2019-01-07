.class final Lcom/alibaba/alimei/mail/activity/MarkMailTagActivity$c$1;
.super Ljava/lang/Object;
.source "MarkMailTagActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/alimei/mail/activity/MarkMailTagActivity$c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/alimei/sdk/model/MailTagModel;

.field final synthetic b:Lcom/alibaba/alimei/mail/activity/MarkMailTagActivity$c;


# direct methods
.method constructor <init>(Lcom/alibaba/alimei/mail/activity/MarkMailTagActivity$c;Lcom/alibaba/alimei/sdk/model/MailTagModel;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/alimei/mail/activity/MarkMailTagActivity$c;

    .prologue
    .line 729
    iput-object p1, p0, Lcom/alibaba/alimei/mail/activity/MarkMailTagActivity$c$1;->b:Lcom/alibaba/alimei/mail/activity/MarkMailTagActivity$c;

    iput-object p2, p0, Lcom/alibaba/alimei/mail/activity/MarkMailTagActivity$c$1;->a:Lcom/alibaba/alimei/sdk/model/MailTagModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 732
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MarkMailTagActivity$c$1;->b:Lcom/alibaba/alimei/mail/activity/MarkMailTagActivity$c;

    iget-object v0, v0, Lcom/alibaba/alimei/mail/activity/MarkMailTagActivity$c;->a:Lcom/alibaba/alimei/mail/activity/MarkMailTagActivity;

    iget-object v1, p0, Lcom/alibaba/alimei/mail/activity/MarkMailTagActivity$c$1;->a:Lcom/alibaba/alimei/sdk/model/MailTagModel;

    invoke-static {v0, v1}, Lcom/alibaba/alimei/mail/activity/MarkMailTagActivity;->b(Lcom/alibaba/alimei/mail/activity/MarkMailTagActivity;Lcom/alibaba/alimei/sdk/model/MailTagModel;)V

    .line 733
    return-void
.end method
