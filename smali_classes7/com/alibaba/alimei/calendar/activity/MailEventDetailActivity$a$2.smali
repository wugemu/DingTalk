.class final Lcom/alibaba/alimei/calendar/activity/MailEventDetailActivity$a$2;
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
.field final synthetic a:Lcom/alibaba/alimei/calendar/activity/MailEventDetailActivity$a;


# direct methods
.method constructor <init>(Lcom/alibaba/alimei/calendar/activity/MailEventDetailActivity$a;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/alimei/calendar/activity/MailEventDetailActivity$a;

    .prologue
    .line 493
    iput-object p1, p0, Lcom/alibaba/alimei/calendar/activity/MailEventDetailActivity$a$2;->a:Lcom/alibaba/alimei/calendar/activity/MailEventDetailActivity$a;

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
    .line 496
    iget-object v0, p0, Lcom/alibaba/alimei/calendar/activity/MailEventDetailActivity$a$2;->a:Lcom/alibaba/alimei/calendar/activity/MailEventDetailActivity$a;

    iget-object v0, v0, Lcom/alibaba/alimei/calendar/activity/MailEventDetailActivity$a;->a:Lcom/alibaba/alimei/calendar/activity/MailEventDetailActivity;

    invoke-static {v0}, Lcom/alibaba/alimei/calendar/activity/MailEventDetailActivity;->b(Lcom/alibaba/alimei/calendar/activity/MailEventDetailActivity;)Lrh$a;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/alimei/calendar/activity/MailEventDetailActivity$a$2;->a:Lcom/alibaba/alimei/calendar/activity/MailEventDetailActivity$a;

    iget-object v1, v1, Lcom/alibaba/alimei/calendar/activity/MailEventDetailActivity$a;->a:Lcom/alibaba/alimei/calendar/activity/MailEventDetailActivity;

    invoke-interface {v0, v1}, Lrh$a;->a(Landroid/app/Activity;)V

    .line 497
    return-void
.end method
