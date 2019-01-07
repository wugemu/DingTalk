.class final Lcom/alibaba/android/teleconf/activities/TeleConfFeedbackActivity$1;
.super Ljava/lang/Object;
.source "TeleConfFeedbackActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/teleconf/activities/TeleConfFeedbackActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/teleconf/activities/TeleConfFeedbackActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/teleconf/activities/TeleConfFeedbackActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/teleconf/activities/TeleConfFeedbackActivity;

    .prologue
    .line 139
    iput-object p1, p0, Lcom/alibaba/android/teleconf/activities/TeleConfFeedbackActivity$1;->a:Lcom/alibaba/android/teleconf/activities/TeleConfFeedbackActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 5
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
    .line 142
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v1, p0, Lcom/alibaba/android/teleconf/activities/TeleConfFeedbackActivity$1;->a:Lcom/alibaba/android/teleconf/activities/TeleConfFeedbackActivity;

    invoke-static {v1}, Lcom/alibaba/android/teleconf/activities/TeleConfFeedbackActivity;->a(Lcom/alibaba/android/teleconf/activities/TeleConfFeedbackActivity;)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/alibaba/android/teleconf/activities/TeleConfFeedbackActivity$1;->a:Lcom/alibaba/android/teleconf/activities/TeleConfFeedbackActivity;

    invoke-static {v1}, Lcom/alibaba/android/teleconf/activities/TeleConfFeedbackActivity;->a(Lcom/alibaba/android/teleconf/activities/TeleConfFeedbackActivity;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-gtz v1, :cond_1

    .line 156
    :cond_0
    :goto_0
    return-void

    .line 145
    :cond_1
    const-string/jumbo v1, "tele_conf"

    invoke-static {}, Lcom/alibaba/android/teleconf/activities/TeleConfFeedbackActivity;->a()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "click problem pos "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    iget-object v1, p0, Lcom/alibaba/android/teleconf/activities/TeleConfFeedbackActivity$1;->a:Lcom/alibaba/android/teleconf/activities/TeleConfFeedbackActivity;

    invoke-static {v1}, Lcom/alibaba/android/teleconf/activities/TeleConfFeedbackActivity;->a(Lcom/alibaba/android/teleconf/activities/TeleConfFeedbackActivity;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Levk;

    .line 147
    .local v0, "problemObject":Levk;
    if-eqz v0, :cond_0

    .line 148
    iget-boolean v1, v0, Levk;->c:Z

    if-nez v1, :cond_0

    .line 149
    iget-object v1, p0, Lcom/alibaba/android/teleconf/activities/TeleConfFeedbackActivity$1;->a:Lcom/alibaba/android/teleconf/activities/TeleConfFeedbackActivity;

    invoke-static {v1, p3}, Lcom/alibaba/android/teleconf/activities/TeleConfFeedbackActivity;->a(Lcom/alibaba/android/teleconf/activities/TeleConfFeedbackActivity;I)V

    .line 150
    iget-object v1, p0, Lcom/alibaba/android/teleconf/activities/TeleConfFeedbackActivity$1;->a:Lcom/alibaba/android/teleconf/activities/TeleConfFeedbackActivity;

    invoke-static {v1}, Lcom/alibaba/android/teleconf/activities/TeleConfFeedbackActivity;->b(Lcom/alibaba/android/teleconf/activities/TeleConfFeedbackActivity;)Leup;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 151
    iget-object v1, p0, Lcom/alibaba/android/teleconf/activities/TeleConfFeedbackActivity$1;->a:Lcom/alibaba/android/teleconf/activities/TeleConfFeedbackActivity;

    invoke-static {v1}, Lcom/alibaba/android/teleconf/activities/TeleConfFeedbackActivity;->b(Lcom/alibaba/android/teleconf/activities/TeleConfFeedbackActivity;)Leup;

    move-result-object v1

    invoke-virtual {v1}, Leup;->notifyDataSetChanged()V

    .line 153
    :cond_2
    iget-object v2, p0, Lcom/alibaba/android/teleconf/activities/TeleConfFeedbackActivity$1;->a:Lcom/alibaba/android/teleconf/activities/TeleConfFeedbackActivity;

    iget-object v1, p0, Lcom/alibaba/android/teleconf/activities/TeleConfFeedbackActivity$1;->a:Lcom/alibaba/android/teleconf/activities/TeleConfFeedbackActivity;

    invoke-static {v1}, Lcom/alibaba/android/teleconf/activities/TeleConfFeedbackActivity;->a(Lcom/alibaba/android/teleconf/activities/TeleConfFeedbackActivity;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Levk;

    iget-object v1, v1, Levk;->a:Lcom/alibaba/android/teleconf/sdk/idl/model/FeedbackTypeEnum;

    invoke-static {v2, v1}, Lcom/alibaba/android/teleconf/activities/TeleConfFeedbackActivity;->a(Lcom/alibaba/android/teleconf/activities/TeleConfFeedbackActivity;Lcom/alibaba/android/teleconf/sdk/idl/model/FeedbackTypeEnum;)Lcom/alibaba/android/teleconf/sdk/idl/model/FeedbackTypeEnum;

    goto :goto_0
.end method
