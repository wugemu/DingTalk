.class final Lcom/alibaba/android/user/contact/activities/AcceptFriendActivity$2;
.super Ljava/lang/Object;
.source "AcceptFriendActivity.java"

# interfaces
.implements Lcom/alibaba/doraemon/navigator/IntentRewriter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/user/contact/activities/AcceptFriendActivity;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/user/contact/activities/AcceptFriendActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/contact/activities/AcceptFriendActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/user/contact/activities/AcceptFriendActivity;

    .prologue
    .line 302
    iput-object p1, p0, Lcom/alibaba/android/user/contact/activities/AcceptFriendActivity$2;->a:Lcom/alibaba/android/user/contact/activities/AcceptFriendActivity;

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
    .line 305
    const-string/jumbo v0, "user_id"

    iget-object v1, p0, Lcom/alibaba/android/user/contact/activities/AcceptFriendActivity$2;->a:Lcom/alibaba/android/user/contact/activities/AcceptFriendActivity;

    invoke-static {v1}, Lcom/alibaba/android/user/contact/activities/AcceptFriendActivity;->a(Lcom/alibaba/android/user/contact/activities/AcceptFriendActivity;)J

    move-result-wide v2

    invoke-virtual {p1, v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 306
    return-object p1
.end method
