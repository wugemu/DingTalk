.class final Lcom/alibaba/android/search/impls/SearchInterfaceImpl$3;
.super Ljava/lang/Object;
.source "SearchInterfaceImpl.java"

# interfaces
.implements Lcom/alibaba/doraemon/navigator/IntentRewriter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/search/impls/SearchInterfaceImpl;->a(Landroid/content/Context;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/os/Bundle;

.field final synthetic b:Lcom/alibaba/android/search/impls/SearchInterfaceImpl;


# direct methods
.method constructor <init>(Lcom/alibaba/android/search/impls/SearchInterfaceImpl;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/search/impls/SearchInterfaceImpl;

    .prologue
    .line 256
    iput-object p1, p0, Lcom/alibaba/android/search/impls/SearchInterfaceImpl$3;->b:Lcom/alibaba/android/search/impls/SearchInterfaceImpl;

    iput-object p2, p0, Lcom/alibaba/android/search/impls/SearchInterfaceImpl$3;->a:Landroid/os/Bundle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onIntentRewrite(Landroid/content/Intent;)Landroid/content/Intent;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 259
    iget-object v0, p0, Lcom/alibaba/android/search/impls/SearchInterfaceImpl$3;->a:Landroid/os/Bundle;

    if-eqz v0, :cond_0

    .line 260
    iget-object v0, p0, Lcom/alibaba/android/search/impls/SearchInterfaceImpl$3;->a:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 262
    :cond_0
    return-object p1
.end method
