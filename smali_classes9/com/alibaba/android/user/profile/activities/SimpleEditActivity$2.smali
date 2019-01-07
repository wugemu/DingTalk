.class final Lcom/alibaba/android/user/profile/activities/SimpleEditActivity$2;
.super Ljava/lang/Object;
.source "SimpleEditActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/user/profile/activities/SimpleEditActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/user/profile/activities/SimpleEditActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/profile/activities/SimpleEditActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/user/profile/activities/SimpleEditActivity;

    .prologue
    .line 67
    iput-object p1, p0, Lcom/alibaba/android/user/profile/activities/SimpleEditActivity$2;->a:Lcom/alibaba/android/user/profile/activities/SimpleEditActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 70
    iget-object v2, p0, Lcom/alibaba/android/user/profile/activities/SimpleEditActivity$2;->a:Lcom/alibaba/android/user/profile/activities/SimpleEditActivity;

    invoke-static {v2}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v0

    .line 71
    .local v0, "broadcastManager":Ldq;
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "com.workapp.simple_edit"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 72
    .local v1, "intent":Landroid/content/Intent;
    const-string/jumbo v2, "userType"

    const-string/jumbo v3, "city"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 73
    const-string/jumbo v2, "editContent"

    iget-object v3, p0, Lcom/alibaba/android/user/profile/activities/SimpleEditActivity$2;->a:Lcom/alibaba/android/user/profile/activities/SimpleEditActivity;

    invoke-static {v3}, Lcom/alibaba/android/user/profile/activities/SimpleEditActivity;->b(Lcom/alibaba/android/user/profile/activities/SimpleEditActivity;)Landroid/widget/EditText;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 74
    invoke-virtual {v0, v1}, Ldq;->a(Landroid/content/Intent;)Z

    .line 75
    iget-object v2, p0, Lcom/alibaba/android/user/profile/activities/SimpleEditActivity$2;->a:Lcom/alibaba/android/user/profile/activities/SimpleEditActivity;

    invoke-virtual {v2}, Lcom/alibaba/android/user/profile/activities/SimpleEditActivity;->finish()V

    .line 76
    return-void
.end method
