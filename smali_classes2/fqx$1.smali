.class final Lfqx$1;
.super Ljava/lang/Object;
.source "LabelGridAdapter.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfqx;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/user/label/LabelExtensionObject;

.field final synthetic b:Lcom/alibaba/android/user/widget/LabelSelectView;

.field final synthetic c:I

.field final synthetic d:Lfqx;


# direct methods
.method constructor <init>(Lfqx;Lcom/alibaba/android/user/label/LabelExtensionObject;Lcom/alibaba/android/user/widget/LabelSelectView;I)V
    .locals 0
    .param p1, "this$0"    # Lfqx;

    .prologue
    .line 122
    iput-object p1, p0, Lfqx$1;->d:Lfqx;

    iput-object p2, p0, Lfqx$1;->a:Lcom/alibaba/android/user/label/LabelExtensionObject;

    iput-object p3, p0, Lfqx$1;->b:Lcom/alibaba/android/user/widget/LabelSelectView;

    iput p4, p0, Lfqx$1;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 3
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 125
    iget-object v1, p0, Lfqx$1;->a:Lcom/alibaba/android/user/label/LabelExtensionObject;

    invoke-virtual {v1, p2}, Lcom/alibaba/android/user/label/LabelExtensionObject;->setIsChecked(Z)V

    .line 126
    iget-object v1, p0, Lfqx$1;->b:Lcom/alibaba/android/user/widget/LabelSelectView;

    invoke-virtual {v1, p2}, Lcom/alibaba/android/user/widget/LabelSelectView;->setChecked(Z)V

    .line 129
    iget-object v1, p0, Lfqx$1;->d:Lfqx;

    invoke-static {v1}, Lfqx;->a(Lfqx;)Z

    move-result v1

    if-nez v1, :cond_1

    if-eqz p2, :cond_1

    iget-object v1, p0, Lfqx$1;->d:Lfqx;

    invoke-static {v1}, Lfqx;->b(Lfqx;)I

    move-result v1

    iget v2, p0, Lfqx$1;->c:I

    if-eq v1, v2, :cond_1

    .line 130
    iget-object v1, p0, Lfqx$1;->d:Lfqx;

    iget-object v2, p0, Lfqx$1;->d:Lfqx;

    invoke-static {v2}, Lfqx;->b(Lfqx;)I

    move-result v2

    invoke-virtual {v1, v2}, Lfqx;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/user/label/LabelExtensionObject;

    .line 131
    .local v0, "last":Lcom/alibaba/android/user/label/LabelExtensionObject;
    if-eqz v0, :cond_0

    .line 132
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alibaba/android/user/label/LabelExtensionObject;->setIsChecked(Z)V

    .line 134
    :cond_0
    iget-object v1, p0, Lfqx$1;->d:Lfqx;

    iget v2, p0, Lfqx$1;->c:I

    invoke-static {v1, v2}, Lfqx;->a(Lfqx;I)I

    .line 135
    iget-object v1, p0, Lfqx$1;->d:Lfqx;

    invoke-virtual {v1}, Lfqx;->notifyDataSetChanged()V

    .line 138
    .end local v0    # "last":Lcom/alibaba/android/user/label/LabelExtensionObject;
    :cond_1
    iget-object v1, p0, Lfqx$1;->d:Lfqx;

    invoke-static {v1}, Lfqx;->c(Lfqx;)Lfqy;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 139
    iget-object v1, p0, Lfqx$1;->d:Lfqx;

    invoke-static {v1}, Lfqx;->c(Lfqx;)Lfqy;

    move-result-object v1

    invoke-interface {v1}, Lfqy;->a()V

    .line 141
    :cond_2
    return-void
.end method
