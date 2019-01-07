.class final Lcom/alibaba/android/dingtalkui/form/input/AbstractInputFormView$1;
.super Ljava/lang/Object;
.source "AbstractInputFormView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    .line 73
    iput-object p1, p0, Lcom/alibaba/android/dingtalkui/form/input/AbstractInputFormView$1;->a:Lcom/alibaba/android/dingtalkui/form/input/AbstractInputFormView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 77
    iget-object v0, p0, Lcom/alibaba/android/dingtalkui/form/input/AbstractInputFormView$1;->a:Lcom/alibaba/android/dingtalkui/form/input/AbstractInputFormView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkui/form/input/AbstractInputFormView;->b(Z)V

    .line 78
    return-void
.end method
