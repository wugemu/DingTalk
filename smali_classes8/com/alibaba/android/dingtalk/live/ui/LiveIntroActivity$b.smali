.class final Lcom/alibaba/android/dingtalk/live/ui/LiveIntroActivity$b;
.super Ljava/lang/Object;
.source "LiveIntroActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/dingtalk/live/ui/LiveIntroActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "b"
.end annotation


# instance fields
.field a:I

.field b:I

.field c:I


# direct methods
.method private constructor <init>(III)V
    .locals 0
    .param p1, "imageResId"    # I
    .param p2, "titleResId"    # I
    .param p3, "summaryResId"    # I

    .prologue
    .line 161
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 162
    iput p1, p0, Lcom/alibaba/android/dingtalk/live/ui/LiveIntroActivity$b;->a:I

    .line 163
    iput p2, p0, Lcom/alibaba/android/dingtalk/live/ui/LiveIntroActivity$b;->b:I

    .line 164
    iput p3, p0, Lcom/alibaba/android/dingtalk/live/ui/LiveIntroActivity$b;->c:I

    .line 165
    return-void
.end method

.method synthetic constructor <init>(IIIB)V
    .locals 0
    .param p1, "x0"    # I
    .param p2, "x1"    # I
    .param p3, "x2"    # I

    .prologue
    .line 155
    invoke-direct {p0, p1, p2, p3}, Lcom/alibaba/android/dingtalk/live/ui/LiveIntroActivity$b;-><init>(III)V

    return-void
.end method
