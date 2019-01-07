.class final Lcom/alibaba/android/teleconf/activities/TeleBusinessConfMainActivity$10$1;
.super Ljava/lang/Object;
.source "TeleBusinessConfMainActivity.java"

# interfaces
.implements Lcom/alibaba/doraemon/navigator/IntentRewriter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/teleconf/activities/TeleBusinessConfMainActivity$10;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/teleconf/data/ApmtConfRecordItem;

.field final synthetic b:Lcom/alibaba/android/teleconf/activities/TeleBusinessConfMainActivity$10;


# direct methods
.method constructor <init>(Lcom/alibaba/android/teleconf/activities/TeleBusinessConfMainActivity$10;Lcom/alibaba/android/teleconf/data/ApmtConfRecordItem;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/android/teleconf/activities/TeleBusinessConfMainActivity$10;

    .prologue
    .line 371
    iput-object p1, p0, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfMainActivity$10$1;->b:Lcom/alibaba/android/teleconf/activities/TeleBusinessConfMainActivity$10;

    iput-object p2, p0, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfMainActivity$10$1;->a:Lcom/alibaba/android/teleconf/data/ApmtConfRecordItem;

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
    .line 374
    const-string/jumbo v0, "conf_control_mode"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 375
    const-string/jumbo v0, "conf_reservation_id"

    iget-object v1, p0, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfMainActivity$10$1;->a:Lcom/alibaba/android/teleconf/data/ApmtConfRecordItem;

    iget-object v1, v1, Lcom/alibaba/android/teleconf/data/ApmtConfRecordItem;->f:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 376
    const-string/jumbo v0, "title"

    iget-object v1, p0, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfMainActivity$10$1;->b:Lcom/alibaba/android/teleconf/activities/TeleBusinessConfMainActivity$10;

    iget-object v1, v1, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfMainActivity$10;->a:Lcom/alibaba/android/teleconf/activities/TeleBusinessConfMainActivity;

    sget v2, Leuj$l;->conf_txt_conference_manage_title:I

    invoke-virtual {v1, v2}, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfMainActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 377
    const-string/jumbo v0, "org_id"

    iget-object v1, p0, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfMainActivity$10$1;->b:Lcom/alibaba/android/teleconf/activities/TeleBusinessConfMainActivity$10;

    iget-object v1, v1, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfMainActivity$10;->a:Lcom/alibaba/android/teleconf/activities/TeleBusinessConfMainActivity;

    invoke-static {v1}, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfMainActivity;->d(Lcom/alibaba/android/teleconf/activities/TeleBusinessConfMainActivity;)J

    move-result-wide v2

    invoke-virtual {p1, v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 378
    return-object p1
.end method
