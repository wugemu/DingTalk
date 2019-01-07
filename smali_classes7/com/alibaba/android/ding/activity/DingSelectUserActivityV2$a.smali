.class final Lcom/alibaba/android/ding/activity/DingSelectUserActivityV2$a;
.super Ljava/lang/Object;
.source "DingSelectUserActivityV2.java"

# interfaces
.implements Lcom/alibaba/android/dingtalkbase/widgets/views/LetterListView$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/ding/activity/DingSelectUserActivityV2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/ding/activity/DingSelectUserActivityV2;


# direct methods
.method private constructor <init>(Lcom/alibaba/android/ding/activity/DingSelectUserActivityV2;)V
    .locals 0

    .prologue
    .line 387
    iput-object p1, p0, Lcom/alibaba/android/ding/activity/DingSelectUserActivityV2$a;->a:Lcom/alibaba/android/ding/activity/DingSelectUserActivityV2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/alibaba/android/ding/activity/DingSelectUserActivityV2;B)V
    .locals 0
    .param p1, "x0"    # Lcom/alibaba/android/ding/activity/DingSelectUserActivityV2;

    .prologue
    .line 387
    invoke-direct {p0, p1}, Lcom/alibaba/android/ding/activity/DingSelectUserActivityV2$a;-><init>(Lcom/alibaba/android/ding/activity/DingSelectUserActivityV2;)V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .locals 6
    .param p1, "s"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 390
    iget-object v1, p0, Lcom/alibaba/android/ding/activity/DingSelectUserActivityV2$a;->a:Lcom/alibaba/android/ding/activity/DingSelectUserActivityV2;

    invoke-static {v1}, Lcom/alibaba/android/ding/activity/DingSelectUserActivityV2;->l(Lcom/alibaba/android/ding/activity/DingSelectUserActivityV2;)Ljava/util/HashMap;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/alibaba/android/ding/activity/DingSelectUserActivityV2$a;->a:Lcom/alibaba/android/ding/activity/DingSelectUserActivityV2;

    invoke-static {v1}, Lcom/alibaba/android/ding/activity/DingSelectUserActivityV2;->l(Lcom/alibaba/android/ding/activity/DingSelectUserActivityV2;)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 391
    iget-object v1, p0, Lcom/alibaba/android/ding/activity/DingSelectUserActivityV2$a;->a:Lcom/alibaba/android/ding/activity/DingSelectUserActivityV2;

    invoke-static {v1}, Lcom/alibaba/android/ding/activity/DingSelectUserActivityV2;->l(Lcom/alibaba/android/ding/activity/DingSelectUserActivityV2;)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 392
    .local v0, "position":I
    iget-object v1, p0, Lcom/alibaba/android/ding/activity/DingSelectUserActivityV2$a;->a:Lcom/alibaba/android/ding/activity/DingSelectUserActivityV2;

    invoke-static {v1}, Lcom/alibaba/android/ding/activity/DingSelectUserActivityV2;->i(Lcom/alibaba/android/ding/activity/DingSelectUserActivityV2;)Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setSelection(I)V

    .line 393
    if-ltz v0, :cond_0

    iget-object v1, p0, Lcom/alibaba/android/ding/activity/DingSelectUserActivityV2$a;->a:Lcom/alibaba/android/ding/activity/DingSelectUserActivityV2;

    invoke-static {v1}, Lcom/alibaba/android/ding/activity/DingSelectUserActivityV2;->m(Lcom/alibaba/android/ding/activity/DingSelectUserActivityV2;)[Ljava/lang/String;

    move-result-object v1

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 394
    iget-object v1, p0, Lcom/alibaba/android/ding/activity/DingSelectUserActivityV2$a;->a:Lcom/alibaba/android/ding/activity/DingSelectUserActivityV2;

    invoke-static {v1}, Lcom/alibaba/android/ding/activity/DingSelectUserActivityV2;->k(Lcom/alibaba/android/ding/activity/DingSelectUserActivityV2;)Landroid/widget/TextView;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/android/ding/activity/DingSelectUserActivityV2$a;->a:Lcom/alibaba/android/ding/activity/DingSelectUserActivityV2;

    invoke-static {v2}, Lcom/alibaba/android/ding/activity/DingSelectUserActivityV2;->m(Lcom/alibaba/android/ding/activity/DingSelectUserActivityV2;)[Ljava/lang/String;

    move-result-object v2

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 395
    iget-object v1, p0, Lcom/alibaba/android/ding/activity/DingSelectUserActivityV2$a;->a:Lcom/alibaba/android/ding/activity/DingSelectUserActivityV2;

    invoke-static {v1}, Lcom/alibaba/android/ding/activity/DingSelectUserActivityV2;->k(Lcom/alibaba/android/ding/activity/DingSelectUserActivityV2;)Landroid/widget/TextView;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 396
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v1

    new-instance v2, Lcom/alibaba/android/ding/activity/DingSelectUserActivityV2$a$1;

    invoke-direct {v2, p0}, Lcom/alibaba/android/ding/activity/DingSelectUserActivityV2$a$1;-><init>(Lcom/alibaba/android/ding/activity/DingSelectUserActivityV2$a;)V

    const-wide/16 v4, 0x1f4

    invoke-virtual {v1, v2, v4, v5}, Lhcv;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 404
    .end local v0    # "position":I
    :cond_0
    return-void
.end method
