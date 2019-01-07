.class final Lcom/alibaba/android/user/profile/v2/UserProfileActivity$29$1;
.super Ljava/lang/Object;
.source "UserProfileActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/user/profile/v2/UserProfileActivity$29;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/user/profile/v2/UserProfileActivity$29;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/profile/v2/UserProfileActivity$29;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/android/user/profile/v2/UserProfileActivity$29;

    .prologue
    .line 2770
    iput-object p1, p0, Lcom/alibaba/android/user/profile/v2/UserProfileActivity$29$1;->a:Lcom/alibaba/android/user/profile/v2/UserProfileActivity$29;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 2773
    iget-object v0, p0, Lcom/alibaba/android/user/profile/v2/UserProfileActivity$29$1;->a:Lcom/alibaba/android/user/profile/v2/UserProfileActivity$29;

    iget-object v0, v0, Lcom/alibaba/android/user/profile/v2/UserProfileActivity$29;->a:Lcom/alibaba/android/user/profile/v2/UserProfileActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/profile/v2/UserProfileActivity;->M(Lcom/alibaba/android/user/profile/v2/UserProfileActivity;)V

    .line 2774
    return-void
.end method
