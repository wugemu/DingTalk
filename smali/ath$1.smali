.class public final Lath$1;
.super Ljava/lang/Object;
.source "HolidayArrangementProvider.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lath;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/wukong/Callback;

.field final synthetic b:Lath;


# direct methods
.method public constructor <init>(Lath;Lcom/alibaba/wukong/Callback;)V
    .locals 0
    .param p1, "this$0"    # Lath;

    .prologue
    .line 42
    iput-object p1, p0, Lath$1;->b:Lath;

    iput-object p2, p0, Lath$1;->a:Lcom/alibaba/wukong/Callback;

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
    .line 45
    iget-object v0, p0, Lath$1;->b:Lath;

    invoke-static {v0}, Lath;->a(Lath;)Lapx;

    move-result-object v2

    iget-object v3, p0, Lath$1;->a:Lcom/alibaba/wukong/Callback;

    .line 1032
    iget-object v0, v2, Lapx;->a:Lauf;

    invoke-interface {v0}, Lauf;->a()Lasn;

    move-result-object v4

    .line 1033
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v0

    invoke-virtual {v0}, Lcid;->c()Landroid/app/Application;

    move-result-object v0

    const-string/jumbo v1, "pref_key_last_time_to_save_holiday_arranges"

    invoke-static {v0, v1}, Lcpk;->c(Landroid/content/Context;Ljava/lang/String;)J

    move-result-wide v0

    .line 1034
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 1035
    if-eqz v4, :cond_0

    sub-long v0, v6, v0

    const-wide/32 v6, 0x5265c00

    cmp-long v0, v0, v6

    if-gez v0, :cond_0

    .line 1036
    invoke-static {v3, v4}, Lcny;->a(Lcom/alibaba/wukong/Callback;Ljava/lang/Object;)V

    .line 1037
    :goto_0
    return-void

    .line 1039
    :cond_0
    if-nez v4, :cond_1

    const-wide/16 v0, 0x0

    .line 1040
    :goto_1
    iget-object v5, v2, Lapx;->b:Lato;

    new-instance v6, Lapx$1;

    invoke-direct {v6, v2, v3, v4}, Lapx$1;-><init>(Lapx;Lcom/alibaba/wukong/Callback;Lasn;)V

    .line 3019
    new-instance v2, Lato$1;

    invoke-direct {v2, v5, v6}, Lato$1;-><init>(Lato;Lcma;)V

    .line 3035
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string/jumbo v6, "[HolidayDataSourceRemote] getHolidayArrangementsFromServer."

    aput-object v6, v3, v4

    invoke-static {v3}, Lavy;->a([Ljava/lang/String;)V

    .line 3036
    invoke-static {}, Latp;->a()Latp;

    move-result-object v3

    new-instance v4, Lato$2;

    invoke-direct {v4, v5, v2}, Lato$2;-><init>(Lato;Lcmi;)V

    .line 3074
    invoke-static {}, Latp;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Latp;->a(Ljava/lang/String;)V

    .line 3075
    iget-object v2, v3, Latp;->a:Lcom/alibaba/android/calendar/data/idl/service/IDLDingService;

    invoke-interface {v2, v0, v1, v4}, Lcom/alibaba/android/calendar/data/idl/service/IDLDingService;->getHolidayArrangements(JLiyv;)V

    goto :goto_0

    .line 2062
    :cond_1
    iget-wide v0, v4, Lasn;->b:J

    goto :goto_1
.end method
