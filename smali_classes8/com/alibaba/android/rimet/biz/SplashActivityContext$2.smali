.class final Lcom/alibaba/android/rimet/biz/SplashActivityContext$2;
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
    .line 137
    iput-object p1, p0, Lcom/alibaba/android/rimet/biz/SplashActivityContext$2;->a:Lcom/alibaba/android/rimet/biz/SplashActivityContext;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 140
    iget-object v0, p0, Lcom/alibaba/android/rimet/biz/SplashActivityContext$2;->a:Lcom/alibaba/android/rimet/biz/SplashActivityContext;

    invoke-static {v0}, Lcom/alibaba/android/rimet/biz/SplashActivityContext;->access$400(Lcom/alibaba/android/rimet/biz/SplashActivityContext;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 141
    iget-object v0, p0, Lcom/alibaba/android/rimet/biz/SplashActivityContext$2;->a:Lcom/alibaba/android/rimet/biz/SplashActivityContext;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/alibaba/android/rimet/biz/SplashActivityContext;->access$502(Lcom/alibaba/android/rimet/biz/SplashActivityContext;Z)Z

    .line 142
    invoke-static {}, Lcom/alibaba/android/rimet/biz/SplashActivityContext;->access$600()Z

    move-result v0

    if-nez v0, :cond_0

    .line 143
    iget-object v0, p0, Lcom/alibaba/android/rimet/biz/SplashActivityContext$2;->a:Lcom/alibaba/android/rimet/biz/SplashActivityContext;

    invoke-static {v0}, Lcom/alibaba/android/rimet/biz/SplashActivityContext;->access$700(Lcom/alibaba/android/rimet/biz/SplashActivityContext;)V

    .line 146
    :cond_0
    return-void
.end method
