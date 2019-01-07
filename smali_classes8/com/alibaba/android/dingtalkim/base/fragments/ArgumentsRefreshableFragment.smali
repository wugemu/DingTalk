.class public abstract Lcom/alibaba/android/dingtalkim/base/fragments/ArgumentsRefreshableFragment;
.super Lcom/alibaba/android/dingtalkbase/DingtalkBaseFragment;
.source "ArgumentsRefreshableFragment.java"


# instance fields
.field protected a:Ldbx;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 31
    return-void
.end method

.method public final a(Ldbx;)V
    .locals 0
    .param p1, "dataFetchProgressCallback"    # Ldbx;

    .prologue
    .line 34
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/base/fragments/ArgumentsRefreshableFragment;->a:Ldbx;

    .line 35
    return-void
.end method
