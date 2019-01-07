.class public final Lbbp$106;
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
.field final synthetic a:J

.field final synthetic b:Lcma;

.field final synthetic c:Lbbp;


# direct methods
.method public constructor <init>(Lbbp;JLcma;)V
    .locals 0
    .param p1, "this$0"    # Lbbp;

    .prologue
    .line 1004
    iput-object p1, p0, Lbbp$106;->c:Lbbp;

    iput-wide p2, p0, Lbbp$106;->a:J

    iput-object p4, p0, Lbbp$106;->b:Lcma;

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
    .line 1007
    iget-object v0, p0, Lbbp$106;->c:Lbbp;

    invoke-static {v0}, Lbbp;->a(Lbbp;)Lbbo;

    move-result-object v0

    iget-wide v2, p0, Lbbp$106;->a:J

    iget-object v1, p0, Lbbp$106;->b:Lcma;

    .line 4614
    invoke-static {v2, v3}, Lbkh;->a(J)Z

    move-result v4

    if-nez v4, :cond_0

    .line 4615
    const-string/jumbo v2, "-1"

    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v3

    invoke-virtual {v3}, Lcid;->c()Landroid/app/Application;

    move-result-object v3

    sget v4, Laxp$i;->unknown_error:I

    invoke-virtual {v3, v4}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lbbo;->a(Lcma;Ljava/lang/String;Ljava/lang/String;)V

    .line 4637
    :goto_0
    return-void

    .line 4620
    :cond_0
    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lbbo;->a(Ljava/lang/String;)Lcom/alibaba/android/ding/base/objects/ObjectDing;

    move-result-object v4

    .line 4621
    new-instance v5, Lbes;

    const/4 v6, 0x5

    invoke-direct {v5, v2, v3, v6}, Lbes;-><init>(JI)V

    .line 4623
    if-nez v4, :cond_1

    .line 4624
    invoke-virtual {v0, v5, v1}, Lbbo;->a(Lbes;Lcma;)V

    goto :goto_0

    .line 4628
    :cond_1
    new-instance v6, Lbfm;

    const/4 v7, 0x1

    invoke-virtual {v0, v2, v3}, Lbbo;->a(J)Ljava/util/List;

    move-result-object v8

    invoke-direct {v6, v7, v4, v8}, Lbfm;-><init>(ZLcom/alibaba/android/ding/base/objects/ObjectDing;Ljava/util/List;)V

    .line 4629
    invoke-static {v4}, Lbkh;->o(Lcom/alibaba/android/ding/base/objects/ObjectDing;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 4630
    invoke-static {}, Lbhi;->a()Lbhi;

    move-result-object v7

    invoke-virtual {v4}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->E()J

    move-result-wide v8

    invoke-virtual {v7, v2, v3, v8, v9}, Lbhi;->b(JJ)Lbfv;

    move-result-object v2

    .line 5031
    iput-object v2, v6, Lbfm;->d:Lbfv;

    .line 4633
    :cond_2
    invoke-virtual {v0, v1, v6}, Lbbo;->a(Lcma;Ljava/lang/Object;)V

    .line 4636
    invoke-static {v4}, Lbkh;->n(Lcom/alibaba/android/ding/base/objects/ObjectDing;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 4637
    invoke-virtual {v0, v5, v1}, Lbbo;->a(Lbes;Lcma;)V

    goto :goto_0

    .line 4640
    :cond_3
    new-instance v2, Lbbo$42;

    invoke-direct {v2, v0, v5, v1}, Lbbo$42;-><init>(Lbbo;Lbes;Lcma;)V

    invoke-virtual {v0, v4, v2}, Lbbo;->a(Lcom/alibaba/android/ding/base/objects/ObjectDing;Lcma;)V

    goto :goto_0
.end method
