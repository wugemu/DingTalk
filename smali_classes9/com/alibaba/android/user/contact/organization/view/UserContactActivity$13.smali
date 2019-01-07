.class final Lcom/alibaba/android/user/contact/organization/view/UserContactActivity$13;
.super Ljava/lang/Object;
.source "UserContactActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

.field final synthetic b:Landroid/graphics/Bitmap;

.field final synthetic c:Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;Landroid/graphics/Bitmap;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;

    .prologue
    .line 2069
    iput-object p1, p0, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity$13;->c:Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;

    iput-object p2, p0, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity$13;->a:Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    iput-object p3, p0, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity$13;->b:Landroid/graphics/Bitmap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 2072
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.alibaba.android.rimet.ShortCutSelectResult"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2074
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "user_id_string"

    invoke-static {}, Lccr;->a()Lccr;

    iget-object v2, p0, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity$13;->a:Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    iget-wide v2, v2, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->uid:J

    .line 2075
    invoke-static {v2, v3}, Lccr;->g(J)Ljava/lang/String;

    move-result-object v2

    .line 2074
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2076
    const-string/jumbo v1, "send_user_id"

    invoke-static {}, Lccr;->a()Lccr;

    .line 2077
    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v2

    invoke-virtual {v2}, Lccr;->c()J

    move-result-wide v2

    .line 2076
    invoke-static {v2, v3}, Lccr;->g(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2079
    const-string/jumbo v1, "intent_key_user_name"

    iget-object v2, p0, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity$13;->a:Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    iget-object v2, v2, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->displayName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2080
    const-string/jumbo v1, "intent_key_user_avatar"

    iget-object v2, p0, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity$13;->b:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 2081
    const-string/jumbo v1, "com.smartisanos.sidebar"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 2083
    iget-object v1, p0, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity$13;->c:Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;

    invoke-virtual {v1, v0}, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 2084
    iget-object v1, p0, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity$13;->c:Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->moveTaskToBack(Z)Z

    .line 2085
    iget-object v1, p0, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity$13;->c:Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;

    invoke-virtual {v1}, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->finish()V

    .line 2086
    return-void
.end method
