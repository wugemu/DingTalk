.class final Lcom/alibaba/android/dingtalkbase/widgets/views/CheckableTextView$1;
.super Ljava/lang/Object;
.source "CheckableTextView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/dingtalkbase/widgets/views/CheckableTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalkbase/widgets/views/CheckableTextView;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalkbase/widgets/views/CheckableTextView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalkbase/widgets/views/CheckableTextView;

    .prologue
    .line 43
    iput-object p1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/CheckableTextView$1;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/CheckableTextView;

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
    .line 47
    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/CheckableTextView$1;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/CheckableTextView;

    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/CheckableTextView$1;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/CheckableTextView;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/CheckableTextView;->a(Lcom/alibaba/android/dingtalkbase/widgets/views/CheckableTextView;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/CheckableTextView;->setChecked(Z)V

    .line 49
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/CheckableTextView$1;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/CheckableTextView;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/CheckableTextView;->b(Lcom/alibaba/android/dingtalkbase/widgets/views/CheckableTextView;)Lcom/alibaba/android/dingtalkbase/widgets/views/CheckableTextView$a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 50
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/CheckableTextView$1;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/CheckableTextView;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/CheckableTextView;->b(Lcom/alibaba/android/dingtalkbase/widgets/views/CheckableTextView;)Lcom/alibaba/android/dingtalkbase/widgets/views/CheckableTextView$a;

    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/CheckableTextView$1;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/CheckableTextView;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/CheckableTextView;->a(Lcom/alibaba/android/dingtalkbase/widgets/views/CheckableTextView;)Z

    .line 52
    :cond_0
    return-void

    .line 47
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
