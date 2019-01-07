.class final Lcom/alibaba/android/dingtalkui/form/input/AbstractInputFormView$2;
.super Ljava/lang/Object;
.source "AbstractInputFormView.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/dingtalkui/form/input/AbstractInputFormView;->a(Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalkui/form/input/AbstractInputFormView;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalkui/form/input/AbstractInputFormView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalkui/form/input/AbstractInputFormView;

    .prologue
    .line 80
    iput-object p1, p0, Lcom/alibaba/android/dingtalkui/form/input/AbstractInputFormView$2;->a:Lcom/alibaba/android/dingtalkui/form/input/AbstractInputFormView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onFocusChange(Landroid/view/View;Z)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;
    .param p2, "hasFocus"    # Z

    .prologue
    .line 83
    iget-object v0, p0, Lcom/alibaba/android/dingtalkui/form/input/AbstractInputFormView$2;->a:Lcom/alibaba/android/dingtalkui/form/input/AbstractInputFormView;

    invoke-virtual {v0, p2}, Lcom/alibaba/android/dingtalkui/form/input/AbstractInputFormView;->a(Z)V

    .line 84
    return-void
.end method
