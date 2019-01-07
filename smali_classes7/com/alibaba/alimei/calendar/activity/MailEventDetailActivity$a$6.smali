.class final Lcom/alibaba/alimei/calendar/activity/MailEventDetailActivity$a$6;
.super Ljava/lang/Object;
.source "MailEventDetailActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/alimei/calendar/activity/MailEventDetailActivity$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/alimei/sdk/model/EventDetailModel;

.field final synthetic b:Lcom/alibaba/alimei/calendar/activity/MailEventDetailActivity$a;


# direct methods
.method constructor <init>(Lcom/alibaba/alimei/calendar/activity/MailEventDetailActivity$a;Lcom/alibaba/alimei/sdk/model/EventDetailModel;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/alimei/calendar/activity/MailEventDetailActivity$a;

    .prologue
    .line 700
    iput-object p1, p0, Lcom/alibaba/alimei/calendar/activity/MailEventDetailActivity$a$6;->b:Lcom/alibaba/alimei/calendar/activity/MailEventDetailActivity$a;

    iput-object p2, p0, Lcom/alibaba/alimei/calendar/activity/MailEventDetailActivity$a$6;->a:Lcom/alibaba/alimei/sdk/model/EventDetailModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 703
    iget-object v0, p0, Lcom/alibaba/alimei/calendar/activity/MailEventDetailActivity$a$6;->b:Lcom/alibaba/alimei/calendar/activity/MailEventDetailActivity$a;

    iget-object v0, v0, Lcom/alibaba/alimei/calendar/activity/MailEventDetailActivity$a;->a:Lcom/alibaba/alimei/calendar/activity/MailEventDetailActivity;

    invoke-static {v0}, Lcom/alibaba/alimei/calendar/activity/MailEventDetailActivity;->b(Lcom/alibaba/alimei/calendar/activity/MailEventDetailActivity;)Lrh$a;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/alimei/calendar/activity/MailEventDetailActivity$a$6;->a:Lcom/alibaba/alimei/sdk/model/EventDetailModel;

    const/4 v2, 0x2

    invoke-interface {v0, v1, v2}, Lrh$a;->a(Lcom/alibaba/alimei/sdk/model/EventDetailModel;I)V

    .line 704
    sget v0, Laxo$i;->dt_cmail_has_decline_event:I

    invoke-static {v0}, Lcms;->a(I)V

    .line 705
    return-void
.end method
