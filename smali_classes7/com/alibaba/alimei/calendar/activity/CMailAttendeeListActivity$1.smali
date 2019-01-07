.class final Lcom/alibaba/alimei/calendar/activity/CMailAttendeeListActivity$1;
.super Ljava/lang/Object;
.source "CMailAttendeeListActivity.java"

# interfaces
.implements Lxv;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/alimei/calendar/activity/CMailAttendeeListActivity;
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
.field final synthetic a:Lcom/alibaba/alimei/calendar/activity/CMailAttendeeListActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/alimei/calendar/activity/CMailAttendeeListActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/alimei/calendar/activity/CMailAttendeeListActivity;

    .prologue
    .line 207
    iput-object p1, p0, Lcom/alibaba/alimei/calendar/activity/CMailAttendeeListActivity$1;->a:Lcom/alibaba/alimei/calendar/activity/CMailAttendeeListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onException(Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;)V
    .locals 1
    .param p1, "tr"    # Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    .prologue
    .line 234
    const-string/jumbo v0, "CMailAttendeeListActivity"

    invoke-static {v0, p1}, Lafg;->a(Ljava/lang/String;Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;)V

    .line 235
    return-void
.end method

.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 207
    check-cast p1, Ljava/util/Map;

    .line 1210
    iget-object v0, p0, Lcom/alibaba/alimei/calendar/activity/CMailAttendeeListActivity$1;->a:Lcom/alibaba/alimei/calendar/activity/CMailAttendeeListActivity;

    invoke-virtual {v0}, Lcom/alibaba/alimei/calendar/activity/CMailAttendeeListActivity;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_3

    .line 1214
    iget-object v0, p0, Lcom/alibaba/alimei/calendar/activity/CMailAttendeeListActivity$1;->a:Lcom/alibaba/alimei/calendar/activity/CMailAttendeeListActivity;

    invoke-static {v0, p1}, Lcom/alibaba/alimei/calendar/activity/CMailAttendeeListActivity;->a(Lcom/alibaba/alimei/calendar/activity/CMailAttendeeListActivity;Ljava/util/Map;)Ljava/util/Map;

    .line 1215
    iget-object v0, p0, Lcom/alibaba/alimei/calendar/activity/CMailAttendeeListActivity$1;->a:Lcom/alibaba/alimei/calendar/activity/CMailAttendeeListActivity;

    invoke-static {v0}, Lcom/alibaba/alimei/calendar/activity/CMailAttendeeListActivity;->a(Lcom/alibaba/alimei/calendar/activity/CMailAttendeeListActivity;)Lcom/alibaba/alimei/calendar/fragment/CMailEventAttendeeFragment;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1216
    iget-object v0, p0, Lcom/alibaba/alimei/calendar/activity/CMailAttendeeListActivity$1;->a:Lcom/alibaba/alimei/calendar/activity/CMailAttendeeListActivity;

    invoke-static {v0}, Lcom/alibaba/alimei/calendar/activity/CMailAttendeeListActivity;->a(Lcom/alibaba/alimei/calendar/activity/CMailAttendeeListActivity;)Lcom/alibaba/alimei/calendar/fragment/CMailEventAttendeeFragment;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/alimei/calendar/activity/CMailAttendeeListActivity$1;->a:Lcom/alibaba/alimei/calendar/activity/CMailAttendeeListActivity;

    invoke-static {v1}, Lcom/alibaba/alimei/calendar/activity/CMailAttendeeListActivity;->b(Lcom/alibaba/alimei/calendar/activity/CMailAttendeeListActivity;)Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/alimei/calendar/fragment/CMailEventAttendeeFragment;->a(Ljava/util/Map;)V

    .line 1219
    :cond_0
    iget-object v0, p0, Lcom/alibaba/alimei/calendar/activity/CMailAttendeeListActivity$1;->a:Lcom/alibaba/alimei/calendar/activity/CMailAttendeeListActivity;

    invoke-static {v0}, Lcom/alibaba/alimei/calendar/activity/CMailAttendeeListActivity;->c(Lcom/alibaba/alimei/calendar/activity/CMailAttendeeListActivity;)Lcom/alibaba/alimei/calendar/fragment/CMailEventAttendeeFragment;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1220
    iget-object v0, p0, Lcom/alibaba/alimei/calendar/activity/CMailAttendeeListActivity$1;->a:Lcom/alibaba/alimei/calendar/activity/CMailAttendeeListActivity;

    invoke-static {v0}, Lcom/alibaba/alimei/calendar/activity/CMailAttendeeListActivity;->c(Lcom/alibaba/alimei/calendar/activity/CMailAttendeeListActivity;)Lcom/alibaba/alimei/calendar/fragment/CMailEventAttendeeFragment;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/alimei/calendar/activity/CMailAttendeeListActivity$1;->a:Lcom/alibaba/alimei/calendar/activity/CMailAttendeeListActivity;

    invoke-static {v1}, Lcom/alibaba/alimei/calendar/activity/CMailAttendeeListActivity;->b(Lcom/alibaba/alimei/calendar/activity/CMailAttendeeListActivity;)Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/alimei/calendar/fragment/CMailEventAttendeeFragment;->a(Ljava/util/Map;)V

    .line 1223
    :cond_1
    iget-object v0, p0, Lcom/alibaba/alimei/calendar/activity/CMailAttendeeListActivity$1;->a:Lcom/alibaba/alimei/calendar/activity/CMailAttendeeListActivity;

    invoke-static {v0}, Lcom/alibaba/alimei/calendar/activity/CMailAttendeeListActivity;->d(Lcom/alibaba/alimei/calendar/activity/CMailAttendeeListActivity;)Lcom/alibaba/alimei/calendar/fragment/CMailEventAttendeeFragment;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 1224
    iget-object v0, p0, Lcom/alibaba/alimei/calendar/activity/CMailAttendeeListActivity$1;->a:Lcom/alibaba/alimei/calendar/activity/CMailAttendeeListActivity;

    invoke-static {v0}, Lcom/alibaba/alimei/calendar/activity/CMailAttendeeListActivity;->d(Lcom/alibaba/alimei/calendar/activity/CMailAttendeeListActivity;)Lcom/alibaba/alimei/calendar/fragment/CMailEventAttendeeFragment;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/alimei/calendar/activity/CMailAttendeeListActivity$1;->a:Lcom/alibaba/alimei/calendar/activity/CMailAttendeeListActivity;

    invoke-static {v1}, Lcom/alibaba/alimei/calendar/activity/CMailAttendeeListActivity;->b(Lcom/alibaba/alimei/calendar/activity/CMailAttendeeListActivity;)Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/alimei/calendar/fragment/CMailEventAttendeeFragment;->a(Ljava/util/Map;)V

    .line 1227
    :cond_2
    iget-object v0, p0, Lcom/alibaba/alimei/calendar/activity/CMailAttendeeListActivity$1;->a:Lcom/alibaba/alimei/calendar/activity/CMailAttendeeListActivity;

    invoke-static {v0}, Lcom/alibaba/alimei/calendar/activity/CMailAttendeeListActivity;->e(Lcom/alibaba/alimei/calendar/activity/CMailAttendeeListActivity;)Lcom/alibaba/alimei/calendar/fragment/CMailEventAttendeeFragment;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 1228
    iget-object v0, p0, Lcom/alibaba/alimei/calendar/activity/CMailAttendeeListActivity$1;->a:Lcom/alibaba/alimei/calendar/activity/CMailAttendeeListActivity;

    invoke-static {v0}, Lcom/alibaba/alimei/calendar/activity/CMailAttendeeListActivity;->e(Lcom/alibaba/alimei/calendar/activity/CMailAttendeeListActivity;)Lcom/alibaba/alimei/calendar/fragment/CMailEventAttendeeFragment;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/alimei/calendar/activity/CMailAttendeeListActivity$1;->a:Lcom/alibaba/alimei/calendar/activity/CMailAttendeeListActivity;

    invoke-static {v1}, Lcom/alibaba/alimei/calendar/activity/CMailAttendeeListActivity;->b(Lcom/alibaba/alimei/calendar/activity/CMailAttendeeListActivity;)Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/alimei/calendar/fragment/CMailEventAttendeeFragment;->a(Ljava/util/Map;)V

    .line 207
    :cond_3
    return-void
.end method
