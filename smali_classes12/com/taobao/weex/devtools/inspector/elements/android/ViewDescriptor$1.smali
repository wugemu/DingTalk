.class Lcom/taobao/weex/devtools/inspector/elements/android/ViewDescriptor$1;
.super Ljava/lang/Object;
.source "ViewDescriptor.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/weex/devtools/inspector/elements/android/ViewDescriptor;->getViewProperties()Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/taobao/weex/devtools/inspector/elements/android/ViewDescriptor$ViewCSSProperty;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/taobao/weex/devtools/inspector/elements/android/ViewDescriptor;


# direct methods
.method constructor <init>(Lcom/taobao/weex/devtools/inspector/elements/android/ViewDescriptor;)V
    .locals 0
    .param p1, "this$0"    # Lcom/taobao/weex/devtools/inspector/elements/android/ViewDescriptor;

    .prologue
    .line 97
    iput-object p1, p0, Lcom/taobao/weex/devtools/inspector/elements/android/ViewDescriptor$1;->this$0:Lcom/taobao/weex/devtools/inspector/elements/android/ViewDescriptor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/taobao/weex/devtools/inspector/elements/android/ViewDescriptor$ViewCSSProperty;Lcom/taobao/weex/devtools/inspector/elements/android/ViewDescriptor$ViewCSSProperty;)I
    .locals 2
    .param p1, "lhs"    # Lcom/taobao/weex/devtools/inspector/elements/android/ViewDescriptor$ViewCSSProperty;
    .param p2, "rhs"    # Lcom/taobao/weex/devtools/inspector/elements/android/ViewDescriptor$ViewCSSProperty;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 100
    invoke-virtual {p1}, Lcom/taobao/weex/devtools/inspector/elements/android/ViewDescriptor$ViewCSSProperty;->getCSSName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcom/taobao/weex/devtools/inspector/elements/android/ViewDescriptor$ViewCSSProperty;->getCSSName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 97
    check-cast p1, Lcom/taobao/weex/devtools/inspector/elements/android/ViewDescriptor$ViewCSSProperty;

    check-cast p2, Lcom/taobao/weex/devtools/inspector/elements/android/ViewDescriptor$ViewCSSProperty;

    invoke-virtual {p0, p1, p2}, Lcom/taobao/weex/devtools/inspector/elements/android/ViewDescriptor$1;->compare(Lcom/taobao/weex/devtools/inspector/elements/android/ViewDescriptor$ViewCSSProperty;Lcom/taobao/weex/devtools/inspector/elements/android/ViewDescriptor$ViewCSSProperty;)I

    move-result v0

    return v0
.end method
