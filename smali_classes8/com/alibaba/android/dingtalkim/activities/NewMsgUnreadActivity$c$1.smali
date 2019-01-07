.class final Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity$c$1;
.super Ljava/lang/Object;
.source "NewMsgUnreadActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity$c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity$c;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity$c;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity$c;

    .prologue
    .line 589
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity$c$1;->a:Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity$c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 593
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity$c$1;->a:Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity$c;

    .line 1509
    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity$c;->i:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    .line 593
    if-nez v0, :cond_0

    .line 607
    :goto_0
    return-void

    .line 597
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity$c$1;->a:Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity$c;

    .line 2509
    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity$c;->b:Landroid/widget/CheckBox;

    .line 597
    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 598
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity$c$1;->a:Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity$c;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity$c;->j:Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity;->k(Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity;)Ljava/util/HashSet;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity$c$1;->a:Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity$c;

    .line 3509
    iget-object v1, v1, Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity$c;->i:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    .line 598
    iget-wide v2, v1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->uid:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 599
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity$c$1;->a:Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity$c;

    .line 4509
    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity$c;->a:Landroid/view/View;

    .line 599
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity$c$1;->a:Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity$c;

    iget-object v1, v1, Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity$c;->j:Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity;

    invoke-virtual {v1}, Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lctk$c;->ui_common_white_icon_pressed_bg_color:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 605
    :goto_1
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity$c$1;->a:Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity$c;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity$c;->j:Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity;->l(Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity;)Landroid/widget/BaseAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 606
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity$c$1;->a:Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity$c;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity$c;->j:Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity;->m(Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity;)V

    goto :goto_0

    .line 601
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity$c$1;->a:Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity$c;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity$c;->j:Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity;->k(Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity;)Ljava/util/HashSet;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity$c$1;->a:Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity$c;

    .line 5509
    iget-object v1, v1, Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity$c;->i:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    .line 601
    iget-wide v2, v1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->uid:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 602
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity$c$1;->a:Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity$c;

    .line 6509
    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity$c;->a:Landroid/view/View;

    .line 602
    sget v1, Lctk$e;->common_white_cell_selector:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_1
.end method
