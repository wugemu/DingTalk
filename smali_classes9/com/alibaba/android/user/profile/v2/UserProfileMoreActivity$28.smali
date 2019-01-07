.class final Lcom/alibaba/android/user/profile/v2/UserProfileMoreActivity$28;
.super Ljava/lang/Object;
.source "UserProfileMoreActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/user/profile/v2/UserProfileMoreActivity;->g()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Ljava/util/concurrent/atomic/AtomicInteger;

.field final synthetic c:Lcom/alibaba/android/user/profile/v2/UserProfileMoreActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/profile/v2/UserProfileMoreActivity;Ljava/util/List;Ljava/util/concurrent/atomic/AtomicInteger;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/user/profile/v2/UserProfileMoreActivity;

    .prologue
    .line 1513
    iput-object p1, p0, Lcom/alibaba/android/user/profile/v2/UserProfileMoreActivity$28;->c:Lcom/alibaba/android/user/profile/v2/UserProfileMoreActivity;

    iput-object p2, p0, Lcom/alibaba/android/user/profile/v2/UserProfileMoreActivity$28;->a:Ljava/util/List;

    iput-object p3, p0, Lcom/alibaba/android/user/profile/v2/UserProfileMoreActivity$28;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 10
    .param p1, "dialogInterface"    # Landroid/content/DialogInterface;
    .param p2, "i"    # I

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 1516
    iget-object v0, p0, Lcom/alibaba/android/user/profile/v2/UserProfileMoreActivity$28;->a:Ljava/util/List;

    iget-object v1, p0, Lcom/alibaba/android/user/profile/v2/UserProfileMoreActivity$28;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 1517
    .local v2, "orgId":J
    const/4 v4, 0x0

    .line 1518
    .local v4, "external":Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;
    iget-object v0, p0, Lcom/alibaba/android/user/profile/v2/UserProfileMoreActivity$28;->c:Lcom/alibaba/android/user/profile/v2/UserProfileMoreActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/profile/v2/UserProfileMoreActivity;->j(Lcom/alibaba/android/user/profile/v2/UserProfileMoreActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    .line 1519
    .local v6, "object":Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;
    if-eqz v6, :cond_0

    iget-wide v8, v6, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgId:J

    cmp-long v1, v2, v8

    if-nez v1, :cond_0

    .line 1520
    move-object v4, v6

    .line 1524
    .end local v6    # "object":Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/user/profile/v2/UserProfileMoreActivity$28;->c:Lcom/alibaba/android/user/profile/v2/UserProfileMoreActivity;

    iget-object v1, p0, Lcom/alibaba/android/user/profile/v2/UserProfileMoreActivity$28;->c:Lcom/alibaba/android/user/profile/v2/UserProfileMoreActivity;

    const/4 v5, 0x1

    invoke-static/range {v0 .. v5}, Lcom/alibaba/android/user/profile/v2/UserProfileMoreActivity;->a(Lcom/alibaba/android/user/profile/v2/UserProfileMoreActivity;Landroid/content/Context;JLcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;I)V

    .line 1525
    return-void
.end method
