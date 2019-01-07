.class final Lcom/alibaba/android/user/contact/activities/Add2OrgActivity$4;
.super Ljava/lang/Object;
.source "Add2OrgActivity.java"

# interfaces
.implements Lcom/alibaba/doraemon/navigator/IntentRewriter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/user/contact/activities/Add2OrgActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/user/contact/activities/Add2OrgActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/contact/activities/Add2OrgActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/user/contact/activities/Add2OrgActivity;

    .prologue
    .line 853
    iput-object p1, p0, Lcom/alibaba/android/user/contact/activities/Add2OrgActivity$4;->a:Lcom/alibaba/android/user/contact/activities/Add2OrgActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onIntentRewrite(Landroid/content/Intent;)Landroid/content/Intent;
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 856
    const-string/jumbo v0, "choose_mode"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 857
    const-string/jumbo v0, "activity_identify"

    iget-object v1, p0, Lcom/alibaba/android/user/contact/activities/Add2OrgActivity$4;->a:Lcom/alibaba/android/user/contact/activities/Add2OrgActivity;

    invoke-static {v1}, Lcom/alibaba/android/user/contact/activities/Add2OrgActivity;->w(Lcom/alibaba/android/user/contact/activities/Add2OrgActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 858
    const-string/jumbo v0, "count_limit"

    sget-object v1, Lflr;->b:Ljava/lang/Integer;

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 859
    const-string/jumbo v0, "fragment_key"

    const-string/jumbo v1, "LocalContactFragment"

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 860
    const-string/jumbo v0, "title"

    iget-object v1, p0, Lcom/alibaba/android/user/contact/activities/Add2OrgActivity$4;->a:Lcom/alibaba/android/user/contact/activities/Add2OrgActivity;

    sget v2, Lezg$l;->dt_contact_select_staff_title:I

    invoke-virtual {v1, v2}, Lcom/alibaba/android/user/contact/activities/Add2OrgActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 862
    return-object p1
.end method
