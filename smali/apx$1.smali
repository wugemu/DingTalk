.class public final Lapx$1;
.super Ljava/lang/Object;
.source "HolidayArrangementDataCenter.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lapx;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcma",
        "<",
        "Lasn;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/wukong/Callback;

.field final synthetic b:Lasn;

.field final synthetic c:Lapx;


# direct methods
.method public constructor <init>(Lapx;Lcom/alibaba/wukong/Callback;Lasn;)V
    .locals 0
    .param p1, "this$0"    # Lapx;

    .prologue
    .line 40
    iput-object p1, p0, Lapx$1;->c:Lapx;

    iput-object p2, p0, Lapx$1;->a:Lcom/alibaba/wukong/Callback;

    iput-object p3, p0, Lapx$1;->b:Lasn;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 40
    check-cast p1, Lasn;

    .line 1043
    if-eqz p1, :cond_0

    .line 1062
    iget-wide v0, p1, Lasn;->b:J

    .line 1043
    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    .line 1045
    :cond_0
    iget-object v0, p0, Lapx$1;->a:Lcom/alibaba/wukong/Callback;

    iget-object v1, p0, Lapx$1;->b:Lasn;

    invoke-static {v0, v1}, Lcny;->a(Lcom/alibaba/wukong/Callback;Ljava/lang/Object;)V

    .line 1046
    :goto_0
    return-void

    .line 1048
    :cond_1
    iget-object v0, p0, Lapx$1;->c:Lapx;

    .line 2021
    iget-object v0, v0, Lapx;->a:Lauf;

    .line 1048
    invoke-interface {v0, p1}, Lauf;->a(Lasn;)I

    .line 1049
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v0

    invoke-virtual {v0}, Lcid;->c()Landroid/app/Application;

    move-result-object v0

    const-string/jumbo v1, "pref_key_last_time_to_save_holiday_arranges"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lcpk;->a(Landroid/content/Context;Ljava/lang/String;J)V

    .line 1050
    iget-object v0, p0, Lapx$1;->a:Lcom/alibaba/wukong/Callback;

    invoke-static {v0, p1}, Lcny;->a(Lcom/alibaba/wukong/Callback;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    .prologue
    .line 59
    iget-object v0, p0, Lapx$1;->a:Lcom/alibaba/wukong/Callback;

    invoke-static {v0, p1, p2}, Lcny;->a(Lcom/alibaba/wukong/Callback;Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 55
    return-void
.end method
