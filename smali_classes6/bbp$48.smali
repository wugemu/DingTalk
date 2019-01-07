.class public final Lbbp$48;
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
.field final synthetic a:Lbch;

.field final synthetic b:I

.field final synthetic c:Lbbp;


# direct methods
.method public constructor <init>(Lbbp;Lbch;I)V
    .locals 0
    .param p1, "this$0"    # Lbbp;

    .prologue
    .line 383
    iput-object p1, p0, Lbbp$48;->c:Lbbp;

    iput-object p2, p0, Lbbp$48;->a:Lbch;

    iput p3, p0, Lbbp$48;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 10

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    const/4 v4, 0x0

    .line 386
    iget-object v0, p0, Lbbp$48;->c:Lbbp;

    invoke-static {v0}, Lbbp;->a(Lbbp;)Lbbo;

    move-result-object v8

    iget-object v9, p0, Lbbp$48;->a:Lbch;

    iget v1, p0, Lbbp$48;->b:I

    .line 2615
    if-eqz v9, :cond_0

    iget-object v0, v9, Lbch;->a:Ljava/lang/Long;

    if-nez v0, :cond_1

    .line 2616
    :cond_0
    :goto_0
    return-void

    .line 2620
    :cond_1
    iget-object v0, v9, Lbch;->d:Ljava/lang/Integer;

    if-eqz v0, :cond_6

    .line 2621
    iget-object v0, v9, Lbch;->d:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    move v7, v0

    .line 2626
    :goto_1
    iget-object v0, v8, Lbbo;->f:Lbgp;

    iget-object v2, v9, Lbch;->a:Ljava/lang/Long;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2, v7}, Lbgp;->a(Ljava/lang/String;I)I

    .line 2629
    iget-object v0, v9, Lbch;->a:Ljava/lang/Long;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Lbbo;->b(Ljava/lang/String;)Lcom/alibaba/android/ding/base/objects/ObjectDing;

    move-result-object v6

    .line 2630
    instance-of v0, v6, Lcom/alibaba/android/ding/base/objects/ObjectDingSent;

    if-eqz v0, :cond_3

    move-object v3, v6

    .line 2631
    check-cast v3, Lcom/alibaba/android/ding/base/objects/ObjectDingSent;

    .line 3118
    iput v1, v3, Lcom/alibaba/android/ding/base/objects/ObjectDing;->C:I

    .line 2633
    if-nez v7, :cond_3

    invoke-virtual {v3}, Lcom/alibaba/android/ding/base/objects/ObjectDingSent;->ad()I

    move-result v0

    if-eqz v0, :cond_3

    .line 2634
    invoke-static {}, Lbjw;->a()Lbjw;

    move-result-object v0

    .line 3142
    if-eqz v3, :cond_3

    .line 4122
    iget v1, v3, Lcom/alibaba/android/ding/base/objects/ObjectDing;->C:I

    .line 3145
    invoke-static {v1}, Lbjw;->a(I)Z

    move-result v1

    if-nez v1, :cond_3

    .line 3148
    invoke-static {v3}, Lbkh;->k(Lcom/alibaba/android/ding/base/objects/ObjectDing;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 3152
    invoke-static {v3}, Lbkh;->b(Lcom/alibaba/android/ding/base/objects/ObjectDing;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v3}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->H()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_3

    .line 3157
    :cond_2
    invoke-virtual {v3}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->D()Ljava/lang/String;

    move-result-object v1

    .line 3158
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v2

    invoke-virtual {v2}, Lcid;->c()Landroid/app/Application;

    move-result-object v5

    invoke-static {}, Lcom/alibaba/android/ding/base/interfaces/DingInterface;->a()Lcom/alibaba/android/ding/base/interfaces/DingInterface;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alibaba/android/ding/base/interfaces/DingInterface;->c()Z

    move-result v2

    if-eqz v2, :cond_5

    sget v2, Laxp$i;->dt_ding_all_have_read:I

    :goto_2
    invoke-virtual {v5, v2}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 3159
    invoke-static {v3}, Lbjw;->a(Lcom/alibaba/android/ding/base/objects/ObjectDing;)Ljava/lang/String;

    move-result-object v3

    move v5, v4

    .line 3156
    invoke-virtual/range {v0 .. v5}, Lbjw;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 2637
    :cond_3
    if-eqz v6, :cond_4

    invoke-virtual {v6}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->ad()I

    move-result v0

    if-le v0, v7, :cond_4

    .line 2638
    invoke-virtual {v6, v7}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->h(I)V

    .line 2640
    :cond_4
    iget-object v0, v8, Lbbo;->b:Lbbq;

    new-instance v1, Lbbo$12;

    invoke-direct {v1, v8, v6, v9}, Lbbo$12;-><init>(Lbbo;Lcom/alibaba/android/ding/base/objects/ObjectDing;Lbch;)V

    invoke-virtual {v0, v1}, Lbbq;->a(Ljava/lang/Runnable;)V

    goto/16 :goto_0

    .line 3158
    :cond_5
    sget v2, Laxp$i;->ding_notification_confirmed:I

    goto :goto_2

    :cond_6
    move v7, v4

    goto/16 :goto_1
.end method
