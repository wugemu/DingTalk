.class final Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4$18$1;
.super Ljava/lang/Object;
.source "CreateOrgActivityV4.java"

# interfaces
.implements Lcom/alibaba/doraemon/navigator/IntentRewriter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4$18;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4$18;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4$18;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4$18;

    .prologue
    .line 294
    iput-object p1, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4$18$1;->a:Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4$18;

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
    .line 297
    const-string/jumbo v0, "region_key"

    iget-object v1, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4$18$1;->a:Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4$18;

    iget-object v1, v1, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4$18;->a:Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4;

    invoke-static {v1}, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4;->b(Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 298
    const-string/jumbo v0, "region_level"

    const/4 v1, 0x4

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 299
    return-object p1
.end method
