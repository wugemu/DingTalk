.class final Lcom/alibaba/android/teleconf/service/ListenPhoneService$2$1;
.super Ljava/lang/Object;
.source "ListenPhoneService.java"

# interfaces
.implements Leyo$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/teleconf/service/ListenPhoneService$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Leyo$d",
        "<",
        "Lcom/alibaba/android/teleconf/sdk/idl/model/UserInfoCard;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/teleconf/service/ListenPhoneService$2;


# direct methods
.method constructor <init>(Lcom/alibaba/android/teleconf/service/ListenPhoneService$2;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/android/teleconf/service/ListenPhoneService$2;

    .prologue
    .line 280
    iput-object p1, p0, Lcom/alibaba/android/teleconf/service/ListenPhoneService$2$1;->a:Lcom/alibaba/android/teleconf/service/ListenPhoneService$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)V
    .locals 7

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    const/4 v3, 0x0

    .line 280
    check-cast p1, Lcom/alibaba/android/teleconf/sdk/idl/model/UserInfoCard;

    .line 1283
    if-eqz p1, :cond_0

    iget-object v0, p1, Lcom/alibaba/android/teleconf/sdk/idl/model/UserInfoCard;->uid:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    cmp-long v0, v0, v4

    if-gtz v0, :cond_1

    .line 1284
    :cond_0
    const-string/jumbo v0, "tele_conf"

    invoke-static {}, Lcom/alibaba/android/teleconf/service/ListenPhoneService;->a()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "Invalid user card"

    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1285
    :goto_0
    return-void

    .line 1287
    :cond_1
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v0

    const-string/jumbo v1, "tele_syscall_namecard_show_click"

    invoke-interface {v0, v3, v1, v3}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 1288
    new-instance v1, Leym;

    invoke-direct {v1}, Leym;-><init>()V

    .line 1289
    invoke-static {}, Lewl;->a()Lewl;

    move-result-object v2

    iget-object v0, p0, Lcom/alibaba/android/teleconf/service/ListenPhoneService$2$1;->a:Lcom/alibaba/android/teleconf/service/ListenPhoneService$2;

    iget-object v0, v0, Lcom/alibaba/android/teleconf/service/ListenPhoneService$2;->b:Ljava/lang/String;

    .line 2105
    if-eqz p1, :cond_5

    .line 2106
    iput-object v0, v1, Leym;->e:Ljava/lang/String;

    .line 2107
    iput-object v3, v1, Leym;->f:Ljava/lang/String;

    .line 2108
    iget-object v0, p1, Lcom/alibaba/android/teleconf/sdk/idl/model/UserInfoCard;->uid:Ljava/lang/Long;

    .line 3044
    invoke-static {v0, v4, v5}, Lcoc;->a(Ljava/lang/Long;J)J

    move-result-wide v4

    .line 2108
    iput-wide v4, v1, Leym;->a:J

    .line 2109
    iget-object v0, p1, Lcom/alibaba/android/teleconf/sdk/idl/model/UserInfoCard;->nickName:Ljava/lang/String;

    iput-object v0, v1, Leym;->b:Ljava/lang/String;

    .line 2110
    iget-object v0, p1, Lcom/alibaba/android/teleconf/sdk/idl/model/UserInfoCard;->orgName:Ljava/lang/String;

    iput-object v0, v1, Leym;->d:Ljava/lang/String;

    .line 2111
    iget-object v0, p1, Lcom/alibaba/android/teleconf/sdk/idl/model/UserInfoCard;->title:Ljava/lang/String;

    iput-object v0, v1, Leym;->c:Ljava/lang/String;

    .line 2112
    iget-object v0, p1, Lcom/alibaba/android/teleconf/sdk/idl/model/UserInfoCard;->callWorkMobile:Ljava/lang/Boolean;

    .line 4022
    invoke-static {v0, v6}, Lcoc;->a(Ljava/lang/Boolean;Z)Z

    move-result v0

    .line 2112
    iput-boolean v0, v1, Leym;->i:Z

    .line 2114
    iget-object v0, p1, Lcom/alibaba/android/teleconf/sdk/idl/model/UserInfoCard;->isExtContact:Ljava/lang/Boolean;

    if-eqz v0, :cond_3

    iget-object v0, p1, Lcom/alibaba/android/teleconf/sdk/idl/model/UserInfoCard;->isExtContact:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2115
    const/4 v0, 0x1

    iput-boolean v0, v1, Leym;->g:Z

    .line 2116
    iget-object v0, p1, Lcom/alibaba/android/teleconf/sdk/idl/model/UserInfoCard;->labelList:Ljava/util/List;

    if-eqz v0, :cond_4

    iget-object v0, p1, Lcom/alibaba/android/teleconf/sdk/idl/model/UserInfoCard;->labelList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    .line 2117
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v1, Leym;->h:Ljava/util/List;

    .line 2118
    iget-object v0, p1, Lcom/alibaba/android/teleconf/sdk/idl/model/UserInfoCard;->labelList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcec;

    .line 2119
    if-eqz v0, :cond_2

    .line 2122
    invoke-static {v0}, Lcom/alibaba/android/dingtalk/userbase/model/LabelObject;->fromIDLModel(Lcec;)Lcom/alibaba/android/dingtalk/userbase/model/LabelObject;

    move-result-object v0

    .line 2123
    iget-object v4, v1, Leym;->h:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 2127
    :cond_3
    iput-boolean v6, v1, Leym;->g:Z

    .line 1289
    :cond_4
    :goto_2
    invoke-virtual {v2, v1}, Lewl;->a(Leym;)V

    goto/16 :goto_0

    .line 2130
    :cond_5
    const-wide/16 v4, -0x1

    iput-wide v4, v1, Leym;->a:J

    goto :goto_2
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 5
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;
    .param p3, "cause"    # Ljava/lang/Throwable;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 294
    const-string/jumbo v0, "tele_conf"

    invoke-static {}, Lcom/alibaba/android/teleconf/service/ListenPhoneService;->a()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "Get caller card error "

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p1, v2, v3

    const/4 v3, 0x2

    const-string/jumbo v4, ","

    aput-object v4, v2, v3

    const/4 v3, 0x3

    aput-object p2, v2, v3

    invoke-static {v2}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 295
    return-void
.end method
