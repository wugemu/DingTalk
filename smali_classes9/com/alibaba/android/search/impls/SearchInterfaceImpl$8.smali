.class final Lcom/alibaba/android/search/impls/SearchInterfaceImpl$8;
.super Ljava/lang/Object;
.source "SearchInterfaceImpl.java"

# interfaces
.implements Lcom/alibaba/doraemon/navigator/IntentRewriter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/search/impls/SearchInterfaceImpl;->f(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/search/impls/SearchInterfaceImpl;


# direct methods
.method constructor <init>(Lcom/alibaba/android/search/impls/SearchInterfaceImpl;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/search/impls/SearchInterfaceImpl;

    .prologue
    .line 700
    iput-object p1, p0, Lcom/alibaba/android/search/impls/SearchInterfaceImpl$8;->a:Lcom/alibaba/android/search/impls/SearchInterfaceImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onIntentRewrite(Landroid/content/Intent;)Landroid/content/Intent;
    .locals 0
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 703
    return-object p1
.end method
