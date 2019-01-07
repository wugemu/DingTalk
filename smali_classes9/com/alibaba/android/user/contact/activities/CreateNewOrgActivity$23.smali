.class final Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity$23;
.super Ljava/lang/Object;
.source "CreateNewOrgActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;

    .prologue
    .line 299
    iput-object p1, p0, Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity$23;->a:Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 302
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity$23;->a:Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;

    const-class v2, Lcom/alibaba/android/user/contact/activities/SelectOrgScaleActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 303
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "anchor_id"

    iget-object v2, p0, Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity$23;->a:Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;

    invoke-static {v2}, Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;->c(Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 304
    iget-object v1, p0, Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity$23;->a:Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;

    const/16 v2, 0x3e9

    invoke-virtual {v1, v0, v2}, Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 305
    return-void
.end method
