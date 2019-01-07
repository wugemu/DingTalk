.class final Lcom/alibaba/android/user/profile/v2/UserProfileActivity$2$2;
.super Ljava/lang/Object;
.source "UserProfileActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/user/profile/v2/UserProfileActivity$2;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Ljava/util/concurrent/atomic/AtomicInteger;

.field final synthetic c:Lcom/alibaba/android/user/profile/v2/UserProfileActivity$2;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/profile/v2/UserProfileActivity$2;Ljava/util/List;Ljava/util/concurrent/atomic/AtomicInteger;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/android/user/profile/v2/UserProfileActivity$2;

    .prologue
    .line 1051
    iput-object p1, p0, Lcom/alibaba/android/user/profile/v2/UserProfileActivity$2$2;->c:Lcom/alibaba/android/user/profile/v2/UserProfileActivity$2;

    iput-object p2, p0, Lcom/alibaba/android/user/profile/v2/UserProfileActivity$2$2;->a:Ljava/util/List;

    iput-object p3, p0, Lcom/alibaba/android/user/profile/v2/UserProfileActivity$2$2;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 8
    .param p1, "dialogInterface"    # Landroid/content/DialogInterface;
    .param p2, "i"    # I

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 1054
    iget-object v4, p0, Lcom/alibaba/android/user/profile/v2/UserProfileActivity$2$2;->a:Ljava/util/List;

    iget-object v5, p0, Lcom/alibaba/android/user/profile/v2/UserProfileActivity$2$2;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v5

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 1055
    .local v2, "orgId":J
    const/4 v0, 0x0

    .line 1056
    .local v0, "external":Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;
    iget-object v4, p0, Lcom/alibaba/android/user/profile/v2/UserProfileActivity$2$2;->c:Lcom/alibaba/android/user/profile/v2/UserProfileActivity$2;

    iget-object v4, v4, Lcom/alibaba/android/user/profile/v2/UserProfileActivity$2;->a:Lcom/alibaba/android/user/profile/v2/UserProfileActivity;

    invoke-static {v4}, Lcom/alibaba/android/user/profile/v2/UserProfileActivity;->v(Lcom/alibaba/android/user/profile/v2/UserProfileActivity;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    .line 1057
    .local v1, "object":Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;
    if-eqz v1, :cond_0

    iget-wide v6, v1, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgId:J

    cmp-long v5, v2, v6

    if-nez v5, :cond_0

    .line 1058
    move-object v0, v1

    .line 1062
    .end local v1    # "object":Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;
    :cond_1
    iget-object v4, p0, Lcom/alibaba/android/user/profile/v2/UserProfileActivity$2$2;->c:Lcom/alibaba/android/user/profile/v2/UserProfileActivity$2;

    iget-object v4, v4, Lcom/alibaba/android/user/profile/v2/UserProfileActivity$2;->a:Lcom/alibaba/android/user/profile/v2/UserProfileActivity;

    invoke-static {v4, v0}, Lcom/alibaba/android/user/profile/v2/UserProfileActivity;->a(Lcom/alibaba/android/user/profile/v2/UserProfileActivity;Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;)V

    .line 1063
    return-void
.end method
