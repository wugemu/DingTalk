.class final Leeb$2;
.super Ljava/lang/Object;
.source "AttendanceListAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Leeb;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;

.field final synthetic c:Leeb;


# direct methods
.method constructor <init>(Leeb;Ljava/lang/String;Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;)V
    .locals 0
    .param p1, "this$0"    # Leeb;

    .prologue
    .line 196
    iput-object p1, p0, Leeb$2;->c:Leeb;

    iput-object p2, p0, Leeb$2;->a:Ljava/lang/String;

    iput-object p3, p0, Leeb$2;->b:Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 8
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 199
    iget-object v0, p0, Leeb$2;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 200
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v0

    iget-object v1, p0, Leeb$2;->c:Leeb;

    invoke-static {v1}, Leeb;->a(Leeb;)Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Leeb$2;->b:Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;

    iget-wide v2, v2, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;->uid:J

    iget-object v4, p0, Leeb$2;->b:Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;

    iget-wide v4, v4, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;->orgId:J

    iget-object v6, p0, Leeb$2;->b:Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;

    iget-object v6, v6, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;->orgStaffId:Ljava/lang/String;

    sget-object v7, Lcom/alibaba/android/dingtalk/userbase/model/FriendRequestObject$FriendRequestSource;->ORG_CONTACT:Lcom/alibaba/android/dingtalk/userbase/model/FriendRequestObject$FriendRequestSource;

    .line 201
    invoke-virtual {v7}, Lcom/alibaba/android/dingtalk/userbase/model/FriendRequestObject$FriendRequestSource;->ordinal()I

    move-result v7

    .line 200
    invoke-virtual/range {v0 .. v7}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a(Landroid/app/Activity;JJLjava/lang/String;I)V

    .line 205
    :goto_0
    return-void

    .line 203
    :cond_0
    const-string/jumbo v0, "NAVIGATOR"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/navigator/Navigator;

    iget-object v1, p0, Leeb$2;->c:Leeb;

    invoke-static {v1}, Leeb;->a(Leeb;)Landroid/app/Activity;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/navigator/Navigator;->from(Landroid/content/Context;)Lcom/alibaba/doraemon/navigator/Navigator;

    move-result-object v0

    iget-object v1, p0, Leeb$2;->a:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/navigator/Navigator;->to(Ljava/lang/String;)V

    goto :goto_0
.end method
