.class final Lcom/alibaba/android/user/profile/v2/UserProfileActivity$17;
.super Lcom/alibaba/android/user/profile/v2/MultiOrgFragment$a;
.source "UserProfileActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/user/profile/v2/UserProfileActivity;->a(I)V
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
    .line 1792
    iput-object p1, p0, Lcom/alibaba/android/user/profile/v2/UserProfileActivity$17;->a:Lcom/alibaba/android/user/profile/v2/UserProfileActivity;

    invoke-direct {p0}, Lcom/alibaba/android/user/profile/v2/MultiOrgFragment$a;-><init>()V

    return-void
.end method


# virtual methods
.method protected final a(J)V
    .locals 1
    .param p1, "orgId"    # J

    .prologue
    .line 1795
    iget-object v0, p0, Lcom/alibaba/android/user/profile/v2/UserProfileActivity$17;->a:Lcom/alibaba/android/user/profile/v2/UserProfileActivity;

    invoke-static {v0, p1, p2}, Lcom/alibaba/android/user/profile/v2/UserProfileActivity;->e(Lcom/alibaba/android/user/profile/v2/UserProfileActivity;J)J

    .line 1796
    return-void
.end method
