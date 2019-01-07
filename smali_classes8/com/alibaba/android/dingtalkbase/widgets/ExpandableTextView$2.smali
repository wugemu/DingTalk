.class final Lcom/alibaba/android/dingtalkbase/widgets/ExpandableTextView$2;
.super Ljava/lang/Object;
.source "ExpandableTextView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/dingtalkbase/widgets/ExpandableTextView;->onMeasure(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalkbase/widgets/ExpandableTextView;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalkbase/widgets/ExpandableTextView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalkbase/widgets/ExpandableTextView;

    .prologue
    .line 234
    iput-object p1, p0, Lcom/alibaba/android/dingtalkbase/widgets/ExpandableTextView$2;->a:Lcom/alibaba/android/dingtalkbase/widgets/ExpandableTextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 237
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/ExpandableTextView$2;->a:Lcom/alibaba/android/dingtalkbase/widgets/ExpandableTextView;

    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/ExpandableTextView$2;->a:Lcom/alibaba/android/dingtalkbase/widgets/ExpandableTextView;

    invoke-virtual {v1}, Lcom/alibaba/android/dingtalkbase/widgets/ExpandableTextView;->getHeight()I

    move-result v1

    iget-object v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/ExpandableTextView$2;->a:Lcom/alibaba/android/dingtalkbase/widgets/ExpandableTextView;

    iget-object v2, v2, Lcom/alibaba/android/dingtalkbase/widgets/ExpandableTextView;->a:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getHeight()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-static {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/ExpandableTextView;->a(Lcom/alibaba/android/dingtalkbase/widgets/ExpandableTextView;I)I

    .line 238
    return-void
.end method
