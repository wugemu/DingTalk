.class final Lckv$a$1;
.super Ljava/lang/Object;
.source "LunarFestivalInfoPreloadTask.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lckv$a;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:I

.field final synthetic c:Lckv$a;


# direct methods
.method constructor <init>(Lckv$a;II)V
    .locals 0
    .param p1, "this$1"    # Lckv$a;

    .prologue
    .line 66
    iput-object p1, p0, Lckv$a$1;->c:Lckv$a;

    iput p2, p0, Lckv$a$1;->a:I

    iput p3, p0, Lckv$a$1;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 14

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v13

    invoke-static {v13}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 69
    iget-object v9, p0, Lckv$a$1;->c:Lckv$a;

    iget v0, p0, Lckv$a$1;->a:I

    iget v1, p0, Lckv$a$1;->b:I

    .line 1075
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    .line 1076
    const/4 v3, 0x1

    invoke-virtual {v2, v3, v0}, Ljava/util/Calendar;->set(II)V

    .line 1077
    const/4 v0, 0x2

    invoke-virtual {v2, v0, v1}, Ljava/util/Calendar;->set(II)V

    .line 1078
    invoke-virtual {v2}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    .line 1079
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1080
    iget-object v1, v9, Lckv$a;->a:Lckv;

    invoke-static {v1}, Lckv;->b(Lckv;)I

    move-result v1

    iget-object v3, v9, Lckv$a;->a:Lckv;

    invoke-static {v3}, Lckv;->c(Lckv;)I

    move-result v3

    invoke-static {v1, v3}, Lcqd;->a(II)Ljava/util/List;

    move-result-object v1

    .line 1081
    if-eqz v1, :cond_0

    .line 1082
    invoke-interface {v0, v1}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    .line 1084
    :cond_0
    const/4 v1, 0x2

    const/4 v3, -0x1

    invoke-virtual {v2, v1, v3}, Ljava/util/Calendar;->add(II)V

    .line 1085
    invoke-virtual {v2}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    .line 1086
    const/4 v1, 0x1

    invoke-virtual {v2, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    invoke-static {v1, v3}, Lcqd;->a(II)Ljava/util/List;

    move-result-object v1

    .line 1087
    if-eqz v1, :cond_1

    .line 1088
    invoke-interface {v0, v1}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    .line 1090
    :cond_1
    const/4 v1, 0x2

    const/4 v3, 0x2

    invoke-virtual {v2, v1, v3}, Ljava/util/Calendar;->add(II)V

    .line 1091
    invoke-virtual {v2}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    .line 1092
    const/4 v1, 0x1

    invoke-virtual {v2, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-static {v1, v2}, Lcqd;->a(II)Ljava/util/List;

    move-result-object v1

    .line 1093
    if-eqz v1, :cond_2

    .line 1094
    invoke-interface {v0, v1}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    .line 1096
    :cond_2
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_3
    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Lckq;

    .line 1097
    if-eqz v8, :cond_3

    .line 1100
    iget-object v0, v9, Lckv$a;->a:Lckv;

    invoke-static {v0}, Lckv;->d(Lckv;)Lckt;

    move-result-object v0

    if-nez v0, :cond_4

    .line 1101
    iget-object v0, v9, Lckv$a;->a:Lckv;

    new-instance v1, Lckt;

    invoke-direct {v1}, Lckt;-><init>()V

    invoke-static {v0, v1}, Lckv;->a(Lckv;Lckt;)Lckt;

    .line 1103
    :cond_4
    iget-object v0, v9, Lckv$a;->a:Lckv;

    invoke-static {v0}, Lckv;->d(Lckv;)Lckt;

    move-result-object v0

    invoke-virtual {v0, v8}, Lckt;->a(Lckq;)Lcks;

    move-result-object v0

    .line 1104
    if-nez v0, :cond_3

    .line 2054
    iget v0, v8, Lckq;->b:I

    .line 2058
    iget v1, v8, Lckq;->c:I

    .line 1107
    invoke-static {v0, v1}, Lcqf;->a(II)Ljava/lang/String;

    move-result-object v1

    .line 3054
    iget v0, v8, Lckq;->b:I

    .line 3058
    iget v2, v8, Lckq;->c:I

    .line 1108
    invoke-static {v0, v2}, Lcqf;->b(II)Ljava/lang/String;

    move-result-object v2

    .line 4054
    iget v0, v8, Lckq;->b:I

    .line 4058
    iget v3, v8, Lckq;->c:I

    .line 1109
    invoke-static {v0, v3}, Lcqf;->c(II)Ljava/lang/String;

    move-result-object v3

    .line 5054
    iget v0, v8, Lckq;->b:I

    .line 5058
    iget v4, v8, Lckq;->c:I

    .line 1110
    invoke-static {v0, v4}, Lcqf;->d(II)Ljava/lang/String;

    move-result-object v4

    .line 6050
    iget v0, v8, Lckq;->a:I

    .line 6054
    iget v5, v8, Lckq;->b:I

    .line 6058
    iget v6, v8, Lckq;->c:I

    .line 1111
    invoke-static {v0, v5, v6}, Lcom/alibaba/android/dingtalkbase/utils/calendar/SolarTermUtil;->a(III)Ljava/lang/String;

    move-result-object v5

    .line 7050
    iget v0, v8, Lckq;->a:I

    .line 7054
    iget v6, v8, Lckq;->b:I

    .line 7058
    iget v7, v8, Lckq;->c:I

    .line 1112
    invoke-static {v0, v6, v7}, Lcqg;->a(III)[J

    move-result-object v0

    .line 1113
    const/4 v6, 0x1

    aget-wide v6, v0, v6

    long-to-int v6, v6

    const/4 v7, 0x2

    aget-wide v12, v0, v7

    long-to-int v7, v12

    invoke-static {v6, v7}, Lcqg;->a(II)Ljava/lang/String;

    move-result-object v6

    .line 1114
    const/4 v7, 0x0

    aget-wide v12, v0, v7

    long-to-int v7, v12

    const/4 v11, 0x1

    aget-wide v12, v0, v11

    long-to-int v11, v12

    const/4 v12, 0x2

    aget-wide v12, v0, v12

    long-to-int v0, v12

    invoke-static {v7, v11, v0}, Lcqf;->a(III)Ljava/lang/String;

    move-result-object v7

    .line 1115
    new-instance v0, Lcks;

    invoke-direct/range {v0 .. v7}, Lcks;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1122
    iget-object v1, v9, Lckv$a;->a:Lckv;

    invoke-static {v1}, Lckv;->d(Lckv;)Lckt;

    move-result-object v1

    invoke-virtual {v1, v8, v0}, Lckt;->a(Lckq;Lcks;)V

    goto/16 :goto_0

    .line 70
    :cond_5
    return-void
.end method
