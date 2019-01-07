.class final Lacg$42$1;
.super Ljava/lang/Object;
.source "MailNavigator.java"

# interfaces
.implements Lcom/alibaba/doraemon/navigator/IntentRewriter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lacg$42;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lacg$42;


# direct methods
.method constructor <init>(Lacg$42;)V
    .locals 0
    .param p1, "this$0"    # Lacg$42;

    .prologue
    .line 3385
    iput-object p1, p0, Lacg$42$1;->a:Lacg$42;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onIntentRewrite(Landroid/content/Intent;)Landroid/content/Intent;
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 3388
    const-string/jumbo v0, "mail_related"

    iget-object v1, p0, Lacg$42$1;->a:Lacg$42;

    iget-object v1, v1, Lacg$42;->c:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    invoke-static {v1}, Lacg;->a(Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3389
    const-string/jumbo v0, "account_name"

    invoke-static {}, Lacg;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3390
    return-object p1
.end method
