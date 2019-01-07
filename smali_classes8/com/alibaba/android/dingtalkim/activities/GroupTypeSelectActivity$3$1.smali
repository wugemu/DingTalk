.class final Lcom/alibaba/android/dingtalkim/activities/GroupTypeSelectActivity$3$1;
.super Ljava/lang/Object;
.source "GroupTypeSelectActivity.java"

# interfaces
.implements Lcom/alibaba/doraemon/navigator/IntentRewriter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/dingtalkim/activities/GroupTypeSelectActivity$3;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalkim/activities/GroupTypeSelectActivity$3;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalkim/activities/GroupTypeSelectActivity$3;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/android/dingtalkim/activities/GroupTypeSelectActivity$3;

    .prologue
    .line 139
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/activities/GroupTypeSelectActivity$3$1;->a:Lcom/alibaba/android/dingtalkim/activities/GroupTypeSelectActivity$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onIntentRewrite(Landroid/content/Intent;)Landroid/content/Intent;
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 142
    const-string/jumbo v1, "intent_key_group_org_owner"

    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/GroupTypeSelectActivity$3$1;->a:Lcom/alibaba/android/dingtalkim/activities/GroupTypeSelectActivity$3;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/activities/GroupTypeSelectActivity$3;->a:Lcom/alibaba/android/dingtalkim/activities/GroupTypeSelectActivity;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/activities/GroupTypeSelectActivity;->b(Lcom/alibaba/android/dingtalkim/activities/GroupTypeSelectActivity;)Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 143
    const-string/jumbo v1, "intent_key_group_org_member"

    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/GroupTypeSelectActivity$3$1;->a:Lcom/alibaba/android/dingtalkim/activities/GroupTypeSelectActivity$3;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/activities/GroupTypeSelectActivity$3;->a:Lcom/alibaba/android/dingtalkim/activities/GroupTypeSelectActivity;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/activities/GroupTypeSelectActivity;->c(Lcom/alibaba/android/dingtalkim/activities/GroupTypeSelectActivity;)Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 144
    const-string/jumbo v0, "cid"

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/GroupTypeSelectActivity$3$1;->a:Lcom/alibaba/android/dingtalkim/activities/GroupTypeSelectActivity$3;

    iget-object v1, v1, Lcom/alibaba/android/dingtalkim/activities/GroupTypeSelectActivity$3;->a:Lcom/alibaba/android/dingtalkim/activities/GroupTypeSelectActivity;

    invoke-static {v1}, Lcom/alibaba/android/dingtalkim/activities/GroupTypeSelectActivity;->d(Lcom/alibaba/android/dingtalkim/activities/GroupTypeSelectActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 145
    return-object p1
.end method
