.class final Lcom/alibaba/android/dingtalkim/activities/GroupDescEditActivity$1;
.super Ljava/lang/Object;
.source "GroupDescEditActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/dingtalkim/activities/GroupDescEditActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/widget/EditText;

.field final synthetic b:Lcom/alibaba/android/dingtalkim/activities/GroupDescEditActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalkim/activities/GroupDescEditActivity;Landroid/widget/EditText;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalkim/activities/GroupDescEditActivity;

    .prologue
    .line 35
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/activities/GroupDescEditActivity$1;->b:Lcom/alibaba/android/dingtalkim/activities/GroupDescEditActivity;

    iput-object p2, p0, Lcom/alibaba/android/dingtalkim/activities/GroupDescEditActivity$1;->a:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 38
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/GroupDescEditActivity$1;->b:Lcom/alibaba/android/dingtalkim/activities/GroupDescEditActivity;

    invoke-static {v1}, Lcom/alibaba/android/dingtalkim/activities/GroupDescEditActivity;->a(Lcom/alibaba/android/dingtalkim/activities/GroupDescEditActivity;)Lcom/alibaba/android/dingtalkim/activities/GroupDescEditActivity$GroupDescEditActionCallback;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/GroupDescEditActivity$1;->b:Lcom/alibaba/android/dingtalkim/activities/GroupDescEditActivity;

    invoke-static {v1}, Lcom/alibaba/android/dingtalkim/activities/GroupDescEditActivity;->a(Lcom/alibaba/android/dingtalkim/activities/GroupDescEditActivity;)Lcom/alibaba/android/dingtalkim/activities/GroupDescEditActivity$GroupDescEditActionCallback;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/GroupDescEditActivity$1;->b:Lcom/alibaba/android/dingtalkim/activities/GroupDescEditActivity;

    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/activities/GroupDescEditActivity$1;->a:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/alibaba/android/dingtalkim/activities/GroupDescEditActivity$GroupDescEditActionCallback;->onComplete(Landroid/app/Activity;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 45
    :goto_0
    return-void

    .line 41
    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 42
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "intent_key_group_desc"

    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/GroupDescEditActivity$1;->a:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 43
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/GroupDescEditActivity$1;->b:Lcom/alibaba/android/dingtalkim/activities/GroupDescEditActivity;

    const/4 v2, -0x1

    invoke-virtual {v1, v2, v0}, Lcom/alibaba/android/dingtalkim/activities/GroupDescEditActivity;->setResult(ILandroid/content/Intent;)V

    .line 44
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/GroupDescEditActivity$1;->b:Lcom/alibaba/android/dingtalkim/activities/GroupDescEditActivity;

    invoke-virtual {v1}, Lcom/alibaba/android/dingtalkim/activities/GroupDescEditActivity;->finish()V

    goto :goto_0
.end method
