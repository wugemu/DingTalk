.class final Lcom/alibaba/android/dingtalkui/form/input/AbstractInputFormView$3;
.super Ljava/lang/Object;
.source "AbstractInputFormView.java"

# interfaces
.implements Landroid/text/TextWatcher;


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
    .line 89
    iput-object p1, p0, Lcom/alibaba/android/dingtalkui/form/input/AbstractInputFormView$3;->a:Lcom/alibaba/android/dingtalkui/form/input/AbstractInputFormView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final afterTextChanged(Landroid/text/Editable;)V
    .locals 1
    .param p1, "s"    # Landroid/text/Editable;

    .prologue
    .line 102
    iget-object v0, p0, Lcom/alibaba/android/dingtalkui/form/input/AbstractInputFormView$3;->a:Lcom/alibaba/android/dingtalkui/form/input/AbstractInputFormView;

    invoke-virtual {v0, p1}, Lcom/alibaba/android/dingtalkui/form/input/AbstractInputFormView;->a(Landroid/text/Editable;)V

    .line 103
    return-void
.end method

.method public final beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .prologue
    .line 93
    return-void
.end method

.method public final onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .prologue
    .line 98
    return-void
.end method
