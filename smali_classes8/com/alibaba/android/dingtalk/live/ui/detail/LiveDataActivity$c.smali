.class final Lcom/alibaba/android/dingtalk/live/ui/detail/LiveDataActivity$c;
.super Ljava/lang/Object;
.source "LiveDataActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/dingtalk/live/ui/detail/LiveDataActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "c"
.end annotation


# instance fields
.field a:Landroid/widget/TextView;

.field b:Landroid/widget/TextView;


# direct methods
.method private constructor <init>(Landroid/view/View;)V
    .locals 1
    .param p1, "convertView"    # Landroid/view/View;

    .prologue
    .line 308
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 309
    sget v0, Lbtp$e;->tv_data:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/live/ui/detail/LiveDataActivity$c;->a:Landroid/widget/TextView;

    .line 310
    sget v0, Lbtp$e;->tv_summary:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/live/ui/detail/LiveDataActivity$c;->b:Landroid/widget/TextView;

    .line 311
    return-void
.end method

.method synthetic constructor <init>(Landroid/view/View;B)V
    .locals 0
    .param p1, "x0"    # Landroid/view/View;

    .prologue
    .line 304
    invoke-direct {p0, p1}, Lcom/alibaba/android/dingtalk/live/ui/detail/LiveDataActivity$c;-><init>(Landroid/view/View;)V

    return-void
.end method
