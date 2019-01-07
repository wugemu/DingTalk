.class final Lcom/alibaba/android/user/contact/view/TextEdit$1;
.super Ljava/lang/Object;
.source "TextEdit.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/user/contact/view/TextEdit;->a(Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/user/contact/view/TextEdit;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/contact/view/TextEdit;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/user/contact/view/TextEdit;

    .prologue
    .line 123
    iput-object p1, p0, Lcom/alibaba/android/user/contact/view/TextEdit$1;->a:Lcom/alibaba/android/user/contact/view/TextEdit;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onFocusChange(Landroid/view/View;Z)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "hasFocus"    # Z

    .prologue
    .line 126
    iget-object v0, p0, Lcom/alibaba/android/user/contact/view/TextEdit$1;->a:Lcom/alibaba/android/user/contact/view/TextEdit;

    invoke-static {v0}, Lcom/alibaba/android/user/contact/view/TextEdit;->a(Lcom/alibaba/android/user/contact/view/TextEdit;)Landroid/view/View$OnFocusChangeListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 127
    iget-object v0, p0, Lcom/alibaba/android/user/contact/view/TextEdit$1;->a:Lcom/alibaba/android/user/contact/view/TextEdit;

    invoke-static {v0}, Lcom/alibaba/android/user/contact/view/TextEdit;->a(Lcom/alibaba/android/user/contact/view/TextEdit;)Landroid/view/View$OnFocusChangeListener;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/view/View$OnFocusChangeListener;->onFocusChange(Landroid/view/View;Z)V

    .line 129
    :cond_0
    return-void
.end method
