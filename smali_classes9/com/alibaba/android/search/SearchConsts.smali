.class public final Lcom/alibaba/android/search/SearchConsts;
.super Lcom/alibaba/android/dingtalk/search/base/BaseSearchConsts;
.source "SearchConsts.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/android/search/SearchConsts$DING_SEARCH_RESULT_TYPE;
    }
.end annotation


# static fields
.field public static a:I

.field public static b:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 168
    const/4 v0, 0x0

    sput v0, Lcom/alibaba/android/search/SearchConsts;->a:I

    .line 169
    const/4 v0, 0x1

    sput v0, Lcom/alibaba/android/search/SearchConsts;->b:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/alibaba/android/dingtalk/search/base/BaseSearchConsts;-><init>()V

    .line 139
    return-void
.end method

.method public static a(Landroid/app/Activity;)I
    .locals 1
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    .line 82
    invoke-static {}, Lcom/alibaba/android/search/impls/SearchInterfaceImpl;->a()Lcom/alibaba/android/dingtalk/search/base/SearchInterface;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalk/search/base/SearchInterface;->v()Z

    move-result v0

    if-eqz v0, :cond_0

    instance-of v0, p0, Lcom/alibaba/android/search/activity/GlobalSearchActivity;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x3

    goto :goto_0
.end method
