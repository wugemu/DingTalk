.class final Lcom/alibaba/android/user/contact/activities/AddFriendActivity$3;
.super Ljava/lang/Object;
.source "AddFriendActivity.java"

# interfaces
.implements Lcom/alibaba/doraemon/navigator/IntentRewriter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/user/contact/activities/AddFriendActivity;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/user/contact/activities/AddFriendActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/contact/activities/AddFriendActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/user/contact/activities/AddFriendActivity;

    .prologue
    .line 221
    iput-object p1, p0, Lcom/alibaba/android/user/contact/activities/AddFriendActivity$3;->a:Lcom/alibaba/android/user/contact/activities/AddFriendActivity;

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
    .line 224
    const-string/jumbo v0, "activity_identify"

    const-string/jumbo v1, "AddFriendActivity"

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 225
    const-class v0, Lcom/alibaba/android/dingtalk/userbase/extras/EnumExtras$RecognizeCardType;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/alibaba/android/dingtalk/userbase/extras/EnumExtras$RecognizeCardType;->NameCard:Lcom/alibaba/android/dingtalk/userbase/extras/EnumExtras$RecognizeCardType;

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 226
    return-object p1
.end method
