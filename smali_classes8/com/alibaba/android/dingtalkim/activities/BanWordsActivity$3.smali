.class final Lcom/alibaba/android/dingtalkim/activities/BanWordsActivity$3;
.super Ljava/lang/Object;
.source "BanWordsActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/dingtalkim/activities/BanWordsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalkim/activities/BanWordsActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalkim/activities/BanWordsActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalkim/activities/BanWordsActivity;

    .prologue
    .line 676
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/activities/BanWordsActivity$3;->a:Lcom/alibaba/android/dingtalkim/activities/BanWordsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 679
    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/BanWordsActivity$3;->a:Lcom/alibaba/android/dingtalkim/activities/BanWordsActivity;

    invoke-static {v2}, Lcom/alibaba/android/dingtalkim/activities/BanWordsActivity;->h(Lcom/alibaba/android/dingtalkim/activities/BanWordsActivity;)I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 680
    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/BanWordsActivity$3;->a:Lcom/alibaba/android/dingtalkim/activities/BanWordsActivity;

    invoke-static {v2}, Lcom/alibaba/android/dingtalkim/activities/BanWordsActivity;->h(Lcom/alibaba/android/dingtalkim/activities/BanWordsActivity;)I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 681
    .local v0, "uid":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    .line 682
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v2

    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/activities/BanWordsActivity$3;->a:Lcom/alibaba/android/dingtalkim/activities/BanWordsActivity;

    invoke-virtual {v2, v3, v0, v1}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a(Landroid/app/Activity;J)V

    .line 685
    .end local v0    # "uid":J
    :cond_0
    return-void
.end method
