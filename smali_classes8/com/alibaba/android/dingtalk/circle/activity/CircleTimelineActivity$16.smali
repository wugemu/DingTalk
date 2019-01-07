.class final Lcom/alibaba/android/dingtalk/circle/activity/CircleTimelineActivity$16;
.super Ljava/lang/Object;
.source "CircleTimelineActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/dingtalk/circle/activity/CircleTimelineActivity;->a(Landroid/app/Activity;Lbnn;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/app/Activity;

.field final synthetic b:Lbnn;


# direct methods
.method constructor <init>(Landroid/app/Activity;Lbnn;)V
    .locals 0

    .prologue
    .line 428
    iput-object p1, p0, Lcom/alibaba/android/dingtalk/circle/activity/CircleTimelineActivity$16;->a:Landroid/app/Activity;

    iput-object p2, p0, Lcom/alibaba/android/dingtalk/circle/activity/CircleTimelineActivity$16;->b:Lbnn;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/16 v3, 0x125

    .line 431
    if-nez p2, :cond_1

    .line 432
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/circle/activity/CircleTimelineActivity$16;->a:Landroid/app/Activity;

    invoke-static {v0}, Lcom/alibaba/android/dingtalk/circle/activity/CircleTimelineActivity;->a(Landroid/app/Activity;)V

    .line 440
    :cond_0
    :goto_0
    return-void

    .line 433
    :cond_1
    const/4 v0, 0x1

    if-ne p2, v0, :cond_4

    .line 434
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/circle/activity/CircleTimelineActivity$16;->b:Lbnn;

    if-eqz v0, :cond_0

    .line 435
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/circle/activity/CircleTimelineActivity$16;->b:Lbnn;

    .line 1052
    iget-object v1, v0, Lbnn;->a:Landroid/app/Activity;

    sget-object v2, Lbnn;->b:[Ljava/lang/String;

    invoke-static {v1, v2}, Lbyy;->a(Landroid/content/Context;[Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1053
    invoke-static {}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->a()Lcom/alibaba/android/dingtalkim/base/IMInterface;

    move-result-object v1

    iget-object v0, v0, Lbnn;->a:Landroid/app/Activity;

    const/16 v2, 0xbb8

    invoke-virtual {v1, v0, v3, v2}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->a(Landroid/app/Activity;II)V

    goto :goto_0

    .line 1055
    :cond_2
    iget-object v1, v0, Lbnn;->a:Landroid/app/Activity;

    sget-object v2, Lbnn;->b:[Ljava/lang/String;

    invoke-static {v1, v2}, Lbyy;->a(Landroid/app/Activity;[Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1056
    iget-object v1, v0, Lbnn;->a:Landroid/app/Activity;

    sget-object v2, Lbnn;->b:[Ljava/lang/String;

    new-instance v3, Lbnn$a;

    iget-object v0, v0, Lbnn;->a:Landroid/app/Activity;

    const/4 v4, 0x0

    invoke-direct {v3, v0, v4}, Lbnn$a;-><init>(Landroid/app/Activity;B)V

    invoke-static {v1, v2, v3}, Lbyy;->a(Landroid/app/Activity;[Ljava/lang/String;Lbyx;)V

    goto :goto_0

    .line 1058
    :cond_3
    iget-object v0, v0, Lbnn;->a:Landroid/app/Activity;

    sget-object v1, Lbnn;->b:[Ljava/lang/String;

    invoke-static {v0, v1, v3}, Lcd;->a(Landroid/app/Activity;[Ljava/lang/String;I)V

    goto :goto_0

    .line 437
    :cond_4
    const/4 v0, 0x2

    if-ne p2, v0, :cond_0

    .line 438
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/circle/activity/CircleTimelineActivity$16;->a:Landroid/app/Activity;

    invoke-static {v0}, Lcom/alibaba/android/dingtalk/circle/activity/CircleTimelineActivity;->b(Landroid/app/Activity;)V

    goto :goto_0
.end method
