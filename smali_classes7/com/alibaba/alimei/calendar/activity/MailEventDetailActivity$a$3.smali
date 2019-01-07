.class final Lcom/alibaba/alimei/calendar/activity/MailEventDetailActivity$a$3;
.super Ljava/lang/Object;
.source "MailEventDetailActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    .line 586
    iput-object p1, p0, Lcom/alibaba/alimei/calendar/activity/MailEventDetailActivity$a$3;->b:Lcom/alibaba/alimei/calendar/activity/MailEventDetailActivity$a;

    iput-object p2, p0, Lcom/alibaba/alimei/calendar/activity/MailEventDetailActivity$a$3;->a:Lcom/alibaba/alimei/sdk/model/EventDetailModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 589
    iget-object v0, p0, Lcom/alibaba/alimei/calendar/activity/MailEventDetailActivity$a$3;->b:Lcom/alibaba/alimei/calendar/activity/MailEventDetailActivity$a;

    iget-object v0, v0, Lcom/alibaba/alimei/calendar/activity/MailEventDetailActivity$a;->a:Lcom/alibaba/alimei/calendar/activity/MailEventDetailActivity;

    invoke-static {v0}, Lcom/alibaba/alimei/calendar/activity/MailEventDetailActivity;->b(Lcom/alibaba/alimei/calendar/activity/MailEventDetailActivity;)Lrh$a;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/alimei/calendar/activity/MailEventDetailActivity$a$3;->a:Lcom/alibaba/alimei/sdk/model/EventDetailModel;

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lrh$a;->a(Lcom/alibaba/alimei/sdk/model/EventDetailModel;I)V

    .line 590
    sget v0, Laxo$i;->dt_cmail_has_accept_event:I

    invoke-static {v0}, Lcms;->a(I)V

    .line 606
    return-void
.end method
