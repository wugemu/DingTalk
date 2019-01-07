.class final Lfjq$3;
.super Ljava/lang/Object;
.source "LocalContactViewHolder.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfjq;->a(Lcom/alibaba/android/dingtalk/userbase/model/LocalContactObject;ILandroid/view/ViewGroup;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lfjq;


# direct methods
.method constructor <init>(Lfjq;)V
    .locals 0
    .param p1, "this$0"    # Lfjq;

    .prologue
    .line 230
    iput-object p1, p0, Lfjq$3;->a:Lfjq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 233
    iget-object v0, p0, Lfjq$3;->a:Lfjq;

    invoke-static {v0}, Lfjq;->b(Lfjq;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lfjq$3;->a:Lfjq;

    invoke-static {v0}, Lfjq;->c(Lfjq;)Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/alibaba/android/dingtalk/userbase/model/LocalContactObject;

    if-eqz v0, :cond_0

    .line 234
    iget-object v0, p0, Lfjq$3;->a:Lfjq;

    invoke-static {v0}, Lfjq;->d(Lfjq;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalk/userbase/model/LocalContactObject;

    iget-wide v0, v0, Lcom/alibaba/android/dingtalk/userbase/model/LocalContactObject;->uid:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    .line 235
    new-instance v1, Lfjl;

    iget-object v0, p0, Lfjq$3;->a:Lfjq;

    invoke-static {v0}, Lfjq;->f(Lfjq;)Landroid/app/Activity;

    move-result-object v0

    invoke-direct {v1, v0}, Lfjl;-><init>(Landroid/app/Activity;)V

    iget-object v0, p0, Lfjq$3;->a:Lfjq;

    invoke-static {v0}, Lfjq;->e(Lfjq;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalk/userbase/model/LocalContactObject;

    iget-wide v2, v0, Lcom/alibaba/android/dingtalk/userbase/model/LocalContactObject;->uid:J

    invoke-virtual {v1, v2, v3}, Lfjl;->a(J)V

    .line 239
    :goto_0
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v0

    const-string/jumbo v1, "call_record_contact_profile_click"

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;)V

    .line 241
    :cond_0
    return-void

    .line 237
    :cond_1
    new-instance v0, Lfjl;

    iget-object v1, p0, Lfjq$3;->a:Lfjq;

    invoke-static {v1}, Lfjq;->g(Lfjq;)Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lfjl;-><init>(Landroid/app/Activity;)V

    iget-object v1, p0, Lfjq$3;->a:Lfjq;

    .line 1072
    iget-object v1, v1, Lfjq;->w:Ljava/lang/String;

    .line 237
    iget-object v2, p0, Lfjq$3;->a:Lfjq;

    .line 2072
    iget-object v2, v2, Lfjq;->x:Ljava/lang/String;

    .line 237
    sget-object v3, Lcom/alibaba/android/dingtalk/userbase/model/FriendRequestObject$FriendRequestSource;->LOCAL_CONTACT:Lcom/alibaba/android/dingtalk/userbase/model/FriendRequestObject$FriendRequestSource;

    invoke-virtual {v3}, Lcom/alibaba/android/dingtalk/userbase/model/FriendRequestObject$FriendRequestSource;->ordinal()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lfjl;->a(Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_0
.end method
