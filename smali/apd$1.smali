.class final Lapd$1;
.super Ljava/lang/Object;
.source "CalendarAlertManager.java"

# interfaces
.implements Lcom/alibaba/wukong/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lapd;->a(IJLcom/alibaba/wukong/Callback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/alibaba/wukong/Callback",
        "<",
        "Ljava/util/List",
        "<",
        "Lapb;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:J

.field final synthetic c:Lcom/alibaba/wukong/Callback;

.field final synthetic d:Lapd;


# direct methods
.method constructor <init>(Lapd;IJLcom/alibaba/wukong/Callback;)V
    .locals 1
    .param p1, "this$0"    # Lapd;

    .prologue
    .line 44
    iput-object p1, p0, Lapd$1;->d:Lapd;

    iput p2, p0, Lapd$1;->a:I

    iput-wide p3, p0, Lapd$1;->b:J

    iput-object p5, p0, Lapd$1;->c:Lcom/alibaba/wukong/Callback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 109
    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "[CalendarAlertManager]queryLatestAlert failed, code:"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    const/4 v1, 0x2

    const-string/jumbo v2, ", reason:"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    aput-object p2, v0, v1

    const/4 v1, 0x4

    const-string/jumbo v2, ", alertType:"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    iget v2, p0, Lapd$1;->a:I

    .line 111
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string/jumbo v2, ", bizId:"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    iget-wide v2, p0, Lapd$1;->b:J

    .line 112
    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 109
    invoke-static {v0}, Lavy;->a([Ljava/lang/String;)V

    .line 113
    invoke-static {}, Lapa;->a()Lapa;

    move-result-object v0

    const-wide/32 v1, 0x5265c00

    const/4 v3, -0x1

    const-wide/16 v4, -0x1

    invoke-virtual/range {v0 .. v5}, Lapa;->a(JIJ)V

    .line 118
    iget-object v0, p0, Lapd$1;->c:Lcom/alibaba/wukong/Callback;

    if-eqz v0, :cond_0

    .line 119
    iget-object v0, p0, Lapd$1;->c:Lcom/alibaba/wukong/Callback;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/alibaba/wukong/Callback;->onSuccess(Ljava/lang/Object;)V

    .line 121
    :cond_0
    return-void
.end method

.method public final bridge synthetic onProgress(Ljava/lang/Object;I)V
    .locals 0

    .prologue
    .line 44
    return-void
.end method

.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .locals 10

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    const/4 v9, 0x4

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 44
    check-cast p1, Ljava/util/List;

    .line 1048
    new-array v1, v7, [Ljava/lang/String;

    const-string/jumbo v0, "[CalendarAlert] tryAlert, latest alerts size:"

    aput-object v0, v1, v5

    if-nez p1, :cond_2

    const-string/jumbo v0, "0"

    .line 1049
    :goto_0
    aput-object v0, v1, v6

    .line 1048
    invoke-static {v1}, Lavy;->a([Ljava/lang/String;)V

    .line 1051
    iget-object v0, p0, Lapd$1;->d:Lapd;

    iget v1, p0, Lapd$1;->a:I

    iget-wide v2, p0, Lapd$1;->b:J

    invoke-static {v0, v1, v2, v3, p1}, Lapd;->a(Lapd;IJLjava/util/List;)Lapb;

    move-result-object v0

    .line 1053
    if-eqz v0, :cond_0

    .line 1054
    new-array v1, v9, [Ljava/lang/String;

    const-string/jumbo v2, "[CalendarAlert] findMatchAlert, alertType:"

    aput-object v2, v1, v5

    .line 2043
    iget v2, v0, Lapb;->a:I

    .line 1054
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v6

    const-string/jumbo v2, ", bizId:"

    aput-object v2, v1, v7

    .line 2047
    iget-wide v2, v0, Lapb;->b:J

    .line 1055
    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v8

    .line 1054
    invoke-static {v1}, Lavy;->a([Ljava/lang/String;)V

    .line 1056
    const-string/jumbo v1, "pref_key_last_alert_time"

    .line 2067
    iget-wide v2, v0, Lapb;->e:J

    .line 1056
    invoke-static {v1, v2, v3}, Lcpk;->b(Ljava/lang/String;J)V

    .line 1057
    const-string/jumbo v1, "pref_key_last_alert_type"

    .line 3043
    iget v2, v0, Lapb;->a:I

    .line 1057
    invoke-static {v1, v2}, Lcpk;->b(Ljava/lang/String;I)V

    .line 1058
    const-string/jumbo v1, "pref_key_last_alert_id"

    .line 3047
    iget-wide v2, v0, Lapb;->b:J

    .line 1058
    invoke-static {v1, v2, v3}, Lcpk;->b(Ljava/lang/String;J)V

    .line 1060
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v1

    new-instance v2, Lapd$1$1;

    invoke-direct {v2, p0, v0}, Lapd$1$1;-><init>(Lapd$1;Lapb;)V

    invoke-virtual {v1, v2}, Lhcv;->post(Ljava/lang/Runnable;)Z

    .line 1070
    const/16 v1, 0xa

    new-array v1, v1, [Ljava/lang/String;

    const-string/jumbo v2, "[CalendarAlert] show alert, alertType:"

    aput-object v2, v1, v5

    iget v2, p0, Lapd$1;->a:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v6

    const-string/jumbo v2, ", bizId:"

    aput-object v2, v1, v7

    iget-wide v2, p0, Lapd$1;->b:J

    .line 1071
    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v8

    const-string/jumbo v2, ", title:"

    aput-object v2, v1, v9

    const/4 v2, 0x5

    .line 3051
    iget-object v3, v0, Lapb;->c:Ljava/lang/String;

    .line 1072
    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string/jumbo v3, ", desc:"

    aput-object v3, v1, v2

    const/4 v2, 0x7

    .line 3055
    iget-object v3, v0, Lapb;->d:Ljava/lang/String;

    .line 1073
    aput-object v3, v1, v2

    const/16 v2, 0x8

    const-string/jumbo v3, ", reminderMinutes:"

    aput-object v3, v1, v2

    const/16 v2, 0x9

    .line 3071
    iget v0, v0, Lapb;->f:I

    .line 1074
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v2

    .line 1070
    invoke-static {v1}, Lavy;->a([Ljava/lang/String;)V

    .line 1078
    :cond_0
    iget-object v0, p0, Lapd$1;->d:Lapd;

    invoke-static {v0, p1}, Lapd;->a(Lapd;Ljava/util/List;)Lapb;

    move-result-object v4

    .line 1079
    if-nez v4, :cond_3

    .line 1080
    new-array v0, v6, [Ljava/lang/String;

    const-string/jumbo v1, "[CalendarAlert] findNextAlert, null"

    aput-object v1, v0, v5

    invoke-static {v0}, Lavy;->a([Ljava/lang/String;)V

    .line 1081
    invoke-static {}, Lapa;->a()Lapa;

    move-result-object v0

    const-wide/32 v1, 0x5265c00

    const/4 v3, -0x1

    const-wide/16 v4, -0x1

    invoke-virtual/range {v0 .. v5}, Lapa;->a(JIJ)V

    .line 1102
    :goto_1
    iget-object v0, p0, Lapd$1;->c:Lcom/alibaba/wukong/Callback;

    if-eqz v0, :cond_1

    .line 1103
    iget-object v0, p0, Lapd$1;->c:Lcom/alibaba/wukong/Callback;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/alibaba/wukong/Callback;->onSuccess(Ljava/lang/Object;)V

    .line 44
    :cond_1
    return-void

    .line 1049
    :cond_2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 1086
    :cond_3
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "[CalendarAlert] findNextAlert, alertType:"

    aput-object v1, v0, v5

    .line 4043
    iget v1, v4, Lapb;->a:I

    .line 1086
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v6

    const-string/jumbo v1, ", bizId:"

    aput-object v1, v0, v7

    .line 4047
    iget-wide v2, v4, Lapb;->b:J

    .line 1087
    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v8

    const-string/jumbo v1, ", alertTime:"

    aput-object v1, v0, v9

    const/4 v1, 0x5

    .line 4067
    iget-wide v2, v4, Lapb;->e:J

    .line 1088
    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 1086
    invoke-static {v0}, Lavy;->a([Ljava/lang/String;)V

    .line 1093
    :try_start_0
    invoke-static {}, Lapa;->a()Lapa;

    move-result-object v0

    .line 5067
    iget-wide v2, v4, Lapb;->e:J

    .line 1094
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long v1, v2, v6

    .line 6043
    iget v3, v4, Lapb;->a:I

    .line 6047
    iget-wide v4, v4, Lapb;->b:J

    .line 1093
    invoke-virtual/range {v0 .. v5}, Lapa;->a(JIJ)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 1097
    :catch_0
    move-exception v0

    .line 1098
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->printStackTrace()V

    goto :goto_1
.end method
