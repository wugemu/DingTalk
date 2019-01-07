.class final Lcom/alibaba/android/ding/activity/DingMeetingStatusActivity$11;
.super Ljava/lang/Object;
.source "DingMeetingStatusActivity.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/ding/activity/DingMeetingStatusActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcma",
        "<",
        "Lcom/alibaba/android/ding/base/objects/ObjectDing;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/ding/activity/DingMeetingStatusActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/ding/activity/DingMeetingStatusActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/ding/activity/DingMeetingStatusActivity;

    .prologue
    .line 279
    iput-object p1, p0, Lcom/alibaba/android/ding/activity/DingMeetingStatusActivity$11;->a:Lcom/alibaba/android/ding/activity/DingMeetingStatusActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 279
    check-cast p1, Lcom/alibaba/android/ding/base/objects/ObjectDing;

    .line 1282
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingMeetingStatusActivity$11;->a:Lcom/alibaba/android/ding/activity/DingMeetingStatusActivity;

    invoke-static {v0, p1}, Lcom/alibaba/android/ding/activity/DingMeetingStatusActivity;->a(Lcom/alibaba/android/ding/activity/DingMeetingStatusActivity;Lcom/alibaba/android/ding/base/objects/ObjectDing;)Lcom/alibaba/android/ding/base/objects/ObjectDing;

    .line 1283
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingMeetingStatusActivity$11;->a:Lcom/alibaba/android/ding/activity/DingMeetingStatusActivity;

    invoke-static {v0}, Lcom/alibaba/android/ding/activity/DingMeetingStatusActivity;->f(Lcom/alibaba/android/ding/activity/DingMeetingStatusActivity;)Lcom/alibaba/android/ding/base/objects/ObjectDing;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1284
    const-string/jumbo v0, "[DingMeetingStatusPage]retrieveDing failed"

    const-string/jumbo v1, "-1"

    const-string/jumbo v2, "ding is null"

    invoke-static {v0, v1, v2}, Lbkr;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1285
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingMeetingStatusActivity$11;->a:Lcom/alibaba/android/ding/activity/DingMeetingStatusActivity;

    invoke-virtual {v0}, Lcom/alibaba/android/ding/activity/DingMeetingStatusActivity;->finish()V

    .line 1305
    :goto_0
    return-void

    .line 1288
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingMeetingStatusActivity$11;->a:Lcom/alibaba/android/ding/activity/DingMeetingStatusActivity;

    invoke-static {v0}, Lcom/alibaba/android/ding/activity/DingMeetingStatusActivity;->f(Lcom/alibaba/android/ding/activity/DingMeetingStatusActivity;)Lcom/alibaba/android/ding/base/objects/ObjectDing;

    move-result-object v0

    invoke-static {v0}, Lbkh;->o(Lcom/alibaba/android/ding/base/objects/ObjectDing;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1289
    const-string/jumbo v0, "[DingMeetingStatusPage]retrieveDing failed"

    const-string/jumbo v1, "-1"

    const-string/jumbo v2, "ding is not meeting"

    invoke-static {v0, v1, v2}, Lbkr;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1290
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingMeetingStatusActivity$11;->a:Lcom/alibaba/android/ding/activity/DingMeetingStatusActivity;

    invoke-virtual {v0}, Lcom/alibaba/android/ding/activity/DingMeetingStatusActivity;->finish()V

    goto :goto_0

    .line 1293
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingMeetingStatusActivity$11;->a:Lcom/alibaba/android/ding/activity/DingMeetingStatusActivity;

    invoke-static {v0}, Lcom/alibaba/android/ding/activity/DingMeetingStatusActivity;->f(Lcom/alibaba/android/ding/activity/DingMeetingStatusActivity;)Lcom/alibaba/android/ding/base/objects/ObjectDing;

    move-result-object v0

    .line 1824
    iget-object v0, v0, Lcom/alibaba/android/ding/base/objects/ObjectDing;->J:Lckm;

    invoke-virtual {v0}, Lckm;->a()Ljava/lang/Object;

    move-result-object v0

    .line 1293
    instance-of v0, v0, Lcom/alibaba/android/ding/base/objects/idl/DingEventsWrapperModel;

    if-nez v0, :cond_2

    .line 1294
    const-string/jumbo v0, "[DingMeetingStatusPage]retrieveDing failed"

    const-string/jumbo v1, "-1"

    const-string/jumbo v2, "eventsWrapper is null"

    invoke-static {v0, v1, v2}, Lbkr;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1295
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingMeetingStatusActivity$11;->a:Lcom/alibaba/android/ding/activity/DingMeetingStatusActivity;

    invoke-virtual {v0}, Lcom/alibaba/android/ding/activity/DingMeetingStatusActivity;->finish()V

    goto :goto_0

    .line 1298
    :cond_2
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingMeetingStatusActivity$11;->a:Lcom/alibaba/android/ding/activity/DingMeetingStatusActivity;

    invoke-static {v0}, Lcom/alibaba/android/ding/activity/DingMeetingStatusActivity;->f(Lcom/alibaba/android/ding/activity/DingMeetingStatusActivity;)Lcom/alibaba/android/ding/base/objects/ObjectDing;

    move-result-object v0

    .line 2824
    iget-object v0, v0, Lcom/alibaba/android/ding/base/objects/ObjectDing;->J:Lckm;

    invoke-virtual {v0}, Lckm;->a()Ljava/lang/Object;

    move-result-object v0

    .line 1298
    check-cast v0, Lcom/alibaba/android/ding/base/objects/idl/DingEventsWrapperModel;

    .line 1299
    iget-object v3, v0, Lcom/alibaba/android/ding/base/objects/idl/DingEventsWrapperModel;->eventModels:Ljava/util/List;

    if-eqz v3, :cond_3

    iget-object v3, v0, Lcom/alibaba/android/ding/base/objects/idl/DingEventsWrapperModel;->eventModels:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_3

    .line 1300
    iget-object v3, p0, Lcom/alibaba/android/ding/activity/DingMeetingStatusActivity$11;->a:Lcom/alibaba/android/ding/activity/DingMeetingStatusActivity;

    iget-object v0, v0, Lcom/alibaba/android/ding/base/objects/idl/DingEventsWrapperModel;->eventModels:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/ding/base/objects/idl/EventModel;

    invoke-static {v3, v0}, Lcom/alibaba/android/ding/activity/DingMeetingStatusActivity;->a(Lcom/alibaba/android/ding/activity/DingMeetingStatusActivity;Lcom/alibaba/android/ding/base/objects/idl/EventModel;)Lcom/alibaba/android/ding/base/objects/idl/EventModel;

    .line 1302
    :cond_3
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingMeetingStatusActivity$11;->a:Lcom/alibaba/android/ding/activity/DingMeetingStatusActivity;

    invoke-static {v0}, Lcom/alibaba/android/ding/activity/DingMeetingStatusActivity;->g(Lcom/alibaba/android/ding/activity/DingMeetingStatusActivity;)Lcom/alibaba/android/ding/base/objects/idl/EventModel;

    move-result-object v0

    if-nez v0, :cond_4

    .line 1303
    const-string/jumbo v0, "[DingMeetingStatusPage]retrieveDing failed"

    const-string/jumbo v1, "-1"

    const-string/jumbo v2, "main event is null"

    invoke-static {v0, v1, v2}, Lbkr;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1304
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingMeetingStatusActivity$11;->a:Lcom/alibaba/android/ding/activity/DingMeetingStatusActivity;

    invoke-virtual {v0}, Lcom/alibaba/android/ding/activity/DingMeetingStatusActivity;->finish()V

    goto/16 :goto_0

    .line 1308
    :cond_4
    instance-of v0, p1, Lcom/alibaba/android/ding/base/objects/ObjectDingSent;

    if-eqz v0, :cond_5

    .line 1309
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingMeetingStatusActivity$11;->a:Lcom/alibaba/android/ding/activity/DingMeetingStatusActivity;

    invoke-static {v0}, Lcom/alibaba/android/ding/activity/DingMeetingStatusActivity;->f(Lcom/alibaba/android/ding/activity/DingMeetingStatusActivity;)Lcom/alibaba/android/ding/base/objects/ObjectDing;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/ding/base/objects/ObjectDingSent;

    .line 1310
    iget-object v3, p0, Lcom/alibaba/android/ding/activity/DingMeetingStatusActivity$11;->a:Lcom/alibaba/android/ding/activity/DingMeetingStatusActivity;

    invoke-static {v3, v1}, Lcom/alibaba/android/ding/activity/DingMeetingStatusActivity;->a(Lcom/alibaba/android/ding/activity/DingMeetingStatusActivity;Z)Z

    .line 1311
    iget-object v3, p0, Lcom/alibaba/android/ding/activity/DingMeetingStatusActivity$11;->a:Lcom/alibaba/android/ding/activity/DingMeetingStatusActivity;

    sget-object v4, Lcom/alibaba/android/ding/base/objects/ObjectDing$SendStatus;->Sent:Lcom/alibaba/android/ding/base/objects/ObjectDing$SendStatus;

    invoke-virtual {v0}, Lcom/alibaba/android/ding/base/objects/ObjectDingSent;->G()Lcom/alibaba/android/ding/base/objects/ObjectDing$SendStatus;

    move-result-object v0

    if-ne v4, v0, :cond_6

    move v0, v1

    :goto_1
    invoke-static {v3, v0}, Lcom/alibaba/android/ding/activity/DingMeetingStatusActivity;->b(Lcom/alibaba/android/ding/activity/DingMeetingStatusActivity;Z)Z

    .line 1313
    :cond_5
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingMeetingStatusActivity$11;->a:Lcom/alibaba/android/ding/activity/DingMeetingStatusActivity;

    invoke-static {v0}, Lcom/alibaba/android/ding/activity/DingMeetingStatusActivity;->h(Lcom/alibaba/android/ding/activity/DingMeetingStatusActivity;)V

    .line 1314
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingMeetingStatusActivity$11;->a:Lcom/alibaba/android/ding/activity/DingMeetingStatusActivity;

    invoke-static {v0}, Lcom/alibaba/android/ding/activity/DingMeetingStatusActivity;->i(Lcom/alibaba/android/ding/activity/DingMeetingStatusActivity;)V

    .line 1315
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingMeetingStatusActivity$11;->a:Lcom/alibaba/android/ding/activity/DingMeetingStatusActivity;

    invoke-static {v0}, Lcom/alibaba/android/ding/activity/DingMeetingStatusActivity;->j(Lcom/alibaba/android/ding/activity/DingMeetingStatusActivity;)V

    goto/16 :goto_0

    :cond_6
    move v0, v2

    .line 1311
    goto :goto_1
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    .prologue
    .line 324
    const-string/jumbo v0, "[DingMeetingStatusPage]retrieveDing failed"

    invoke-static {v0, p1, p2}, Lbkr;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 325
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingMeetingStatusActivity$11;->a:Lcom/alibaba/android/ding/activity/DingMeetingStatusActivity;

    invoke-virtual {v0}, Lcom/alibaba/android/ding/activity/DingMeetingStatusActivity;->finish()V

    .line 326
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "id"    # Ljava/lang/Object;
    .param p2, "progress"    # I

    .prologue
    .line 320
    return-void
.end method
