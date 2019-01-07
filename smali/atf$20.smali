.class public final Latf$20;
.super Ljava/lang/Object;
.source "CalendarDataProvider.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Latf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:J

.field final synthetic b:Lcom/alibaba/wukong/Callback;

.field final synthetic c:Latf;


# direct methods
.method public constructor <init>(Latf;JLcom/alibaba/wukong/Callback;)V
    .locals 0
    .param p1, "this$0"    # Latf;

    .prologue
    .line 488
    iput-object p1, p0, Latf$20;->c:Latf;

    iput-wide p2, p0, Latf$20;->a:J

    iput-object p4, p0, Latf$20;->b:Lcom/alibaba/wukong/Callback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    const/4 v7, 0x0

    .line 491
    iget-object v0, p0, Latf$20;->c:Latf;

    invoke-static {v0}, Latf;->a(Latf;)Lapw;

    move-result-object v0

    iget-wide v2, p0, Latf$20;->a:J

    iget-object v1, p0, Latf$20;->b:Lcom/alibaba/wukong/Callback;

    .line 2018
    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-gtz v4, :cond_0

    .line 2019
    const-string/jumbo v0, "-1"

    sget v2, Laow$f;->unknown_error:I

    invoke-static {v2}, Leda;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v0, v2}, Lcny;->a(Lcom/alibaba/wukong/Callback;Ljava/lang/String;Ljava/lang/String;)V

    .line 2032
    :goto_0
    return-void

    .line 2023
    :cond_0
    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const-string/jumbo v5, "[CalendarDataCenter]isShowUserProfileCalendarShare userId="

    aput-object v5, v4, v7

    const/4 v5, 0x1

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v4}, Lavy;->a([Ljava/lang/String;)V

    .line 2025
    invoke-static {}, Lcom/alibaba/android/ding/base/interfaces/DingInterface;->a()Lcom/alibaba/android/ding/base/interfaces/DingInterface;

    move-result-object v4

    invoke-virtual {v4}, Lcom/alibaba/android/ding/base/interfaces/DingInterface;->j()Z

    move-result v4

    if-nez v4, :cond_1

    .line 2026
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v1, v0}, Lcny;->a(Lcom/alibaba/wukong/Callback;Ljava/lang/Object;)V

    goto :goto_0

    .line 2030
    :cond_1
    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v4

    invoke-virtual {v4}, Lccr;->c()J

    move-result-wide v4

    cmp-long v4, v2, v4

    if-nez v4, :cond_2

    .line 2031
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v1, v0}, Lcny;->a(Lcom/alibaba/wukong/Callback;Ljava/lang/Object;)V

    goto :goto_0

    .line 2034
    :cond_2
    new-instance v4, Lapw$4;

    invoke-direct {v4, v0, v2, v3, v1}, Lapw$4;-><init>(Lapw;JLcom/alibaba/wukong/Callback;)V

    .line 2063
    invoke-static {}, Larl;->a()Larl;

    move-result-object v0

    invoke-virtual {v0, v2, v3, v4}, Larl;->a(JLapv;)V

    goto :goto_0
.end method
