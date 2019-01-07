.class final Lcom/alibaba/android/dingtalkim/views/MenuInputView$2;
.super Ljava/lang/Object;
.source "MenuInputView.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/dingtalkim/views/MenuInputView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalkim/models/idl/CustomButtonModel;

.field final synthetic b:Lcom/alibaba/android/dingtalkim/views/MenuInputView;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalkim/views/MenuInputView;Lcom/alibaba/android/dingtalkim/models/idl/CustomButtonModel;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalkim/views/MenuInputView;

    .prologue
    .line 155
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/views/MenuInputView$2;->b:Lcom/alibaba/android/dingtalkim/views/MenuInputView;

    iput-object p2, p0, Lcom/alibaba/android/dingtalkim/views/MenuInputView$2;->a:Lcom/alibaba/android/dingtalkim/models/idl/CustomButtonModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 158
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/views/MenuInputView$2;->a:Lcom/alibaba/android/dingtalkim/models/idl/CustomButtonModel;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/models/idl/CustomButtonModel;->subMenu:Ljava/util/List;

    if-eqz v0, :cond_0

    if-ltz p3, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/views/MenuInputView$2;->a:Lcom/alibaba/android/dingtalkim/models/idl/CustomButtonModel;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/models/idl/CustomButtonModel;->subMenu:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p3, v0, :cond_0

    .line 159
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/views/MenuInputView$2;->b:Lcom/alibaba/android/dingtalkim/views/MenuInputView;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/views/MenuInputView;->a(Lcom/alibaba/android/dingtalkim/views/MenuInputView;)Lcom/alibaba/android/dingtalkim/views/MenuInputView$b;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 160
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/views/MenuInputView$2;->b:Lcom/alibaba/android/dingtalkim/views/MenuInputView;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/views/MenuInputView;->a(Lcom/alibaba/android/dingtalkim/views/MenuInputView;)Lcom/alibaba/android/dingtalkim/views/MenuInputView$b;

    move-result-object v1

    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/views/MenuInputView$2;->a:Lcom/alibaba/android/dingtalkim/models/idl/CustomButtonModel;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/models/idl/CustomButtonModel;->subMenu:Ljava/util/List;

    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkim/models/idl/CustomButtonModel;

    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/views/MenuInputView$2;->b:Lcom/alibaba/android/dingtalkim/views/MenuInputView;

    invoke-interface {v1, v0, v2}, Lcom/alibaba/android/dingtalkim/views/MenuInputView$b;->onClick(Lcom/alibaba/android/dingtalkim/models/idl/CustomButtonModel;Lcom/alibaba/android/dingtalkim/views/MenuInputView;)V

    .line 163
    :cond_0
    return-void
.end method
