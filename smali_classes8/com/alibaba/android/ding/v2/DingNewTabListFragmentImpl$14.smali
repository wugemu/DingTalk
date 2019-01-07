.class final Lcom/alibaba/android/ding/v2/DingNewTabListFragmentImpl$14;
.super Ljava/lang/Object;
.source "DingNewTabListFragmentImpl.java"

# interfaces
.implements Lcjo$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/ding/v2/DingNewTabListFragmentImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/ding/v2/DingNewTabListFragmentImpl;


# direct methods
.method constructor <init>(Lcom/alibaba/android/ding/v2/DingNewTabListFragmentImpl;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/ding/v2/DingNewTabListFragmentImpl;

    .prologue
    .line 447
    iput-object p1, p0, Lcom/alibaba/android/ding/v2/DingNewTabListFragmentImpl$14;->a:Lcom/alibaba/android/ding/v2/DingNewTabListFragmentImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcjo$b;)V
    .locals 8
    .param p1, "message"    # Lcjo$b;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 450
    if-nez p1, :cond_1

    .line 477
    :cond_0
    :goto_0
    return-void

    .line 454
    :cond_1
    iget-object v3, p1, Lcjo$b;->a:Ljava/lang/Object;

    instance-of v3, v3, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    if-eqz v3, :cond_0

    .line 455
    const/4 v0, 0x0

    .line 456
    .local v0, "needNotify":Z
    iget-object v2, p1, Lcjo$b;->a:Ljava/lang/Object;

    check-cast v2, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    .line 457
    .local v2, "userProfileObject":Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;
    iget-object v3, p0, Lcom/alibaba/android/ding/v2/DingNewTabListFragmentImpl$14;->a:Lcom/alibaba/android/ding/v2/DingNewTabListFragmentImpl;

    invoke-static {v3}, Lcom/alibaba/android/ding/v2/DingNewTabListFragmentImpl;->i(Lcom/alibaba/android/ding/v2/DingNewTabListFragmentImpl;)Laxs;

    move-result-object v3

    invoke-virtual {v3}, Laxs;->a()Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 458
    iget-object v3, p0, Lcom/alibaba/android/ding/v2/DingNewTabListFragmentImpl$14;->a:Lcom/alibaba/android/ding/v2/DingNewTabListFragmentImpl;

    invoke-static {v3}, Lcom/alibaba/android/ding/v2/DingNewTabListFragmentImpl;->i(Lcom/alibaba/android/ding/v2/DingNewTabListFragmentImpl;)Laxs;

    move-result-object v3

    invoke-virtual {v3}, Laxs;->a()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/ding/base/objects/ObjectDing;

    .line 459
    .local v1, "objectDing":Lcom/alibaba/android/ding/base/objects/ObjectDing;
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->E()J

    move-result-wide v4

    iget-wide v6, v2, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->uid:J

    cmp-long v4, v4, v6

    if-nez v4, :cond_2

    .line 460
    const v4, 0x12ec0bc

    invoke-virtual {v1, v4, v2}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->a(ILjava/lang/Object;)V

    .line 461
    const/4 v0, 0x1

    goto :goto_1

    .line 465
    .end local v1    # "objectDing":Lcom/alibaba/android/ding/base/objects/ObjectDing;
    :cond_3
    if-eqz v0, :cond_0

    .line 466
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v3

    new-instance v4, Lcom/alibaba/android/ding/v2/DingNewTabListFragmentImpl$14$1;

    invoke-direct {v4, p0}, Lcom/alibaba/android/ding/v2/DingNewTabListFragmentImpl$14$1;-><init>(Lcom/alibaba/android/ding/v2/DingNewTabListFragmentImpl$14;)V

    invoke-virtual {v3, v4}, Lhcv;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method
