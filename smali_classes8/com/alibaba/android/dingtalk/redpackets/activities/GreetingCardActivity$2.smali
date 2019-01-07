.class final Lcom/alibaba/android/dingtalk/redpackets/activities/GreetingCardActivity$2;
.super Ljava/lang/Object;
.source "GreetingCardActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/dingtalk/redpackets/activities/GreetingCardActivity;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalk/redpackets/activities/GreetingCardActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalk/redpackets/activities/GreetingCardActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalk/redpackets/activities/GreetingCardActivity;

    .prologue
    .line 171
    iput-object p1, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/GreetingCardActivity$2;->a:Lcom/alibaba/android/dingtalk/redpackets/activities/GreetingCardActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v1, 0x1

    .line 174
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/GreetingCardActivity$2;->a:Lcom/alibaba/android/dingtalk/redpackets/activities/GreetingCardActivity;

    invoke-static {v0}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 184
    :goto_0
    return-void

    .line 177
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/GreetingCardActivity$2;->a:Lcom/alibaba/android/dingtalk/redpackets/activities/GreetingCardActivity;

    invoke-static {v0}, Lcom/alibaba/android/dingtalk/redpackets/activities/GreetingCardActivity;->b(Lcom/alibaba/android/dingtalk/redpackets/activities/GreetingCardActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getLineCount()I

    move-result v0

    if-gt v0, v1, :cond_1

    .line 179
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/GreetingCardActivity$2;->a:Lcom/alibaba/android/dingtalk/redpackets/activities/GreetingCardActivity;

    invoke-static {v0}, Lcom/alibaba/android/dingtalk/redpackets/activities/GreetingCardActivity;->b(Lcom/alibaba/android/dingtalk/redpackets/activities/GreetingCardActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    goto :goto_0

    .line 182
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/GreetingCardActivity$2;->a:Lcom/alibaba/android/dingtalk/redpackets/activities/GreetingCardActivity;

    invoke-static {v0}, Lcom/alibaba/android/dingtalk/redpackets/activities/GreetingCardActivity;->b(Lcom/alibaba/android/dingtalk/redpackets/activities/GreetingCardActivity;)Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    goto :goto_0
.end method
