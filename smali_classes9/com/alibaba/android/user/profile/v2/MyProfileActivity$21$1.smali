.class final Lcom/alibaba/android/user/profile/v2/MyProfileActivity$21$1;
.super Ljava/lang/Object;
.source "MyProfileActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/user/profile/v2/MyProfileActivity$21;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/user/profile/v2/MyProfileActivity$21;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/profile/v2/MyProfileActivity$21;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/android/user/profile/v2/MyProfileActivity$21;

    .prologue
    .line 955
    iput-object p1, p0, Lcom/alibaba/android/user/profile/v2/MyProfileActivity$21$1;->a:Lcom/alibaba/android/user/profile/v2/MyProfileActivity$21;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 958
    iget-object v0, p0, Lcom/alibaba/android/user/profile/v2/MyProfileActivity$21$1;->a:Lcom/alibaba/android/user/profile/v2/MyProfileActivity$21;

    iget-object v0, v0, Lcom/alibaba/android/user/profile/v2/MyProfileActivity$21;->a:Lcom/alibaba/android/user/profile/v2/MyProfileActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/profile/v2/MyProfileActivity;->k(Lcom/alibaba/android/user/profile/v2/MyProfileActivity;)V

    .line 959
    return-void
.end method
