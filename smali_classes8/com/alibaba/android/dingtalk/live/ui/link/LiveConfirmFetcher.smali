.class public Lcom/alibaba/android/dingtalk/live/ui/link/LiveConfirmFetcher;
.super Lcom/alibaba/android/dingtalkim/base/fetcher/ConfirmFetcher;
.source "LiveConfirmFetcher.java"


# static fields
.field private static final serialVersionUID:J = 0x3ba568d11990f3ccL


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkim/base/fetcher/ConfirmFetcher;-><init>()V

    return-void
.end method


# virtual methods
.method public message(Landroid/content/Context;Ljava/io/Serializable;)Ljava/lang/String;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "serializable"    # Ljava/io/Serializable;

    .prologue
    .line 25
    if-nez p1, :cond_0

    .line 26
    const/4 v0, 0x0

    .line 28
    :goto_0
    return-object v0

    :cond_0
    sget v0, Lbtp$g;->dt_lv_link_live_confirm_message:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public title(Landroid/content/Context;Ljava/io/Serializable;)Ljava/lang/String;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "serializable"    # Ljava/io/Serializable;

    .prologue
    .line 20
    const/4 v0, 0x0

    return-object v0
.end method
