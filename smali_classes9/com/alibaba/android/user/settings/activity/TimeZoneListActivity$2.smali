.class final Lcom/alibaba/android/user/settings/activity/TimeZoneListActivity$2;
.super Ljava/lang/Object;
.source "TimeZoneListActivity.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/user/settings/activity/TimeZoneListActivity;->onCreate(Landroid/os/Bundle;)V
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
        "Lcom/alibaba/android/user/model/TimezoneInfosObject;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/user/settings/activity/TimeZoneListActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/settings/activity/TimeZoneListActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/user/settings/activity/TimeZoneListActivity;

    .prologue
    .line 76
    iput-object p1, p0, Lcom/alibaba/android/user/settings/activity/TimeZoneListActivity$2;->a:Lcom/alibaba/android/user/settings/activity/TimeZoneListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 76
    check-cast p1, Lcom/alibaba/android/user/model/TimezoneInfosObject;

    .line 1079
    const-class v0, Lcom/alibaba/android/user/impl/AccountInterfaceImpl;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcms;->b(Ljava/lang/String;)Lcom/alibaba/doraemon/threadpool/Thread;

    move-result-object v0

    new-instance v1, Lcom/alibaba/android/user/settings/activity/TimeZoneListActivity$2$1;

    invoke-direct {v1, p0, p1}, Lcom/alibaba/android/user/settings/activity/TimeZoneListActivity$2$1;-><init>(Lcom/alibaba/android/user/settings/activity/TimeZoneListActivity$2;Lcom/alibaba/android/user/model/TimezoneInfosObject;)V

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/threadpool/Thread;->start(Ljava/lang/Runnable;)V

    .line 76
    return-void
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 106
    invoke-static {}, Lcom/alibaba/android/user/settings/activity/TimeZoneListActivity;->b()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "get getTimeZoneData err %s %s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    invoke-static {v0, v1, v2}, Lfxo;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 107
    iget-object v0, p0, Lcom/alibaba/android/user/settings/activity/TimeZoneListActivity$2;->a:Lcom/alibaba/android/user/settings/activity/TimeZoneListActivity;

    invoke-virtual {v0}, Lcom/alibaba/android/user/settings/activity/TimeZoneListActivity;->dismissLoadingDialog()V

    .line 108
    iget-object v0, p0, Lcom/alibaba/android/user/settings/activity/TimeZoneListActivity$2;->a:Lcom/alibaba/android/user/settings/activity/TimeZoneListActivity;

    sget v1, Lezg$l;->dt_timezone_download_failure_title:I

    invoke-virtual {v0, v1}, Lcom/alibaba/android/user/settings/activity/TimeZoneListActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcms;->a(Ljava/lang/String;)V

    .line 109
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "id"    # Ljava/lang/Object;
    .param p2, "progress"    # I

    .prologue
    .line 102
    return-void
.end method
