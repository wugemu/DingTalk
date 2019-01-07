.class final Lflt$3;
.super Ljava/lang/Object;
.source "FriendRequestDataManager.java"

# interfaces
.implements Lcom/alibaba/doraemon/navigator/IntentRewriter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lflt;->a(Lcom/alibaba/android/dingtalk/userbase/model/NewRequestObject;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalk/userbase/model/NewRequestObject;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lflt;


# direct methods
.method constructor <init>(Lflt;Lcom/alibaba/android/dingtalk/userbase/model/NewRequestObject;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lflt;

    .prologue
    .line 875
    iput-object p1, p0, Lflt$3;->c:Lflt;

    iput-object p2, p0, Lflt$3;->a:Lcom/alibaba/android/dingtalk/userbase/model/NewRequestObject;

    iput-object p3, p0, Lflt$3;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onIntentRewrite(Landroid/content/Intent;)Landroid/content/Intent;
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 878
    const-string/jumbo v0, "intent_key_new_request"

    iget-object v1, p0, Lflt$3;->a:Lcom/alibaba/android/dingtalk/userbase/model/NewRequestObject;

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 879
    const-string/jumbo v0, "user_name"

    iget-object v1, p0, Lflt$3;->b:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 880
    const-string/jumbo v0, "intent_key_auto_accept"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 881
    return-object p1
.end method
