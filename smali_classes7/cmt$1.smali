.class public final Lcmt$1;
.super Ljava/lang/Object;
.source "CloudSettingMemCache.java"

# interfaces
.implements Lifn;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcmt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcmt;


# direct methods
.method public constructor <init>(Lcmt;)V
    .locals 0
    .param p1, "this$0"    # Lcmt;

    .prologue
    .line 93
    iput-object p1, p0, Lcmt$1;->a:Lcmt;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/List;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/wukong/settings/CloudSetting;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .local p1, "cloudSettings":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/settings/CloudSetting;>;"
    const/4 v5, 0x2

    .line 96
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/alibaba/wukong/settings/CloudSetting;

    .line 99
    .local v6, "cloudSetting":Lcom/alibaba/wukong/settings/CloudSetting;
    iget-object v0, p0, Lcmt$1;->a:Lcmt;

    invoke-static {v0}, Lcmt;->a(Lcmt;)Ljava/util/HashMap;

    move-result-object v1

    monitor-enter v1

    .line 100
    const/4 v0, 0x3

    :try_start_0
    new-array v0, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    invoke-interface {v6}, Lcom/alibaba/wukong/settings/CloudSetting;->getModuleName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v2

    const/4 v2, 0x1

    const-string/jumbo v4, ":"

    aput-object v4, v0, v2

    const/4 v2, 0x2

    invoke-interface {v6}, Lcom/alibaba/wukong/settings/CloudSetting;->getKey()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v2

    invoke-static {v0}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 101
    .local v7, "mixKey":Ljava/lang/String;
    iget-object v0, p0, Lcmt$1;->a:Lcmt;

    invoke-static {v0}, Lcmt;->a(Lcmt;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 102
    .local v3, "old":Ljava/lang/String;
    iget-object v2, p0, Lcmt$1;->a:Lcmt;

    iget-object v0, p0, Lcmt$1;->a:Lcmt;

    invoke-static {v0}, Lcmt;->b(Lcmt;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-static {v2, v0}, Lcmt;->a(Lcmt;Ljava/lang/Integer;)I

    move-result v8

    .line 103
    .local v8, "oldStatus":I
    iget-object v0, p0, Lcmt$1;->a:Lcmt;

    invoke-static {v0}, Lcmt;->a(Lcmt;)Ljava/util/HashMap;

    move-result-object v0

    invoke-interface {v6}, Lcom/alibaba/wukong/settings/CloudSetting;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v7, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    iget-object v0, p0, Lcmt$1;->a:Lcmt;

    invoke-interface {v6}, Lcom/alibaba/wukong/settings/CloudSetting;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v7, v2}, Lcmt;->a(Lcmt;Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    iget-object v0, p0, Lcmt$1;->a:Lcmt;

    invoke-static {v0}, Lcmt;->b(Lcmt;)Ljava/util/HashMap;

    move-result-object v0

    iget-object v2, p0, Lcmt$1;->a:Lcmt;

    const/4 v4, 0x2

    invoke-static {v2, v4}, Lcmt;->a(Lcmt;I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v7, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 107
    iget-object v0, p0, Lcmt$1;->a:Lcmt;

    invoke-interface {v6}, Lcom/alibaba/wukong/settings/CloudSetting;->getModuleName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v6}, Lcom/alibaba/wukong/settings/CloudSetting;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v6}, Lcom/alibaba/wukong/settings/CloudSetting;->getValue()Ljava/lang/String;

    move-result-object v4

    invoke-static/range {v0 .. v5}, Lcmt;->a(Lcmt;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 108
    iget-object v0, p0, Lcmt$1;->a:Lcmt;

    invoke-interface {v6}, Lcom/alibaba/wukong/settings/CloudSetting;->getModuleName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v6}, Lcom/alibaba/wukong/settings/CloudSetting;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2, v8, v5}, Lcmt;->a(Lcmt;Ljava/lang/String;Ljava/lang/String;II)V

    goto/16 :goto_0

    .line 106
    .end local v3    # "old":Ljava/lang/String;
    .end local v7    # "mixKey":Ljava/lang/String;
    .end local v8    # "oldStatus":I
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 110
    .end local v6    # "cloudSetting":Lcom/alibaba/wukong/settings/CloudSetting;
    :cond_0
    return-void
.end method
