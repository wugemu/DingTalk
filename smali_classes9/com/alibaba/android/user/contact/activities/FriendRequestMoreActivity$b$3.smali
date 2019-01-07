.class final Lcom/alibaba/android/user/contact/activities/FriendRequestMoreActivity$b$3;
.super Ljava/lang/Object;
.source "FriendRequestMoreActivity.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/user/contact/activities/FriendRequestMoreActivity$b;
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
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/alibaba/android/dingtalk/userbase/model/NewRequestObject;

.field final synthetic c:Lcom/alibaba/android/user/contact/activities/FriendRequestMoreActivity$b;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/contact/activities/FriendRequestMoreActivity$b;ILcom/alibaba/android/dingtalk/userbase/model/NewRequestObject;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/android/user/contact/activities/FriendRequestMoreActivity$b;

    .prologue
    .line 341
    iput-object p1, p0, Lcom/alibaba/android/user/contact/activities/FriendRequestMoreActivity$b$3;->c:Lcom/alibaba/android/user/contact/activities/FriendRequestMoreActivity$b;

    iput p2, p0, Lcom/alibaba/android/user/contact/activities/FriendRequestMoreActivity$b$3;->a:I

    iput-object p3, p0, Lcom/alibaba/android/user/contact/activities/FriendRequestMoreActivity$b$3;->b:Lcom/alibaba/android/dingtalk/userbase/model/NewRequestObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 341
    .line 1344
    iget v0, p0, Lcom/alibaba/android/user/contact/activities/FriendRequestMoreActivity$b$3;->a:I

    iget-object v1, p0, Lcom/alibaba/android/user/contact/activities/FriendRequestMoreActivity$b$3;->c:Lcom/alibaba/android/user/contact/activities/FriendRequestMoreActivity$b;

    .line 2192
    iget-object v1, v1, Lcom/alibaba/android/user/contact/activities/FriendRequestMoreActivity$b;->c:Ljava/util/List;

    .line 1344
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 1345
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/FriendRequestMoreActivity$b$3;->c:Lcom/alibaba/android/user/contact/activities/FriendRequestMoreActivity$b;

    .line 3192
    iget-object v0, v0, Lcom/alibaba/android/user/contact/activities/FriendRequestMoreActivity$b;->c:Ljava/util/List;

    .line 1345
    iget v1, p0, Lcom/alibaba/android/user/contact/activities/FriendRequestMoreActivity$b$3;->a:I

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 1346
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/FriendRequestMoreActivity$b$3;->c:Lcom/alibaba/android/user/contact/activities/FriendRequestMoreActivity$b;

    iget-object v0, v0, Lcom/alibaba/android/user/contact/activities/FriendRequestMoreActivity$b;->f:Lcom/alibaba/android/user/contact/activities/FriendRequestMoreActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/contact/activities/FriendRequestMoreActivity;->c(Lcom/alibaba/android/user/contact/activities/FriendRequestMoreActivity;)V

    .line 1348
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/FriendRequestMoreActivity$b$3;->c:Lcom/alibaba/android/user/contact/activities/FriendRequestMoreActivity$b;

    iget-object v0, v0, Lcom/alibaba/android/user/contact/activities/FriendRequestMoreActivity$b;->f:Lcom/alibaba/android/user/contact/activities/FriendRequestMoreActivity;

    invoke-virtual {v0}, Lcom/alibaba/android/user/contact/activities/FriendRequestMoreActivity;->dismissLoadingDialog()V

    .line 1349
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/FriendRequestMoreActivity$b$3;->c:Lcom/alibaba/android/user/contact/activities/FriendRequestMoreActivity$b;

    .line 4192
    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/alibaba/android/user/contact/activities/FriendRequestMoreActivity$b;->a:Z

    .line 1350
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/FriendRequestMoreActivity$b$3;->c:Lcom/alibaba/android/user/contact/activities/FriendRequestMoreActivity$b;

    iget-object v0, v0, Lcom/alibaba/android/user/contact/activities/FriendRequestMoreActivity$b;->f:Lcom/alibaba/android/user/contact/activities/FriendRequestMoreActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/contact/activities/FriendRequestMoreActivity;->h(Lcom/alibaba/android/user/contact/activities/FriendRequestMoreActivity;)Ljava/util/ArrayList;

    move-result-object v0

    if-nez v0, :cond_1

    .line 1351
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/FriendRequestMoreActivity$b$3;->c:Lcom/alibaba/android/user/contact/activities/FriendRequestMoreActivity$b;

    iget-object v0, v0, Lcom/alibaba/android/user/contact/activities/FriendRequestMoreActivity$b;->f:Lcom/alibaba/android/user/contact/activities/FriendRequestMoreActivity;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0, v1}, Lcom/alibaba/android/user/contact/activities/FriendRequestMoreActivity;->a(Lcom/alibaba/android/user/contact/activities/FriendRequestMoreActivity;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 1353
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/FriendRequestMoreActivity$b$3;->c:Lcom/alibaba/android/user/contact/activities/FriendRequestMoreActivity$b;

    iget-object v0, v0, Lcom/alibaba/android/user/contact/activities/FriendRequestMoreActivity$b;->f:Lcom/alibaba/android/user/contact/activities/FriendRequestMoreActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/contact/activities/FriendRequestMoreActivity;->h(Lcom/alibaba/android/user/contact/activities/FriendRequestMoreActivity;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/user/contact/activities/FriendRequestMoreActivity$b$3;->b:Lcom/alibaba/android/dingtalk/userbase/model/NewRequestObject;

    iget-wide v2, v1, Lcom/alibaba/android/dingtalk/userbase/model/NewRequestObject;->id:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 341
    return-void
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 363
    invoke-static {p1, p2}, Lcms;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 364
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/FriendRequestMoreActivity$b$3;->c:Lcom/alibaba/android/user/contact/activities/FriendRequestMoreActivity$b;

    iget-object v0, v0, Lcom/alibaba/android/user/contact/activities/FriendRequestMoreActivity$b;->f:Lcom/alibaba/android/user/contact/activities/FriendRequestMoreActivity;

    invoke-virtual {v0}, Lcom/alibaba/android/user/contact/activities/FriendRequestMoreActivity;->dismissLoadingDialog()V

    .line 365
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/FriendRequestMoreActivity$b$3;->c:Lcom/alibaba/android/user/contact/activities/FriendRequestMoreActivity$b;

    .line 1192
    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/alibaba/android/user/contact/activities/FriendRequestMoreActivity$b;->a:Z

    .line 366
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 359
    return-void
.end method
