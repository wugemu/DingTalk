.class final Lcom/alibaba/android/rimet/biz/SplashActivityContext$3;
.super Ljava/lang/Object;
.source "SplashActivityContext.java"

# interfaces
.implements Lcom/alibaba/doraemon/image/ImageEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/rimet/biz/SplashActivityContext;->showSplash()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/alibaba/android/rimet/biz/SplashActivityContext;


# direct methods
.method constructor <init>(Lcom/alibaba/android/rimet/biz/SplashActivityContext;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/rimet/biz/SplashActivityContext;

    .prologue
    .line 337
    iput-object p1, p0, Lcom/alibaba/android/rimet/biz/SplashActivityContext$3;->b:Lcom/alibaba/android/rimet/biz/SplashActivityContext;

    iput-object p2, p0, Lcom/alibaba/android/rimet/biz/SplashActivityContext$3;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDownloadProgressListener(Landroid/view/View;ILjava/lang/String;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;
    .param p2, "progress"    # I
    .param p3, "url"    # Ljava/lang/String;

    .prologue
    .line 358
    return-void
.end method

.method public final onError(ILjava/lang/String;Ljava/lang/String;Landroid/view/View;)V
    .locals 5
    .param p1, "errCode"    # I
    .param p2, "errDes"    # Ljava/lang/String;
    .param p3, "url"    # Ljava/lang/String;
    .param p4, "view"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 340
    const-string/jumbo v0, "splash"

    const-string/jumbo v1, "SplashActivityContext"

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "setImageDrawable error: errorCode = "

    aput-object v4, v2, v3

    const/4 v3, 0x1

    .line 341
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string/jumbo v4, "errorMsg = "

    aput-object v4, v2, v3

    const/4 v3, 0x3

    aput-object p2, v2, v3

    const/4 v3, 0x4

    const-string/jumbo v4, " url = "

    aput-object v4, v2, v3

    const/4 v3, 0x5

    aput-object p3, v2, v3

    .line 340
    invoke-static {v2}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 342
    return-void
.end method

.method public final onImageProcessListener(ILandroid/view/View;Ljava/lang/String;J)V
    .locals 2
    .param p1, "event"    # I
    .param p2, "view"    # Landroid/view/View;
    .param p3, "url"    # Ljava/lang/String;
    .param p4, "size"    # J

    .prologue
    .line 346
    const/4 v0, 0x3

    if-ne p1, v0, :cond_1

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/alibaba/android/rimet/biz/SplashActivityContext$3;->a:Ljava/lang/String;

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 347
    iget-object v0, p0, Lcom/alibaba/android/rimet/biz/SplashActivityContext$3;->b:Lcom/alibaba/android/rimet/biz/SplashActivityContext;

    invoke-static {v0}, Lcom/alibaba/android/rimet/biz/SplashActivityContext;->access$800(Lcom/alibaba/android/rimet/biz/SplashActivityContext;)Lekr;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/rimet/biz/SplashActivityContext$3;->b:Lcom/alibaba/android/rimet/biz/SplashActivityContext;

    invoke-static {v0}, Lcom/alibaba/android/rimet/biz/SplashActivityContext;->access$800(Lcom/alibaba/android/rimet/biz/SplashActivityContext;)Lekr;

    move-result-object v0

    iget v0, v0, Lekr;->b:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 348
    iget-object v0, p0, Lcom/alibaba/android/rimet/biz/SplashActivityContext$3;->b:Lcom/alibaba/android/rimet/biz/SplashActivityContext;

    iget-object v0, v0, Lcom/alibaba/android/rimet/biz/SplashActivityContext;->mActivity:Landroid/app/Activity;

    const v1, 0x7f110218

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 351
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/rimet/biz/SplashActivityContext$3;->b:Lcom/alibaba/android/rimet/biz/SplashActivityContext;

    invoke-static {v0}, Lcom/alibaba/android/rimet/biz/SplashActivityContext;->access$1000(Lcom/alibaba/android/rimet/biz/SplashActivityContext;)Lcom/alibaba/doraemon/image/ImageMagician;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/rimet/biz/SplashActivityContext$3;->b:Lcom/alibaba/android/rimet/biz/SplashActivityContext;

    invoke-static {v1}, Lcom/alibaba/android/rimet/biz/SplashActivityContext;->access$900(Lcom/alibaba/android/rimet/biz/SplashActivityContext;)Lcom/alibaba/doraemon/image/ImageEventListener;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/image/ImageMagician;->unregisterEventListener(Lcom/alibaba/doraemon/image/ImageEventListener;)V

    .line 352
    iget-object v0, p0, Lcom/alibaba/android/rimet/biz/SplashActivityContext$3;->b:Lcom/alibaba/android/rimet/biz/SplashActivityContext;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/alibaba/android/rimet/biz/SplashActivityContext;->access$902(Lcom/alibaba/android/rimet/biz/SplashActivityContext;Lcom/alibaba/doraemon/image/ImageEventListener;)Lcom/alibaba/doraemon/image/ImageEventListener;

    .line 354
    :cond_1
    return-void
.end method

.method public final onMemoryOverflow(JJ[Ljava/lang/String;)V
    .locals 0
    .param p1, "maxSize"    # J
    .param p3, "currentSize"    # J
    .param p5, "activityStr"    # [Ljava/lang/String;

    .prologue
    .line 363
    return-void
.end method
