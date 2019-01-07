.class final Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity$11$1;
.super Ljava/lang/Object;
.source "CreateNewOrgActivity.java"

# interfaces
.implements Lcom/alibaba/doraemon/navigator/IntentRewriter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity$11;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity$11;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity$11;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity$11;

    .prologue
    .line 262
    iput-object p1, p0, Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity$11$1;->a:Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity$11;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onIntentRewrite(Landroid/content/Intent;)Landroid/content/Intent;
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 265
    const-string/jumbo v0, "region_key"

    iget-object v1, p0, Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity$11$1;->a:Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity$11;

    iget-object v1, v1, Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity$11;->a:Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;

    invoke-static {v1}, Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;->a(Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 266
    return-object p1
.end method
