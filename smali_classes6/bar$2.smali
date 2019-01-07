.class final Lbar$2;
.super Ljava/lang/Object;
.source "DingUnReadPresenter.java"

# interfaces
.implements Lcjo$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lbar;


# direct methods
.method constructor <init>(Lbar;)V
    .locals 0
    .param p1, "this$0"    # Lbar;

    .prologue
    .line 75
    iput-object p1, p0, Lbar$2;->a:Lbar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcjo$b;)V
    .locals 8
    .param p1, "message"    # Lcjo$b;

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 78
    if-nez p1, :cond_1

    .line 94
    :cond_0
    :goto_0
    return-void

    .line 82
    :cond_1
    const/4 v0, 0x0

    .line 83
    .local v0, "needNotify":Z
    iget-object v2, p1, Lcjo$b;->a:Ljava/lang/Object;

    check-cast v2, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    .line 84
    .local v2, "userProfileObject":Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;
    iget-object v3, p0, Lbar$2;->a:Lbar;

    .line 1037
    iget-object v3, v3, Lbar;->a:Ljava/util/List;

    .line 84
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

    .line 85
    .local v1, "objectDing":Lcom/alibaba/android/ding/base/objects/ObjectDing;
    invoke-virtual {v1}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->E()J

    move-result-wide v4

    iget-wide v6, v2, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->uid:J

    cmp-long v4, v4, v6

    if-nez v4, :cond_2

    .line 86
    const v4, 0x12ec0bc

    invoke-virtual {v1, v4, v2}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->a(ILjava/lang/Object;)V

    .line 87
    const/4 v0, 0x1

    goto :goto_1

    .line 91
    .end local v1    # "objectDing":Lcom/alibaba/android/ding/base/objects/ObjectDing;
    :cond_3
    if-eqz v0, :cond_0

    .line 92
    iget-object v3, p0, Lbar$2;->a:Lbar;

    .line 2037
    invoke-virtual {v3}, Lbar;->b()V

    goto :goto_0
.end method
