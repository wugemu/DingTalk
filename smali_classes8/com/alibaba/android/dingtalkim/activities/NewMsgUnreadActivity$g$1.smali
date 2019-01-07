.class final Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity$g$1;
.super Ljava/lang/Object;
.source "NewMsgUnreadActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity$g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/ArrayList;

.field final synthetic b:Ljava/util/HashMap;

.field final synthetic c:Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity$g;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity$g;Ljava/util/ArrayList;Ljava/util/HashMap;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity$g;

    .prologue
    .line 852
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity$g$1;->c:Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity$g;

    iput-object p2, p0, Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity$g$1;->a:Ljava/util/ArrayList;

    iput-object p3, p0, Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity$g$1;->b:Ljava/util/HashMap;

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
    .line 855
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 856
    .local v0, "bundle":Landroid/os/Bundle;
    const-string/jumbo v1, "org_id"

    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity$g$1;->c:Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity$g;

    iget-object v2, v2, Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity$g;->a:Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity;

    invoke-static {v2}, Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity;->s(Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity;)J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 857
    const-string/jumbo v1, "key_selected_user_list"

    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity$g$1;->a:Ljava/util/ArrayList;

    invoke-static {v2}, Ldqw;->a(Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 858
    const-string/jumbo v1, "key_selected_user_name_map"

    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity$g$1;->b:Ljava/util/HashMap;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 859
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity$g$1;->c:Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity$g;

    iget-object v2, v2, Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity$g;->a:Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity;

    invoke-virtual {v1, v2, v0}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->p(Landroid/app/Activity;Landroid/os/Bundle;)V

    .line 860
    return-void
.end method
