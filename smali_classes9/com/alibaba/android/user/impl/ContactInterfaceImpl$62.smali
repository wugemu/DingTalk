.class final Lcom/alibaba/android/user/impl/ContactInterfaceImpl$62;
.super Ljava/lang/Object;
.source "ContactInterfaceImpl.java"

# interfaces
.implements Lcom/alibaba/doraemon/navigator/IntentRewriter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/user/impl/ContactInterfaceImpl;->b(Landroid/app/Activity;Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest;

.field final synthetic b:Lcom/alibaba/android/user/impl/ContactInterfaceImpl;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/impl/ContactInterfaceImpl;Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/user/impl/ContactInterfaceImpl;

    .prologue
    .line 2489
    iput-object p1, p0, Lcom/alibaba/android/user/impl/ContactInterfaceImpl$62;->b:Lcom/alibaba/android/user/impl/ContactInterfaceImpl;

    iput-object p2, p0, Lcom/alibaba/android/user/impl/ContactInterfaceImpl$62;->a:Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest;

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
    .line 2492
    const-string/jumbo v0, "fragment_key"

    const-string/jumbo v1, "OrgContactFragment"

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2493
    iget-object v0, p0, Lcom/alibaba/android/user/impl/ContactInterfaceImpl$62;->a:Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest;

    if-eqz v0, :cond_0

    .line 2494
    const-string/jumbo v0, "intent_key_contact_choose_request"

    iget-object v1, p0, Lcom/alibaba/android/user/impl/ContactInterfaceImpl$62;->a:Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest;

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 2496
    :cond_0
    return-object p1
.end method