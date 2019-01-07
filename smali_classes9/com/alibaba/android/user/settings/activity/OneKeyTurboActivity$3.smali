.class final Lcom/alibaba/android/user/settings/activity/OneKeyTurboActivity$3;
.super Ljava/lang/Object;
.source "OneKeyTurboActivity.java"

# interfaces
.implements Lcom/alibaba/wukong/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/user/settings/activity/OneKeyTurboActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/alibaba/wukong/Callback",
        "<",
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/user/settings/activity/OneKeyTurboActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/settings/activity/OneKeyTurboActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/user/settings/activity/OneKeyTurboActivity;

    .prologue
    .line 173
    iput-object p1, p0, Lcom/alibaba/android/user/settings/activity/OneKeyTurboActivity$3;->a:Lcom/alibaba/android/user/settings/activity/OneKeyTurboActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(Ljava/lang/Long;)V
    .locals 2
    .param p1, "aLong"    # Ljava/lang/Long;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 177
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v0

    new-instance v1, Lcom/alibaba/android/user/settings/activity/OneKeyTurboActivity$3$1;

    invoke-direct {v1, p0, p1}, Lcom/alibaba/android/user/settings/activity/OneKeyTurboActivity$3$1;-><init>(Lcom/alibaba/android/user/settings/activity/OneKeyTurboActivity$3;Ljava/lang/Long;)V

    invoke-virtual {v0, v1}, Lhcv;->post(Ljava/lang/Runnable;)Z

    .line 190
    return-void
.end method


# virtual methods
.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "s1"    # Ljava/lang/String;

    .prologue
    .line 194
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/alibaba/android/user/settings/activity/OneKeyTurboActivity$3;->a(Ljava/lang/Long;)V

    .line 195
    return-void
.end method

.method public final bridge synthetic onProgress(Ljava/lang/Object;I)V
    .locals 0

    .prologue
    .line 173
    return-void
.end method

.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 173
    check-cast p1, Ljava/lang/Long;

    invoke-direct {p0, p1}, Lcom/alibaba/android/user/settings/activity/OneKeyTurboActivity$3;->a(Ljava/lang/Long;)V

    return-void
.end method
