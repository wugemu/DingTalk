.class final Lry$4;
.super Ljava/lang/Object;
.source "ChoosePeopleFromMailHelper.java"

# interfaces
.implements Lcom/alibaba/doraemon/navigator/IntentRewriter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/ArrayList;

.field final synthetic b:I

.field final synthetic c:Ljava/util/ArrayList;

.field final synthetic d:Lry;


# direct methods
.method constructor <init>(Lry;Ljava/util/ArrayList;ILjava/util/ArrayList;)V
    .locals 0
    .param p1, "this$0"    # Lry;

    .prologue
    .line 235
    iput-object p1, p0, Lry$4;->d:Lry;

    iput-object p2, p0, Lry$4;->a:Ljava/util/ArrayList;

    iput p3, p0, Lry$4;->b:I

    iput-object p4, p0, Lry$4;->c:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onIntentRewrite(Landroid/content/Intent;)Landroid/content/Intent;
    .locals 4
    .param p1, "intent"    # Landroid/content/Intent;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 238
    const-string/jumbo v1, "seleced_members"

    iget-object v2, p0, Lry$4;->a:Ljava/util/ArrayList;

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 239
    iget v1, p0, Lry$4;->b:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 240
    const-string/jumbo v1, "count_limit"

    const/16 v2, 0x8

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 241
    const-string/jumbo v1, "count_limit_tips"

    sget v2, Laxo$i;->conference_choose_limit:I

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 242
    const-string/jumbo v1, "activity_identify"

    const-string/jumbo v2, "mail_participant_call"

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 244
    iget-object v1, p0, Lry$4;->d:Lry;

    invoke-static {v1}, Lry;->c(Lry;)Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    move-result-object v1

    sget v2, Laxo$i;->mail_call_title:I

    invoke-virtual {v1, v2}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 245
    .local v0, "callTitle":Ljava/lang/String;
    const-string/jumbo v1, "title"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 246
    const-string/jumbo v1, "can_choose_current_user"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 253
    .end local v0    # "callTitle":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object p1

    .line 247
    :cond_1
    iget v1, p0, Lry$4;->b:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 248
    const-string/jumbo v1, "count_limit_tips"

    sget v2, Laxo$i;->ding_choose_limit:I

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 249
    const-string/jumbo v1, "activity_identify"

    const-string/jumbo v2, "mail_participant_ding"

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 250
    const-string/jumbo v1, "title"

    iget-object v2, p0, Lry$4;->d:Lry;

    invoke-static {v2}, Lry;->c(Lry;)Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    move-result-object v2

    sget v3, Laxo$i;->tab_ding:I

    invoke-virtual {v2, v3}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 251
    const-string/jumbo v1, "checked_members"

    iget-object v2, p0, Lry$4;->c:Ljava/util/ArrayList;

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    goto :goto_0
.end method
