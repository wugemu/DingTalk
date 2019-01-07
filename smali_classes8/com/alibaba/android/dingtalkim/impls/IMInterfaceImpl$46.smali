.class final Lcom/alibaba/android/dingtalkim/impls/IMInterfaceImpl$46;
.super Ljava/lang/Object;
.source "IMInterfaceImpl.java"

# interfaces
.implements Lcom/alibaba/doraemon/navigator/IntentRewriter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/dingtalkim/impls/IMInterfaceImpl;->a(Landroid/content/Context;Landroid/os/Bundle;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Landroid/os/Bundle;

.field final synthetic c:Lcom/alibaba/android/dingtalkim/impls/IMInterfaceImpl;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalkim/impls/IMInterfaceImpl;ILandroid/os/Bundle;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalkim/impls/IMInterfaceImpl;

    .prologue
    .line 2977
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/impls/IMInterfaceImpl$46;->c:Lcom/alibaba/android/dingtalkim/impls/IMInterfaceImpl;

    iput p2, p0, Lcom/alibaba/android/dingtalkim/impls/IMInterfaceImpl$46;->a:I

    iput-object p3, p0, Lcom/alibaba/android/dingtalkim/impls/IMInterfaceImpl$46;->b:Landroid/os/Bundle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onIntentRewrite(Landroid/content/Intent;)Landroid/content/Intent;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 2980
    iget v0, p0, Lcom/alibaba/android/dingtalkim/impls/IMInterfaceImpl$46;->a:I

    if-lez v0, :cond_0

    .line 2981
    iget v0, p0, Lcom/alibaba/android/dingtalkim/impls/IMInterfaceImpl$46;->a:I

    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2983
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/impls/IMInterfaceImpl$46;->b:Landroid/os/Bundle;

    if-eqz v0, :cond_1

    .line 2984
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/impls/IMInterfaceImpl$46;->b:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 2986
    :cond_1
    return-object p1
.end method
