.class public Lcom/alibaba/android/dingtalkbase/uidic/indicator/UnreadIndicator;
.super Ljava/lang/Object;
.source "UnreadIndicator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/android/dingtalkbase/uidic/indicator/UnreadIndicator$IndicatorType;
    }
.end annotation


# instance fields
.field public a:Z


# direct methods
.method public constructor <init>(Z)V
    .locals 0
    .param p1, "isIndicator"    # Z

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-boolean p1, p0, Lcom/alibaba/android/dingtalkbase/uidic/indicator/UnreadIndicator;->a:Z

    .line 27
    return-void
.end method

.method public static a(Lcom/alibaba/android/dingtalkbase/uidic/indicator/UnreadIndicator$IndicatorType;ZILjava/lang/String;)Lcom/alibaba/android/dingtalkbase/uidic/indicator/UnreadIndicator;
    .locals 2
    .param p0, "type"    # Lcom/alibaba/android/dingtalkbase/uidic/indicator/UnreadIndicator$IndicatorType;
    .param p1, "indicator"    # Z
    .param p2, "count"    # I
    .param p3, "text"    # Ljava/lang/String;

    .prologue
    .line 73
    sget-object v0, Lcom/alibaba/android/dingtalkbase/uidic/indicator/UnreadIndicator$1;->a:[I

    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/uidic/indicator/UnreadIndicator$IndicatorType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 83
    new-instance v0, Lcnm;

    invoke-direct {v0, p1}, Lcnm;-><init>(Z)V

    :goto_0
    return-object v0

    .line 75
    :pswitch_0
    new-instance v0, Lcnm;

    invoke-direct {v0, p1}, Lcnm;-><init>(Z)V

    goto :goto_0

    .line 77
    :pswitch_1
    new-instance v0, Lcnn;

    invoke-direct {v0, p1}, Lcnn;-><init>(Z)V

    goto :goto_0

    .line 79
    :pswitch_2
    new-instance v0, Lcno;

    invoke-direct {v0, p1, p3}, Lcno;-><init>(ZLjava/lang/String;)V

    goto :goto_0

    .line 81
    :pswitch_3
    new-instance v0, Lcnl;

    invoke-direct {v0, p1, p2}, Lcnl;-><init>(ZI)V

    goto :goto_0

    .line 73
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 52
    const/4 v0, 0x0

    return-object v0
.end method
