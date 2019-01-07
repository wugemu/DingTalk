.class final Lcom/alibaba/android/teleconf/activities/TeleVideoConfRecordActivity$6;
.super Ljava/lang/Object;
.source "TeleVideoConfRecordActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/teleconf/activities/TeleVideoConfRecordActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/teleconf/activities/TeleVideoConfRecordActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/teleconf/activities/TeleVideoConfRecordActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/teleconf/activities/TeleVideoConfRecordActivity;

    .prologue
    .line 226
    iput-object p1, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoConfRecordActivity$6;->a:Lcom/alibaba/android/teleconf/activities/TeleVideoConfRecordActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
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
            "IJ)Z"
        }
    .end annotation

    .prologue
    .line 229
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    invoke-virtual {p1, p3}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/teleconf/data/ApmtConfRecordItem;

    .line 230
    .local v0, "recordItem":Lcom/alibaba/android/teleconf/data/ApmtConfRecordItem;
    if-eqz v0, :cond_1

    .line 231
    iget-object v1, v0, Lcom/alibaba/android/teleconf/data/ApmtConfRecordItem;->b:Lcom/alibaba/android/teleconf/data/ApmtConfRecordItem$ItemInfoType;

    sget-object v2, Lcom/alibaba/android/teleconf/data/ApmtConfRecordItem$ItemInfoType;->EndedItemInfo:Lcom/alibaba/android/teleconf/data/ApmtConfRecordItem$ItemInfoType;

    if-eq v1, v2, :cond_0

    iget-object v1, v0, Lcom/alibaba/android/teleconf/data/ApmtConfRecordItem;->b:Lcom/alibaba/android/teleconf/data/ApmtConfRecordItem$ItemInfoType;

    sget-object v2, Lcom/alibaba/android/teleconf/data/ApmtConfRecordItem$ItemInfoType;->CancelItemInfo:Lcom/alibaba/android/teleconf/data/ApmtConfRecordItem$ItemInfoType;

    if-ne v1, v2, :cond_1

    .line 233
    :cond_0
    iget-object v1, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoConfRecordActivity$6;->a:Lcom/alibaba/android/teleconf/activities/TeleVideoConfRecordActivity;

    invoke-static {v1, v0}, Lcom/alibaba/android/teleconf/activities/TeleVideoConfRecordActivity;->c(Lcom/alibaba/android/teleconf/activities/TeleVideoConfRecordActivity;Lcom/alibaba/android/teleconf/data/ApmtConfRecordItem;)V

    .line 236
    :cond_1
    const/4 v1, 0x1

    return v1
.end method
