.class final Lcom/alibaba/dingtalk/cspace/filepicker/CommonFilePickerActivity$4;
.super Ljava/lang/Object;
.source "CommonFilePickerActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/dingtalk/cspace/filepicker/CommonFilePickerActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Lcom/alibaba/dingtalk/cspace/filepicker/CommonFilePickerActivity$b;

.field final synthetic c:Landroid/widget/ListPopupWindow;

.field final synthetic d:Lcom/alibaba/dingtalk/cspace/filepicker/CommonFilePickerActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/dingtalk/cspace/filepicker/CommonFilePickerActivity;Ljava/util/List;Lcom/alibaba/dingtalk/cspace/filepicker/CommonFilePickerActivity$b;Landroid/widget/ListPopupWindow;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/dingtalk/cspace/filepicker/CommonFilePickerActivity;

    .prologue
    .line 231
    iput-object p1, p0, Lcom/alibaba/dingtalk/cspace/filepicker/CommonFilePickerActivity$4;->d:Lcom/alibaba/dingtalk/cspace/filepicker/CommonFilePickerActivity;

    iput-object p2, p0, Lcom/alibaba/dingtalk/cspace/filepicker/CommonFilePickerActivity$4;->a:Ljava/util/List;

    iput-object p3, p0, Lcom/alibaba/dingtalk/cspace/filepicker/CommonFilePickerActivity$4;->b:Lcom/alibaba/dingtalk/cspace/filepicker/CommonFilePickerActivity$b;

    iput-object p4, p0, Lcom/alibaba/dingtalk/cspace/filepicker/CommonFilePickerActivity$4;->c:Landroid/widget/ListPopupWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 1
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
    .line 234
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    if-ltz p3, :cond_0

    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/filepicker/CommonFilePickerActivity$4;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p3, v0, :cond_0

    .line 235
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/filepicker/CommonFilePickerActivity$4;->a:Ljava/util/List;

    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 236
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/filepicker/CommonFilePickerActivity$4;->b:Lcom/alibaba/dingtalk/cspace/filepicker/CommonFilePickerActivity$b;

    if-eqz v0, :cond_0

    .line 237
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/filepicker/CommonFilePickerActivity$4;->b:Lcom/alibaba/dingtalk/cspace/filepicker/CommonFilePickerActivity$b;

    invoke-interface {v0, p3}, Lcom/alibaba/dingtalk/cspace/filepicker/CommonFilePickerActivity$b;->a(I)V

    .line 240
    :cond_0
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/filepicker/CommonFilePickerActivity$4;->c:Landroid/widget/ListPopupWindow;

    if-eqz v0, :cond_1

    .line 241
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/filepicker/CommonFilePickerActivity$4;->c:Landroid/widget/ListPopupWindow;

    invoke-virtual {v0}, Landroid/widget/ListPopupWindow;->dismiss()V

    .line 243
    :cond_1
    return-void
.end method
