.class final Lcom/alibaba/android/dingtalkim/activities/MsgUnreadActivity$2;
.super Ljava/lang/Object;
.source "MsgUnreadActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/dingtalkim/activities/MsgUnreadActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalkim/activities/MsgUnreadActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalkim/activities/MsgUnreadActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalkim/activities/MsgUnreadActivity;

    .prologue
    .line 117
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/activities/MsgUnreadActivity$2;->a:Lcom/alibaba/android/dingtalkim/activities/MsgUnreadActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 6
    .param p2, "view"    # Landroid/view/View;
    .param p3, "i"    # I
    .param p4, "l"    # J
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
    .line 121
    .local p1, "adapterView":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    if-ltz p3, :cond_0

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/MsgUnreadActivity$2;->a:Lcom/alibaba/android/dingtalkim/activities/MsgUnreadActivity;

    invoke-static {v1}, Lcom/alibaba/android/dingtalkim/activities/MsgUnreadActivity;->b(Lcom/alibaba/android/dingtalkim/activities/MsgUnreadActivity;)Lcwh;

    move-result-object v1

    invoke-virtual {v1}, Lcwh;->getCount()I

    move-result v1

    if-ge p3, v1, :cond_0

    .line 122
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/MsgUnreadActivity$2;->a:Lcom/alibaba/android/dingtalkim/activities/MsgUnreadActivity;

    invoke-static {v1}, Lcom/alibaba/android/dingtalkim/activities/MsgUnreadActivity;->b(Lcom/alibaba/android/dingtalkim/activities/MsgUnreadActivity;)Lcwh;

    move-result-object v1

    invoke-virtual {v1, p3}, Lcwh;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ldqw;

    iget-object v0, v1, Ldqw;->a:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    .line 123
    .local v0, "obj":Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;
    if-eqz v0, :cond_0

    .line 124
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/MsgUnreadActivity$2;->a:Lcom/alibaba/android/dingtalkim/activities/MsgUnreadActivity;

    iget-wide v4, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->uid:J

    invoke-virtual {v1, v2, v4, v5}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a(Landroid/app/Activity;J)V

    .line 127
    .end local v0    # "obj":Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;
    :cond_0
    return-void
.end method
