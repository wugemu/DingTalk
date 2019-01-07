.class final Lcom/alibaba/android/dingtalkim/impls/IMInterfaceImpl$38;
.super Ljava/lang/Object;
.source "IMInterfaceImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/dingtalkim/impls/IMInterfaceImpl;->c(Ljava/lang/String;Lcma;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcma;

.field final synthetic c:Lcom/alibaba/android/dingtalkim/impls/IMInterfaceImpl;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalkim/impls/IMInterfaceImpl;Ljava/lang/String;Lcma;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalkim/impls/IMInterfaceImpl;

    .prologue
    .line 2447
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/impls/IMInterfaceImpl$38;->c:Lcom/alibaba/android/dingtalkim/impls/IMInterfaceImpl;

    iput-object p2, p0, Lcom/alibaba/android/dingtalkim/impls/IMInterfaceImpl$38;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/alibaba/android/dingtalkim/impls/IMInterfaceImpl$38;->b:Lcma;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v7, 0x0

    const/16 v6, 0x2710

    const/16 v5, 0x316

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 2450
    new-instance v0, Ldhv;

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/impls/IMInterfaceImpl$38;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/impls/IMInterfaceImpl$38;->b:Lcma;

    invoke-direct {v0, v1, v2}, Ldhv;-><init>(Ljava/lang/String;Lcma;)V

    .line 3061
    .local v0, "mediaIdTransferToBytes":Ldhv;
    iget-object v1, v0, Ldhv;->c:Lcma;

    if-eqz v1, :cond_0

    .line 3064
    iget-object v1, v0, Ldhv;->a:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3065
    iget-object v1, v0, Ldhv;->c:Lcma;

    const-string/jumbo v2, "404"

    const-string/jumbo v3, "mediaId is null"

    invoke-interface {v1, v2, v3}, Lcma;->onException(Ljava/lang/String;Ljava/lang/String;)V

    .line 3111
    :cond_0
    :goto_0
    return-void

    .line 3072
    :cond_1
    iget-object v1, v0, Ldhv;->a:Ljava/lang/String;

    invoke-static {v1}, Lcom/laiwang/protocol/media/MediaIdManager;->isMediaIdUri(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 3074
    iget-object v1, v0, Ldhv;->a:Ljava/lang/String;

    invoke-static {v1}, Lcqz;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 3077
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 3078
    invoke-static {}, Ldjv;->a()Ldjv;

    move-result-object v1

    iget-object v2, v0, Ldhv;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ldjv;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 3080
    :cond_2
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 3082
    :try_start_0
    iget-object v2, v0, Ldhv;->a:Ljava/lang/String;

    invoke-static {v2}, Lcom/laiwang/protocol/media/MediaIdManager;->transferToHttpUrl(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lcom/laiwang/protocol/media/MediaIdEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 3088
    :cond_3
    :goto_1
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 3089
    invoke-static {v1}, Lhcs;->d(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 3090
    invoke-virtual {v0, v1}, Ldhv;->c(Ljava/lang/String;)V

    goto :goto_0

    .line 3083
    :catch_0
    move-exception v2

    .line 3084
    invoke-virtual {v2}, Lcom/laiwang/protocol/media/MediaIdEncodingException;->printStackTrace()V

    goto :goto_1

    .line 3091
    :cond_4
    iget-object v2, v0, Ldhv;->d:Lcom/alibaba/doraemon/image/ImageMagician;

    invoke-interface {v2, v1}, Lcom/alibaba/doraemon/image/ImageMagician;->hasImageCache(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 3092
    invoke-static {}, Lgzp;->b()Lgzn;

    move-result-object v2

    invoke-virtual {v0, v1}, Ldhv;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Ldhv;->a()Lcom/alibaba/wukong/Callback;

    move-result-object v4

    invoke-interface {v2, v1, v7, v3, v4}, Lgzn;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/wukong/Callback;)V

    goto :goto_0

    .line 3094
    :cond_5
    invoke-virtual {v0, v1}, Ldhv;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 3100
    :cond_6
    iget-object v1, v0, Ldhv;->a:Ljava/lang/String;

    .line 3145
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_8

    .line 3148
    const-string/jumbo v2, ".gif"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    move v1, v3

    .line 3100
    :goto_2
    if-eqz v1, :cond_9

    .line 3101
    invoke-static {}, Lhcj;->a()Lhcj;

    move-result-object v1

    iget-object v2, v0, Ldhv;->a:Ljava/lang/String;

    invoke-virtual {v1, v2, v5, v6, v4}, Lhcj;->a(Ljava/lang/String;IIZ)Ljava/lang/String;

    move-result-object v1

    .line 3106
    :goto_3
    if-eqz v1, :cond_b

    .line 3107
    iget-object v2, v0, Ldhv;->d:Lcom/alibaba/doraemon/image/ImageMagician;

    if-eqz v2, :cond_a

    iget-object v2, v0, Ldhv;->d:Lcom/alibaba/doraemon/image/ImageMagician;

    invoke-interface {v2, v1}, Lcom/alibaba/doraemon/image/ImageMagician;->hasImageCache(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 3108
    invoke-static {}, Lgzp;->b()Lgzn;

    move-result-object v2

    invoke-virtual {v0, v1}, Ldhv;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Ldhv;->a()Lcom/alibaba/wukong/Callback;

    move-result-object v4

    invoke-interface {v2, v1, v7, v3, v4}, Lgzn;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/wukong/Callback;)V

    goto/16 :goto_0

    .line 3151
    :cond_7
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 3152
    invoke-virtual {v1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_8

    invoke-virtual {v1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, ".gif"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    move v1, v3

    .line 3153
    goto :goto_2

    :cond_8
    move v1, v4

    .line 3156
    goto :goto_2

    .line 3103
    :cond_9
    invoke-static {}, Lhcj;->a()Lhcj;

    move-result-object v1

    iget-object v2, v0, Ldhv;->a:Ljava/lang/String;

    invoke-virtual {v1, v2, v5, v6, v3}, Lhcj;->a(Ljava/lang/String;IIZ)Ljava/lang/String;

    move-result-object v1

    goto :goto_3

    .line 3111
    :cond_a
    invoke-virtual {v0, v1}, Ldhv;->a(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 3115
    :cond_b
    iget-object v1, v0, Ldhv;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ldhv;->a(Ljava/lang/String;)V

    goto/16 :goto_0
.end method
