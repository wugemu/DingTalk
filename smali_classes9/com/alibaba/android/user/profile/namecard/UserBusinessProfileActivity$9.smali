.class final Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileActivity$9;
.super Ljava/lang/Object;
.source "UserBusinessProfileActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileActivity;->m()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileActivity;Ljava/util/List;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileActivity;

    .prologue
    .line 1711
    iput-object p1, p0, Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileActivity$9;->b:Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileActivity;

    iput-object p2, p0, Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileActivity$9;->a:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 1714
    iget-object v0, p0, Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileActivity$9;->b:Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileActivity;->D(Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileActivity;)Lcom/alibaba/android/user/profile/v2/BaseUserInfoSectionFragment;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1715
    iget-object v0, p0, Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileActivity$9;->b:Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileActivity;->D(Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileActivity;)Lcom/alibaba/android/user/profile/v2/BaseUserInfoSectionFragment;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileActivity$9;->a:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/alibaba/android/user/profile/v2/BaseUserInfoSectionFragment;->a(Ljava/util/List;)V

    .line 1716
    iget-object v0, p0, Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileActivity$9;->b:Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileActivity;->E(Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileActivity;)Lfvc;

    move-result-object v0

    invoke-virtual {v0}, Lfvc;->notifyDataSetChanged()V

    .line 1718
    :cond_0
    return-void
.end method
