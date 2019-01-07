.class final Lcom/alibaba/android/dingtalkim/activities/AnnounceEditActivity$2;
.super Ljava/lang/Object;
.source "AnnounceEditActivity.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/dingtalkim/activities/AnnounceEditActivity;
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
        "Ldtn;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts$DING_REMIND_TYPE_ENUM;

.field final synthetic d:Lcom/alibaba/android/dingtalkim/activities/AnnounceEditActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalkim/activities/AnnounceEditActivity;ZLjava/lang/String;Lcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts$DING_REMIND_TYPE_ENUM;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalkim/activities/AnnounceEditActivity;

    .prologue
    .line 323
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/activities/AnnounceEditActivity$2;->d:Lcom/alibaba/android/dingtalkim/activities/AnnounceEditActivity;

    iput-boolean p2, p0, Lcom/alibaba/android/dingtalkim/activities/AnnounceEditActivity$2;->a:Z

    iput-object p3, p0, Lcom/alibaba/android/dingtalkim/activities/AnnounceEditActivity$2;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/alibaba/android/dingtalkim/activities/AnnounceEditActivity$2;->c:Lcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts$DING_REMIND_TYPE_ENUM;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 7

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 323
    check-cast p1, Ldtn;

    .line 1327
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/AnnounceEditActivity$2;->d:Lcom/alibaba/android/dingtalkim/activities/AnnounceEditActivity;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkim/activities/AnnounceEditActivity;->setResult(I)V

    .line 1329
    iget-boolean v0, p0, Lcom/alibaba/android/dingtalkim/activities/AnnounceEditActivity$2;->a:Z

    if-nez v0, :cond_0

    .line 1330
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/AnnounceEditActivity$2;->d:Lcom/alibaba/android/dingtalkim/activities/AnnounceEditActivity;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkim/activities/AnnounceEditActivity;->dismissLoadingDialog()V

    .line 1331
    const-string/jumbo v0, "chat_setting_announce_success_withoutding"

    invoke-static {v0}, Lcps;->b(Ljava/lang/String;)V

    .line 1332
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/AnnounceEditActivity$2;->d:Lcom/alibaba/android/dingtalkim/activities/AnnounceEditActivity;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkim/activities/AnnounceEditActivity;->finish()V

    .line 1340
    :goto_0
    return-void

    .line 1335
    :cond_0
    if-eqz p1, :cond_1

    iget-object v0, p1, Ldtn;->c:Ljava/lang/Long;

    if-nez v0, :cond_2

    .line 1336
    :cond_1
    const-string/jumbo v0, "im"

    const-string/jumbo v1, "[sendAnnounce] invalid sendResult"

    invoke-static {v0, v1}, Lcpv;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 1337
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/AnnounceEditActivity$2;->d:Lcom/alibaba/android/dingtalkim/activities/AnnounceEditActivity;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkim/activities/AnnounceEditActivity;->dismissLoadingDialog()V

    .line 1338
    const-string/jumbo v0, "chat_setting_announce_fail"

    invoke-static {v0}, Lcps;->b(Ljava/lang/String;)V

    .line 1339
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/AnnounceEditActivity$2;->d:Lcom/alibaba/android/dingtalkim/activities/AnnounceEditActivity;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkim/activities/AnnounceEditActivity;->finish()V

    goto :goto_0

    .line 1342
    :cond_2
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/AnnounceEditActivity$2;->d:Lcom/alibaba/android/dingtalkim/activities/AnnounceEditActivity;

    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/AnnounceEditActivity$2;->b:Ljava/lang/String;

    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/AnnounceEditActivity$2;->d:Lcom/alibaba/android/dingtalkim/activities/AnnounceEditActivity;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/activities/AnnounceEditActivity;->f(Lcom/alibaba/android/dingtalkim/activities/AnnounceEditActivity;)Ljava/lang/String;

    move-result-object v3

    iget-object v0, p1, Ldtn;->c:Ljava/lang/Long;

    .line 2044
    const-wide/16 v4, 0x0

    invoke-static {v0, v4, v5}, Lcoc;->a(Ljava/lang/Long;J)J

    move-result-wide v4

    .line 1342
    iget-object v6, p0, Lcom/alibaba/android/dingtalkim/activities/AnnounceEditActivity$2;->c:Lcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts$DING_REMIND_TYPE_ENUM;

    invoke-static/range {v1 .. v6}, Lcom/alibaba/android/dingtalkim/activities/AnnounceEditActivity;->a(Lcom/alibaba/android/dingtalkim/activities/AnnounceEditActivity;Ljava/lang/String;Ljava/lang/String;JLcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts$DING_REMIND_TYPE_ENUM;)V

    goto :goto_0
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    .prologue
    .line 351
    invoke-static {p1, p2}, Lcms;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 352
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/AnnounceEditActivity$2;->d:Lcom/alibaba/android/dingtalkim/activities/AnnounceEditActivity;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkim/activities/AnnounceEditActivity;->dismissLoadingDialog()V

    .line 353
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "id"    # Ljava/lang/Object;
    .param p2, "progress"    # I

    .prologue
    .line 347
    return-void
.end method
