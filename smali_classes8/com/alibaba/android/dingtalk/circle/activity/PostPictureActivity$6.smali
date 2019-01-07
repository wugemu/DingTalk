.class final Lcom/alibaba/android/dingtalk/circle/activity/PostPictureActivity$6;
.super Ljava/lang/Object;
.source "PostPictureActivity.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/dingtalk/circle/activity/PostPictureActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcma",
        "<",
        "Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostObject;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostObject;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostObject;)V
    .locals 0

    .prologue
    .line 483
    iput-object p1, p0, Lcom/alibaba/android/dingtalk/circle/activity/PostPictureActivity$6;->a:Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 483
    check-cast p1, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostObject;

    .line 1486
    invoke-static {p1}, Lbnv;->c(Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostObject;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1489
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/circle/activity/PostPictureActivity$6;->a:Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostObject;

    iget-object v1, p1, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostObject;->comments:Ljava/util/List;

    iput-object v1, v0, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostObject;->comments:Ljava/util/List;

    .line 1490
    invoke-virtual {p1}, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostObject;->saveLike2DbAsync()V

    .line 1491
    invoke-static {}, Lbnw;->a()Lbnw;

    move-result-object v0

    iget-wide v2, p1, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostObject;->postId:J

    invoke-virtual {v0, v2, v3}, Lbnw;->b(J)V

    .line 1493
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "circle_on_post_changed"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1494
    const-string/jumbo v1, "circle_on_post_changed"

    iget-object v2, p0, Lcom/alibaba/android/dingtalk/circle/activity/PostPictureActivity$6;->a:Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostObject;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 2017
    sget-object v1, Leda;->a:Landroid/content/Context;

    .line 1495
    invoke-static {v1}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v1

    invoke-virtual {v1, v0}, Ldq;->a(Landroid/content/Intent;)Z

    .line 483
    :cond_0
    return-void
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 504
    invoke-static {p1, p2}, Lcms;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 505
    const-string/jumbo v0, "Circle"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "PostPictureActivity like fail "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcpv;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 506
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 500
    return-void
.end method
