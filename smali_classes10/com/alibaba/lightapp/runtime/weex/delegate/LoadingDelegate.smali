.class public Lcom/alibaba/lightapp/runtime/weex/delegate/LoadingDelegate;
.super Ljava/lang/Object;
.source "LoadingDelegate.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/lightapp/runtime/weex/delegate/LoadingDelegate$ICallback;
    }
.end annotation


# static fields
.field private static final DEFAULT_LOADING_TIME:I = 0x1f4


# instance fields
.field private mCallback:Lcom/alibaba/lightapp/runtime/weex/delegate/LoadingDelegate$ICallback;

.field private mProgressDialog:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;

.field private mShouldShowLoading:Z

.field private mShowLoadingDurationTime:I

.field private mStartTime:J


# direct methods
.method public constructor <init>(Lcom/alibaba/lightapp/runtime/weex/delegate/LoadingDelegate$ICallback;)V
    .locals 2
    .param p1, "callback"    # Lcom/alibaba/lightapp/runtime/weex/delegate/LoadingDelegate$ICallback;

    .prologue
    const/4 v0, 0x0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-boolean v0, p0, Lcom/alibaba/lightapp/runtime/weex/delegate/LoadingDelegate;->mShouldShowLoading:Z

    .line 21
    iput v0, p0, Lcom/alibaba/lightapp/runtime/weex/delegate/LoadingDelegate;->mShowLoadingDurationTime:I

    .line 22
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/alibaba/lightapp/runtime/weex/delegate/LoadingDelegate;->mStartTime:J

    .line 28
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/weex/delegate/LoadingDelegate;->mCallback:Lcom/alibaba/lightapp/runtime/weex/delegate/LoadingDelegate$ICallback;

    .line 29
    return-void
.end method

.method static synthetic access$000(Lcom/alibaba/lightapp/runtime/weex/delegate/LoadingDelegate;)Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/weex/delegate/LoadingDelegate;

    .prologue
    .line 14
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/weex/delegate/LoadingDelegate;->mProgressDialog:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;

    return-object v0
.end method

.method static synthetic access$002(Lcom/alibaba/lightapp/runtime/weex/delegate/LoadingDelegate;Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;)Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/weex/delegate/LoadingDelegate;
    .param p1, "x1"    # Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;

    .prologue
    .line 14
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/weex/delegate/LoadingDelegate;->mProgressDialog:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;

    return-object p1
.end method

.method static synthetic access$100(Lcom/alibaba/lightapp/runtime/weex/delegate/LoadingDelegate;)Lcom/alibaba/lightapp/runtime/weex/delegate/LoadingDelegate$ICallback;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/weex/delegate/LoadingDelegate;

    .prologue
    .line 14
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/weex/delegate/LoadingDelegate;->mCallback:Lcom/alibaba/lightapp/runtime/weex/delegate/LoadingDelegate$ICallback;

    return-object v0
.end method

.method static synthetic access$202(Lcom/alibaba/lightapp/runtime/weex/delegate/LoadingDelegate;J)J
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/weex/delegate/LoadingDelegate;
    .param p1, "x1"    # J

    .prologue
    .line 14
    iput-wide p1, p0, Lcom/alibaba/lightapp/runtime/weex/delegate/LoadingDelegate;->mStartTime:J

    return-wide p1
.end method


