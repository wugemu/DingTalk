.class final Lcom/alibaba/dingtalk/cspace/activity/SpaceStatisticActivity$1;
.super Lcmi;
.source "SpaceStatisticActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/dingtalk/cspace/activity/SpaceStatisticActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcmi",
        "<",
        "Lghe;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:J

.field final synthetic b:J

.field final synthetic c:Ljava/util/List;

.field final synthetic d:Lcom/alibaba/dingtalk/cspace/activity/SpaceStatisticActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/dingtalk/cspace/activity/SpaceStatisticActivity;JJLjava/util/List;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/dingtalk/cspace/activity/SpaceStatisticActivity;

    .prologue
    .line 155
    iput-object p1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceStatisticActivity$1;->d:Lcom/alibaba/dingtalk/cspace/activity/SpaceStatisticActivity;

    iput-wide p2, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceStatisticActivity$1;->a:J

    iput-wide p4, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceStatisticActivity$1;->b:J

    iput-object p6, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceStatisticActivity$1;->c:Ljava/util/List;

    invoke-direct {p0}, Lcmi;-><init>()V

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 6
    .param p1, "errorCode"    # Ljava/lang/String;
    .param p2, "errorMsg"    # Ljava/lang/String;
    .param p3, "throwable"    # Ljava/lang/Throwable;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 213
    const/4 v1, 0x7

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string/jumbo v3, "initReadAndUnreadUsersList: listUidsByFileIdAndAccessType"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string/jumbo v3, ", spaceId"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget-wide v4, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceStatisticActivity$1;->a:J

    .line 215
    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-string/jumbo v3, ", fileId"

    aput-object v3, v1, v2

    const/4 v2, 0x4

    iget-wide v4, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceStatisticActivity$1;->b:J

    .line 216
    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x5

    const-string/jumbo v3, ", accessType"

    aput-object v3, v1, v2

    const/4 v2, 0x6

    iget-object v3, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceStatisticActivity$1;->c:Ljava/util/List;

    .line 217
    invoke-static {v3}, Lgpr;->c(Ljava/util/List;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 213
    invoke-static {v1}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 218
    .local v0, "method":Ljava/lang/String;
    const-string/jumbo v1, "CSpace"

    const-string/jumbo v2, "SpaceStatisticActivity"

    .line 219
    invoke-static {v0, p1, p2, p3}, Lgot;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    .line 218
    invoke-static {v1, v2, v3}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 220
    return-void
.end method


# virtual methods
.method public final onException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 3
    .param p1, "errorCode"    # Ljava/lang/String;
    .param p2, "errorMsg"    # Ljava/lang/String;
    .param p3, "throwable"    # Ljava/lang/Throwable;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v2, 0x0

    .line 196
    invoke-direct {p0, p1, p2, p3}, Lcom/alibaba/dingtalk/cspace/activity/SpaceStatisticActivity$1;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 198
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceStatisticActivity$1;->d:Lcom/alibaba/dingtalk/cspace/activity/SpaceStatisticActivity;

    invoke-static {v0}, Lgpk;->a(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceStatisticActivity$1;->d:Lcom/alibaba/dingtalk/cspace/activity/SpaceStatisticActivity;

    invoke-static {v0}, Lcom/alibaba/dingtalk/cspace/activity/SpaceStatisticActivity;->a(Lcom/alibaba/dingtalk/cspace/activity/SpaceStatisticActivity;)Lcom/alibaba/dingtalk/cspace/fragment/CSpaceStatisticFragment;

    move-result-object v0

    if-nez v0, :cond_1

    .line 210
    :cond_0
    :goto_0
    return-void

    .line 201
    :cond_1
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    aput-object p1, v0, v2

    const/4 v1, 0x1

    aput-object p2, v0, v1

    invoke-static {v0}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcms;->a(Ljava/lang/String;)V

    .line 203
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceStatisticActivity$1;->d:Lcom/alibaba/dingtalk/cspace/activity/SpaceStatisticActivity;

    invoke-static {v0}, Lcom/alibaba/dingtalk/cspace/activity/SpaceStatisticActivity;->a(Lcom/alibaba/dingtalk/cspace/activity/SpaceStatisticActivity;)Lcom/alibaba/dingtalk/cspace/fragment/CSpaceStatisticFragment;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 204
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceStatisticActivity$1;->d:Lcom/alibaba/dingtalk/cspace/activity/SpaceStatisticActivity;

    invoke-static {v0}, Lcom/alibaba/dingtalk/cspace/activity/SpaceStatisticActivity;->a(Lcom/alibaba/dingtalk/cspace/activity/SpaceStatisticActivity;)Lcom/alibaba/dingtalk/cspace/fragment/CSpaceStatisticFragment;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceStatisticFragment;->b(Z)V

    .line 207
    :cond_2
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceStatisticActivity$1;->d:Lcom/alibaba/dingtalk/cspace/activity/SpaceStatisticActivity;

    invoke-static {v0}, Lcom/alibaba/dingtalk/cspace/activity/SpaceStatisticActivity;->h(Lcom/alibaba/dingtalk/cspace/activity/SpaceStatisticActivity;)Lcom/alibaba/dingtalk/cspace/fragment/CSpaceStatisticFragment;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 208
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceStatisticActivity$1;->d:Lcom/alibaba/dingtalk/cspace/activity/SpaceStatisticActivity;

    invoke-static {v0}, Lcom/alibaba/dingtalk/cspace/activity/SpaceStatisticActivity;->h(Lcom/alibaba/dingtalk/cspace/activity/SpaceStatisticActivity;)Lcom/alibaba/dingtalk/cspace/fragment/CSpaceStatisticFragment;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceStatisticFragment;->b(Z)V

    goto :goto_0
.end method

.method public final synthetic onLoadSuccess(Ljava/lang/Object;)V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v2, 0x0

    const/4 v5, 0x0

    .line 155
    check-cast p1, Lghe;

    .line 1158
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceStatisticActivity$1;->d:Lcom/alibaba/dingtalk/cspace/activity/SpaceStatisticActivity;

    invoke-static {v0}, Lgpk;->a(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceStatisticActivity$1;->d:Lcom/alibaba/dingtalk/cspace/activity/SpaceStatisticActivity;

    invoke-static {v0}, Lcom/alibaba/dingtalk/cspace/activity/SpaceStatisticActivity;->a(Lcom/alibaba/dingtalk/cspace/activity/SpaceStatisticActivity;)Lcom/alibaba/dingtalk/cspace/fragment/CSpaceStatisticFragment;

    move-result-object v0

    if-nez v0, :cond_1

    .line 1165
    :cond_0
    :goto_0
    return-void

    .line 1162
    :cond_1
    if-nez p1, :cond_2

    .line 1163
    const-string/jumbo v0, "null result"

    const-string/jumbo v1, ""

    invoke-direct {p0, v0, v1, v2}, Lcom/alibaba/dingtalk/cspace/activity/SpaceStatisticActivity$1;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1164
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceStatisticActivity$1;->d:Lcom/alibaba/dingtalk/cspace/activity/SpaceStatisticActivity;

    invoke-static {v0}, Lcom/alibaba/dingtalk/cspace/activity/SpaceStatisticActivity;->a(Lcom/alibaba/dingtalk/cspace/activity/SpaceStatisticActivity;)Lcom/alibaba/dingtalk/cspace/fragment/CSpaceStatisticFragment;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceStatisticFragment;->b(Z)V

    goto :goto_0

    .line 1168
    :cond_2
    iget-object v0, p1, Lghe;->a:Ljava/lang/Boolean;

    .line 2022
    invoke-static {v0, v5}, Lcoc;->a(Ljava/lang/Boolean;Z)Z

    move-result v0

    .line 1168
    if-eqz v0, :cond_6

    .line 1169
    iget-object v0, p1, Lghe;->d:Ljava/util/List;

    if-eqz v0, :cond_4

    .line 1170
    iget-object v0, p1, Lghe;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lghd;

    .line 1171
    iget-object v2, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceStatisticActivity$1;->d:Lcom/alibaba/dingtalk/cspace/activity/SpaceStatisticActivity;

    invoke-static {v2, v0}, Lcom/alibaba/dingtalk/cspace/activity/SpaceStatisticActivity;->a(Lcom/alibaba/dingtalk/cspace/activity/SpaceStatisticActivity;Lghd;)Lcom/alibaba/dingtalk/cspace/model/SpaceStatisticUserModel;

    move-result-object v2

    .line 1172
    iget-object v3, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceStatisticActivity$1;->d:Lcom/alibaba/dingtalk/cspace/activity/SpaceStatisticActivity;

    invoke-static {v3}, Lcom/alibaba/dingtalk/cspace/activity/SpaceStatisticActivity;->b(Lcom/alibaba/dingtalk/cspace/activity/SpaceStatisticActivity;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1173
    iget-object v3, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceStatisticActivity$1;->d:Lcom/alibaba/dingtalk/cspace/activity/SpaceStatisticActivity;

    invoke-static {v3}, Lcom/alibaba/dingtalk/cspace/activity/SpaceStatisticActivity;->a(Lcom/alibaba/dingtalk/cspace/activity/SpaceStatisticActivity;)Lcom/alibaba/dingtalk/cspace/fragment/CSpaceStatisticFragment;

    move-result-object v3

    iget-object v4, v0, Lghd;->a:Ljava/lang/Long;

    invoke-virtual {v3, v4, v2}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceStatisticFragment;->a(Ljava/lang/Long;Lcom/alibaba/dingtalk/cspace/model/SpaceStatisticUserModel;)V

    .line 1174
    iget-object v3, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceStatisticActivity$1;->d:Lcom/alibaba/dingtalk/cspace/activity/SpaceStatisticActivity;

    invoke-static {v3}, Lcom/alibaba/dingtalk/cspace/activity/SpaceStatisticActivity;->c(Lcom/alibaba/dingtalk/cspace/activity/SpaceStatisticActivity;)Ljava/util/ArrayList;

    move-result-object v3

    iget-object v4, v0, Lghd;->a:Ljava/lang/Long;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1175
    iget-object v3, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceStatisticActivity$1;->d:Lcom/alibaba/dingtalk/cspace/activity/SpaceStatisticActivity;

    invoke-static {v3}, Lcom/alibaba/dingtalk/cspace/activity/SpaceStatisticActivity;->d(Lcom/alibaba/dingtalk/cspace/activity/SpaceStatisticActivity;)Ljava/util/Map;

    move-result-object v3

    iget-object v0, v0, Lghd;->a:Ljava/lang/Long;

    invoke-interface {v3, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 1177
    :cond_3
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceStatisticActivity$1;->d:Lcom/alibaba/dingtalk/cspace/activity/SpaceStatisticActivity;

    invoke-static {v0}, Lcom/alibaba/dingtalk/cspace/activity/SpaceStatisticActivity;->f(Lcom/alibaba/dingtalk/cspace/activity/SpaceStatisticActivity;)Lcom/alibaba/android/dingtalkbase/widgets/indicator/PagerSlidingTabStrip;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceStatisticActivity$1;->d:Lcom/alibaba/dingtalk/cspace/activity/SpaceStatisticActivity;

    invoke-static {v1}, Lcom/alibaba/dingtalk/cspace/activity/SpaceStatisticActivity;->e(Lcom/alibaba/dingtalk/cspace/activity/SpaceStatisticActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v5, v1}, Lcom/alibaba/android/dingtalkbase/widgets/indicator/PagerSlidingTabStrip;->a(ILjava/lang/String;)V

    .line 1179
    :cond_4
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceStatisticActivity$1;->d:Lcom/alibaba/dingtalk/cspace/activity/SpaceStatisticActivity;

    invoke-static {v0}, Lcom/alibaba/dingtalk/cspace/activity/SpaceStatisticActivity;->g(Lcom/alibaba/dingtalk/cspace/activity/SpaceStatisticActivity;)V

    .line 1191
    :cond_5
    :goto_2
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceStatisticActivity$1;->d:Lcom/alibaba/dingtalk/cspace/activity/SpaceStatisticActivity;

    invoke-static {v0}, Lcom/alibaba/dingtalk/cspace/activity/SpaceStatisticActivity;->a(Lcom/alibaba/dingtalk/cspace/activity/SpaceStatisticActivity;)Lcom/alibaba/dingtalk/cspace/fragment/CSpaceStatisticFragment;

    move-result-object v0

    iget-object v1, p1, Lghe;->a:Ljava/lang/Boolean;

    .line 3022
    invoke-static {v1, v5}, Lcoc;->a(Ljava/lang/Boolean;Z)Z

    move-result v1

    .line 1191
    invoke-virtual {v0, v1}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceStatisticFragment;->b(Z)V

    goto/16 :goto_0

    .line 1182
    :cond_6
    iget-object v0, p1, Lghe;->b:Ljava/lang/Integer;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p1, Lghe;->c:Ljava/lang/String;

    invoke-direct {p0, v0, v1, v2}, Lcom/alibaba/dingtalk/cspace/activity/SpaceStatisticActivity$1;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1184
    iget-object v0, p1, Lghe;->c:Ljava/lang/String;

    invoke-static {v0}, Lcms;->a(Ljava/lang/String;)V

    .line 1185
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceStatisticActivity$1;->d:Lcom/alibaba/dingtalk/cspace/activity/SpaceStatisticActivity;

    invoke-static {v0}, Lcom/alibaba/dingtalk/cspace/activity/SpaceStatisticActivity;->h(Lcom/alibaba/dingtalk/cspace/activity/SpaceStatisticActivity;)Lcom/alibaba/dingtalk/cspace/fragment/CSpaceStatisticFragment;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 1186
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceStatisticActivity$1;->d:Lcom/alibaba/dingtalk/cspace/activity/SpaceStatisticActivity;

    invoke-static {v0}, Lcom/alibaba/dingtalk/cspace/activity/SpaceStatisticActivity;->h(Lcom/alibaba/dingtalk/cspace/activity/SpaceStatisticActivity;)Lcom/alibaba/dingtalk/cspace/fragment/CSpaceStatisticFragment;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceStatisticFragment;->b(Z)V

    goto :goto_2
.end method
