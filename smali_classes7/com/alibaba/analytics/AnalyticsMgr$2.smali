.class final Lcom/alibaba/analytics/AnalyticsMgr$2;
.super Ljava/lang/Object;
.source "AnalyticsMgr.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/analytics/AnalyticsMgr;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Runnable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 445
    iput-object p1, p0, Lcom/alibaba/analytics/AnalyticsMgr$2;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/alibaba/analytics/AnalyticsMgr$2;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/alibaba/analytics/AnalyticsMgr$2;->c:Ljava/lang/String;

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
    .line 449
    :try_start_0
    sget-object v1, Lcom/alibaba/analytics/AnalyticsMgr;->a:Lajt;

    iget-object v2, p0, Lcom/alibaba/analytics/AnalyticsMgr$2;->a:Ljava/lang/String;

    iget-object v3, p0, Lcom/alibaba/analytics/AnalyticsMgr$2;->b:Ljava/lang/String;

    iget-object v4, p0, Lcom/alibaba/analytics/AnalyticsMgr$2;->c:Ljava/lang/String;

    invoke-interface {v1, v2, v3, v4}, Lajt;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 453
    :goto_0
    return-void

    .line 450
    :catch_0
    move-exception v0

    .line 451
    .local v0, "e":Ljava/lang/Throwable;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method
