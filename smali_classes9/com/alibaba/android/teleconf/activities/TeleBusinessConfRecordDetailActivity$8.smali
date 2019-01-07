.class final Lcom/alibaba/android/teleconf/activities/TeleBusinessConfRecordDetailActivity$8;
.super Ljava/lang/Object;
.source "TeleBusinessConfRecordDetailActivity.java"

# interfaces
.implements Lcom/alibaba/doraemon/navigator/IntentRewriter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/teleconf/activities/TeleBusinessConfRecordDetailActivity;->b(Leuz;)V
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
    .line 735
    iput-object p1, p0, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfRecordDetailActivity$8;->a:Lcom/alibaba/android/teleconf/activities/TeleBusinessConfRecordDetailActivity;

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
    .line 739
    iget-object v1, p0, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfRecordDetailActivity$8;->a:Lcom/alibaba/android/teleconf/activities/TeleBusinessConfRecordDetailActivity;

    invoke-static {v1}, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfRecordDetailActivity;->m(Lcom/alibaba/android/teleconf/activities/TeleBusinessConfRecordDetailActivity;)Ljava/util/List;

    move-result-object v0

    .line 740
    .local v0, "users":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;>;"
    const-string/jumbo v1, "conf_control_mode"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 741
    const-string/jumbo v1, "conf_type"

    iget-object v2, p0, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfRecordDetailActivity$8;->a:Lcom/alibaba/android/teleconf/activities/TeleBusinessConfRecordDetailActivity;

    invoke-static {v2}, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfRecordDetailActivity;->n(Lcom/alibaba/android/teleconf/activities/TeleBusinessConfRecordDetailActivity;)Lcom/alibaba/android/teleconf/data/ApmtBaseObject$ApmtConfType;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 742
    const-string/jumbo v1, "title"

    iget-object v2, p0, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfRecordDetailActivity$8;->a:Lcom/alibaba/android/teleconf/activities/TeleBusinessConfRecordDetailActivity;

    sget v3, Leuj$l;->conf_txt_video_conference_create_title:I

    invoke-virtual {v2, v3}, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfRecordDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 743
    const-string/jumbo v1, "seleced_members"

    check-cast v0, Ljava/util/ArrayList;

    .end local v0    # "users":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;>;"
    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 744
    return-object p1
.end method
