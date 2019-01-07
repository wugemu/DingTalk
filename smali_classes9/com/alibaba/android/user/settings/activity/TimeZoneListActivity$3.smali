.class final Lcom/alibaba/android/user/settings/activity/TimeZoneListActivity$3;
.super Ljava/lang/Object;
.source "TimeZoneListActivity.java"

# interfaces
.implements Lcom/alibaba/wukong/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/user/settings/activity/TimeZoneListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/alibaba/wukong/Callback",
        "<",
        "Lcom/alibaba/wukong/settings/CloudSetting;",
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
    .line 115
    iput-object p1, p0, Lcom/alibaba/android/user/settings/activity/TimeZoneListActivity$3;->a:Lcom/alibaba/android/user/settings/activity/TimeZoneListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "s1"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 124
    iget-object v0, p0, Lcom/alibaba/android/user/settings/activity/TimeZoneListActivity$3;->a:Lcom/alibaba/android/user/settings/activity/TimeZoneListActivity;

    invoke-virtual {v0}, Lcom/alibaba/android/user/settings/activity/TimeZoneListActivity;->dismissLoadingDialog()V

    .line 125
    iget-object v0, p0, Lcom/alibaba/android/user/settings/activity/TimeZoneListActivity$3;->a:Lcom/alibaba/android/user/settings/activity/TimeZoneListActivity;

    sget v1, Lezg$l;->dt_timezone_cloudsetting_failure_title:I

    invoke-virtual {v0, v1}, Lcom/alibaba/android/user/settings/activity/TimeZoneListActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcms;->a(Ljava/lang/String;)V

    .line 126
    return-void
.end method

.method public final bridge synthetic onProgress(Ljava/lang/Object;I)V
    .locals 0

    .prologue
    .line 115
    return-void
.end method

.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 115
    .line 1118
    iget-object v0, p0, Lcom/alibaba/android/user/settings/activity/TimeZoneListActivity$3;->a:Lcom/alibaba/android/user/settings/activity/TimeZoneListActivity;

    invoke-virtual {v0}, Lcom/alibaba/android/user/settings/activity/TimeZoneListActivity;->dismissLoadingDialog()V

    .line 1119
    iget-object v0, p0, Lcom/alibaba/android/user/settings/activity/TimeZoneListActivity$3;->a:Lcom/alibaba/android/user/settings/activity/TimeZoneListActivity;

    invoke-virtual {v0}, Lcom/alibaba/android/user/settings/activity/TimeZoneListActivity;->finish()V

    .line 115
    return-void
.end method
