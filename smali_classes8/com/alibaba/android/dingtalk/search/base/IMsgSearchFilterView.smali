.class public abstract Lcom/alibaba/android/dingtalk/search/base/IMsgSearchFilterView;
.super Landroid/widget/LinearLayout;
.source "IMsgSearchFilterView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/android/dingtalk/search/base/IMsgSearchFilterView$a;,
        Lcom/alibaba/android/dingtalk/search/base/IMsgSearchFilterView$b;,
        Lcom/alibaba/android/dingtalk/search/base/IMsgSearchFilterView$c;
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 22
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 23
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 26
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 27
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "defStyle"    # I

    .prologue
    .line 30
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 31
    return-void
.end method


# virtual methods
.method public abstract a()V
.end method

.method public abstract a(Z)V
.end method

.method public abstract b()V
.end method

.method public abstract getFilterConversations()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getFilterEndTimeSpan()J
.end method

.method public abstract getFilterStartTimeSpan()J
.end method

.method public getFilterTimeSpan()J
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 39
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public abstract getFilterUsers()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end method

.method public getSelectedMenuName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 75
    const/4 v0, 0x0

    return-object v0
.end method

.method public abstract setCallback(Lcom/alibaba/android/dingtalk/search/base/IMsgSearchFilterView$c;)V
.end method

.method public abstract setContactChooseRequest(Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest;)V
.end method

.method public abstract setLimit(I)V
.end method

.method public setOnAttachmentClickListener(Lcom/alibaba/android/dingtalk/search/base/IMsgSearchFilterView$a;)V
    .locals 0
    .param p1, "listener"    # Lcom/alibaba/android/dingtalk/search/base/IMsgSearchFilterView$a;

    .prologue
    .line 54
    return-void
.end method

.method public setOnMenuChangedListener(Lcom/alibaba/android/dingtalk/search/base/IMsgSearchFilterView$b;)V
    .locals 0
    .param p1, "listener"    # Lcom/alibaba/android/dingtalk/search/base/IMsgSearchFilterView$b;

    .prologue
    .line 61
    return-void
.end method

.method public abstract setShowFilters(I)V
.end method
