.class final Lcmt$2;
.super Ljava/lang/Object;
.source "CloudSettingMemCache.java"

# interfaces
.implements Lcom/alibaba/wukong/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcmt;->a([Ljava/lang/String;[Ljava/lang/String;)V
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
        "Lcom/alibaba/wukong/settings/CloudSetting;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/util/HashMap;

.field final synthetic b:Ljava/util/ArrayList;

.field final synthetic c:Ljava/util/ArrayList;

.field final synthetic d:Lcmt;


# direct methods
.method constructor <init>(Lcmt;Ljava/util/HashMap;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 0
    .param p1, "this$0"    # Lcmt;

    .prologue
    .line 141
    iput-object p1, p0, Lcmt$2;->d:Lcmt;

    iput-object p2, p0, Lcmt$2;->a:Ljava/util/HashMap;

    iput-object p3, p0, Lcmt$2;->b:Ljava/util/ArrayList;

    iput-object p4, p0, Lcmt$2;->c:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "s2"    # Ljava/lang/String;

    .prologue
    .line 191
    return-void
.end method

.method public final bridge synthetic onProgress(Ljava/lang/Object;I)V
    .locals 0

    .prologue
    .line 141
    return-void
.end method

.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .locals 14

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v13

    invoke-static {v13}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v13, 0x3

    const/4 v12, 0x0

    const/4 v7, 0x0

    const/4 v5, 0x1

    const/4 v11, 0x2

    .line 141
    check-cast p1, Ljava/util/List;

    .line 1144
    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 1145
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_0
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/alibaba/wukong/settings/CloudSetting;

    .line 1146
    new-array v0, v13, [Ljava/lang/String;

    invoke-interface {v6}, Lcom/alibaba/wukong/settings/CloudSetting;->getModuleName()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v7

    const-string/jumbo v1, ":"

    aput-object v1, v0, v5

    invoke-interface {v6}, Lcom/alibaba/wukong/settings/CloudSetting;->getKey()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v11

    invoke-static {v0}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1148
    iget-object v0, p0, Lcmt$2;->d:Lcmt;

    invoke-static {v0}, Lcmt;->a(Lcmt;)Ljava/util/HashMap;

    move-result-object v2

    monitor-enter v2

    .line 1149
    :try_start_0
    iget-object v0, p0, Lcmt$2;->d:Lcmt;

    invoke-static {v0}, Lcmt;->b(Lcmt;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 1150
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1151
    if-eqz v0, :cond_0

    iget-object v2, p0, Lcmt$2;->a:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1154
    iget-object v2, p0, Lcmt$2;->d:Lcmt;

    invoke-static {v2}, Lcmt;->a(Lcmt;)Ljava/util/HashMap;

    move-result-object v2

    monitor-enter v2

    .line 1155
    :try_start_1
    iget-object v3, p0, Lcmt$2;->d:Lcmt;

    invoke-static {v3}, Lcmt;->a(Lcmt;)Ljava/util/HashMap;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 1156
    iget-object v4, p0, Lcmt$2;->d:Lcmt;

    invoke-static {v4, v0}, Lcmt;->a(Lcmt;Ljava/lang/Integer;)I

    move-result v9

    .line 1157
    iget-object v0, p0, Lcmt$2;->d:Lcmt;

    invoke-static {v0}, Lcmt;->a(Lcmt;)Ljava/util/HashMap;

    move-result-object v0

    invoke-interface {v6}, Lcom/alibaba/wukong/settings/CloudSetting;->getValue()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1158
    iget-object v0, p0, Lcmt$2;->d:Lcmt;

    invoke-interface {v6}, Lcom/alibaba/wukong/settings/CloudSetting;->getValue()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v1, v4}, Lcmt;->a(Lcmt;Ljava/lang/String;Ljava/lang/String;)V

    .line 1159
    iget-object v0, p0, Lcmt$2;->d:Lcmt;

    invoke-static {v0}, Lcmt;->b(Lcmt;)Ljava/util/HashMap;

    move-result-object v0

    iget-object v4, p0, Lcmt$2;->d:Lcmt;

    const/4 v10, 0x2

    invoke-static {v4, v10}, Lcmt;->a(Lcmt;I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1160
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1161
    iget-object v0, p0, Lcmt$2;->d:Lcmt;

    invoke-interface {v6}, Lcom/alibaba/wukong/settings/CloudSetting;->getModuleName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v6}, Lcom/alibaba/wukong/settings/CloudSetting;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v6}, Lcom/alibaba/wukong/settings/CloudSetting;->getValue()Ljava/lang/String;

    move-result-object v4

    invoke-static/range {v0 .. v5}, Lcmt;->a(Lcmt;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 1162
    iget-object v0, p0, Lcmt$2;->d:Lcmt;

    invoke-interface {v6}, Lcom/alibaba/wukong/settings/CloudSetting;->getModuleName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v6}, Lcom/alibaba/wukong/settings/CloudSetting;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2, v9, v11}, Lcmt;->a(Lcmt;Ljava/lang/String;Ljava/lang/String;II)V

    goto/16 :goto_0

    .line 1150
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 1160
    :catchall_1
    move-exception v0

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0

    .line 1166
    :cond_1
    iget-object v0, p0, Lcmt$2;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v8

    move v6, v7

    .line 1167
    :goto_1
    if-ge v6, v8, :cond_3

    .line 1168
    new-array v1, v13, [Ljava/lang/String;

    iget-object v0, p0, Lcmt$2;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    aput-object v0, v1, v7

    const-string/jumbo v0, ":"

    aput-object v0, v1, v5

    iget-object v0, p0, Lcmt$2;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    aput-object v0, v1, v11

    invoke-static {v1}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1170
    iget-object v0, p0, Lcmt$2;->d:Lcmt;

    invoke-static {v0}, Lcmt;->a(Lcmt;)Ljava/util/HashMap;

    move-result-object v2

    monitor-enter v2

    .line 1171
    :try_start_4
    iget-object v0, p0, Lcmt$2;->d:Lcmt;

    invoke-static {v0}, Lcmt;->b(Lcmt;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 1172
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 1173
    if-eqz v0, :cond_2

    iget-object v2, p0, Lcmt$2;->a:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1176
    iget-object v2, p0, Lcmt$2;->d:Lcmt;

    invoke-static {v2}, Lcmt;->a(Lcmt;)Ljava/util/HashMap;

    move-result-object v2

    monitor-enter v2

    .line 1177
    :try_start_5
    iget-object v3, p0, Lcmt$2;->d:Lcmt;

    invoke-static {v3}, Lcmt;->a(Lcmt;)Ljava/util/HashMap;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 1178
    iget-object v4, p0, Lcmt$2;->d:Lcmt;

    invoke-static {v4, v0}, Lcmt;->a(Lcmt;Ljava/lang/Integer;)I

    move-result v9

    .line 1179
    iget-object v0, p0, Lcmt$2;->d:Lcmt;

    invoke-static {v0}, Lcmt;->a(Lcmt;)Ljava/util/HashMap;

    move-result-object v0

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1180
    iget-object v0, p0, Lcmt$2;->d:Lcmt;

    const/4 v4, 0x0

    invoke-static {v0, v1, v4}, Lcmt;->a(Lcmt;Ljava/lang/String;Ljava/lang/String;)V

    .line 1181
    iget-object v0, p0, Lcmt$2;->d:Lcmt;

    invoke-static {v0}, Lcmt;->b(Lcmt;)Ljava/util/HashMap;

    move-result-object v0

    iget-object v4, p0, Lcmt$2;->d:Lcmt;

    const/4 v10, 0x2

    invoke-static {v4, v10}, Lcmt;->a(Lcmt;I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1182
    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 1183
    iget-object v0, p0, Lcmt$2;->d:Lcmt;

    iget-object v1, p0, Lcmt$2;->b:Ljava/util/ArrayList;

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v2, p0, Lcmt$2;->c:Ljava/util/ArrayList;

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    move-object v4, v12

    invoke-static/range {v0 .. v5}, Lcmt;->a(Lcmt;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 1184
    iget-object v2, p0, Lcmt$2;->d:Lcmt;

    iget-object v0, p0, Lcmt$2;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lcmt$2;->c:Ljava/util/ArrayList;

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v2, v0, v1, v9, v11}, Lcmt;->a(Lcmt;Ljava/lang/String;Ljava/lang/String;II)V

    .line 1167
    :cond_2
    add-int/lit8 v0, v6, 0x1

    move v6, v0

    goto/16 :goto_1

    .line 1172
    :catchall_2
    move-exception v0

    :try_start_6
    monitor-exit v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    throw v0

    .line 1182
    :catchall_3
    move-exception v0

    :try_start_7
    monitor-exit v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    throw v0

    .line 141
    :cond_3
    return-void
.end method
