.class final Lcom/alibaba/android/ding/widget/DingSubFilterDropDownAdapter$1;
.super Ljava/lang/Object;
.source "DingSubFilterDropDownAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/ding/widget/DingSubFilterDropDownAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/alibaba/android/ding/widget/DingSubFilterDropDownAdapter;


# direct methods
.method constructor <init>(Lcom/alibaba/android/ding/widget/DingSubFilterDropDownAdapter;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/ding/widget/DingSubFilterDropDownAdapter;

    .prologue
    .line 81
    iput-object p1, p0, Lcom/alibaba/android/ding/widget/DingSubFilterDropDownAdapter$1;->b:Lcom/alibaba/android/ding/widget/DingSubFilterDropDownAdapter;

    iput p2, p0, Lcom/alibaba/android/ding/widget/DingSubFilterDropDownAdapter$1;->a:I

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
    .line 85
    iget-object v0, p0, Lcom/alibaba/android/ding/widget/DingSubFilterDropDownAdapter$1;->b:Lcom/alibaba/android/ding/widget/DingSubFilterDropDownAdapter;

    invoke-static {v0}, Lcom/alibaba/android/ding/widget/DingSubFilterDropDownAdapter;->a(Lcom/alibaba/android/ding/widget/DingSubFilterDropDownAdapter;)Lbkw;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 86
    iget-object v0, p0, Lcom/alibaba/android/ding/widget/DingSubFilterDropDownAdapter$1;->b:Lcom/alibaba/android/ding/widget/DingSubFilterDropDownAdapter;

    invoke-static {v0}, Lcom/alibaba/android/ding/widget/DingSubFilterDropDownAdapter;->a(Lcom/alibaba/android/ding/widget/DingSubFilterDropDownAdapter;)Lbkw;

    move-result-object v0

    iget v1, p0, Lcom/alibaba/android/ding/widget/DingSubFilterDropDownAdapter$1;->a:I

    invoke-interface {v0, v1}, Lbkw;->a(I)V

    .line 88
    :cond_0
    return-void
.end method
