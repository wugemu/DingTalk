.class final Lcom/alibaba/android/projection/impls/FocusInterfaceImpl$1;
.super Ljava/lang/Object;
.source "FocusInterfaceImpl.java"

# interfaces
.implements Lcom/alibaba/doraemon/navigator/IntentRewriter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/projection/impls/FocusInterfaceImpl;->a(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/projection/impls/FocusInterfaceImpl;


# direct methods
.method constructor <init>(Lcom/alibaba/android/projection/impls/FocusInterfaceImpl;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/projection/impls/FocusInterfaceImpl;

    .prologue
    .line 66
    iput-object p1, p0, Lcom/alibaba/android/projection/impls/FocusInterfaceImpl$1;->a:Lcom/alibaba/android/projection/impls/FocusInterfaceImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onIntentRewrite(Landroid/content/Intent;)Landroid/content/Intent;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 69
    const/high16 v0, 0x10000000

    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 70
    return-object p1
.end method
