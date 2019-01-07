.class final Lcom/alibaba/android/user/contact/view/IconEditText$1;
.super Ljava/lang/Object;
.source "IconEditText.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/user/contact/view/IconEditText;->a(Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/user/contact/view/IconEditText;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/contact/view/IconEditText;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/user/contact/view/IconEditText;

    .prologue
    .line 109
    iput-object p1, p0, Lcom/alibaba/android/user/contact/view/IconEditText$1;->a:Lcom/alibaba/android/user/contact/view/IconEditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onFocusChange(Landroid/view/View;Z)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "hasFocus"    # Z

    .prologue
    .line 112
    iget-object v0, p0, Lcom/alibaba/android/user/contact/view/IconEditText$1;->a:Lcom/alibaba/android/user/contact/view/IconEditText;

    invoke-static {v0}, Lcom/alibaba/android/user/contact/view/IconEditText;->a(Lcom/alibaba/android/user/contact/view/IconEditText;)Landroid/view/View$OnFocusChangeListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 113
    iget-object v0, p0, Lcom/alibaba/android/user/contact/view/IconEditText$1;->a:Lcom/alibaba/android/user/contact/view/IconEditText;

    invoke-static {v0}, Lcom/alibaba/android/user/contact/view/IconEditText;->a(Lcom/alibaba/android/user/contact/view/IconEditText;)Landroid/view/View$OnFocusChangeListener;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/view/View$OnFocusChangeListener;->onFocusChange(Landroid/view/View;Z)V

    .line 115
    :cond_0
    return-void
.end method
