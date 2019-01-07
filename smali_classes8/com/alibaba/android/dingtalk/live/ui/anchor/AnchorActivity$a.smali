.class final Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity$a;
.super Ljava/lang/Object;
.source "AnchorActivity.java"

# interfaces
.implements Ljjx$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity;


# direct methods
.method private constructor <init>(Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity;)V
    .locals 0

    .prologue
    .line 1232
    iput-object p1, p0, Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity$a;->a:Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity;B)V
    .locals 0
    .param p1, "x0"    # Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity;

    .prologue
    .line 1232
    invoke-direct {p0, p1}, Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity$a;-><init>(Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 0

    .prologue
    .line 1285
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 4
    .param p1, "peerId"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v3, 0x0

    .line 1235
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity$a;->a:Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity;

    invoke-static {v1}, Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity;->e(Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity;)Ljjx;

    move-result-object v1

    if-nez v1, :cond_0

    .line 1250
    :goto_0
    return-void

    .line 1238
    :cond_0
    invoke-static {}, Lbtq;->a()Lbtq;

    move-result-object v1

    .line 2249
    iput-object p1, v1, Lbtq;->c:Ljava/lang/String;

    .line 1239
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity$a;->a:Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity;

    invoke-static {v1}, Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity;->G(Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1240
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity$a;->a:Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity;

    invoke-static {v1}, Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity;->H(Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity;)Landroid/view/View;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1241
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity$a;->a:Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity;

    invoke-static {v1}, Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity;->e(Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity;)Ljjx;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljjx;->c(Landroid/widget/RelativeLayout;)V

    .line 1242
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity$a;->a:Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity;

    invoke-static {v1}, Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity;->e(Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity;)Ljjx;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity$a;->a:Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity;

    invoke-static {v2}, Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity;->I(Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity;)Landroid/widget/RelativeLayout;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljjx;->c(Landroid/widget/RelativeLayout;)V

    .line 1243
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity$a;->a:Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity;

    invoke-static {v1}, Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity;->I(Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity;)Landroid/widget/RelativeLayout;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/widget/RelativeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/SurfaceView;

    .line 1244
    .local v0, "surfaceView":Landroid/view/SurfaceView;
    if-eqz v0, :cond_1

    .line 1245
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/SurfaceView;->setZOrderMediaOverlay(Z)V

    .line 1247
    :cond_1
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity$a;->a:Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity;

    invoke-static {v1}, Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity;->J(Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity;)Ljava/util/List;

    move-result-object v1

    .line 3109
    const-wide/16 v2, 0x0

    invoke-static {p1, v2, v3}, Lcoc;->a(Ljava/lang/String;J)J

    move-result-wide v2

    .line 1247
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 1248
    invoke-static {}, Lbtq;->a()Lbtq;

    move-result-object v1

    const/4 v2, 0x2

    .line 3261
    iput v2, v1, Lbtq;->a:I

    .line 1249
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity$a;->a:Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity;

    invoke-static {v1}, Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity;->K(Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity;)V

    goto :goto_0
.end method

.method public final b(Ljava/lang/String;)V
    .locals 6
    .param p1, "peerId"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 1254
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity$a;->a:Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity;

    invoke-static {v0}, Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity;->e(Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity;)Ljjx;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1264
    :goto_0
    return-void

    .line 1257
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity$a;->a:Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity;

    invoke-static {v0}, Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity;->e(Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity;)Ljjx;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljjx;->c(Landroid/widget/RelativeLayout;)V

    .line 1258
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity$a;->a:Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity;

    invoke-static {v0}, Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity;->G(Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity;)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1259
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity$a;->a:Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity;

    invoke-static {v0}, Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity;->H(Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 1260
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity$a;->a:Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity;

    invoke-static {v0}, Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity;->J(Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity;)Ljava/util/List;

    move-result-object v0

    .line 4109
    const-wide/16 v2, 0x0

    invoke-static {p1, v2, v3}, Lcoc;->a(Ljava/lang/String;J)J

    move-result-wide v2

    .line 1260
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 1261
    invoke-static {}, Lbtq;->a()Lbtq;

    move-result-object v0

    .line 4249
    iput-object v5, v0, Lbtq;->c:Ljava/lang/String;

    .line 1262
    invoke-static {}, Lbtq;->a()Lbtq;

    move-result-object v0

    .line 4261
    iput v4, v0, Lbtq;->a:I

    .line 1263
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity$a;->a:Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity;

    invoke-static {v0}, Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity;->K(Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity;)V

    goto :goto_0
.end method

.method public final c(Ljava/lang/String;)V
    .locals 4
    .param p1, "peerId"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 1268
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity$a;->a:Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity;

    invoke-static {v0}, Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity;->e(Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity;)Ljjx;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1280
    :goto_0
    return-void

    .line 1271
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity$a;->a:Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity;

    invoke-static {v0}, Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity;->e(Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity;)Ljjx;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljjx;->c(Landroid/widget/RelativeLayout;)V

    .line 1272
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity$a;->a:Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity;

    invoke-static {v0}, Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity;->G(Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity;)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1273
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity$a;->a:Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity;

    invoke-static {v0}, Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity;->H(Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1274
    invoke-static {}, Lbtq;->a()Lbtq;

    move-result-object v0

    .line 5249
    iput-object v3, v0, Lbtq;->c:Ljava/lang/String;

    .line 1275
    invoke-static {}, Lbtq;->a()Lbtq;

    move-result-object v0

    .line 5261
    iput v2, v0, Lbtq;->a:I

    .line 1276
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1277
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity$a;->a:Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity;

    invoke-static {v0}, Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity;->J(Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity;)Ljava/util/List;

    move-result-object v0

    .line 6109
    const-wide/16 v2, 0x0

    invoke-static {p1, v2, v3}, Lcoc;->a(Ljava/lang/String;J)J

    move-result-wide v2

    .line 1277
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 1279
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity$a;->a:Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity;

    invoke-static {v0}, Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity;->K(Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity;)V

    goto :goto_0
.end method
