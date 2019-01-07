.class final Lcom/alibaba/android/dingtalk/circle/activity/PostDetailActivity$4;
.super Ljava/lang/Object;
.source "PostDetailActivity.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/dingtalk/circle/activity/PostDetailActivity;
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
        "Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostObject;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalk/circle/activity/PostDetailActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalk/circle/activity/PostDetailActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalk/circle/activity/PostDetailActivity;

    .prologue
    .line 158
    iput-object p1, p0, Lcom/alibaba/android/dingtalk/circle/activity/PostDetailActivity$4;->a:Lcom/alibaba/android/dingtalk/circle/activity/PostDetailActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 158
    check-cast p1, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostObject;

    .line 1172
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostObject;->isDeleted()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1173
    :cond_0
    sget v0, Lbpu$f;->dt_circle_post_is_deleted:I

    invoke-static {v0}, Lcms;->a(I)V

    .line 1174
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/circle/activity/PostDetailActivity$4;->a:Lcom/alibaba/android/dingtalk/circle/activity/PostDetailActivity;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalk/circle/activity/PostDetailActivity;->finish()V

    .line 1175
    :goto_0
    return-void

    .line 1178
    :cond_1
    invoke-static {}, Lbnw;->a()Lbnw;

    invoke-static {p1}, Lbnw;->a(Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostObject;)V

    .line 1179
    invoke-static {}, Lbpe;->e()Lbpe;

    move-result-object v0

    invoke-static {p1}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v1

    invoke-virtual {v0, v1}, Lbpe;->a(Ljava/util/Collection;)V

    .line 1181
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/circle/activity/PostDetailActivity$4;->a:Lcom/alibaba/android/dingtalk/circle/activity/PostDetailActivity;

    invoke-static {v0, p1}, Lcom/alibaba/android/dingtalk/circle/activity/PostDetailActivity;->a(Lcom/alibaba/android/dingtalk/circle/activity/PostDetailActivity;Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostObject;)Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostObject;

    .line 1182
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/circle/activity/PostDetailActivity$4;->a:Lcom/alibaba/android/dingtalk/circle/activity/PostDetailActivity;

    invoke-static {v0}, Lcom/alibaba/android/dingtalk/circle/activity/PostDetailActivity;->c(Lcom/alibaba/android/dingtalk/circle/activity/PostDetailActivity;)V

    goto :goto_0
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    .prologue
    .line 166
    invoke-static {p1, p2}, Lcms;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/circle/activity/PostDetailActivity$4;->a:Lcom/alibaba/android/dingtalk/circle/activity/PostDetailActivity;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalk/circle/activity/PostDetailActivity;->finish()V

    .line 168
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 162
    return-void
.end method
