.class final Lcom/alibaba/android/rimet/biz/im/activities/PicViewActivity$9;
.super Ljava/lang/Object;
.source "PicViewActivity.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/rimet/biz/im/activities/PicViewActivity;->a(Lcom/alibaba/android/ding/base/objects/DingCreateInfo$a;Ljava/lang/String;Ljava/lang/String;)V
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
        "Lcom/alibaba/wukong/im/Member;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/ding/base/objects/DingCreateInfo$a;

.field final synthetic b:Lcom/alibaba/android/rimet/biz/im/activities/PicViewActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/rimet/biz/im/activities/PicViewActivity;Lcom/alibaba/android/ding/base/objects/DingCreateInfo$a;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/rimet/biz/im/activities/PicViewActivity;

    .prologue
    .line 1023
    iput-object p1, p0, Lcom/alibaba/android/rimet/biz/im/activities/PicViewActivity$9;->b:Lcom/alibaba/android/rimet/biz/im/activities/PicViewActivity;

    iput-object p2, p0, Lcom/alibaba/android/rimet/biz/im/activities/PicViewActivity$9;->a:Lcom/alibaba/android/ding/base/objects/DingCreateInfo$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 8

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 1023
    check-cast p1, Ljava/util/List;

    .line 2026
    iget-object v0, p0, Lcom/alibaba/android/rimet/biz/im/activities/PicViewActivity$9;->b:Lcom/alibaba/android/rimet/biz/im/activities/PicViewActivity;

    invoke-virtual {v0}, Lcom/alibaba/android/rimet/biz/im/activities/PicViewActivity;->dismissLoadingDialog()V

    .line 2028
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 2029
    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2030
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/im/Member;

    .line 2031
    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/alibaba/wukong/im/Member;->user()Lcom/alibaba/wukong/im/User;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Lcom/alibaba/wukong/im/Member;->user()Lcom/alibaba/wukong/im/User;

    move-result-object v3

    invoke-interface {v3}, Lcom/alibaba/wukong/im/User;->openId()J

    move-result-wide v4

    invoke-static {}, Liaq;->a()Liaq;

    invoke-static {}, Liaq;->n()J

    move-result-wide v6

    cmp-long v3, v4, v6

    if-eqz v3, :cond_0

    .line 2032
    invoke-interface {v0}, Lcom/alibaba/wukong/im/Member;->user()Lcom/alibaba/wukong/im/User;

    move-result-object v0

    invoke-interface {v0}, Lcom/alibaba/wukong/im/User;->openId()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 2036
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/rimet/biz/im/activities/PicViewActivity$9;->a:Lcom/alibaba/android/ding/base/objects/DingCreateInfo$a;

    invoke-virtual {v0, v1}, Lcom/alibaba/android/ding/base/objects/DingCreateInfo$a;->c(Ljava/util/List;)Lcom/alibaba/android/ding/base/objects/DingCreateInfo$a;

    .line 2037
    invoke-static {}, Lcom/alibaba/android/ding/base/interfaces/DingInterface;->a()Lcom/alibaba/android/ding/base/interfaces/DingInterface;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/rimet/biz/im/activities/PicViewActivity$9;->b:Lcom/alibaba/android/rimet/biz/im/activities/PicViewActivity;

    iget-object v2, p0, Lcom/alibaba/android/rimet/biz/im/activities/PicViewActivity$9;->a:Lcom/alibaba/android/ding/base/objects/DingCreateInfo$a;

    .line 2922
    iget-object v2, v2, Lcom/alibaba/android/ding/base/objects/DingCreateInfo$a;->a:Lcom/alibaba/android/ding/base/objects/DingCreateInfo;

    .line 2037
    invoke-virtual {v0, v1, v2}, Lcom/alibaba/android/ding/base/interfaces/DingInterface;->a(Landroid/app/Activity;Lcom/alibaba/android/ding/base/objects/DingCreateInfo;)V

    .line 1023
    return-void
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 1047
    iget-object v0, p0, Lcom/alibaba/android/rimet/biz/im/activities/PicViewActivity$9;->b:Lcom/alibaba/android/rimet/biz/im/activities/PicViewActivity;

    invoke-virtual {v0}, Lcom/alibaba/android/rimet/biz/im/activities/PicViewActivity;->dismissLoadingDialog()V

    .line 1048
    const-string/jumbo v0, "im"

    const/4 v1, 0x0

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "handlePictureToTaskImpl getConversationMember onException code="

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p1, v2, v3

    const/4 v3, 0x2

    const-string/jumbo v4, ", reason="

    aput-object v4, v2, v3

    const/4 v3, 0x3

    aput-object p2, v2, v3

    invoke-static {v2}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1049
    invoke-static {}, Lcom/alibaba/android/ding/base/interfaces/DingInterface;->a()Lcom/alibaba/android/ding/base/interfaces/DingInterface;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/rimet/biz/im/activities/PicViewActivity$9;->b:Lcom/alibaba/android/rimet/biz/im/activities/PicViewActivity;

    iget-object v2, p0, Lcom/alibaba/android/rimet/biz/im/activities/PicViewActivity$9;->a:Lcom/alibaba/android/ding/base/objects/DingCreateInfo$a;

    .line 1922
    iget-object v2, v2, Lcom/alibaba/android/ding/base/objects/DingCreateInfo$a;->a:Lcom/alibaba/android/ding/base/objects/DingCreateInfo;

    .line 1049
    invoke-virtual {v0, v1, v2}, Lcom/alibaba/android/ding/base/interfaces/DingInterface;->a(Landroid/app/Activity;Lcom/alibaba/android/ding/base/objects/DingCreateInfo;)V

    .line 1051
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 1043
    return-void
.end method
