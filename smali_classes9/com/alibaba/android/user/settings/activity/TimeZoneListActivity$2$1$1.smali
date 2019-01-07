.class final Lcom/alibaba/android/user/settings/activity/TimeZoneListActivity$2$1$1;
.super Ljava/lang/Object;
.source "TimeZoneListActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/user/settings/activity/TimeZoneListActivity$2$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/user/settings/activity/TimeZoneListActivity$2$1;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/settings/activity/TimeZoneListActivity$2$1;)V
    .locals 0
    .param p1, "this$2"    # Lcom/alibaba/android/user/settings/activity/TimeZoneListActivity$2$1;

    .prologue
    .line 84
    iput-object p1, p0, Lcom/alibaba/android/user/settings/activity/TimeZoneListActivity$2$1$1;->a:Lcom/alibaba/android/user/settings/activity/TimeZoneListActivity$2$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 87
    iget-object v0, p0, Lcom/alibaba/android/user/settings/activity/TimeZoneListActivity$2$1$1;->a:Lcom/alibaba/android/user/settings/activity/TimeZoneListActivity$2$1;

    iget-object v0, v0, Lcom/alibaba/android/user/settings/activity/TimeZoneListActivity$2$1;->b:Lcom/alibaba/android/user/settings/activity/TimeZoneListActivity$2;

    iget-object v0, v0, Lcom/alibaba/android/user/settings/activity/TimeZoneListActivity$2;->a:Lcom/alibaba/android/user/settings/activity/TimeZoneListActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/settings/activity/TimeZoneListActivity;->b(Lcom/alibaba/android/user/settings/activity/TimeZoneListActivity;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alibaba/android/user/settings/activity/TimeZoneListActivity$2$1$1;->a:Lcom/alibaba/android/user/settings/activity/TimeZoneListActivity$2$1;

    iget-object v0, v0, Lcom/alibaba/android/user/settings/activity/TimeZoneListActivity$2$1;->b:Lcom/alibaba/android/user/settings/activity/TimeZoneListActivity$2;

    iget-object v0, v0, Lcom/alibaba/android/user/settings/activity/TimeZoneListActivity$2;->a:Lcom/alibaba/android/user/settings/activity/TimeZoneListActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/settings/activity/TimeZoneListActivity;->b(Lcom/alibaba/android/user/settings/activity/TimeZoneListActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 88
    iget-object v0, p0, Lcom/alibaba/android/user/settings/activity/TimeZoneListActivity$2$1$1;->a:Lcom/alibaba/android/user/settings/activity/TimeZoneListActivity$2$1;

    iget-object v0, v0, Lcom/alibaba/android/user/settings/activity/TimeZoneListActivity$2$1;->b:Lcom/alibaba/android/user/settings/activity/TimeZoneListActivity$2;

    iget-object v0, v0, Lcom/alibaba/android/user/settings/activity/TimeZoneListActivity$2;->a:Lcom/alibaba/android/user/settings/activity/TimeZoneListActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/settings/activity/TimeZoneListActivity;->c(Lcom/alibaba/android/user/settings/activity/TimeZoneListActivity;)Lcom/alibaba/android/user/settings/activity/TimeZoneListActivity$a;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/user/settings/activity/TimeZoneListActivity$2$1$1;->a:Lcom/alibaba/android/user/settings/activity/TimeZoneListActivity$2$1;

    iget-object v1, v1, Lcom/alibaba/android/user/settings/activity/TimeZoneListActivity$2$1;->b:Lcom/alibaba/android/user/settings/activity/TimeZoneListActivity$2;

    iget-object v1, v1, Lcom/alibaba/android/user/settings/activity/TimeZoneListActivity$2;->a:Lcom/alibaba/android/user/settings/activity/TimeZoneListActivity;

    invoke-static {v1}, Lcom/alibaba/android/user/settings/activity/TimeZoneListActivity;->b(Lcom/alibaba/android/user/settings/activity/TimeZoneListActivity;)Ljava/util/List;

    move-result-object v1

    .line 1140
    iput-object v1, v0, Lcom/alibaba/android/user/settings/activity/TimeZoneListActivity$a;->a:Ljava/util/List;

    .line 1141
    invoke-virtual {v0}, Lcom/alibaba/android/user/settings/activity/TimeZoneListActivity$a;->notifyDataSetChanged()V

    .line 89
    iget-object v0, p0, Lcom/alibaba/android/user/settings/activity/TimeZoneListActivity$2$1$1;->a:Lcom/alibaba/android/user/settings/activity/TimeZoneListActivity$2$1;

    iget-object v0, v0, Lcom/alibaba/android/user/settings/activity/TimeZoneListActivity$2$1;->b:Lcom/alibaba/android/user/settings/activity/TimeZoneListActivity$2;

    iget-object v0, v0, Lcom/alibaba/android/user/settings/activity/TimeZoneListActivity$2;->a:Lcom/alibaba/android/user/settings/activity/TimeZoneListActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/settings/activity/TimeZoneListActivity;->d(Lcom/alibaba/android/user/settings/activity/TimeZoneListActivity;)Landroid/widget/ListView;

    move-result-object v1

    iget-object v0, p0, Lcom/alibaba/android/user/settings/activity/TimeZoneListActivity$2$1$1;->a:Lcom/alibaba/android/user/settings/activity/TimeZoneListActivity$2$1;

    iget-object v0, v0, Lcom/alibaba/android/user/settings/activity/TimeZoneListActivity$2$1;->b:Lcom/alibaba/android/user/settings/activity/TimeZoneListActivity$2;

    iget-object v0, v0, Lcom/alibaba/android/user/settings/activity/TimeZoneListActivity$2;->a:Lcom/alibaba/android/user/settings/activity/TimeZoneListActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/settings/activity/TimeZoneListActivity;->c(Lcom/alibaba/android/user/settings/activity/TimeZoneListActivity;)Lcom/alibaba/android/user/settings/activity/TimeZoneListActivity$a;

    move-result-object v0

    iget-object v2, p0, Lcom/alibaba/android/user/settings/activity/TimeZoneListActivity$2$1$1;->a:Lcom/alibaba/android/user/settings/activity/TimeZoneListActivity$2$1;

    iget-object v2, v2, Lcom/alibaba/android/user/settings/activity/TimeZoneListActivity$2$1;->b:Lcom/alibaba/android/user/settings/activity/TimeZoneListActivity$2;

    iget-object v2, v2, Lcom/alibaba/android/user/settings/activity/TimeZoneListActivity$2;->a:Lcom/alibaba/android/user/settings/activity/TimeZoneListActivity;

    invoke-static {v2}, Lcom/alibaba/android/user/settings/activity/TimeZoneListActivity;->a(Lcom/alibaba/android/user/settings/activity/TimeZoneListActivity;)Ljava/lang/String;

    move-result-object v2

    .line 1169
    invoke-static {v2}, Lcpt;->c(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, v0, Lcom/alibaba/android/user/settings/activity/TimeZoneListActivity$a;->a:Ljava/util/List;

    if-nez v3, :cond_2

    .line 1170
    :cond_0
    const/4 v0, 0x0

    .line 89
    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setSelection(I)V

    .line 91
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/user/settings/activity/TimeZoneListActivity$2$1$1;->a:Lcom/alibaba/android/user/settings/activity/TimeZoneListActivity$2$1;

    iget-object v0, v0, Lcom/alibaba/android/user/settings/activity/TimeZoneListActivity$2$1;->b:Lcom/alibaba/android/user/settings/activity/TimeZoneListActivity$2;

    iget-object v0, v0, Lcom/alibaba/android/user/settings/activity/TimeZoneListActivity$2;->a:Lcom/alibaba/android/user/settings/activity/TimeZoneListActivity;

    invoke-virtual {v0}, Lcom/alibaba/android/user/settings/activity/TimeZoneListActivity;->dismissLoadingDialog()V

    .line 92
    return-void

    .line 1172
    :cond_2
    iget-object v0, v0, Lcom/alibaba/android/user/settings/activity/TimeZoneListActivity$a;->a:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    goto :goto_0
.end method
