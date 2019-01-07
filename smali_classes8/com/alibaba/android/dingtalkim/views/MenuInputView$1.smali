.class final Lcom/alibaba/android/dingtalkim/views/MenuInputView$1;
.super Ljava/lang/Object;
.source "MenuInputView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/dingtalkim/views/MenuInputView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalkim/views/MenuInputView;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalkim/views/MenuInputView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalkim/views/MenuInputView;

    .prologue
    .line 119
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/views/MenuInputView$1;->a:Lcom/alibaba/android/dingtalkim/views/MenuInputView;

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
    .line 122
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Lcom/alibaba/android/dingtalkim/models/idl/CustomButtonModel;

    if-eqz v1, :cond_0

    .line 123
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkim/models/idl/CustomButtonModel;

    .line 124
    .local v0, "buttonData":Lcom/alibaba/android/dingtalkim/models/idl/CustomButtonModel;
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/views/MenuInputView$1;->a:Lcom/alibaba/android/dingtalkim/views/MenuInputView;

    invoke-static {v1, p1, v0}, Lcom/alibaba/android/dingtalkim/views/MenuInputView;->a(Lcom/alibaba/android/dingtalkim/views/MenuInputView;Landroid/view/View;Lcom/alibaba/android/dingtalkim/models/idl/CustomButtonModel;)V

    .line 126
    .end local v0    # "buttonData":Lcom/alibaba/android/dingtalkim/models/idl/CustomButtonModel;
    :cond_0
    return-void
.end method
