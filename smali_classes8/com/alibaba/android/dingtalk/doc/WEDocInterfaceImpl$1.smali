.class final Lcom/alibaba/android/dingtalk/doc/WEDocInterfaceImpl$1;
.super Ljava/lang/Object;
.source "WEDocInterfaceImpl.java"

# interfaces
.implements Lcom/alibaba/doraemon/navigator/IntentRewriter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/dingtalk/doc/WEDocInterfaceImpl;->a(Landroid/content/Context;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/os/Bundle;

.field final synthetic b:Lcom/alibaba/android/dingtalk/doc/WEDocInterfaceImpl;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalk/doc/WEDocInterfaceImpl;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalk/doc/WEDocInterfaceImpl;

    .prologue
    .line 60
    iput-object p1, p0, Lcom/alibaba/android/dingtalk/doc/WEDocInterfaceImpl$1;->b:Lcom/alibaba/android/dingtalk/doc/WEDocInterfaceImpl;

    iput-object p2, p0, Lcom/alibaba/android/dingtalk/doc/WEDocInterfaceImpl$1;->a:Landroid/os/Bundle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onIntentRewrite(Landroid/content/Intent;)Landroid/content/Intent;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 63
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/doc/WEDocInterfaceImpl$1;->a:Landroid/os/Bundle;

    if-eqz v0, :cond_0

    .line 64
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/doc/WEDocInterfaceImpl$1;->a:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 66
    :cond_0
    const/high16 v0, 0x10000000

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 67
    return-object p1
.end method
