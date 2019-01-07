.class final Lcom/alibaba/android/user/contact/activities/AcceptFriendActivity$1$1;
.super Ljava/lang/Object;
.source "AcceptFriendActivity.java"

# interfaces
.implements Lcom/alibaba/doraemon/navigator/IntentRewriter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/user/contact/activities/AcceptFriendActivity$1;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/alibaba/android/user/contact/activities/AcceptFriendActivity$1;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/contact/activities/AcceptFriendActivity$1;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/android/user/contact/activities/AcceptFriendActivity$1;

    .prologue
    .line 215
    iput-object p1, p0, Lcom/alibaba/android/user/contact/activities/AcceptFriendActivity$1$1;->c:Lcom/alibaba/android/user/contact/activities/AcceptFriendActivity$1;

    iput-object p2, p0, Lcom/alibaba/android/user/contact/activities/AcceptFriendActivity$1$1;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/alibaba/android/user/contact/activities/AcceptFriendActivity$1$1;->b:Ljava/lang/String;

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
    .line 218
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/AcceptFriendActivity$1$1;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 219
    const-string/jumbo v0, "data"

    iget-object v1, p0, Lcom/alibaba/android/user/contact/activities/AcceptFriendActivity$1$1;->b:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 220
    return-object p1
.end method
