.class final Lcom/alibaba/android/dingtalk/circle/activity/CoverListActivity$3;
.super Ljava/lang/Object;
.source "CoverListActivity.java"

# interfaces
.implements Lifv;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/dingtalk/circle/activity/CoverListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lifv",
        "<",
        "Lifx;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalk/circle/activity/CoverListActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalk/circle/activity/CoverListActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalk/circle/activity/CoverListActivity;

    .prologue
    .line 203
    iput-object p1, p0, Lcom/alibaba/android/dingtalk/circle/activity/CoverListActivity$3;->a:Lcom/alibaba/android/dingtalk/circle/activity/CoverListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onException(ILjava/lang/String;)V
    .locals 5
    .param p1, "code"    # I
    .param p2, "reason"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 231
    const-string/jumbo v0, "Circle"

    const-string/jumbo v1, "CoverList"

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string/jumbo v4, "upload cover image fail, code="

    aput-object v4, v2, v3

    const/4 v3, 0x1

    .line 232
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string/jumbo v4, "; reason="

    aput-object v4, v2, v3

    const/4 v3, 0x3

    aput-object p2, v2, v3

    .line 231
    invoke-static {v2}, Lcom/alibaba/doraemon/utils/CommonUtils;->getAppendString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 233
    return-void
.end method

.method public final onProgress(JJI)V
    .locals 0
    .param p1, "l"    # J
    .param p3, "l1"    # J
    .param p5, "i"    # I

    .prologue
    .line 207
    return-void
.end method

.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .locals 7

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 203
    check-cast p1, Lifx;

    .line 1211
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/circle/activity/CoverListActivity$3;->a:Lcom/alibaba/android/dingtalk/circle/activity/CoverListActivity;

    invoke-static {v0}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1215
    new-instance v0, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNCoverObject;

    invoke-direct {v0}, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNCoverObject;-><init>()V

    .line 2026
    iget-object v1, p1, Lifx;->a:Ljava/lang/String;

    .line 1216
    iput-object v1, v0, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNCoverObject;->mediaId:Ljava/lang/String;

    .line 3026
    :try_start_0
    iget-object v1, p1, Lifx;->a:Ljava/lang/String;

    .line 1218
    invoke-static {v1}, Lcom/laiwang/protocol/media/MediaIdManager;->convertToUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNCoverObject;->originUrl:Ljava/lang/String;

    .line 1220
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/circle/activity/CoverListActivity$3;->a:Lcom/alibaba/android/dingtalk/circle/activity/CoverListActivity;

    const/4 v2, 0x1

    new-array v2, v2, [Lcom/alibaba/android/dingtalk/circle/idl/objects/SNCoverObject;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Lcom/alibaba/android/dingtalk/circle/activity/CoverListActivity;->a(Lcom/alibaba/android/dingtalk/circle/activity/CoverListActivity;Ljava/util/List;I)V
    :try_end_0
    .catch Lcom/laiwang/protocol/media/MediaIdEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1226
    :cond_0
    :goto_0
    return-void

    .line 1221
    :catch_0
    move-exception v0

    .line 1222
    invoke-virtual {v0}, Lcom/laiwang/protocol/media/MediaIdEncodingException;->printStackTrace()V

    .line 1224
    const-string/jumbo v1, "Circle"

    const-string/jumbo v2, "CoverList"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const-string/jumbo v4, "coverlist, convertToUrl error, "

    aput-object v4, v3, v5

    .line 1225
    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v6

    .line 1224
    invoke-static {v3}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v0}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
