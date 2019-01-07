.class final Lcom/alibaba/android/user/settings/activity/UnregisterAccountActivity$3$1;
.super Ljava/lang/Object;
.source "UnregisterAccountActivity.java"

# interfaces
.implements Lcom/alibaba/doraemon/navigator/IntentRewriter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/user/settings/activity/UnregisterAccountActivity$3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/user/settings/activity/UnregisterAccountActivity$3;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/settings/activity/UnregisterAccountActivity$3;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/android/user/settings/activity/UnregisterAccountActivity$3;

    .prologue
    .line 113
    iput-object p1, p0, Lcom/alibaba/android/user/settings/activity/UnregisterAccountActivity$3$1;->a:Lcom/alibaba/android/user/settings/activity/UnregisterAccountActivity$3;

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
    .line 116
    const-string/jumbo v0, "areaCode"

    iget-object v1, p0, Lcom/alibaba/android/user/settings/activity/UnregisterAccountActivity$3$1;->a:Lcom/alibaba/android/user/settings/activity/UnregisterAccountActivity$3;

    iget-object v1, v1, Lcom/alibaba/android/user/settings/activity/UnregisterAccountActivity$3;->a:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 117
    const-string/jumbo v0, "phone"

    iget-object v1, p0, Lcom/alibaba/android/user/settings/activity/UnregisterAccountActivity$3$1;->a:Lcom/alibaba/android/user/settings/activity/UnregisterAccountActivity$3;

    iget-object v1, v1, Lcom/alibaba/android/user/settings/activity/UnregisterAccountActivity$3;->b:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 118
    const-string/jumbo v0, "TARGET"

    const-string/jumbo v1, "unregister"

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 119
    return-object p1
.end method
