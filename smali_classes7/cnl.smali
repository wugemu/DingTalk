.class public final Lcnl;
.super Lcom/alibaba/android/dingtalkbase/uidic/indicator/UnreadIndicator;
.source "CountUnreadIndicator.java"


# instance fields
.field private b:I


# direct methods
.method public constructor <init>(ZI)V
    .locals 0
    .param p1, "isIndicator"    # Z
    .param p2, "count"    # I

    .prologue
    .line 26
    invoke-direct {p0, p1}, Lcom/alibaba/android/dingtalkbase/uidic/indicator/UnreadIndicator;-><init>(Z)V

    .line 27
    iput p2, p0, Lcnl;->b:I

    .line 28
    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 40
    iget v0, p0, Lcnl;->b:I

    if-lez v0, :cond_0

    iget v0, p0, Lcnl;->b:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
