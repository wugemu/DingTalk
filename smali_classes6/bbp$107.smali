.class public final Lbbp$107;
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

.field final synthetic b:I

.field final synthetic c:Lcma;

.field final synthetic d:Lbbp;


# direct methods
.method public constructor <init>(Lbbp;JILcma;)V
    .locals 0
    .param p1, "this$0"    # Lbbp;

    .prologue
    .line 1015
    iput-object p1, p0, Lbbp$107;->d:Lbbp;

    iput-wide p2, p0, Lbbp$107;->a:J

    iput p4, p0, Lbbp$107;->b:I

    iput-object p5, p0, Lbbp$107;->c:Lcma;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 1018
    iget-object v0, p0, Lbbp$107;->d:Lbbp;

    invoke-static {v0}, Lbbp;->a(Lbbp;)Lbbo;

    move-result-object v0

    iget-wide v2, p0, Lbbp$107;->a:J

    iget v1, p0, Lbbp$107;->b:I

    iget-object v4, p0, Lbbp$107;->c:Lcma;

    .line 4662
    invoke-static {v2, v3}, Lbkh;->a(J)Z

    move-result v5

    if-nez v5, :cond_0

    .line 4663
    const-string/jumbo v1, "-1"

    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v2

    invoke-virtual {v2}, Lcid;->c()Landroid/app/Application;

    move-result-object v2

    sget v3, Laxp$i;->unknown_error:I

    invoke-virtual {v2, v3}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v4, v1, v2}, Lbbo;->a(Lcma;Ljava/lang/String;Ljava/lang/String;)V

    .line 4673
    :goto_0
    return-void

    .line 4668
    :cond_0
    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lbbo;->a(Ljava/lang/String;)Lcom/alibaba/android/ding/base/objects/ObjectDing;

    move-result-object v5

    .line 4669
    new-instance v6, Lbes;

    invoke-direct {v6, v2, v3, v1}, Lbes;-><init>(JI)V

    .line 4671
    if-nez v5, :cond_1

    .line 4672
    invoke-virtual {v0, v6, v4}, Lbbo;->a(Lbes;Lcma;)V

    goto :goto_0

    .line 4676
    :cond_1
    new-instance v1, Lbfm;

    const/4 v7, 0x1

    invoke-virtual {v0, v2, v3}, Lbbo;->a(J)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v7, v5, v2}, Lbfm;-><init>(ZLcom/alibaba/android/ding/base/objects/ObjectDing;Ljava/util/List;)V

    .line 4677
    invoke-virtual {v0, v4, v1}, Lbbo;->a(Lcma;Ljava/lang/Object;)V

    .line 4681
    new-instance v1, Lbbo$43;

    invoke-direct {v1, v0, v6, v4}, Lbbo$43;-><init>(Lbbo;Lbes;Lcma;)V

    invoke-virtual {v0, v5, v1}, Lbbo;->a(Lcom/alibaba/android/ding/base/objects/ObjectDing;Lcma;)V

    goto :goto_0
.end method
