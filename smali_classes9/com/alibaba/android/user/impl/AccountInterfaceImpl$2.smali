.class final Lcom/alibaba/android/user/impl/AccountInterfaceImpl$2;
.super Ljava/lang/Object;
.source "AccountInterfaceImpl.java"

# interfaces
.implements Lcom/alibaba/doraemon/navigator/IntentRewriter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/user/impl/AccountInterfaceImpl;->a(Landroid/content/Context;Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/alibaba/android/user/impl/AccountInterfaceImpl;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/impl/AccountInterfaceImpl;ZLjava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/user/impl/AccountInterfaceImpl;

    .prologue
    .line 108
    iput-object p1, p0, Lcom/alibaba/android/user/impl/AccountInterfaceImpl$2;->c:Lcom/alibaba/android/user/impl/AccountInterfaceImpl;

    iput-boolean p2, p0, Lcom/alibaba/android/user/impl/AccountInterfaceImpl$2;->a:Z

    iput-object p3, p0, Lcom/alibaba/android/user/impl/AccountInterfaceImpl$2;->b:Ljava/lang/String;

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
    .line 111
    iget-boolean v0, p0, Lcom/alibaba/android/user/impl/AccountInterfaceImpl$2;->a:Z

    if-eqz v0, :cond_0

    .line 112
    const v0, 0x10008000

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 116
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/user/impl/AccountInterfaceImpl$2;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 117
    const-string/jumbo v0, "key_signup_phone_number"

    iget-object v1, p0, Lcom/alibaba/android/user/impl/AccountInterfaceImpl$2;->b:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 120
    :cond_1
    return-object p1
.end method
