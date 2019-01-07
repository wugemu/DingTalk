.class final Lcom/alibaba/android/user/profile/v2/UserProfileMoreActivity$26;
.super Ljava/lang/Object;
.source "UserProfileMoreActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/user/profile/v2/UserProfileMoreActivity;->f()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Ljava/util/concurrent/atomic/AtomicInteger;

.field final synthetic c:Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

.field final synthetic d:Lcom/alibaba/android/user/profile/v2/UserProfileMoreActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/profile/v2/UserProfileMoreActivity;Ljava/util/List;Ljava/util/concurrent/atomic/AtomicInteger;Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/user/profile/v2/UserProfileMoreActivity;

    .prologue
    .line 1446
    iput-object p1, p0, Lcom/alibaba/android/user/profile/v2/UserProfileMoreActivity$26;->d:Lcom/alibaba/android/user/profile/v2/UserProfileMoreActivity;

    iput-object p2, p0, Lcom/alibaba/android/user/profile/v2/UserProfileMoreActivity$26;->a:Ljava/util/List;

    iput-object p3, p0, Lcom/alibaba/android/user/profile/v2/UserProfileMoreActivity$26;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    iput-object p4, p0, Lcom/alibaba/android/user/profile/v2/UserProfileMoreActivity$26;->c:Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 6
    .param p1, "dialogInterface"    # Landroid/content/DialogInterface;
    .param p2, "i"    # I

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 1449
    iget-object v0, p0, Lcom/alibaba/android/user/profile/v2/UserProfileMoreActivity$26;->a:Ljava/util/List;

    iget-object v1, p0, Lcom/alibaba/android/user/profile/v2/UserProfileMoreActivity$26;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 1450
    .local v2, "orgId":J
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/user/profile/v2/UserProfileMoreActivity$26;->d:Lcom/alibaba/android/user/profile/v2/UserProfileMoreActivity;

    iget-object v4, p0, Lcom/alibaba/android/user/profile/v2/UserProfileMoreActivity$26;->c:Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    const/4 v5, 0x1

    invoke-virtual/range {v0 .. v5}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a(Landroid/content/Context;JLcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;I)V

    .line 1451
    return-void
.end method
