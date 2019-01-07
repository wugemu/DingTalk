.class Lcom/taobao/weex/devtools/inspector/elements/android/AndroidDocumentProvider$InspectModeHandler$2;
.super Ljava/lang/Object;
.source "AndroidDocumentProvider.java"

# interfaces
.implements Lcom/taobao/weex/devtools/common/Accumulator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/weex/devtools/inspector/elements/android/AndroidDocumentProvider$InspectModeHandler;->enable()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/taobao/weex/devtools/common/Accumulator",
        "<",
        "Landroid/view/Window;",
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
    .line 293
    iput-object p1, p0, Lcom/taobao/weex/devtools/inspector/elements/android/AndroidDocumentProvider$InspectModeHandler$2;->this$1:Lcom/taobao/weex/devtools/inspector/elements/android/AndroidDocumentProvider$InspectModeHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public store(Landroid/view/Window;)V
    .locals 6
    .param p1, "object"    # Landroid/view/Window;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v5, -0x1

    .line 296
    invoke-virtual {p1}, Landroid/view/Window;->peekDecorView()Landroid/view/View;

    move-result-object v3

    instance-of v3, v3, Landroid/view/ViewGroup;

    if-eqz v3, :cond_0

    .line 297
    invoke-virtual {p1}, Landroid/view/Window;->peekDecorView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 299
    .local v0, "decorView":Landroid/view/ViewGroup;
    new-instance v2, Lcom/taobao/weex/devtools/inspector/elements/android/AndroidDocumentProvider$InspectModeHandler$OverlayView;

    iget-object v3, p0, Lcom/taobao/weex/devtools/inspector/elements/android/AndroidDocumentProvider$InspectModeHandler$2;->this$1:Lcom/taobao/weex/devtools/inspector/elements/android/AndroidDocumentProvider$InspectModeHandler;

    iget-object v4, p0, Lcom/taobao/weex/devtools/inspector/elements/android/AndroidDocumentProvider$InspectModeHandler$2;->this$1:Lcom/taobao/weex/devtools/inspector/elements/android/AndroidDocumentProvider$InspectModeHandler;

    iget-object v4, v4, Lcom/taobao/weex/devtools/inspector/elements/android/AndroidDocumentProvider$InspectModeHandler;->this$0:Lcom/taobao/weex/devtools/inspector/elements/android/AndroidDocumentProvider;

    invoke-static {v4}, Lcom/taobao/weex/devtools/inspector/elements/android/AndroidDocumentProvider;->access$400(Lcom/taobao/weex/devtools/inspector/elements/android/AndroidDocumentProvider;)Landroid/app/Application;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/taobao/weex/devtools/inspector/elements/android/AndroidDocumentProvider$InspectModeHandler$OverlayView;-><init>(Lcom/taobao/weex/devtools/inspector/elements/android/AndroidDocumentProvider$InspectModeHandler;Landroid/content/Context;)V

    .line 301
    .local v2, "overlayView":Lcom/taobao/weex/devtools/inspector/elements/android/AndroidDocumentProvider$InspectModeHandler$OverlayView;
    new-instance v1, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v1}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    .line 302
    .local v1, "layoutParams":Landroid/view/WindowManager$LayoutParams;
    iput v5, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 303
    iput v5, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 305
    invoke-virtual {v0, v2, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 306
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->bringChildToFront(Landroid/view/View;)V

    .line 308
    iget-object v3, p0, Lcom/taobao/weex/devtools/inspector/elements/android/AndroidDocumentProvider$InspectModeHandler$2;->this$1:Lcom/taobao/weex/devtools/inspector/elements/android/AndroidDocumentProvider$InspectModeHandler;

    invoke-static {v3}, Lcom/taobao/weex/devtools/inspector/elements/android/AndroidDocumentProvider$InspectModeHandler;->access$500(Lcom/taobao/weex/devtools/inspector/elements/android/AndroidDocumentProvider$InspectModeHandler;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 310
    .end local v0    # "decorView":Landroid/view/ViewGroup;
    .end local v1    # "layoutParams":Landroid/view/WindowManager$LayoutParams;
    .end local v2    # "overlayView":Lcom/taobao/weex/devtools/inspector/elements/android/AndroidDocumentProvider$InspectModeHandler$OverlayView;
    :cond_0
    return-void
.end method

.method public bridge synthetic store(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 293
    check-cast p1, Landroid/view/Window;

    invoke-virtual {p0, p1}, Lcom/taobao/weex/devtools/inspector/elements/android/AndroidDocumentProvider$InspectModeHandler$2;->store(Landroid/view/Window;)V

    return-void
.end method
