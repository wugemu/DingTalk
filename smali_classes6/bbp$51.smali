.class public final Lbbp$51;
.super Ljava/lang/Object;
.source "DingDataProvider.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbbp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/ding/base/objects/ObjectDing;

.field final synthetic b:Lbbp;


# direct methods
.method public constructor <init>(Lbbp;Lcom/alibaba/android/ding/base/objects/ObjectDing;)V
    .locals 0
    .param p1, "this$0"    # Lbbp;

    .prologue
    .line 410
    iput-object p1, p0, Lbbp$51;->b:Lbbp;

    iput-object p2, p0, Lbbp$51;->a:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 413
    iget-object v0, p0, Lbbp$51;->b:Lbbp;

    invoke-static {v0}, Lbbp;->a(Lbbp;)Lbbo;

    move-result-object v0

    iget-object v1, p0, Lbbp$51;->a:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    .line 1700
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->D()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1724
    :cond_0
    :goto_0
    return-void

    .line 1705
    :cond_1
    :try_start_0
    invoke-virtual {v1}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->D()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lbbo;->b(Ljava/lang/String;)Lcom/alibaba/android/ding/base/objects/ObjectDing;

    move-result-object v2

    .line 1706
    if-eqz v2, :cond_2

    .line 1707
    invoke-virtual {v1}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->J()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->e(I)V

    .line 1708
    invoke-virtual {v1}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->I()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->f(I)V

    .line 1709
    invoke-virtual {v1}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->j()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->b(Ljava/util/List;)V

    .line 1710
    invoke-virtual {v1}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->ad()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->h(I)V

    .line 1867
    iget v3, v1, Lcom/alibaba/android/ding/base/objects/ObjectDing;->Q:I

    .line 1871
    iput v3, v2, Lcom/alibaba/android/ding/base/objects/ObjectDing;->Q:I

    .line 1712
    invoke-virtual {v1}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->r()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->a(Ljava/util/List;)V

    .line 1716
    :cond_2
    iget-object v2, v0, Lbbo;->f:Lbgp;

    invoke-virtual {v1}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->D()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->J()I

    move-result v4

    invoke-interface {v2, v3, v4}, Lbgp;->b(Ljava/lang/String;I)I

    .line 1717
    iget-object v2, v0, Lbbo;->f:Lbgp;

    invoke-virtual {v1}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->D()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->I()I

    move-result v4

    invoke-interface {v2, v3, v4}, Lbgp;->c(Ljava/lang/String;I)I

    .line 1718
    iget-object v2, v0, Lbbo;->f:Lbgp;

    invoke-virtual {v1}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->D()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->j()Ljava/util/List;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lbgp;->a(Ljava/lang/String;Ljava/util/List;)I

    .line 1719
    iget-object v2, v0, Lbbo;->f:Lbgp;

    invoke-virtual {v1}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->D()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->ad()I

    move-result v4

    invoke-interface {v2, v3, v4}, Lbgp;->a(Ljava/lang/String;I)I

    .line 1720
    iget-object v2, v0, Lbbo;->f:Lbgp;

    invoke-virtual {v1}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->D()Ljava/lang/String;

    move-result-object v3

    .line 2867
    iget v4, v1, Lcom/alibaba/android/ding/base/objects/ObjectDing;->Q:I

    .line 1720
    invoke-interface {v2, v3, v4}, Lbgp;->d(Ljava/lang/String;I)I

    .line 1721
    iget-object v0, v0, Lbbo;->f:Lbgp;

    invoke-virtual {v1}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->D()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->r()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Lbgp;->b(Ljava/lang/String;Ljava/util/List;)I
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1722
    :catch_0
    move-exception v0

    .line 1723
    const-string/jumbo v1, "[dataCenter] on receiver uids changed exception"

    invoke-static {v1, v0}, Lbkr;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0
.end method
