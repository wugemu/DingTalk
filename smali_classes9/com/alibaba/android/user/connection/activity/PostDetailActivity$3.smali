.class final Lcom/alibaba/android/user/connection/activity/PostDetailActivity$3;
.super Ljava/lang/Object;
.source "PostDetailActivity.java"

# interfaces
.implements Lcov;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/user/connection/activity/PostDetailActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcov",
        "<",
        "Lcom/alibaba/android/user/connection/idl/objects/CirclePostObject;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/user/connection/activity/PostDetailActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/connection/activity/PostDetailActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/user/connection/activity/PostDetailActivity;

    .prologue
    .line 145
    iput-object p1, p0, Lcom/alibaba/android/user/connection/activity/PostDetailActivity$3;->a:Lcom/alibaba/android/user/connection/activity/PostDetailActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 145
    check-cast p1, Lcom/alibaba/android/user/connection/idl/objects/CirclePostObject;

    .line 1148
    iget-object v0, p0, Lcom/alibaba/android/user/connection/activity/PostDetailActivity$3;->a:Lcom/alibaba/android/user/connection/activity/PostDetailActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/connection/activity/PostDetailActivity;->b(Lcom/alibaba/android/user/connection/activity/PostDetailActivity;)Lfcm;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1149
    iget-object v0, p0, Lcom/alibaba/android/user/connection/activity/PostDetailActivity$3;->a:Lcom/alibaba/android/user/connection/activity/PostDetailActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/connection/activity/PostDetailActivity;->b(Lcom/alibaba/android/user/connection/activity/PostDetailActivity;)Lfcm;

    move-result-object v0

    invoke-virtual {v0, p1}, Lfcm;->b(Lcom/alibaba/android/user/connection/idl/objects/CirclePostObject;)V

    .line 145
    :cond_0
    return-void
.end method
