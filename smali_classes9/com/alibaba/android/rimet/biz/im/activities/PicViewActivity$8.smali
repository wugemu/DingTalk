.class final Lcom/alibaba/android/rimet/biz/im/activities/PicViewActivity$8;
.super Ljava/lang/Object;
.source "PicViewActivity.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/rimet/biz/im/activities/PicViewActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcma",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/alibaba/android/rimet/biz/im/activities/PicViewActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/rimet/biz/im/activities/PicViewActivity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/rimet/biz/im/activities/PicViewActivity;

    .prologue
    .line 959
    iput-object p1, p0, Lcom/alibaba/android/rimet/biz/im/activities/PicViewActivity$8;->c:Lcom/alibaba/android/rimet/biz/im/activities/PicViewActivity;

    iput-object p2, p0, Lcom/alibaba/android/rimet/biz/im/activities/PicViewActivity$8;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/alibaba/android/rimet/biz/im/activities/PicViewActivity$8;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 7

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v6, 0x1

    .line 959
    check-cast p1, Ljava/lang/String;

    .line 1963
    const-string/jumbo v0, "im"

    const-string/jumbo v1, "PicView"

    const-string/jumbo v2, "handlePictureToTask onDataReceived success."

    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1964
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1967
    :try_start_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    .line 1968
    new-instance v1, Lcom/alibaba/android/ding/base/objects/DingCreateInfo$a;

    invoke-direct {v1}, Lcom/alibaba/android/ding/base/objects/DingCreateInfo$a;-><init>()V

    .line 1969
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/alibaba/android/ding/base/objects/DingCreateInfo$a;->a(I)Lcom/alibaba/android/ding/base/objects/DingCreateInfo$a;

    move-result-object v2

    .line 1970
    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/alibaba/android/ding/base/objects/DingCreateInfo$a;->e(Ljava/lang/String;)Lcom/alibaba/android/ding/base/objects/DingCreateInfo$a;

    move-result-object v0

    const-string/jumbo v2, "android.intent.action.SEND"

    .line 1971
    invoke-virtual {v0, v2}, Lcom/alibaba/android/ding/base/objects/DingCreateInfo$a;->c(Ljava/lang/String;)Lcom/alibaba/android/ding/base/objects/DingCreateInfo$a;

    move-result-object v0

    const-string/jumbo v2, "image/*"

    .line 1972
    invoke-virtual {v0, v2}, Lcom/alibaba/android/ding/base/objects/DingCreateInfo$a;->d(Ljava/lang/String;)Lcom/alibaba/android/ding/base/objects/DingCreateInfo$a;

    move-result-object v0

    sget-object v2, Lcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts$DING_REMIND_TYPE_ENUM;->APP:Lcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts$DING_REMIND_TYPE_ENUM;

    .line 1973
    invoke-virtual {v2}, Lcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts$DING_REMIND_TYPE_ENUM;->getValue()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/alibaba/android/ding/base/objects/DingCreateInfo$a;->d(I)Lcom/alibaba/android/ding/base/objects/DingCreateInfo$a;

    .line 1976
    iget-object v0, p0, Lcom/alibaba/android/rimet/biz/im/activities/PicViewActivity$8;->c:Lcom/alibaba/android/rimet/biz/im/activities/PicViewActivity;

    iget-object v2, p0, Lcom/alibaba/android/rimet/biz/im/activities/PicViewActivity$8;->a:Ljava/lang/String;

    iget-object v3, p0, Lcom/alibaba/android/rimet/biz/im/activities/PicViewActivity$8;->b:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3}, Lcom/alibaba/android/rimet/biz/im/activities/PicViewActivity;->a(Lcom/alibaba/android/rimet/biz/im/activities/PicViewActivity;Lcom/alibaba/android/ding/base/objects/DingCreateInfo$a;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1982
    :goto_0
    return-void

    .line 1977
    :catch_0
    move-exception v0

    .line 1978
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1979
    const-string/jumbo v1, "im"

    const-string/jumbo v2, "PicView"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string/jumbo v5, "handlePictureToTask onDataReceived Exception:"

    aput-object v5, v3, v4

    .line 1980
    invoke-static {v0}, Lcom/alibaba/doraemon/utils/CommonUtils;->getStackMsg(Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v6

    invoke-static {v3}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1979
    invoke-static {v1, v2, v0}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1981
    iget-object v0, p0, Lcom/alibaba/android/rimet/biz/im/activities/PicViewActivity$8;->c:Lcom/alibaba/android/rimet/biz/im/activities/PicViewActivity;

    invoke-virtual {v0}, Lcom/alibaba/android/rimet/biz/im/activities/PicViewActivity;->dismissLoadingDialog()V

    goto :goto_0

    .line 1984
    :cond_0
    const-string/jumbo v0, "im"

    const-string/jumbo v1, "PicView"

    const-string/jumbo v2, "handlePictureToTask onDataReceived filePath is null."

    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1985
    iget-object v0, p0, Lcom/alibaba/android/rimet/biz/im/activities/PicViewActivity$8;->c:Lcom/alibaba/android/rimet/biz/im/activities/PicViewActivity;

    invoke-virtual {v0}, Lcom/alibaba/android/rimet/biz/im/activities/PicViewActivity;->dismissLoadingDialog()V

    goto :goto_0
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 996
    iget-object v1, p0, Lcom/alibaba/android/rimet/biz/im/activities/PicViewActivity$8;->c:Lcom/alibaba/android/rimet/biz/im/activities/PicViewActivity;

    invoke-virtual {v1}, Lcom/alibaba/android/rimet/biz/im/activities/PicViewActivity;->dismissLoadingDialog()V

    .line 997
    invoke-static {p1, p2}, Lcms;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 998
    invoke-static {}, Lcom/alibaba/doraemon/performance/DDStringBuilderProxy;->getDDStringBuilder()Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v0

    .line 999
    .local v0, "ddStringBuilder":Lcom/alibaba/doraemon/performance/DDStringBuilder;
    const-string/jumbo v1, "handlePictureToTask encrypt image download file failed "

    invoke-virtual {v0, v1}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v1

    const-string/jumbo v2, ":"

    invoke-virtual {v1, v2}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v1

    const-string/jumbo v2, ":"

    invoke-virtual {v1, v2}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 1000
    const-string/jumbo v1, "im"

    const/4 v2, 0x0

    invoke-virtual {v0}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1001
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 992
    return-void
.end method
