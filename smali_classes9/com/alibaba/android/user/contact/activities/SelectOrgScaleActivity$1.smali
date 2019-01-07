.class final Lcom/alibaba/android/user/contact/activities/SelectOrgScaleActivity$1;
.super Ljava/lang/Object;
.source "SelectOrgScaleActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/user/contact/activities/SelectOrgScaleActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/user/contact/activities/SelectOrgScaleActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/contact/activities/SelectOrgScaleActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/user/contact/activities/SelectOrgScaleActivity;

    .prologue
    .line 54
    iput-object p1, p0, Lcom/alibaba/android/user/contact/activities/SelectOrgScaleActivity$1;->a:Lcom/alibaba/android/user/contact/activities/SelectOrgScaleActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 57
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 58
    .local v0, "intent":Landroid/content/Intent;
    iget-object v2, p0, Lcom/alibaba/android/user/contact/activities/SelectOrgScaleActivity$1;->a:Lcom/alibaba/android/user/contact/activities/SelectOrgScaleActivity;

    invoke-static {v2}, Lcom/alibaba/android/user/contact/activities/SelectOrgScaleActivity;->a(Lcom/alibaba/android/user/contact/activities/SelectOrgScaleActivity;)Lcom/alibaba/android/user/contact/activities/SelectOrgScaleActivity$a;

    move-result-object v2

    invoke-virtual {v2, p3}, Lcom/alibaba/android/user/contact/activities/SelectOrgScaleActivity$a;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    .line 59
    .local v1, "scaleText":Ljava/lang/Object;
    instance-of v2, v1, Lcom/alibaba/android/dingtalk/userbase/model/TeamScaleObject;

    if-eqz v2, :cond_0

    .line 60
    const-string/jumbo v2, "intent_key_team_scale_object"

    check-cast v1, Lcom/alibaba/android/dingtalk/userbase/model/TeamScaleObject;

    .end local v1    # "scaleText":Ljava/lang/Object;
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 62
    :cond_0
    iget-object v2, p0, Lcom/alibaba/android/user/contact/activities/SelectOrgScaleActivity$1;->a:Lcom/alibaba/android/user/contact/activities/SelectOrgScaleActivity;

    const/4 v3, -0x1

    invoke-virtual {v2, v3, v0}, Lcom/alibaba/android/user/contact/activities/SelectOrgScaleActivity;->setResult(ILandroid/content/Intent;)V

    .line 63
    iget-object v2, p0, Lcom/alibaba/android/user/contact/activities/SelectOrgScaleActivity$1;->a:Lcom/alibaba/android/user/contact/activities/SelectOrgScaleActivity;

    invoke-virtual {v2}, Lcom/alibaba/android/user/contact/activities/SelectOrgScaleActivity;->finish()V

    .line 64
    return-void
.end method
