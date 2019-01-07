.class final Lcom/alibaba/android/teleconf/operation/TeleConfDingSimCardHelper$1;
.super Ljava/lang/Object;
.source "TeleConfDingSimCardHelper.java"

# interfaces
.implements Lcom/alibaba/wukong/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/teleconf/operation/TeleConfDingSimCardHelper;->updateDingSimCardNoticeInterval()V
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
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/teleconf/operation/TeleConfDingSimCardHelper;


# direct methods
.method constructor <init>(Lcom/alibaba/android/teleconf/operation/TeleConfDingSimCardHelper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/teleconf/operation/TeleConfDingSimCardHelper;

    .prologue
    .line 148
    iput-object p1, p0, Lcom/alibaba/android/teleconf/operation/TeleConfDingSimCardHelper$1;->a:Lcom/alibaba/android/teleconf/operation/TeleConfDingSimCardHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "s2"    # Ljava/lang/String;

    .prologue
    .line 160
    return-void
.end method

.method public final bridge synthetic onProgress(Ljava/lang/Object;I)V
    .locals 0

    .prologue
    .line 148
    return-void
.end method

.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 148
    check-cast p1, Ljava/lang/String;

    .line 1152
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1153
    const-string/jumbo v0, "dingcard_warn_interval"

    invoke-static {v0, p1}, Lcpk;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    :cond_0
    return-void
.end method
