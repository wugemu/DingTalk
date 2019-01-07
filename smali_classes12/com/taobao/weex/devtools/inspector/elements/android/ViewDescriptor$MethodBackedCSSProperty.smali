.class final Lcom/taobao/weex/devtools/inspector/elements/android/ViewDescriptor$MethodBackedCSSProperty;
.super Lcom/taobao/weex/devtools/inspector/elements/android/ViewDescriptor$ViewCSSProperty;
.source "ViewDescriptor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taobao/weex/devtools/inspector/elements/android/ViewDescriptor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "MethodBackedCSSProperty"
.end annotation


# instance fields
.field private final mMethod:Ljava/lang/reflect/Method;

.field final synthetic this$0:Lcom/taobao/weex/devtools/inspector/elements/android/ViewDescriptor;


# direct methods
.method public constructor <init>(Lcom/taobao/weex/devtools/inspector/elements/android/ViewDescriptor;Ljava/lang/reflect/Method;Ljava/lang/String;Landroid/view/ViewDebug$ExportedProperty;)V
    .locals 2
    .param p2, "method"    # Ljava/lang/reflect/Method;
    .param p3, "cssName"    # Ljava/lang/String;
    .param p4, "annotation"    # Landroid/view/ViewDebug$ExportedProperty;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 441
    iput-object p1, p0, Lcom/taobao/weex/devtools/inspector/elements/android/ViewDescriptor$MethodBackedCSSProperty;->this$0:Lcom/taobao/weex/devtools/inspector/elements/android/ViewDescriptor;

    .line 442
    invoke-direct {p0, p1, p3, p4}, Lcom/taobao/weex/devtools/inspector/elements/android/ViewDescriptor$ViewCSSProperty;-><init>(Lcom/taobao/weex/devtools/inspector/elements/android/ViewDescriptor;Ljava/lang/String;Landroid/view/ViewDebug$ExportedProperty;)V

    .line 443
    iput-object p2, p0, Lcom/taobao/weex/devtools/inspector/elements/android/ViewDescriptor$MethodBackedCSSProperty;->mMethod:Ljava/lang/reflect/Method;

    .line 444
    iget-object v0, p0, Lcom/taobao/weex/devtools/inspector/elements/android/ViewDescriptor$MethodBackedCSSProperty;->mMethod:Ljava/lang/reflect/Method;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 445
    return-void
.end method


# virtual methods
.method public final getValue(Landroid/view/View;)Ljava/lang/Object;
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/reflect/InvocationTargetException;,
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 449
    iget-object v0, p0, Lcom/taobao/weex/devtools/inspector/elements/android/ViewDescriptor$MethodBackedCSSProperty;->mMethod:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
