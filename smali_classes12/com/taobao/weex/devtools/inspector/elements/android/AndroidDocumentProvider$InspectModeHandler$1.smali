.class Lcom/taobao/weex/devtools/inspector/elements/android/AndroidDocumentProvider$InspectModeHandler$1;
.super Ljava/lang/Object;
.source "AndroidDocumentProvider.java"

# interfaces
.implements Lcom/taobao/weex/devtools/common/Predicate;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taobao/weex/devtools/inspector/elements/android/AndroidDocumentProvider$InspectModeHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/taobao/weex/devtools/common/Predicate",
        "<",
        "Landroid/view/View;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/taobao/weex/devtools/inspector/elements/android/AndroidDocumentProvider$InspectModeHandler;


# direct methods
.method constructor <init>(Lcom/taobao/weex/devtools/inspector/elements/android/AndroidDocumentProvider$InspectModeHandler;)V
    .locals 0
    .param p1, "this$1"    # Lcom/taobao/weex/devtools/inspector/elements/android/AndroidDocumentProvider$InspectModeHandler;

    .prologue
    .line 273
    iput-object p1, p0, Lcom/taobao/weex/devtools/inspector/elements/android/AndroidDocumentProvider$InspectModeHandler$1;->this$1:Lcom/taobao/weex/devtools/inspector/elements/android/AndroidDocumentProvider$InspectModeHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(Landroid/view/View;)Z
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 276
    instance-of v0, p1, Lcom/taobao/weex/devtools/inspector/elements/android/DocumentHiddenView;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 273
    check-cast p1, Landroid/view/View;

    invoke-virtual {p0, p1}, Lcom/taobao/weex/devtools/inspector/elements/android/AndroidDocumentProvider$InspectModeHandler$1;->apply(Landroid/view/View;)Z

    move-result v0

    return v0
.end method
