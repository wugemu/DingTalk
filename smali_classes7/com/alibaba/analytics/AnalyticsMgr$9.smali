.class final Lcom/alibaba/analytics/AnalyticsMgr$9;
.super Ljava/lang/Object;
.source "AnalyticsMgr.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/analytics/AnalyticsMgr;->b(ZZLjava/lang/String;Ljava/lang/String;)Ljava/lang/Runnable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Z

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Ljava/lang/String;


# direct methods
.method constructor <init>(ZZLjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 371
    iput-boolean p1, p0, Lcom/alibaba/analytics/AnalyticsMgr$9;->a:Z

    iput-boolean p2, p0, Lcom/alibaba/analytics/AnalyticsMgr$9;->b:Z

    iput-object p3, p0, Lcom/alibaba/analytics/AnalyticsMgr$9;->c:Ljava/lang/String;

    iput-object p4, p0, Lcom/alibaba/analytics/AnalyticsMgr$9;->d:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 375
    :try_start_0
    sget-object v0, Lcom/alibaba/analytics/AnalyticsMgr;->a:Lajt;

    iget-boolean v1, p0, Lcom/alibaba/analytics/AnalyticsMgr$9;->a:Z

    iget-boolean v2, p0, Lcom/alibaba/analytics/AnalyticsMgr$9;->b:Z

    iget-object v3, p0, Lcom/alibaba/analytics/AnalyticsMgr$9;->c:Ljava/lang/String;

    iget-object v4, p0, Lcom/alibaba/analytics/AnalyticsMgr$9;->d:Ljava/lang/String;

    invoke-interface {v0, v1, v2, v3, v4}, Lajt;->a(ZZLjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 379
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
