.class final Lflt$10$1;
.super Ljava/lang/Object;
.source "FriendRequestDataManager.java"

# interfaces
.implements Lcom/alibaba/wukong/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lflt$10;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/alibaba/wukong/Callback",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lflt$10;


# direct methods
.method constructor <init>(Lflt$10;)V
    .locals 0
    .param p1, "this$1"    # Lflt$10;

    .prologue
    .line 483
    iput-object p1, p0, Lflt$10$1;->a:Lflt$10;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 492
    invoke-static {p1, p2}, Lcms;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 493
    iget-object v0, p0, Lflt$10$1;->a:Lflt$10;

    iget-object v0, v0, Lflt$10;->b:Lflt;

    .line 1060
    iget-object v0, v0, Lflt;->o:Lcom/alibaba/android/user/contact/activities/FriendAndGroupRequestActivity;

    .line 493
    invoke-virtual {v0}, Lcom/alibaba/android/user/contact/activities/FriendAndGroupRequestActivity;->dismissLoadingDialog()V

    .line 494
    iget-object v0, p0, Lflt$10$1;->a:Lflt$10;

    iget-object v0, v0, Lflt$10;->b:Lflt;

    .line 2060
    const/4 v1, 0x0

    iput-boolean v1, v0, Lflt;->a:Z

    .line 495
    return-void
.end method

.method public final bridge synthetic onProgress(Ljava/lang/Object;I)V
    .locals 0

    .prologue
    .line 483
    return-void
.end method

.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 483
    .line 2486
    iget-object v0, p0, Lflt$10$1;->a:Lflt$10;

    iget-object v0, v0, Lflt$10;->b:Lflt;

    .line 3060
    iget-object v0, v0, Lflt;->o:Lcom/alibaba/android/user/contact/activities/FriendAndGroupRequestActivity;

    .line 2486
    invoke-virtual {v0}, Lcom/alibaba/android/user/contact/activities/FriendAndGroupRequestActivity;->dismissLoadingDialog()V

    .line 2487
    iget-object v0, p0, Lflt$10$1;->a:Lflt$10;

    iget-object v0, v0, Lflt$10;->b:Lflt;

    .line 4060
    const/4 v1, 0x0

    iput-boolean v1, v0, Lflt;->a:Z

    .line 483
    return-void
.end method
