.class final Lcom/alibaba/dingtalk/cspace/widget/dropdown/DropDownMenuAdapter$1;
.super Ljava/lang/Object;
.source "DropDownMenuAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/dingtalk/cspace/widget/dropdown/DropDownMenuAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/alibaba/dingtalk/cspace/widget/dropdown/DropDownMenuAdapter;


# direct methods
.method constructor <init>(Lcom/alibaba/dingtalk/cspace/widget/dropdown/DropDownMenuAdapter;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/dingtalk/cspace/widget/dropdown/DropDownMenuAdapter;

    .prologue
    .line 82
    iput-object p1, p0, Lcom/alibaba/dingtalk/cspace/widget/dropdown/DropDownMenuAdapter$1;->b:Lcom/alibaba/dingtalk/cspace/widget/dropdown/DropDownMenuAdapter;

    iput p2, p0, Lcom/alibaba/dingtalk/cspace/widget/dropdown/DropDownMenuAdapter$1;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 85
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/widget/dropdown/DropDownMenuAdapter$1;->b:Lcom/alibaba/dingtalk/cspace/widget/dropdown/DropDownMenuAdapter;

    invoke-static {v0}, Lcom/alibaba/dingtalk/cspace/widget/dropdown/DropDownMenuAdapter;->a(Lcom/alibaba/dingtalk/cspace/widget/dropdown/DropDownMenuAdapter;)Lcom/alibaba/dingtalk/cspace/widget/dropdown/DropDownMenuAdapter$a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 86
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/widget/dropdown/DropDownMenuAdapter$1;->b:Lcom/alibaba/dingtalk/cspace/widget/dropdown/DropDownMenuAdapter;

    invoke-static {v0}, Lcom/alibaba/dingtalk/cspace/widget/dropdown/DropDownMenuAdapter;->a(Lcom/alibaba/dingtalk/cspace/widget/dropdown/DropDownMenuAdapter;)Lcom/alibaba/dingtalk/cspace/widget/dropdown/DropDownMenuAdapter$a;

    move-result-object v0

    iget v1, p0, Lcom/alibaba/dingtalk/cspace/widget/dropdown/DropDownMenuAdapter$1;->a:I

    invoke-interface {v0, v1}, Lcom/alibaba/dingtalk/cspace/widget/dropdown/DropDownMenuAdapter$a;->a(I)V

    .line 88
    :cond_0
    return-void
.end method
