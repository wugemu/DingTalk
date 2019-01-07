.class final Lcom/alibaba/dingtalk/share/share/FaceBookShareUnit$1;
.super Ljava/lang/Object;
.source "FaceBookShareUnit.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/dingtalk/share/share/FaceBookShareUnit;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/dingtalk/share/share/ShareManager$ShareImageInfo;

.field final synthetic b:Landroid/app/Activity;

.field final synthetic c:Lcom/alibaba/dingtalk/share/share/FaceBookShareUnit;


# direct methods
.method constructor <init>(Lcom/alibaba/dingtalk/share/share/FaceBookShareUnit;Lcom/alibaba/dingtalk/share/share/ShareManager$ShareImageInfo;Landroid/app/Activity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/dingtalk/share/share/FaceBookShareUnit;

    .prologue
    .line 69
    iput-object p1, p0, Lcom/alibaba/dingtalk/share/share/FaceBookShareUnit$1;->c:Lcom/alibaba/dingtalk/share/share/FaceBookShareUnit;

    iput-object p2, p0, Lcom/alibaba/dingtalk/share/share/FaceBookShareUnit$1;->a:Lcom/alibaba/dingtalk/share/share/ShareManager$ShareImageInfo;

    iput-object p3, p0, Lcom/alibaba/dingtalk/share/share/FaceBookShareUnit$1;->b:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v6, 0x0

    .line 73
    :try_start_0
    iget-object v1, p0, Lcom/alibaba/dingtalk/share/share/FaceBookShareUnit$1;->a:Lcom/alibaba/dingtalk/share/share/ShareManager$ShareImageInfo;

    iget-object v2, p0, Lcom/alibaba/dingtalk/share/share/FaceBookShareUnit$1;->a:Lcom/alibaba/dingtalk/share/share/ShareManager$ShareImageInfo;

    invoke-virtual {v2}, Lcom/alibaba/dingtalk/share/share/ShareManager$ShareImageInfo;->b()Landroid/graphics/Bitmap;

    move-result-object v2

    iget-object v3, p0, Lcom/alibaba/dingtalk/share/share/FaceBookShareUnit$1;->c:Lcom/alibaba/dingtalk/share/share/FaceBookShareUnit;

    invoke-static {v3}, Lcom/alibaba/dingtalk/share/share/FaceBookShareUnit;->a(Lcom/alibaba/dingtalk/share/share/FaceBookShareUnit;)Landroid/content/Context;

    move-result-object v3

    sget-object v4, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/4 v5, 0x0

    invoke-static {v2, v3, v4, v5}, Lcnx;->a(Landroid/graphics/Bitmap;Landroid/content/Context;Landroid/graphics/Bitmap$CompressFormat;Z)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/alibaba/dingtalk/share/share/ShareManager$ShareImageInfo;->c:Ljava/lang/String;

    .line 75
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v1

    new-instance v2, Lcom/alibaba/dingtalk/share/share/FaceBookShareUnit$1$1;

    invoke-direct {v2, p0}, Lcom/alibaba/dingtalk/share/share/FaceBookShareUnit$1$1;-><init>(Lcom/alibaba/dingtalk/share/share/FaceBookShareUnit$1;)V

    invoke-virtual {v1, v2}, Lhcv;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 90
    :goto_0
    return-void

    .line 84
    :catch_0
    move-exception v0

    .line 85
    .local v0, "e":Ljava/lang/Throwable;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 86
    const-string/jumbo v1, "share"

    const/4 v2, 0x0

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const-string/jumbo v4, "[FacebookFriendShareUnit] MediaStore.Images.Media.insertImage failed, error="

    aput-object v4, v3, v6

    const/4 v4, 0x1

    .line 87
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    .line 86
    invoke-static {v3}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
