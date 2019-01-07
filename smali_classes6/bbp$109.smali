.class final Lbbp$109;
.super Ljava/lang/Object;
.source "DingDataProvider.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbbp;->a(IJLjava/lang/String;Ljava/lang/String;IZLcma;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:J

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Ljava/lang/String;

.field final synthetic e:I

.field final synthetic f:Z

.field final synthetic g:Lcma;

.field final synthetic h:Lbbp;


# direct methods
.method constructor <init>(Lbbp;IJLjava/lang/String;Ljava/lang/String;IZLcma;)V
    .locals 1
    .param p1, "this$0"    # Lbbp;

    .prologue
    .line 1030
    iput-object p1, p0, Lbbp$109;->h:Lbbp;

    iput p2, p0, Lbbp$109;->a:I

    iput-wide p3, p0, Lbbp$109;->b:J

    iput-object p5, p0, Lbbp$109;->c:Ljava/lang/String;

    iput-object p6, p0, Lbbp$109;->d:Ljava/lang/String;

    iput p7, p0, Lbbp$109;->e:I

    iput-boolean p8, p0, Lbbp$109;->f:Z

    iput-object p9, p0, Lbbp$109;->g:Lcma;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 15

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v14

    invoke-static {v14}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    const/4 v14, 0x2

    const/4 v11, 0x1

    .line 1033
    iget-object v0, p0, Lbbp$109;->h:Lbbp;

    invoke-static {v0}, Lbbp;->a(Lbbp;)Lbbo;

    move-result-object v2

    iget v3, p0, Lbbp$109;->a:I

    iget-wide v0, p0, Lbbp$109;->b:J

    iget-object v4, p0, Lbbp$109;->c:Ljava/lang/String;

    iget-object v5, p0, Lbbp$109;->d:Ljava/lang/String;

    iget v6, p0, Lbbp$109;->e:I

    iget-boolean v7, p0, Lbbp$109;->f:Z

    iget-object v8, p0, Lbbp$109;->g:Lcma;

    .line 4707
    if-ne v3, v14, :cond_5

    .line 4708
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4709
    :cond_0
    const-string/jumbo v0, "getMeetingDetail failed"

    const-string/jumbo v1, "-1"

    const-string/jumbo v3, "scope one but uniqueId or recurrenceId is empty"

    invoke-static {v0, v1, v3}, Lbkr;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 4710
    const-string/jumbo v0, "-1"

    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v1

    invoke-virtual {v1}, Lcid;->c()Landroid/app/Application;

    move-result-object v1

    sget v3, Laxp$i;->unknown_error:I

    invoke-virtual {v1, v3}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v8, v0, v1}, Lbbo;->a(Lcma;Ljava/lang/String;Ljava/lang/String;)V

    .line 4718
    :goto_0
    return-void

    .line 4713
    :cond_1
    iget-object v0, v2, Lbbo;->e:Lbhh;

    invoke-virtual {v0, v4, v5}, Lbhh;->a(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v0

    .line 4724
    :cond_2
    :goto_1
    if-eqz v7, :cond_3

    invoke-static {v0, v1}, Lbkh;->a(J)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 4725
    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Lbbo;->a(Ljava/lang/String;)Lcom/alibaba/android/ding/base/objects/ObjectDing;

    move-result-object v7

    .line 4726
    if-eqz v7, :cond_3

    .line 4727
    new-instance v9, Lbfm;

    invoke-virtual {v2, v0, v1}, Lbbo;->a(J)Ljava/util/List;

    move-result-object v10

    invoke-direct {v9, v11, v7, v10}, Lbfm;-><init>(ZLcom/alibaba/android/ding/base/objects/ObjectDing;Ljava/util/List;)V

    .line 4728
    invoke-static {}, Lbhi;->a()Lbhi;

    move-result-object v10

    invoke-virtual {v7}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->E()J

    move-result-wide v12

    invoke-virtual {v10, v0, v1, v12, v13}, Lbhi;->b(JJ)Lbfv;

    move-result-object v7

    .line 5031
    iput-object v7, v9, Lbfm;->d:Lbfv;

    .line 4729
    invoke-virtual {v2, v8, v9}, Lbbo;->a(Lcma;Ljava/lang/Object;)V

    .line 4734
    :cond_3
    new-instance v7, Lbes;

    invoke-direct {v7, v0, v1, v6}, Lbes;-><init>(JI)V

    .line 4735
    if-ne v3, v14, :cond_7

    .line 5034
    iput v14, v7, Lbes;->d:I

    .line 5038
    iput-object v4, v7, Lbes;->e:Ljava/lang/String;

    .line 6030
    iput-object v5, v7, Lbes;->c:Ljava/lang/String;

    .line 4743
    :cond_4
    :goto_2
    invoke-virtual {v2, v7, v8}, Lbbo;->a(Lbes;Lcma;)V

    goto :goto_0

    .line 4714
    :cond_5
    if-ne v3, v11, :cond_2

    .line 4715
    invoke-static {v0, v1}, Lbkh;->a(J)Z

    move-result v0

    if-nez v0, :cond_6

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 4716
    const-string/jumbo v0, "getMeetingDetail failed"

    const-string/jumbo v1, "-1"

    const-string/jumbo v3, "scope all but dingId is invalidate and meetingUniqueId is empty"

    invoke-static {v0, v1, v3}, Lbkr;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 4717
    const-string/jumbo v0, "-1"

    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v1

    invoke-virtual {v1}, Lcid;->c()Landroid/app/Application;

    move-result-object v1

    sget v3, Laxp$i;->unknown_error:I

    invoke-virtual {v1, v3}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v8, v0, v1}, Lbbo;->a(Lcma;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 4720
    :cond_6
    iget-object v0, v2, Lbbo;->e:Lbhh;

    const/4 v1, 0x0

    invoke-virtual {v0, v4, v1}, Lbhh;->a(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v0

    goto :goto_1

    .line 4739
    :cond_7
    if-ne v3, v11, :cond_4

    .line 6034
    iput v11, v7, Lbes;->d:I

    .line 6038
    iput-object v4, v7, Lbes;->e:Ljava/lang/String;

    goto :goto_2
.end method
