.class final Lcom/alibaba/android/rimet/biz/SplashActivityContext$1;
.super Ljava/lang/Object;
.source "SplashActivityContext.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/rimet/biz/SplashActivityContext;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/rimet/biz/SplashActivityContext;


# direct methods
.method constructor <init>(Lcom/alibaba/android/rimet/biz/SplashActivityContext;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/rimet/biz/SplashActivityContext;

    .prologue
    .line 119
    iput-object p1, p0, Lcom/alibaba/android/rimet/biz/SplashActivityContext$1;->a:Lcom/alibaba/android/rimet/biz/SplashActivityContext;

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
    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x3e8

    .line 122
    iget-object v2, p0, Lcom/alibaba/android/rimet/biz/SplashActivityContext$1;->a:Lcom/alibaba/android/rimet/biz/SplashActivityContext;

    invoke-static {v2}, Lcom/alibaba/android/rimet/biz/SplashActivityContext;->access$000(Lcom/alibaba/android/rimet/biz/SplashActivityContext;)J

    move-result-wide v2

    div-long v0, v2, v6

    .line 123
    .local v0, "time":J
    iget-object v2, p0, Lcom/alibaba/android/rimet/biz/SplashActivityContext$1;->a:Lcom/alibaba/android/rimet/biz/SplashActivityContext;

    invoke-static {v2, v0, v1}, Lcom/alibaba/android/rimet/biz/SplashActivityContext;->access$100(Lcom/alibaba/android/rimet/biz/SplashActivityContext;J)V

    .line 124
    cmp-long v2, v0, v4

    if-gtz v2, :cond_1

    .line 125
    iget-object v2, p0, Lcom/alibaba/android/rimet/biz/SplashActivityContext$1;->a:Lcom/alibaba/android/rimet/biz/SplashActivityContext;

    invoke-static {v2}, Lcom/alibaba/android/rimet/biz/SplashActivityContext;->access$000(Lcom/alibaba/android/rimet/biz/SplashActivityContext;)J

    move-result-wide v2

    cmp-long v2, v2, v4

    if-gtz v2, :cond_0

    .line 126
    iget-object v2, p0, Lcom/alibaba/android/rimet/biz/SplashActivityContext$1;->a:Lcom/alibaba/android/rimet/biz/SplashActivityContext;

    invoke-static {v2}, Lcom/alibaba/android/rimet/biz/SplashActivityContext;->access$200(Lcom/alibaba/android/rimet/biz/SplashActivityContext;)Ljava/lang/Runnable;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    .line 134
    :goto_0
    return-void

    .line 128
    :cond_0
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v2

    iget-object v3, p0, Lcom/alibaba/android/rimet/biz/SplashActivityContext$1;->a:Lcom/alibaba/android/rimet/biz/SplashActivityContext;

    invoke-static {v3}, Lcom/alibaba/android/rimet/biz/SplashActivityContext;->access$200(Lcom/alibaba/android/rimet/biz/SplashActivityContext;)Ljava/lang/Runnable;

    move-result-object v3

    iget-object v4, p0, Lcom/alibaba/android/rimet/biz/SplashActivityContext$1;->a:Lcom/alibaba/android/rimet/biz/SplashActivityContext;

    invoke-static {v4}, Lcom/alibaba/android/rimet/biz/SplashActivityContext;->access$000(Lcom/alibaba/android/rimet/biz/SplashActivityContext;)J

    move-result-wide v4

    invoke-virtual {v2, v3, v4, v5}, Lhcv;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 131
    :cond_1
    iget-object v2, p0, Lcom/alibaba/android/rimet/biz/SplashActivityContext$1;->a:Lcom/alibaba/android/rimet/biz/SplashActivityContext;

    iget-object v3, p0, Lcom/alibaba/android/rimet/biz/SplashActivityContext$1;->a:Lcom/alibaba/android/rimet/biz/SplashActivityContext;

    invoke-static {v3}, Lcom/alibaba/android/rimet/biz/SplashActivityContext;->access$000(Lcom/alibaba/android/rimet/biz/SplashActivityContext;)J

    move-result-wide v4

    sub-long/2addr v4, v6

    invoke-static {v2, v4, v5}, Lcom/alibaba/android/rimet/biz/SplashActivityContext;->access$002(Lcom/alibaba/android/rimet/biz/SplashActivityContext;J)J

    .line 132
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v2

    iget-object v3, p0, Lcom/alibaba/android/rimet/biz/SplashActivityContext$1;->a:Lcom/alibaba/android/rimet/biz/SplashActivityContext;

    invoke-static {v3}, Lcom/alibaba/android/rimet/biz/SplashActivityContext;->access$300(Lcom/alibaba/android/rimet/biz/SplashActivityContext;)Ljava/lang/Runnable;

    move-result-object v3

    invoke-virtual {v2, v3, v6, v7}, Lhcv;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method
