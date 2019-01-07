.class final Lcom/alibaba/android/dingtalkui/list/doubleline/DtL2SelectorItemView$1;
.super Ljava/lang/Object;
.source "DtL2SelectorItemView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/dingtalkui/list/doubleline/DtL2SelectorItemView;->a(Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalkui/list/doubleline/DtL2SelectorItemView;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalkui/list/doubleline/DtL2SelectorItemView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalkui/list/doubleline/DtL2SelectorItemView;

    .prologue
    .line 65
    iput-object p1, p0, Lcom/alibaba/android/dingtalkui/list/doubleline/DtL2SelectorItemView$1;->a:Lcom/alibaba/android/dingtalkui/list/doubleline/DtL2SelectorItemView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 68
    iget-object v1, p0, Lcom/alibaba/android/dingtalkui/list/doubleline/DtL2SelectorItemView$1;->a:Lcom/alibaba/android/dingtalkui/list/doubleline/DtL2SelectorItemView;

    invoke-static {v1}, Lcom/alibaba/android/dingtalkui/list/doubleline/DtL2SelectorItemView;->a(Lcom/alibaba/android/dingtalkui/list/doubleline/DtL2SelectorItemView;)Landroid/widget/CheckBox;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    .line 69
    .local v0, "check":Z
    iget-object v1, p0, Lcom/alibaba/android/dingtalkui/list/doubleline/DtL2SelectorItemView$1;->a:Lcom/alibaba/android/dingtalkui/list/doubleline/DtL2SelectorItemView;

    invoke-static {v1}, Lcom/alibaba/android/dingtalkui/list/doubleline/DtL2SelectorItemView;->a(Lcom/alibaba/android/dingtalkui/list/doubleline/DtL2SelectorItemView;)Landroid/widget/CheckBox;

    move-result-object v2

    if-nez v0, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v2, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 70
    return-void

    .line 69
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
