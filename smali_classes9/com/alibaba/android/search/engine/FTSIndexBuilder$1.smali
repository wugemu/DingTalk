.class final Lcom/alibaba/android/search/engine/FTSIndexBuilder$1;
.super Ljava/lang/Object;
.source "FTSIndexBuilder.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/search/engine/FTSIndexBuilder;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 9

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v8, 0x1

    .line 104
    invoke-static {}, Lcom/alibaba/android/search/engine/FTSIndexBuilder;->p()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 153
    :goto_0
    return-void

    .line 109
    :cond_0
    invoke-static {}, Lcom/alibaba/wukong/auth/AuthService;->getInstance()Lcom/alibaba/wukong/auth/AuthService;

    move-result-object v4

    invoke-virtual {v4}, Lcom/alibaba/wukong/auth/AuthService;->latestAuthInfo()Lcom/alibaba/wukong/auth/AuthInfo;

    move-result-object v0

    .line 110
    .local v0, "authInfo":Lcom/alibaba/wukong/auth/AuthInfo;
    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/alibaba/wukong/auth/AuthInfo;->getOpenId()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-eqz v4, :cond_1

    .line 111
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v0}, Lcom/alibaba/wukong/auth/AuthInfo;->getOpenId()J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ".db"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/alibaba/android/search/engine/FTSIndexBuilder;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 112
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v0}, Lcom/alibaba/wukong/auth/AuthInfo;->getOpenId()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "@"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {v0}, Lcom/alibaba/wukong/auth/AuthInfo;->getDomain()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lieb;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ".db"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/alibaba/android/search/engine/FTSIndexBuilder;->b(Ljava/lang/String;)Ljava/lang/String;

    .line 114
    :cond_1
    invoke-static {}, Leui;->a()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/alibaba/android/search/engine/FTSIndexBuilder;->c(Ljava/lang/String;)Ljava/lang/String;

    .line 117
    invoke-static {}, Lcom/alibaba/android/searchengine/utils/SearchEngineStatisticsUtils;->a()V

    .line 120
    invoke-static {}, Lcom/alibaba/android/search/engine/FTSIndexBuilder;->q()V

    .line 123
    invoke-static {}, Lcom/alibaba/android/search/engine/FTSIndexBuilder;->r()V

    .line 126
    invoke-static {}, Lcom/alibaba/android/search/engine/FTSIndexBuilder;->s()V

    .line 127
    invoke-static {}, Lcom/alibaba/android/search/engine/FTSIndexBuilder;->t()V

    .line 130
    invoke-static {}, Lcom/alibaba/android/search/engine/FTSIndexBuilder;->u()V

    .line 133
    invoke-static {}, Lcom/alibaba/android/search/engine/FTSIndexBuilder;->v()V

    .line 136
    invoke-static {}, Lcom/alibaba/android/search/engine/FTSIndexBuilder;->l()Ljava/lang/String;

    move-result-object v1

    .line 138
    .local v1, "bizType":Ljava/lang/String;
    sget v3, Lcom/alibaba/android/search/engine/FTSIndexBuilder;->a:I

    .line 139
    .local v3, "syncMode":I
    invoke-static {}, Lcom/alibaba/android/search/impls/SearchInterfaceImpl;->a()Lcom/alibaba/android/dingtalk/search/base/SearchInterface;

    move-result-object v4

    invoke-virtual {v4}, Lcom/alibaba/android/dingtalk/search/base/SearchInterface;->w()Z

    move-result v4

    if-eqz v4, :cond_2

    sget-object v4, Lcom/alibaba/android/search/engine/FTSIndexBuilder$FullSyncMode;->ForceSync:Lcom/alibaba/android/search/engine/FTSIndexBuilder$FullSyncMode;

    invoke-virtual {v4}, Lcom/alibaba/android/search/engine/FTSIndexBuilder$FullSyncMode;->getValue()I

    move-result v4

    if-eq v3, v4, :cond_2

    .line 141
    sget v3, Lcom/alibaba/android/search/engine/FTSIndexBuilder;->b:I

    .line 144
    :cond_2
    invoke-static {}, Leue;->a()Leue;

    move-result-object v4

    invoke-static {}, Lcom/alibaba/android/search/engine/FTSIndexBuilder;->w()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5, v1, v3}, Leue;->a(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v2

    .line 145
    .local v2, "result":I
    const-string/jumbo v4, "fullSyncIndex returns %d,bizType=%s"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    aput-object v1, v5, v8

    invoke-static {v4, v5}, Lcom/alibaba/android/searchengine/utils/SearchEngineStatisticsUtils;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 148
    invoke-static {}, Lens;->a()V

    .line 150
    invoke-static {v8}, Lcom/alibaba/android/search/engine/FTSIndexBuilder;->a(Z)Z

    .line 152
    invoke-static {}, Lcom/alibaba/android/search/engine/FTSIndexBuilder;->x()V

    goto/16 :goto_0
.end method
