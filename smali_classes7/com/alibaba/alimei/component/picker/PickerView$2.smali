.class final Lcom/alibaba/alimei/component/picker/PickerView$2;
.super Ljava/lang/Object;
.source "PickerView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/alimei/component/picker/PickerView;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/alibaba/alimei/component/picker/PickerView;


# direct methods
.method constructor <init>(Lcom/alibaba/alimei/component/picker/PickerView;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/alimei/component/picker/PickerView;

    .prologue
    .line 149
    iput-object p1, p0, Lcom/alibaba/alimei/component/picker/PickerView$2;->b:Lcom/alibaba/alimei/component/picker/PickerView;

    iput p2, p0, Lcom/alibaba/alimei/component/picker/PickerView$2;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 152
    const/4 v0, 0x0

    .local v0, "j":I
    :goto_0
    iget v2, p0, Lcom/alibaba/alimei/component/picker/PickerView$2;->a:I

    if-ge v0, v2, :cond_0

    .line 153
    iget-object v2, p0, Lcom/alibaba/alimei/component/picker/PickerView$2;->b:Lcom/alibaba/alimei/component/picker/PickerView;

    invoke-static {v2}, Lcom/alibaba/alimei/component/picker/PickerView;->b(Lcom/alibaba/alimei/component/picker/PickerView;)Landroid/widget/LinearLayout;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/dingtalkbase/widgets/views/wheelview/WheelView;

    .line 154
    .local v1, "wheelView":Lcom/alibaba/android/dingtalkbase/widgets/views/wheelview/WheelView;, "Lcom/alibaba/android/dingtalkbase/widgets/views/wheelview/WheelView<Ljava/lang/String;>;"
    iget-object v2, p0, Lcom/alibaba/alimei/component/picker/PickerView$2;->b:Lcom/alibaba/alimei/component/picker/PickerView;

    invoke-static {v2}, Lcom/alibaba/alimei/component/picker/PickerView;->c(Lcom/alibaba/alimei/component/picker/PickerView;)Lsj;

    move-result-object v2

    invoke-interface {v2, v0}, Lsj;->b(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/alibaba/android/dingtalkbase/widgets/views/wheelview/WheelView;->setSelectionPosition(I)V

    .line 152
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 156
    .end local v1    # "wheelView":Lcom/alibaba/android/dingtalkbase/widgets/views/wheelview/WheelView;, "Lcom/alibaba/android/dingtalkbase/widgets/views/wheelview/WheelView<Ljava/lang/String;>;"
    :cond_0
    return-void
.end method
