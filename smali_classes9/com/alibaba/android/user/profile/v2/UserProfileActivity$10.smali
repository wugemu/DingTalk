.class final Lcom/alibaba/android/user/profile/v2/UserProfileActivity$10;
.super Ljava/lang/Object;
.source "UserProfileActivity.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/user/profile/v2/UserProfileActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcma",
        "<",
        "Ljava/util/List",
        "<",
        "Lfry;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/user/profile/v2/UserProfileActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/profile/v2/UserProfileActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/user/profile/v2/UserProfileActivity;

    .prologue
    .line 1369
    iput-object p1, p0, Lcom/alibaba/android/user/profile/v2/UserProfileActivity$10;->a:Lcom/alibaba/android/user/profile/v2/UserProfileActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 1369
    check-cast p1, Ljava/util/List;

    .line 2372
    iget-object v0, p0, Lcom/alibaba/android/user/profile/v2/UserProfileActivity$10;->a:Lcom/alibaba/android/user/profile/v2/UserProfileActivity;

    invoke-static {v0, p1}, Lcom/alibaba/android/user/profile/v2/UserProfileActivity;->b(Lcom/alibaba/android/user/profile/v2/UserProfileActivity;Ljava/util/List;)Ljava/util/List;

    .line 2373
    iget-object v0, p0, Lcom/alibaba/android/user/profile/v2/UserProfileActivity$10;->a:Lcom/alibaba/android/user/profile/v2/UserProfileActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/profile/v2/UserProfileActivity;->y(Lcom/alibaba/android/user/profile/v2/UserProfileActivity;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2375
    iget-object v0, p0, Lcom/alibaba/android/user/profile/v2/UserProfileActivity$10;->a:Lcom/alibaba/android/user/profile/v2/UserProfileActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/profile/v2/UserProfileActivity;->z(Lcom/alibaba/android/user/profile/v2/UserProfileActivity;)V

    .line 1369
    :cond_0
    return-void
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "s1"    # Ljava/lang/String;

    .prologue
    .line 1387
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 1382
    return-void
.end method
