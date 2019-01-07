.class final Lbnc$1;
.super Lcmi;
.source "ApDeviceService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbnc;->a(JLcma;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcmi",
        "<",
        "Lbmy;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcma;

.field final synthetic b:J

.field final synthetic c:Lbnc;


# direct methods
.method constructor <init>(Lbnc;Lcma;J)V
    .locals 1
    .param p1, "this$0"    # Lbnc;

    .prologue
    .line 74
    iput-object p1, p0, Lbnc$1;->c:Lbnc;

    iput-object p2, p0, Lbnc$1;->a:Lcma;

    iput-wide p3, p0, Lbnc$1;->b:J

    invoke-direct {p0}, Lcmi;-><init>()V

    return-void
.end method


# virtual methods
.method public final getRequestBuilder()Lcom/laiwang/protocol/core/Request$Builder;
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 131
    invoke-super {p0}, Lcmi;->getRequestBuilder()Lcom/laiwang/protocol/core/Request$Builder;

    move-result-object v0

    .line 132
    .local v0, "builder":Lcom/laiwang/protocol/core/Request$Builder;
    if-eqz v0, :cond_0

    iget-wide v2, p0, Lbnc$1;->b:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-lez v1, :cond_0

    .line 133
    iget-wide v2, p0, Lbnc$1;->b:J

    invoke-virtual {v0, v2, v3}, Lcom/laiwang/protocol/core/Request$Builder;->timeout(J)Lcom/laiwang/protocol/core/Request$Builder;

    .line 135
    :cond_0
    return-object v0
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 4
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;
    .param p3, "throwable"    # Ljava/lang/Throwable;

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 123
    const-string/jumbo v0, "ApDeviceService"

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string/jumbo v3, "getKeyAndSsids code = "

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p1, v1, v2

    const/4 v2, 0x2

    const-string/jumbo v3, "reason = "

    aput-object v3, v1, v2

    const/4 v2, 0x3

    aput-object p2, v1, v2

    invoke-static {v1}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lblu;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    iget-object v0, p0, Lbnc$1;->a:Lcma;

    if-eqz v0, :cond_0

    .line 125
    iget-object v0, p0, Lbnc$1;->a:Lcma;

    invoke-interface {v0, p1, p2}, Lcma;->onException(Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    :cond_0
    return-void
.end method

.method public final synthetic onLoadSuccess(Ljava/lang/Object;)V
    .locals 11

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v10

    invoke-static {v10}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    const/4 v10, 0x1

    const/4 v2, 0x0

    .line 74
    check-cast p1, Lbmy;

    .line 1077
    if-nez p1, :cond_2

    .line 1078
    const-string/jumbo v0, "ApDeviceService"

    new-array v1, v10, [Ljava/lang/String;

    const-string/jumbo v3, "userKeyAndSsidsModel is null"

    aput-object v3, v1, v2

    invoke-static {v1}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lblu;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1080
    invoke-static {}, Lbnh;->a()Lbnh;

    move-result-object v1

    .line 1131
    iget-object v0, v1, Lbnh;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 1132
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1133
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1134
    invoke-virtual {v1, v0}, Lbnh;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 1136
    :cond_0
    iget-object v0, v1, Lbnh;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 1081
    invoke-static {}, Lbnh;->a()Lbnh;

    move-result-object v0

    invoke-virtual {v0}, Lbnh;->b()V

    .line 1083
    iget-object v0, p0, Lbnc$1;->a:Lcma;

    if-eqz v0, :cond_1

    .line 1084
    iget-object v0, p0, Lbnc$1;->a:Lcma;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, v1}, Lcma;->onDataReceived(Ljava/lang/Object;)V

    .line 1086
    :cond_1
    :goto_1
    return-void

    .line 1089
    :cond_2
    iget-object v0, p1, Lbmy;->b:Ljava/util/List;

    if-eqz v0, :cond_a

    iget-object v0, p1, Lbmy;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_a

    .line 1090
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 1091
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 1092
    iget-object v0, p1, Lbmy;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_3
    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbmr;

    .line 1093
    if-eqz v3, :cond_3

    .line 1096
    iget-object v6, v0, Lbmr;->b:Ljava/util/List;

    .line 1097
    if-eqz v6, :cond_5

    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_5

    .line 1098
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_3
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1099
    const-string/jumbo v8, "corpId = "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v0, Lbmr;->a:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, ", ssid = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v8, "\n"

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 1101
    :cond_4
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1102
    invoke-interface {v1, v6}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1103
    iget-object v6, v0, Lbmr;->a:Ljava/lang/String;

    invoke-interface {v3, v6, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1105
    :cond_5
    iget-object v6, v0, Lbmr;->d:Ljava/lang/String;

    .line 1106
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_6

    move v1, v2

    .line 1107
    :goto_4
    const-string/jumbo v7, "psk length = "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v7, "\n"

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1108
    invoke-static {}, Lbnh;->a()Lbnh;

    move-result-object v1

    iget-object v0, v0, Lbmr;->a:Ljava/lang/String;

    invoke-virtual {v1, v0, v6}, Lbnh;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 1106
    :cond_6
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v1

    goto :goto_4

    .line 1110
    :cond_7
    const-string/jumbo v0, "ApDeviceService"

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lblu;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1111
    invoke-static {}, Lbnh;->a()Lbnh;

    move-result-object v0

    .line 1188
    if-eqz v3, :cond_8

    invoke-interface {v3}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 1189
    :cond_8
    const-string/jumbo v0, "AlphaStorage"

    const-string/jumbo v1, "corpSsidsMap is null when saveSsids"

    invoke-static {v0, v1}, Lblu;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1116
    :goto_5
    iget-object v0, p0, Lbnc$1;->a:Lcma;

    if-eqz v0, :cond_1

    .line 1117
    iget-object v0, p0, Lbnc$1;->a:Lcma;

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, v1}, Lcma;->onDataReceived(Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 1192
    :cond_9
    iget-object v1, v0, Lbnh;->a:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 1193
    iget-object v1, v0, Lbnh;->a:Ljava/util/Map;

    invoke-interface {v1, v3}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 1194
    invoke-virtual {v0}, Lbnh;->d()V

    goto :goto_5

    .line 1113
    :cond_a
    const-string/jumbo v0, "ApDeviceService"

    const-string/jumbo v1, "ssid list is null, delete all local ssids"

    invoke-static {v0, v1}, Lblu;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1114
    invoke-static {}, Lbnh;->a()Lbnh;

    move-result-object v0

    invoke-virtual {v0}, Lbnh;->b()V

    goto :goto_5
.end method
