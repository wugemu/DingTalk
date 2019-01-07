.class final Lcom/alibaba/android/user/profile/v2/UserProfileActivity$13;
.super Lcom/alibaba/android/user/profile/v2/MultiOrgFragment$a;
.source "UserProfileActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/user/profile/v2/UserProfileActivity;->e()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/user/profile/v2/UserProfileActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/profile/v2/UserProfileActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/user/profile/v2/UserProfileActivity;

    .prologue
    .line 1518
    iput-object p1, p0, Lcom/alibaba/android/user/profile/v2/UserProfileActivity$13;->a:Lcom/alibaba/android/user/profile/v2/UserProfileActivity;

    invoke-direct {p0}, Lcom/alibaba/android/user/profile/v2/MultiOrgFragment$a;-><init>()V

    return-void
.end method


# virtual methods
.method protected final a(J)V
    .locals 5
    .param p1, "orgId"    # J

    .prologue
    .line 1521
    iget-object v0, p0, Lcom/alibaba/android/user/profile/v2/UserProfileActivity$13;->a:Lcom/alibaba/android/user/profile/v2/UserProfileActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/profile/v2/UserProfileActivity;->B(Lcom/alibaba/android/user/profile/v2/UserProfileActivity;)J

    move-result-wide v0

    cmp-long v0, v0, p1

    if-nez v0, :cond_1

    .line 1530
    :cond_0
    :goto_0
    return-void

    .line 1525
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/user/profile/v2/UserProfileActivity$13;->a:Lcom/alibaba/android/user/profile/v2/UserProfileActivity;

    invoke-static {v0, p1, p2}, Lcom/alibaba/android/user/profile/v2/UserProfileActivity;->d(Lcom/alibaba/android/user/profile/v2/UserProfileActivity;J)J

    .line 1527
    iget-object v0, p0, Lcom/alibaba/android/user/profile/v2/UserProfileActivity$13;->a:Lcom/alibaba/android/user/profile/v2/UserProfileActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/profile/v2/UserProfileActivity;->D(Lcom/alibaba/android/user/profile/v2/UserProfileActivity;)Lfux;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1528
    iget-object v0, p0, Lcom/alibaba/android/user/profile/v2/UserProfileActivity$13;->a:Lcom/alibaba/android/user/profile/v2/UserProfileActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/profile/v2/UserProfileActivity;->D(Lcom/alibaba/android/user/profile/v2/UserProfileActivity;)Lfux;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/user/profile/v2/UserProfileActivity$13;->a:Lcom/alibaba/android/user/profile/v2/UserProfileActivity;

    invoke-static {v1}, Lcom/alibaba/android/user/profile/v2/UserProfileActivity;->b(Lcom/alibaba/android/user/profile/v2/UserProfileActivity;)J

    move-result-wide v2

    invoke-virtual {v0, p1, p2, v2, v3}, Lfux;->a(JJ)V

    goto :goto_0
.end method
