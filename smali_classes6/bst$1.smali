.class final Lbst$1;
.super Ljava/lang/Object;
.source "AlphaQrcodeBindPresenter.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbst;
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
        "Lbsa;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lbsy$b;

.field final synthetic b:Lbst;


# direct methods
.method constructor <init>(Lbst;Lbsy$b;)V
    .locals 0
    .param p1, "this$0"    # Lbst;

    .prologue
    .line 119
    iput-object p1, p0, Lbst$1;->b:Lbst;

    iput-object p2, p0, Lbst$1;->a:Lbsy$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    const/4 v2, 0x1

    .line 119
    check-cast p1, Lbsa;

    .line 1122
    iget-object v0, p0, Lbst$1;->b:Lbst;

    invoke-virtual {v0}, Lbst;->s()V

    .line 1123
    if-nez p1, :cond_1

    .line 1124
    const-string/jumbo v0, "AlphaQrcodeBindPresenter"

    const-string/jumbo v1, "bindAndActive resp model is null"

    invoke-static {v0, v1}, Lblu;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1125
    iget-object v0, p0, Lbst$1;->b:Lbst;

    sget v1, Lbrx$g;->dt_door_guard_bind_fail:I

    invoke-virtual {v0, v1}, Lbst;->a(I)Ljava/lang/String;

    move-result-object v0

    .line 1126
    iget-object v1, p0, Lbst$1;->a:Lbsy$b;

    if-eqz v1, :cond_0

    .line 1127
    iget-object v1, p0, Lbst$1;->a:Lbsy$b;

    const/4 v2, 0x0

    invoke-interface {v1, v2, v0}, Lbsy$b;->a(ZLjava/lang/String;)V

    .line 1129
    :cond_0
    :goto_0
    return-void

    .line 1131
    :cond_1
    iget-object v0, p0, Lbst$1;->b:Lbst;

    iget-object v0, v0, Lbst;->b:Lbsw$b;

    if-eqz v0, :cond_2

    .line 1132
    iget-object v0, p0, Lbst$1;->b:Lbst;

    iget-object v0, v0, Lbst;->b:Lbsw$b;

    invoke-interface {v0, v2}, Lbsw$b;->d(Z)V

    .line 1133
    iget-object v0, p0, Lbst$1;->b:Lbst;

    iget-object v0, v0, Lbst;->b:Lbsw$b;

    iget-object v1, p1, Lbsa;->c:Ljava/lang/String;

    invoke-interface {v0, v1}, Lbsw$b;->l(Ljava/lang/String;)V

    .line 1136
    :cond_2
    iget-object v0, p0, Lbst$1;->a:Lbsy$b;

    if-eqz v0, :cond_0

    .line 1137
    iget-object v0, p0, Lbst$1;->a:Lbsy$b;

    const/4 v1, 0x0

    invoke-interface {v0, v2, v1}, Lbsy$b;->a(ZLjava/lang/String;)V

    goto :goto_0
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    const/4 v5, 0x0

    .line 148
    const-string/jumbo v1, "AlphaQrcodeBindPresenter"

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/String;

    const-string/jumbo v3, "bind exp code = "

    aput-object v3, v2, v5

    const/4 v3, 0x1

    aput-object p1, v2, v3

    const/4 v3, 0x2

    const-string/jumbo v4, ", reason = "

    aput-object v4, v2, v3

    const/4 v3, 0x3

    aput-object p2, v2, v3

    invoke-static {v2}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lblu;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    iget-object v1, p0, Lbst$1;->b:Lbst;

    invoke-virtual {v1}, Lbst;->s()V

    .line 150
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 151
    iget-object v1, p0, Lbst$1;->b:Lbst;

    sget v2, Lbrx$g;->dt_door_guard_bind_fail:I

    invoke-virtual {v1, v2}, Lbst;->a(I)Ljava/lang/String;

    move-result-object p2

    .line 153
    :cond_0
    iget-object v1, p0, Lbst$1;->a:Lbsy$b;

    if-eqz v1, :cond_1

    .line 154
    iget-object v1, p0, Lbst$1;->a:Lbsy$b;

    invoke-interface {v1, v5, p2}, Lbsy$b;->a(ZLjava/lang/String;)V

    .line 156
    :cond_1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 157
    .local v0, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v1, "code"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 158
    const-string/jumbo v1, "reason"

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 159
    const-string/jumbo v1, "action"

    const-string/jumbo v2, "bindAndSetting"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 160
    sget-object v1, Lcom/alibaba/android/dingtalk/alpha/common/VipAlarm$AlarmType;->ALARM_BIND_FAIL:Lcom/alibaba/android/dingtalk/alpha/common/VipAlarm$AlarmType;

    invoke-static {v1, v0}, Lcom/alibaba/android/dingtalk/alpha/common/VipAlarm;->a(Lcom/alibaba/android/dingtalk/alpha/common/VipAlarm$AlarmType;Ljava/util/Map;)V

    .line 161
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 144
    return-void
.end method
