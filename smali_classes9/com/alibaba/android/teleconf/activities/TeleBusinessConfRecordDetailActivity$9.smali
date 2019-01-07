.class final Lcom/alibaba/android/teleconf/activities/TeleBusinessConfRecordDetailActivity$9;
.super Ljava/lang/Object;
.source "TeleBusinessConfRecordDetailActivity.java"

# interfaces
.implements Lcom/alibaba/doraemon/navigator/IntentRewriter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/teleconf/activities/TeleBusinessConfRecordDetailActivity;->c(Leuz;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/teleconf/activities/TeleBusinessConfRecordDetailActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/teleconf/activities/TeleBusinessConfRecordDetailActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/teleconf/activities/TeleBusinessConfRecordDetailActivity;

    .prologue
    .line 759
    iput-object p1, p0, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfRecordDetailActivity$9;->a:Lcom/alibaba/android/teleconf/activities/TeleBusinessConfRecordDetailActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onIntentRewrite(Landroid/content/Intent;)Landroid/content/Intent;
    .locals 4
    .param p1, "intent"    # Landroid/content/Intent;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 763
    iget-object v1, p0, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfRecordDetailActivity$9;->a:Lcom/alibaba/android/teleconf/activities/TeleBusinessConfRecordDetailActivity;

    invoke-static {v1}, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfRecordDetailActivity;->m(Lcom/alibaba/android/teleconf/activities/TeleBusinessConfRecordDetailActivity;)Ljava/util/List;

    move-result-object v0

    .line 764
    .local v0, "users":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;>;"
    const-string/jumbo v1, "conf_control_mode"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 765
    const-string/jumbo v1, "org_id"

    iget-object v2, p0, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfRecordDetailActivity$9;->a:Lcom/alibaba/android/teleconf/activities/TeleBusinessConfRecordDetailActivity;

    invoke-static {v2}, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfRecordDetailActivity;->o(Lcom/alibaba/android/teleconf/activities/TeleBusinessConfRecordDetailActivity;)J

    move-result-wide v2

    invoke-virtual {p1, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 766
    const-string/jumbo v1, "conf_duration_type"

    iget-object v2, p0, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfRecordDetailActivity$9;->a:Lcom/alibaba/android/teleconf/activities/TeleBusinessConfRecordDetailActivity;

    invoke-static {v2}, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfRecordDetailActivity;->p(Lcom/alibaba/android/teleconf/activities/TeleBusinessConfRecordDetailActivity;)I

    move-result v2

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 767
    const-string/jumbo v1, "seleced_members"

    check-cast v0, Ljava/util/ArrayList;

    .end local v0    # "users":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;>;"
    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 768
    return-object p1
.end method
