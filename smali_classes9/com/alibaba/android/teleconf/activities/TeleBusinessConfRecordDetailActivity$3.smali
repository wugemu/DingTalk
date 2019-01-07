.class final Lcom/alibaba/android/teleconf/activities/TeleBusinessConfRecordDetailActivity$3;
.super Ljava/lang/Object;
.source "TeleBusinessConfRecordDetailActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/teleconf/activities/TeleBusinessConfRecordDetailActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/teleconf/activities/TeleBusinessConfRecordDetailActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/teleconf/activities/TeleBusinessConfRecordDetailActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/teleconf/activities/TeleBusinessConfRecordDetailActivity;

    .prologue
    .line 183
    iput-object p1, p0, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfRecordDetailActivity$3;->a:Lcom/alibaba/android/teleconf/activities/TeleBusinessConfRecordDetailActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 6
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
    .line 186
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v2, p0, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfRecordDetailActivity$3;->a:Lcom/alibaba/android/teleconf/activities/TeleBusinessConfRecordDetailActivity;

    invoke-static {v2}, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfRecordDetailActivity;->d(Lcom/alibaba/android/teleconf/activities/TeleBusinessConfRecordDetailActivity;)Leum;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 187
    iget-object v2, p0, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfRecordDetailActivity$3;->a:Lcom/alibaba/android/teleconf/activities/TeleBusinessConfRecordDetailActivity;

    invoke-static {v2}, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfRecordDetailActivity;->d(Lcom/alibaba/android/teleconf/activities/TeleBusinessConfRecordDetailActivity;)Leum;

    move-result-object v2

    invoke-virtual {v2, p3}, Leum;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/teleconf/data/TeleBusinessConfUserObject;

    .line 188
    .local v1, "userObject":Lcom/alibaba/android/teleconf/data/TeleBusinessConfUserObject;
    if-eqz v1, :cond_0

    iget-object v2, v1, Lcom/alibaba/android/teleconf/data/TeleBusinessConfUserObject;->a:Ljava/lang/Object;

    if-eqz v2, :cond_0

    .line 189
    iget-object v2, v1, Lcom/alibaba/android/teleconf/data/TeleBusinessConfUserObject;->a:Ljava/lang/Object;

    instance-of v2, v2, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    if-eqz v2, :cond_0

    .line 190
    iget-object v0, v1, Lcom/alibaba/android/teleconf/data/TeleBusinessConfUserObject;->a:Ljava/lang/Object;

    check-cast v0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    .line 191
    .local v0, "user":Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;
    iget-object v2, p0, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfRecordDetailActivity$3;->a:Lcom/alibaba/android/teleconf/activities/TeleBusinessConfRecordDetailActivity;

    iget-wide v4, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->uid:J

    invoke-static {v2, v4, v5}, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfRecordDetailActivity;->a(Lcom/alibaba/android/teleconf/activities/TeleBusinessConfRecordDetailActivity;J)V

    .line 195
    .end local v0    # "user":Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;
    .end local v1    # "userObject":Lcom/alibaba/android/teleconf/data/TeleBusinessConfUserObject;
    :cond_0
    return-void
.end method
