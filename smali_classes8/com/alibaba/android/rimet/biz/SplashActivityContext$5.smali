.class final Lcom/alibaba/android/rimet/biz/SplashActivityContext$5;
.super Ljava/lang/Object;
.source "SplashActivityContext.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/rimet/biz/SplashActivityContext;->startAppActivity()V
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
    .line 485
    iput-object p1, p0, Lcom/alibaba/android/rimet/biz/SplashActivityContext$5;->a:Lcom/alibaba/android/rimet/biz/SplashActivityContext;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 490
    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v1

    invoke-virtual {v1}, Lccr;->b()Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

    move-result-object v0

    .line 491
    .local v0, "currentUser":Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v1

    new-instance v2, Lcom/alibaba/android/rimet/biz/SplashActivityContext$5$1;

    invoke-direct {v2, p0, v0}, Lcom/alibaba/android/rimet/biz/SplashActivityContext$5$1;-><init>(Lcom/alibaba/android/rimet/biz/SplashActivityContext$5;Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;)V

    invoke-virtual {v1, v2}, Lhcv;->post(Ljava/lang/Runnable;)Z

    .line 532
    return-void
.end method
