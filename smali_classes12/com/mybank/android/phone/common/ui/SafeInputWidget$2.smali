.class final Lcom/mybank/android/phone/common/ui/SafeInputWidget$2;
.super Ljava/lang/Object;
.source "SafeInputWidget.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mybank/android/phone/common/ui/SafeInputWidget;->initView(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mybank/android/phone/common/ui/SafeInputWidget;


# direct methods
.method constructor <init>(Lcom/mybank/android/phone/common/ui/SafeInputWidget;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mybank/android/phone/common/ui/SafeInputWidget;

    .prologue
    .line 135
    iput-object p1, p0, Lcom/mybank/android/phone/common/ui/SafeInputWidget$2;->a:Lcom/mybank/android/phone/common/ui/SafeInputWidget;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onFocusChange(Landroid/view/View;Z)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;
    .param p2, "hasFocus"    # Z

    .prologue
    .line 137
    iget-object v0, p0, Lcom/mybank/android/phone/common/ui/SafeInputWidget$2;->a:Lcom/mybank/android/phone/common/ui/SafeInputWidget;

    invoke-static {v0}, Lcom/mybank/android/phone/common/ui/SafeInputWidget;->access$400(Lcom/mybank/android/phone/common/ui/SafeInputWidget;)Landroid/view/View$OnFocusChangeListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 138
    iget-object v0, p0, Lcom/mybank/android/phone/common/ui/SafeInputWidget$2;->a:Lcom/mybank/android/phone/common/ui/SafeInputWidget;

    invoke-static {v0}, Lcom/mybank/android/phone/common/ui/SafeInputWidget;->access$400(Lcom/mybank/android/phone/common/ui/SafeInputWidget;)Landroid/view/View$OnFocusChangeListener;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/view/View$OnFocusChangeListener;->onFocusChange(Landroid/view/View;Z)V

    .line 140
    :cond_0
    return-void
.end method
