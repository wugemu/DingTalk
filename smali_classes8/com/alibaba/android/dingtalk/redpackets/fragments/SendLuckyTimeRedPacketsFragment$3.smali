.class final Lcom/alibaba/android/dingtalk/redpackets/fragments/SendLuckyTimeRedPacketsFragment$3;
.super Ljava/lang/Object;
.source "SendLuckyTimeRedPacketsFragment.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/dingtalk/redpackets/fragments/SendLuckyTimeRedPacketsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcma",
        "<",
        "Lcom/alibaba/android/dingtalk/redpackets/models/RedEnvelopGoodTimeObject;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalk/redpackets/fragments/SendLuckyTimeRedPacketsFragment;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalk/redpackets/fragments/SendLuckyTimeRedPacketsFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalk/redpackets/fragments/SendLuckyTimeRedPacketsFragment;

    .prologue
    .line 163
    iput-object p1, p0, Lcom/alibaba/android/dingtalk/redpackets/fragments/SendLuckyTimeRedPacketsFragment$3;->a:Lcom/alibaba/android/dingtalk/redpackets/fragments/SendLuckyTimeRedPacketsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 8

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/16 v6, 0xb

    .line 163
    check-cast p1, Lcom/alibaba/android/dingtalk/redpackets/models/RedEnvelopGoodTimeObject;

    .line 1166
    if-nez p1, :cond_0

    .line 1167
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/redpackets/fragments/SendLuckyTimeRedPacketsFragment$3;->a:Lcom/alibaba/android/dingtalk/redpackets/fragments/SendLuckyTimeRedPacketsFragment;

    invoke-static {v0}, Lcom/alibaba/android/dingtalk/redpackets/fragments/SendLuckyTimeRedPacketsFragment;->b(Lcom/alibaba/android/dingtalk/redpackets/fragments/SendLuckyTimeRedPacketsFragment;)V

    .line 1168
    :goto_0
    return-void

    .line 1171
    :cond_0
    invoke-static {}, Lclu;->a()Ljava/util/Calendar;

    move-result-object v0

    .line 1172
    iget-wide v2, p1, Lcom/alibaba/android/dingtalk/redpackets/models/RedEnvelopGoodTimeObject;->pickPlanTime:J

    invoke-virtual {v0, v2, v3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 1173
    invoke-virtual {v0, v6}, Ljava/util/Calendar;->get(I)I

    move-result v4

    .line 1174
    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v5

    .line 1175
    invoke-static {}, Lcom/alibaba/android/dingtalk/redpackets/fragments/SendLuckyTimeRedPacketsFragment;->g()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 1176
    invoke-virtual {v0, v6}, Ljava/util/Calendar;->get(I)I

    move-result v0

    .line 1177
    const/4 v6, 0x0

    .line 1178
    if-ge v4, v0, :cond_1

    .line 1179
    const/4 v6, 0x1

    .line 1181
    :cond_1
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/redpackets/fragments/SendLuckyTimeRedPacketsFragment$3;->a:Lcom/alibaba/android/dingtalk/redpackets/fragments/SendLuckyTimeRedPacketsFragment;

    iget-wide v2, p1, Lcom/alibaba/android/dingtalk/redpackets/models/RedEnvelopGoodTimeObject;->pickPlanTime:J

    iget-object v7, p1, Lcom/alibaba/android/dingtalk/redpackets/models/RedEnvelopGoodTimeObject;->planTimeExplain:Ljava/lang/String;

    invoke-static/range {v1 .. v7}, Lcom/alibaba/android/dingtalk/redpackets/fragments/SendLuckyTimeRedPacketsFragment;->a(Lcom/alibaba/android/dingtalk/redpackets/fragments/SendLuckyTimeRedPacketsFragment;JIIZLjava/lang/String;)V

    goto :goto_0
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "s1"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 191
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/redpackets/fragments/SendLuckyTimeRedPacketsFragment$3;->a:Lcom/alibaba/android/dingtalk/redpackets/fragments/SendLuckyTimeRedPacketsFragment;

    invoke-static {v0}, Lcom/alibaba/android/dingtalk/redpackets/fragments/SendLuckyTimeRedPacketsFragment;->b(Lcom/alibaba/android/dingtalk/redpackets/fragments/SendLuckyTimeRedPacketsFragment;)V

    .line 192
    const-string/jumbo v0, "redpackets"

    const-string/jumbo v1, "calPlanTime"

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "calPlanTime exception code:"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p1, v2, v3

    const/4 v3, 0x2

    const-string/jumbo v4, " reason:"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    aput-object p2, v2, v3

    invoke-static {v2}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 193
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 187
    return-void
.end method
