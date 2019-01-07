.class final Lcom/alibaba/dingtalk/share/share/WeixinFriendShareUnit$4;
.super Ljava/lang/Object;
.source "WeixinFriendShareUnit.java"

# interfaces
.implements Lcom/alibaba/laiwang/tide/share/business/excutor/ShareListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/dingtalk/share/share/WeixinFriendShareUnit;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/graphics/Bitmap;

.field final synthetic b:Lcom/alibaba/dingtalk/share/share/WeixinFriendShareUnit;


# direct methods
.method constructor <init>(Lcom/alibaba/dingtalk/share/share/WeixinFriendShareUnit;Landroid/graphics/Bitmap;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/dingtalk/share/share/WeixinFriendShareUnit;

    .prologue
    .line 255
    iput-object p1, p0, Lcom/alibaba/dingtalk/share/share/WeixinFriendShareUnit$4;->b:Lcom/alibaba/dingtalk/share/share/WeixinFriendShareUnit;

    iput-object p2, p0, Lcom/alibaba/dingtalk/share/share/WeixinFriendShareUnit$4;->a:Landroid/graphics/Bitmap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCancel()V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 275
    iget-object v0, p0, Lcom/alibaba/dingtalk/share/share/WeixinFriendShareUnit$4;->a:Landroid/graphics/Bitmap;

    invoke-static {v0}, Lcom/alibaba/dingtalk/share/share/WeixinFriendShareUnit;->a(Landroid/graphics/Bitmap;)V

    .line 276
    const-string/jumbo v0, "share"

    const/4 v1, 0x0

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "wxf"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string/jumbo v4, " bitmap cancel"

    aput-object v4, v2, v3

    invoke-static {v2}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 277
    return-void
.end method

.method public final onException(Ljava/lang/String;)V
    .locals 5
    .param p1, "s"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 268
    sget v0, Lgvn$h;->share_fail:I

    invoke-static {v0}, Lcms;->a(I)V

    .line 269
    iget-object v0, p0, Lcom/alibaba/dingtalk/share/share/WeixinFriendShareUnit$4;->a:Landroid/graphics/Bitmap;

    invoke-static {v0}, Lcom/alibaba/dingtalk/share/share/WeixinFriendShareUnit;->a(Landroid/graphics/Bitmap;)V

    .line 270
    const-string/jumbo v0, "share"

    const/4 v1, 0x0

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "wxf"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string/jumbo v4, " bitmap exception:"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    aput-object p1, v2, v3

    invoke-static {v2}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 271
    return-void
.end method

.method public final onSuccess()V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v5, 0x0

    .line 258
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 259
    .local v0, "args":Ljava/util/Map;
    const-string/jumbo v1, "share_to"

    const-string/jumbo v2, "wechat"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 260
    const-string/jumbo v1, "STATISTICS"

    invoke-static {v1}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/doraemon/statistics/Statistics;

    const-string/jumbo v2, "share_to"

    invoke-interface {v1, v5, v2, v0}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 261
    sget v1, Lgvn$h;->share_success:I

    invoke-static {v1}, Lcms;->a(I)V

    .line 262
    iget-object v1, p0, Lcom/alibaba/dingtalk/share/share/WeixinFriendShareUnit$4;->a:Landroid/graphics/Bitmap;

    invoke-static {v1}, Lcom/alibaba/dingtalk/share/share/WeixinFriendShareUnit;->a(Landroid/graphics/Bitmap;)V

    .line 263
    const-string/jumbo v1, "share"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "wxf"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string/jumbo v4, " bitmap suc"

    aput-object v4, v2, v3

    invoke-static {v2}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v5, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 264
    return-void
.end method
