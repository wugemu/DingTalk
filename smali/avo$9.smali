.class final Lavo$9;
.super Ljava/lang/Object;
.source "CalendarEventUtil.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lavo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Lcom/alibaba/android/dingtalkbase/tools/DingtalkMenuAdapter;

.field final synthetic c:Landroid/app/Activity;

.field final synthetic d:Lcom/alibaba/dingtalk/cmailbase/calendar/EventInstanceObject;


# direct methods
.method constructor <init>(Ljava/util/List;Lcom/alibaba/android/dingtalkbase/tools/DingtalkMenuAdapter;Landroid/app/Activity;Lcom/alibaba/dingtalk/cmailbase/calendar/EventInstanceObject;)V
    .locals 0

    .prologue
    .line 376
    iput-object p1, p0, Lavo$9;->a:Ljava/util/List;

    iput-object p2, p0, Lavo$9;->b:Lcom/alibaba/android/dingtalkbase/tools/DingtalkMenuAdapter;

    iput-object p3, p0, Lavo$9;->c:Landroid/app/Activity;

    iput-object p4, p0, Lavo$9;->d:Lcom/alibaba/dingtalk/cmailbase/calendar/EventInstanceObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 379
    if-ltz p2, :cond_0

    iget-object v1, p0, Lavo$9;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lt p2, v1, :cond_1

    .line 392
    :cond_0
    :goto_0
    return-void

    .line 382
    :cond_1
    iget-object v1, p0, Lavo$9;->b:Lcom/alibaba/android/dingtalkbase/tools/DingtalkMenuAdapter;

    invoke-virtual {v1, p2}, Lcom/alibaba/android/dingtalkbase/tools/DingtalkMenuAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Lcng;

    if-eqz v1, :cond_0

    .line 386
    iget-object v1, p0, Lavo$9;->b:Lcom/alibaba/android/dingtalkbase/tools/DingtalkMenuAdapter;

    invoke-virtual {v1, p2}, Lcom/alibaba/android/dingtalkbase/tools/DingtalkMenuAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcng;

    .line 387
    .local v0, "menuObject":Lcng;
    iget v1, v0, Lcng;->a:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    .line 388
    iget-object v1, p0, Lavo$9;->c:Landroid/app/Activity;

    iget-object v2, p0, Lavo$9;->d:Lcom/alibaba/dingtalk/cmailbase/calendar/EventInstanceObject;

    sget-object v3, Lcom/alibaba/dingtalk/cmailbase/calendar/MailCalendarInterface$DELETE_MODE;->DELETE_SELECTED:Lcom/alibaba/dingtalk/cmailbase/calendar/MailCalendarInterface$DELETE_MODE;

    invoke-static {v1, v2, v3}, Lavo;->a(Landroid/app/Activity;Lcom/alibaba/dingtalk/cmailbase/calendar/EventInstanceObject;Lcom/alibaba/dingtalk/cmailbase/calendar/MailCalendarInterface$DELETE_MODE;)V

    goto :goto_0

    .line 389
    :cond_2
    iget v1, v0, Lcng;->a:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 390
    iget-object v1, p0, Lavo$9;->c:Landroid/app/Activity;

    iget-object v2, p0, Lavo$9;->d:Lcom/alibaba/dingtalk/cmailbase/calendar/EventInstanceObject;

    sget-object v3, Lcom/alibaba/dingtalk/cmailbase/calendar/MailCalendarInterface$DELETE_MODE;->DELETE_ALL:Lcom/alibaba/dingtalk/cmailbase/calendar/MailCalendarInterface$DELETE_MODE;

    invoke-static {v1, v2, v3}, Lavo;->a(Landroid/app/Activity;Lcom/alibaba/dingtalk/cmailbase/calendar/EventInstanceObject;Lcom/alibaba/dingtalk/cmailbase/calendar/MailCalendarInterface$DELETE_MODE;)V

    goto :goto_0
.end method
