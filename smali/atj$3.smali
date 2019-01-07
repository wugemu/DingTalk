.class final Latj$3;
.super Ljava/lang/Object;
.source "MailCalendarEventProvider.java"

# interfaces
.implements Lapv;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Latj;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lapv",
        "<",
        "Ljava/util/List",
        "<",
        "Laro;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:J

.field final synthetic b:J

.field final synthetic c:Latj;


# direct methods
.method constructor <init>(Latj;JJ)V
    .locals 0
    .param p1, "this$0"    # Latj;

    .prologue
    .line 123
    iput-object p1, p0, Latj$3;->c:Latj;

    iput-wide p2, p0, Latj$3;->a:J

    iput-wide p4, p0, Latj$3;->b:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)V
    .locals 14

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v13

    invoke-static {v13}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 123
    check-cast p1, Ljava/util/List;

    .line 1127
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1128
    :cond_0
    iget-object v0, p0, Latj$3;->c:Latj;

    iget-object v0, v0, Latj;->a:Lfp;

    invoke-virtual {v0}, Lfp;->b()V

    .line 1129
    iget-object v0, p0, Latj$3;->c:Latj;

    invoke-virtual {v0}, Latj;->b()V

    .line 1131
    new-array v0, v7, [Ljava/lang/String;

    const-string/jumbo v1, "[MailCalendarEventProvider]loadEventForAlibabaUser  selectedFolderList isEmpty."

    aput-object v1, v0, v8

    invoke-static {v0}, Lavy;->a([Ljava/lang/String;)V

    .line 1164
    :goto_0
    return-void

    .line 1135
    :cond_1
    const-string/jumbo v1, ""

    .line 1137
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 1138
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 1140
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v4, v8

    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laro;

    .line 1141
    if-eqz v0, :cond_2

    .line 1145
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 2035
    iget-object v3, v0, Laro;->b:Ljava/lang/String;

    .line 1146
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 3035
    iget-object v1, v0, Laro;->b:Ljava/lang/String;

    .line 1150
    :cond_3
    invoke-virtual {v0}, Laro;->a()Z

    move-result v3

    if-eqz v3, :cond_4

    move v4, v7

    .line 1157
    :goto_2
    iget-object v3, p0, Latj$3;->c:Latj;

    .line 4038
    iget-object v3, v3, Latj;->d:Ljava/util/Map;

    .line 4059
    iget-object v9, v0, Laro;->e:Ljava/lang/String;

    .line 4083
    iget-object v0, v0, Laro;->h:Ljava/lang/String;

    .line 1157
    invoke-static {v0}, Lavj;->a(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v3, v9, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 3051
    :cond_4
    iget-object v3, v0, Laro;->d:Ljava/lang/String;

    .line 1153
    invoke-interface {v5, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3059
    iget-object v3, v0, Laro;->e:Ljava/lang/String;

    .line 1154
    invoke-interface {v6, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 1160
    :cond_5
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1161
    iget-object v0, p0, Latj$3;->c:Latj;

    iget-object v0, v0, Latj;->a:Lfp;

    invoke-virtual {v0}, Lfp;->b()V

    .line 1162
    iget-object v0, p0, Latj$3;->c:Latj;

    invoke-virtual {v0}, Latj;->b()V

    .line 1163
    new-array v0, v7, [Ljava/lang/String;

    const-string/jumbo v1, "[MailCalendarEventProvider]loadEventFromAliMailAccount  accoutName isEmpty."

    aput-object v1, v0, v8

    invoke-static {v0}, Lavy;->a([Ljava/lang/String;)V

    goto :goto_0

    .line 1167
    :cond_6
    iget-wide v2, p0, Latj$3;->a:J

    new-instance v0, Landroid/text/format/Time;

    invoke-direct {v0}, Landroid/text/format/Time;-><init>()V

    iget-wide v10, v0, Landroid/text/format/Time;->gmtoff:J

    invoke-static {v2, v3, v10, v11}, Landroid/text/format/Time;->getJulianDay(JJ)I

    move-result v2

    .line 1168
    iget-wide v10, p0, Latj$3;->b:J

    iget-wide v12, p0, Latj$3;->a:J

    sub-long/2addr v10, v12

    const-wide/32 v12, 0x5265c00

    div-long/2addr v10, v12

    long-to-int v3, v10

    .line 1169
    const/16 v0, 0xc

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v9, "[MailCalendarEventProvider] loadEventForAlibabaUser accountName="

    aput-object v9, v0, v8

    aput-object v1, v0, v7

    const/4 v7, 0x2

    const-string/jumbo v8, " startJulianDay="

    aput-object v8, v0, v7

    const/4 v7, 0x3

    .line 1170
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v0, v7

    const/4 v7, 0x4

    const-string/jumbo v8, ", num="

    aput-object v8, v0, v7

    const/4 v7, 0x5

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v0, v7

    const/4 v7, 0x6

    const-string/jumbo v8, ", isIncludeMainAccount="

    aput-object v8, v0, v7

    const/4 v7, 0x7

    .line 1171
    invoke-static {v4}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v0, v7

    const/16 v7, 0x8

    const-string/jumbo v8, ", sharedList="

    aput-object v8, v0, v7

    const/16 v7, 0x9

    .line 1172
    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v0, v7

    const/16 v7, 0xa

    const-string/jumbo v8, ", serverIds="

    aput-object v8, v0, v7

    const/16 v7, 0xb

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v0, v7

    .line 1169
    invoke-static {v0}, Lavy;->a([Ljava/lang/String;)V

    .line 1174
    invoke-static {}, Lcom/alibaba/dingtalk/cmailbase/calendar/MailCalendarInterface;->k()Lcom/alibaba/dingtalk/cmailbase/calendar/MailCalendarInterface;

    move-result-object v0

    new-instance v7, Latj$3$1;

    invoke-direct {v7, p0}, Latj$3$1;-><init>(Latj$3;)V

    invoke-virtual/range {v0 .. v7}, Lcom/alibaba/dingtalk/cmailbase/calendar/MailCalendarInterface;->a(Ljava/lang/String;IIZLjava/util/List;Ljava/util/List;Lcma;)V

    goto/16 :goto_0
.end method