# virtual methods
.method public handleParam(Ljava/lang/String;)V
    .locals 4
    .param p1, "url"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 33
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/alibaba/lightapp/runtime/weex/delegate/LoadingDelegate;->mShouldShowLoading:Z

    .line 35
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 36
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 38
    .local v2, "uri":Landroid/net/Uri;
    :try_start_0
    const-string/jumbo v3, "dd_wx_loading"

    invoke-virtual {v2, v3}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 39
    .local v1, "showLoading":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string/jumbo v3, "false"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 40
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/alibaba/lightapp/runtime/weex/delegate/LoadingDelegate;->mShowLoadingDurationTime:I

    .line 41
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/alibaba/lightapp/runtime/weex/delegate/LoadingDelegate;->mShouldShowLoading:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 47
    .end local v1    # "showLoading":Ljava/lang/String;
    .end local v2    # "uri":Landroid/net/Uri;
    :cond_0
    :goto_0
    return-void

    .line 43
    .restart local v2    # "uri":Landroid/net/Uri;
    :catch_0
    move-exception v0

    .line 44
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public hideLoading()V
    .locals 10

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const-wide/16 v8, 0x0

    .line 69
    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/weex/delegate/LoadingDelegate;->mCallback:Lcom/alibaba/lightapp/runtime/weex/delegate/LoadingDelegate$ICallback;

    if-eqz v2, :cond_1

    .line 70
    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/weex/delegate/LoadingDelegate;->mProgressDialog:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/weex/delegate/LoadingDelegate;->mProgressDialog:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;

    invoke-virtual {v2}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 71
    const-wide/16 v0, 0x0

    .line 72
    .local v0, "delay":J
    iget v2, p0, Lcom/alibaba/lightapp/runtime/weex/delegate/LoadingDelegate;->mShowLoadingDurationTime:I

    if-eqz v2, :cond_0

    .line 73
    iget v2, p0, Lcom/alibaba/lightapp/runtime/weex/delegate/LoadingDelegate;->mShowLoadingDurationTime:I

    int-to-long v2, v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/alibaba/lightapp/runtime/weex/delegate/LoadingDelegate;->mStartTime:J

    sub-long/2addr v4, v6

    sub-long v0, v2, v4

    .line 74
    cmp-long v2, v0, v8

    if-gez v2, :cond_0

    .line 75
    const-wide/16 v0, 0x0

    .line 78
    :cond_0
    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/weex/delegate/LoadingDelegate;->mCallback:Lcom/alibaba/lightapp/runtime/weex/delegate/LoadingDelegate$ICallback;

    new-instance v3, Lcom/alibaba/lightapp/runtime/weex/delegate/LoadingDelegate$2;

    invoke-direct {v3, p0}, Lcom/alibaba/lightapp/runtime/weex/delegate/LoadingDelegate$2;-><init>(Lcom/alibaba/lightapp/runtime/weex/delegate/LoadingDelegate;)V

    invoke-interface {v2, v3, v0, v1}, Lcom/alibaba/lightapp/runtime/weex/delegate/LoadingDelegate$ICallback;->postDelayed(Ljava/lang/Runnable;J)V

    .line 90
    .end local v0    # "delay":J
    :cond_1
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/alibaba/lightapp/runtime/weex/delegate/LoadingDelegate;->mShouldShowLoading:Z

    .line 91
    iput-wide v8, p0, Lcom/alibaba/lightapp/runtime/weex/delegate/LoadingDelegate;->mStartTime:J

    .line 92
    const/16 v2, 0x1f4

    iput v2, p0, Lcom/alibaba/lightapp/runtime/weex/delegate/LoadingDelegate;->mShowLoadingDurationTime:I

    .line 93
    return-void
.end method

.method public showLoading()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 51
    iget-boolean v0, p0, Lcom/alibaba/lightapp/runtime/weex/delegate/LoadingDelegate;->mShouldShowLoading:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/weex/delegate/LoadingDelegate;->mCallback:Lcom/alibaba/lightapp/runtime/weex/delegate/LoadingDelegate$ICallback;

    if-eqz v0, :cond_0

    .line 52
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/weex/delegate/LoadingDelegate;->mCallback:Lcom/alibaba/lightapp/runtime/weex/delegate/LoadingDelegate$ICallback;

    new-instance v1, Lcom/alibaba/lightapp/runtime/weex/delegate/LoadingDelegate$1;

    invoke-direct {v1, p0}, Lcom/alibaba/lightapp/runtime/weex/delegate/LoadingDelegate$1;-><init>(Lcom/alibaba/lightapp/runtime/weex/delegate/LoadingDelegate;)V

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Lcom/alibaba/lightapp/runtime/weex/delegate/LoadingDelegate$ICallback;->postDelayed(Ljava/lang/Runnable;J)V

    .line 65
    :cond_0
    return-void
.end method
