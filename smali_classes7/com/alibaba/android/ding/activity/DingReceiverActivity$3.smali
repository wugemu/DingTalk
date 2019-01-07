.class final Lcom/alibaba/android/ding/activity/DingReceiverActivity$3;
.super Ljava/lang/Object;
.source "DingReceiverActivity.java"

# interfaces
.implements Lbhu$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/ding/activity/DingReceiverActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/ding/activity/DingReceiverActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/ding/activity/DingReceiverActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/ding/activity/DingReceiverActivity;

    .prologue
    .line 156
    iput-object p1, p0, Lcom/alibaba/android/ding/activity/DingReceiverActivity$3;->a:Lcom/alibaba/android/ding/activity/DingReceiverActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    .prologue
    .line 167
    const-string/jumbo v0, "[DingReceiverPage]fetch userProfiles failed"

    invoke-static {v0, p1, p2}, Lbkr;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingReceiverActivity$3;->a:Lcom/alibaba/android/ding/activity/DingReceiverActivity;

    invoke-virtual {v0}, Lcom/alibaba/android/ding/activity/DingReceiverActivity;->finish()V

    .line 169
    return-void
.end method

.method public final a(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 159
    .local p1, "userIdentityObjectList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;>;"
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 160
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingReceiverActivity$3;->a:Lcom/alibaba/android/ding/activity/DingReceiverActivity;

    invoke-static {v0}, Lcom/alibaba/android/ding/activity/DingReceiverActivity;->d(Lcom/alibaba/android/ding/activity/DingReceiverActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 161
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingReceiverActivity$3;->a:Lcom/alibaba/android/ding/activity/DingReceiverActivity;

    invoke-static {v0}, Lcom/alibaba/android/ding/activity/DingReceiverActivity;->b(Lcom/alibaba/android/ding/activity/DingReceiverActivity;)Layi;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/ding/activity/DingReceiverActivity$3;->a:Lcom/alibaba/android/ding/activity/DingReceiverActivity;

    invoke-static {v1}, Lcom/alibaba/android/ding/activity/DingReceiverActivity;->d(Lcom/alibaba/android/ding/activity/DingReceiverActivity;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Layi;->a(Ljava/util/Collection;)V

    .line 163
    :cond_0
    return-void
.end method
