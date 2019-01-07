.class final Lcom/alibaba/android/teleconf/activities/TeleVideoConfRecordActivity$5;
.super Ljava/lang/Object;
.source "TeleVideoConfRecordActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


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
    .line 189
    iput-object p1, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoConfRecordActivity$5;->a:Lcom/alibaba/android/teleconf/activities/TeleVideoConfRecordActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 7
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
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    const/4 v6, 0x0

    .line 192
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v1

    const-string/jumbo v2, "videocall_record_start_click"

    invoke-interface {v1, v2}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;)V

    .line 193
    iget-object v1, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoConfRecordActivity$5;->a:Lcom/alibaba/android/teleconf/activities/TeleVideoConfRecordActivity;

    invoke-static {v1}, Lcom/alibaba/android/teleconf/activities/TeleVideoConfRecordActivity;->c(Lcom/alibaba/android/teleconf/activities/TeleVideoConfRecordActivity;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoConfRecordActivity$5;->a:Lcom/alibaba/android/teleconf/activities/TeleVideoConfRecordActivity;

    invoke-static {v1}, Lcom/alibaba/android/teleconf/activities/TeleVideoConfRecordActivity;->b(Lcom/alibaba/android/teleconf/activities/TeleVideoConfRecordActivity;)Lexa$a;

    move-result-object v1

    if-nez v1, :cond_1

    .line 224
    :cond_0
    :goto_0
    return-void

    .line 196
    :cond_1
    iget-object v1, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoConfRecordActivity$5;->a:Lcom/alibaba/android/teleconf/activities/TeleVideoConfRecordActivity;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/alibaba/android/teleconf/activities/TeleVideoConfRecordActivity;->a(Lcom/alibaba/android/teleconf/activities/TeleVideoConfRecordActivity;Z)Z

    .line 197
    invoke-virtual {p1, p3}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/teleconf/data/ApmtConfRecordItem;

    .line 198
    .local v0, "recordItem":Lcom/alibaba/android/teleconf/data/ApmtConfRecordItem;
    if-eqz v0, :cond_3

    .line 199
    iget-object v1, v0, Lcom/alibaba/android/teleconf/data/ApmtConfRecordItem;->b:Lcom/alibaba/android/teleconf/data/ApmtConfRecordItem$ItemInfoType;

    sget-object v2, Lcom/alibaba/android/teleconf/data/ApmtConfRecordItem$ItemInfoType;->RunningItemInfo:Lcom/alibaba/android/teleconf/data/ApmtConfRecordItem$ItemInfoType;

    if-eq v1, v2, :cond_2

    iget-object v1, v0, Lcom/alibaba/android/teleconf/data/ApmtConfRecordItem;->b:Lcom/alibaba/android/teleconf/data/ApmtConfRecordItem$ItemInfoType;

    sget-object v2, Lcom/alibaba/android/teleconf/data/ApmtConfRecordItem$ItemInfoType;->EndedItemInfo:Lcom/alibaba/android/teleconf/data/ApmtConfRecordItem$ItemInfoType;

    if-eq v1, v2, :cond_2

    iget-object v1, v0, Lcom/alibaba/android/teleconf/data/ApmtConfRecordItem;->b:Lcom/alibaba/android/teleconf/data/ApmtConfRecordItem$ItemInfoType;

    sget-object v2, Lcom/alibaba/android/teleconf/data/ApmtConfRecordItem$ItemInfoType;->CancelItemInfo:Lcom/alibaba/android/teleconf/data/ApmtConfRecordItem$ItemInfoType;

    if-ne v1, v2, :cond_4

    .line 202
    :cond_2
    iget-object v1, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoConfRecordActivity$5;->a:Lcom/alibaba/android/teleconf/activities/TeleVideoConfRecordActivity;

    invoke-static {v1, v0}, Lcom/alibaba/android/teleconf/activities/TeleVideoConfRecordActivity;->a(Lcom/alibaba/android/teleconf/activities/TeleVideoConfRecordActivity;Lcom/alibaba/android/teleconf/data/ApmtConfRecordItem;)V

    .line 222
    :cond_3
    :goto_1
    iget-object v1, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoConfRecordActivity$5;->a:Lcom/alibaba/android/teleconf/activities/TeleVideoConfRecordActivity;

    invoke-static {v1, v6}, Lcom/alibaba/android/teleconf/activities/TeleVideoConfRecordActivity;->a(Lcom/alibaba/android/teleconf/activities/TeleVideoConfRecordActivity;Z)Z

    goto :goto_0

    .line 203
    :cond_4
    iget-object v1, v0, Lcom/alibaba/android/teleconf/data/ApmtConfRecordItem;->b:Lcom/alibaba/android/teleconf/data/ApmtConfRecordItem$ItemInfoType;

    sget-object v2, Lcom/alibaba/android/teleconf/data/ApmtConfRecordItem$ItemInfoType;->OrderItemInfo:Lcom/alibaba/android/teleconf/data/ApmtConfRecordItem$ItemInfoType;

    if-ne v1, v2, :cond_6

    .line 204
    iget-wide v2, v0, Lcom/alibaba/android/teleconf/data/ApmtConfRecordItem;->j:J

    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v1

    invoke-virtual {v1}, Lccr;->c()J

    move-result-wide v4

    cmp-long v1, v2, v4

    if-nez v1, :cond_5

    .line 206
    iget-object v1, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoConfRecordActivity$5;->a:Lcom/alibaba/android/teleconf/activities/TeleVideoConfRecordActivity;

    invoke-static {v1, v0}, Lcom/alibaba/android/teleconf/activities/TeleVideoConfRecordActivity;->b(Lcom/alibaba/android/teleconf/activities/TeleVideoConfRecordActivity;Lcom/alibaba/android/teleconf/data/ApmtConfRecordItem;)V

    goto :goto_1

    .line 208
    :cond_5
    iget-object v1, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoConfRecordActivity$5;->a:Lcom/alibaba/android/teleconf/activities/TeleVideoConfRecordActivity;

    invoke-static {v1, v0}, Lcom/alibaba/android/teleconf/activities/TeleVideoConfRecordActivity;->a(Lcom/alibaba/android/teleconf/activities/TeleVideoConfRecordActivity;Lcom/alibaba/android/teleconf/data/ApmtConfRecordItem;)V

    goto :goto_1

    .line 210
    :cond_6
    iget-object v1, v0, Lcom/alibaba/android/teleconf/data/ApmtConfRecordItem;->b:Lcom/alibaba/android/teleconf/data/ApmtConfRecordItem$ItemInfoType;

    sget-object v2, Lcom/alibaba/android/teleconf/data/ApmtConfRecordItem$ItemInfoType;->MoreItemInfo:Lcom/alibaba/android/teleconf/data/ApmtConfRecordItem$ItemInfoType;

    if-ne v1, v2, :cond_3

    .line 211
    iget-object v1, v0, Lcom/alibaba/android/teleconf/data/ApmtConfRecordItem;->c:Lcom/alibaba/android/teleconf/data/ApmtConfRecordItem$ItemInfoType;

    sget-object v2, Lcom/alibaba/android/teleconf/data/ApmtConfRecordItem$ItemInfoType;->RunningItemInfo:Lcom/alibaba/android/teleconf/data/ApmtConfRecordItem$ItemInfoType;

    if-ne v1, v2, :cond_7

    .line 212
    iget-object v1, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoConfRecordActivity$5;->a:Lcom/alibaba/android/teleconf/activities/TeleVideoConfRecordActivity;

    invoke-static {v1}, Lcom/alibaba/android/teleconf/activities/TeleVideoConfRecordActivity;->b(Lcom/alibaba/android/teleconf/activities/TeleVideoConfRecordActivity;)Lexa$a;

    move-result-object v1

    invoke-interface {v1, v6}, Lexa$a;->b(Z)V

    goto :goto_1

    .line 213
    :cond_7
    iget-object v1, v0, Lcom/alibaba/android/teleconf/data/ApmtConfRecordItem;->c:Lcom/alibaba/android/teleconf/data/ApmtConfRecordItem$ItemInfoType;

    sget-object v2, Lcom/alibaba/android/teleconf/data/ApmtConfRecordItem$ItemInfoType;->OrderItemInfo:Lcom/alibaba/android/teleconf/data/ApmtConfRecordItem$ItemInfoType;

    if-ne v1, v2, :cond_8

    .line 214
    iget-object v1, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoConfRecordActivity$5;->a:Lcom/alibaba/android/teleconf/activities/TeleVideoConfRecordActivity;

    invoke-static {v1}, Lcom/alibaba/android/teleconf/activities/TeleVideoConfRecordActivity;->b(Lcom/alibaba/android/teleconf/activities/TeleVideoConfRecordActivity;)Lexa$a;

    move-result-object v1

    invoke-interface {v1, v6}, Lexa$a;->c(Z)V

    goto :goto_1

    .line 215
    :cond_8
    iget-object v1, v0, Lcom/alibaba/android/teleconf/data/ApmtConfRecordItem;->c:Lcom/alibaba/android/teleconf/data/ApmtConfRecordItem$ItemInfoType;

    sget-object v2, Lcom/alibaba/android/teleconf/data/ApmtConfRecordItem$ItemInfoType;->EndedItemInfo:Lcom/alibaba/android/teleconf/data/ApmtConfRecordItem$ItemInfoType;

    if-ne v1, v2, :cond_9

    .line 216
    iget-object v1, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoConfRecordActivity$5;->a:Lcom/alibaba/android/teleconf/activities/TeleVideoConfRecordActivity;

    invoke-static {v1}, Lcom/alibaba/android/teleconf/activities/TeleVideoConfRecordActivity;->b(Lcom/alibaba/android/teleconf/activities/TeleVideoConfRecordActivity;)Lexa$a;

    move-result-object v1

    invoke-interface {v1, v6}, Lexa$a;->d(Z)V

    goto :goto_1

    .line 217
    :cond_9
    iget-object v1, v0, Lcom/alibaba/android/teleconf/data/ApmtConfRecordItem;->c:Lcom/alibaba/android/teleconf/data/ApmtConfRecordItem$ItemInfoType;

    sget-object v2, Lcom/alibaba/android/teleconf/data/ApmtConfRecordItem$ItemInfoType;->CancelItemInfo:Lcom/alibaba/android/teleconf/data/ApmtConfRecordItem$ItemInfoType;

    if-ne v1, v2, :cond_3

    .line 218
    iget-object v1, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoConfRecordActivity$5;->a:Lcom/alibaba/android/teleconf/activities/TeleVideoConfRecordActivity;

    invoke-static {v1}, Lcom/alibaba/android/teleconf/activities/TeleVideoConfRecordActivity;->b(Lcom/alibaba/android/teleconf/activities/TeleVideoConfRecordActivity;)Lexa$a;

    move-result-object v1

    invoke-interface {v1, v6}, Lexa$a;->e(Z)V

    goto :goto_1
.end method
