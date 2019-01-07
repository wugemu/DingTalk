.class final Lfkf$7;
.super Ljava/lang/Object;
.source "OrgContactPresenterImpl.java"

# interfaces
.implements Lcom/alibaba/doraemon/navigator/IntentRewriter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfkf;->a(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lfkf;


# direct methods
.method constructor <init>(Lfkf;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lfkf;

    .prologue
    .line 541
    iput-object p1, p0, Lfkf$7;->b:Lfkf;

    iput-object p2, p0, Lfkf$7;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onIntentRewrite(Landroid/content/Intent;)Landroid/content/Intent;
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 544
    const-string/jumbo v0, "choose_mode"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 546
    const-string/jumbo v0, "count_limit"

    const/16 v1, 0x3e8

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 548
    const-string/jumbo v0, "dept_object"

    iget-object v1, p0, Lfkf$7;->b:Lfkf;

    .line 549
    invoke-static {v1}, Lfkf;->h(Lfkf;)Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;

    move-result-object v1

    iget-object v1, v1, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;->deptObject:Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;

    .line 548
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 550
    const-string/jumbo v0, "title"

    iget-object v1, p0, Lfkf$7;->b:Lfkf;

    .line 551
    invoke-static {v1}, Lfkf;->e(Lfkf;)Landroid/app/Activity;

    move-result-object v1

    sget v2, Lezg$l;->dt_contact_manager_navigation_button_batch_operation_move_picker_title:I

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 550
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 553
    const-string/jumbo v0, "activity_identify"

    iget-object v1, p0, Lfkf$7;->a:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 554
    return-object p1
.end method
