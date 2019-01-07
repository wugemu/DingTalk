.class final Lcom/alibaba/android/user/profile/v2/UserProfileMoreActivity$20$1;
.super Ljava/lang/Object;
.source "UserProfileMoreActivity.java"

# interfaces
.implements Lcom/alibaba/doraemon/navigator/IntentRewriter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/user/profile/v2/UserProfileMoreActivity$20;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/user/profile/v2/UserProfileMoreActivity$20;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/profile/v2/UserProfileMoreActivity$20;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/android/user/profile/v2/UserProfileMoreActivity$20;

    .prologue
    .line 1314
    iput-object p1, p0, Lcom/alibaba/android/user/profile/v2/UserProfileMoreActivity$20$1;->a:Lcom/alibaba/android/user/profile/v2/UserProfileMoreActivity$20;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onIntentRewrite(Landroid/content/Intent;)Landroid/content/Intent;
    .locals 4
    .param p1, "intent"    # Landroid/content/Intent;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 1317
    const-string/jumbo v0, "manage_staff_mode"

    sget-object v1, Lcom/alibaba/android/dingtalk/userbase/ContactInterface$ManageStaffMode;->EDIT_STAFF:Lcom/alibaba/android/dingtalk/userbase/ContactInterface$ManageStaffMode;

    .line 1318
    invoke-virtual {v1}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface$ManageStaffMode;->ordinal()I

    move-result v1

    .line 1317
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1319
    const-string/jumbo v1, "org_id"

    iget-object v0, p0, Lcom/alibaba/android/user/profile/v2/UserProfileMoreActivity$20$1;->a:Lcom/alibaba/android/user/profile/v2/UserProfileMoreActivity$20;

    iget-object v0, v0, Lcom/alibaba/android/user/profile/v2/UserProfileMoreActivity$20;->a:Ljava/util/List;

    iget-object v2, p0, Lcom/alibaba/android/user/profile/v2/UserProfileMoreActivity$20$1;->a:Lcom/alibaba/android/user/profile/v2/UserProfileMoreActivity$20;

    iget-object v2, v2, Lcom/alibaba/android/user/profile/v2/UserProfileMoreActivity$20;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 1320
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/Serializable;

    .line 1319
    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 1321
    const-string/jumbo v0, "user_id"

    iget-object v1, p0, Lcom/alibaba/android/user/profile/v2/UserProfileMoreActivity$20$1;->a:Lcom/alibaba/android/user/profile/v2/UserProfileMoreActivity$20;

    iget-object v1, v1, Lcom/alibaba/android/user/profile/v2/UserProfileMoreActivity$20;->c:Lcom/alibaba/android/user/profile/v2/UserProfileMoreActivity;

    .line 1322
    invoke-static {v1}, Lcom/alibaba/android/user/profile/v2/UserProfileMoreActivity;->a(Lcom/alibaba/android/user/profile/v2/UserProfileMoreActivity;)Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    move-result-object v1

    iget-wide v2, v1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->uid:J

    .line 1321
    invoke-virtual {p1, v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1323
    return-object p1
.end method
