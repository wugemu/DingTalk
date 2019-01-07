.class final Lcom/alibaba/alimei/calendar/activity/MailEventAttendeeListActivity$1;
.super Ljava/lang/Object;
.source "MailEventAttendeeListActivity.java"

# interfaces
.implements Lxv;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/alimei/calendar/activity/MailEventAttendeeListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lxv",
        "<",
        "Ljava/util/Map",
        "<",
        "Ljava/lang/String;",
        "Lcom/alibaba/alimei/sdk/model/MailParticipantsModel;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/alimei/calendar/activity/MailEventAttendeeListActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/alimei/calendar/activity/MailEventAttendeeListActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/alimei/calendar/activity/MailEventAttendeeListActivity;

    .prologue
    .line 119
    iput-object p1, p0, Lcom/alibaba/alimei/calendar/activity/MailEventAttendeeListActivity$1;->a:Lcom/alibaba/alimei/calendar/activity/MailEventAttendeeListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onException(Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;)V
    .locals 1
    .param p1, "tr"    # Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    .prologue
    .line 134
    iget-object v0, p0, Lcom/alibaba/alimei/calendar/activity/MailEventAttendeeListActivity$1;->a:Lcom/alibaba/alimei/calendar/activity/MailEventAttendeeListActivity;

    invoke-static {v0}, Lcom/alibaba/alimei/calendar/activity/MailEventAttendeeListActivity;->b(Lcom/alibaba/alimei/calendar/activity/MailEventAttendeeListActivity;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lafg;->a(Ljava/lang/String;Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;)V

    .line 135
    return-void
.end method

.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 119
    check-cast p1, Ljava/util/Map;

    .line 1122
    iget-object v0, p0, Lcom/alibaba/alimei/calendar/activity/MailEventAttendeeListActivity$1;->a:Lcom/alibaba/alimei/calendar/activity/MailEventAttendeeListActivity;

    invoke-virtual {v0}, Lcom/alibaba/alimei/calendar/activity/MailEventAttendeeListActivity;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1126
    iget-object v0, p0, Lcom/alibaba/alimei/calendar/activity/MailEventAttendeeListActivity$1;->a:Lcom/alibaba/alimei/calendar/activity/MailEventAttendeeListActivity;

    invoke-static {v0, p1}, Lcom/alibaba/alimei/calendar/activity/MailEventAttendeeListActivity;->a(Lcom/alibaba/alimei/calendar/activity/MailEventAttendeeListActivity;Ljava/util/Map;)Ljava/util/Map;

    .line 1127
    iget-object v0, p0, Lcom/alibaba/alimei/calendar/activity/MailEventAttendeeListActivity$1;->a:Lcom/alibaba/alimei/calendar/activity/MailEventAttendeeListActivity;

    invoke-static {v0}, Lcom/alibaba/alimei/calendar/activity/MailEventAttendeeListActivity;->a(Lcom/alibaba/alimei/calendar/activity/MailEventAttendeeListActivity;)Lrf;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 1128
    iget-object v0, p0, Lcom/alibaba/alimei/calendar/activity/MailEventAttendeeListActivity$1;->a:Lcom/alibaba/alimei/calendar/activity/MailEventAttendeeListActivity;

    invoke-static {v0}, Lcom/alibaba/alimei/calendar/activity/MailEventAttendeeListActivity;->a(Lcom/alibaba/alimei/calendar/activity/MailEventAttendeeListActivity;)Lrf;

    move-result-object v0

    .line 2047
    iget-object v1, v0, Lrf;->a:Ljava/util/Map;

    if-nez v1, :cond_0

    .line 2048
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, v0, Lrf;->a:Ljava/util/Map;

    .line 2050
    :cond_0
    iget-object v1, v0, Lrf;->a:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 2052
    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 2053
    iget-object v1, v0, Lrf;->a:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 2056
    :cond_1
    invoke-virtual {v0}, Lrf;->notifyDataSetChanged()V

    .line 119
    :cond_2
    return-void
.end method
