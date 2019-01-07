.class final Lgon$8;
.super Lcmi;
.source "SpaceRPC.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lgon;->a(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcma;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcmi",
        "<",
        "Lghz;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcma;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Ljava/util/List;

.field final synthetic e:Z

.field final synthetic f:Ljava/lang/String;

.field final synthetic g:Lgik;

.field final synthetic h:Lgon;


# direct methods
.method constructor <init>(Lgon;Ljava/lang/String;Lcma;Ljava/lang/String;Ljava/util/List;ZLjava/lang/String;Lgik;)V
    .locals 0
    .param p1, "this$0"    # Lgon;

    .prologue
    .line 1119
    iput-object p1, p0, Lgon$8;->h:Lgon;

    iput-object p2, p0, Lgon$8;->a:Ljava/lang/String;

    iput-object p3, p0, Lgon$8;->b:Lcma;

    iput-object p4, p0, Lgon$8;->c:Ljava/lang/String;

    iput-object p5, p0, Lgon$8;->d:Ljava/util/List;

    iput-boolean p6, p0, Lgon$8;->e:Z

    iput-object p7, p0, Lgon$8;->f:Ljava/lang/String;

    iput-object p8, p0, Lgon$8;->g:Lgik;

    invoke-direct {p0}, Lcmi;-><init>()V

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 4
    .param p1, "errorCode"    # Ljava/lang/String;
    .param p2, "errorMsg"    # Ljava/lang/String;
    .param p3, "throwable"    # Ljava/lang/Throwable;

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 1182
    iget-object v1, p0, Lgon$8;->g:Lgik;

    if-nez v1, :cond_0

    .line 1183
    const-string/jumbo v1, "CSpace"

    const-string/jumbo v2, "SpaceRPC"

    const-string/jumbo v3, "transferDentry"

    invoke-static {v3, p1, p2, p3}, Lgot;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1196
    :goto_0
    return-void

    .line 1187
    :cond_0
    const/16 v1, 0xc

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string/jumbo v3, "transferDentry: transferType: "

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lgon$8;->g:Lgik;

    iget-object v3, v3, Lgik;->b:Ljava/lang/Integer;

    .line 1188
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string/jumbo v3, ", sourceSpaceId: "

    aput-object v3, v1, v2

    const/4 v2, 0x3

    iget-object v3, p0, Lgon$8;->g:Lgik;

    iget-object v3, v3, Lgik;->c:Ljava/lang/Long;

    .line 1189
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const-string/jumbo v3, ", sourceIds: "

    aput-object v3, v1, v2

    const/4 v2, 0x5

    iget-object v3, p0, Lgon$8;->g:Lgik;

    iget-object v3, v3, Lgik;->d:Ljava/util/List;

    .line 1190
    invoke-static {v3}, Lgpr;->c(Ljava/util/List;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string/jumbo v3, ", targetSpaceId: "

    aput-object v3, v1, v2

    const/4 v2, 0x7

    iget-object v3, p0, Lgon$8;->g:Lgik;

    iget-object v3, v3, Lgik;->e:Ljava/lang/Long;

    .line 1191
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0x8

    const-string/jumbo v3, ", targetFolderId: "

    aput-object v3, v1, v2

    const/16 v2, 0x9

    iget-object v3, p0, Lgon$8;->g:Lgik;

    iget-object v3, v3, Lgik;->f:Ljava/lang/String;

    aput-object v3, v1, v2

    const/16 v2, 0xa

    const-string/jumbo v3, ", targetFolderPath: "

    aput-object v3, v1, v2

    const/16 v2, 0xb

    iget-object v3, p0, Lgon$8;->g:Lgik;

    iget-object v3, v3, Lgik;->g:Ljava/lang/String;

    aput-object v3, v1, v2

    .line 1187
    invoke-static {v1}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1194
    .local v0, "method":Ljava/lang/String;
    const-string/jumbo v1, "CSpace"

    const-string/jumbo v2, "SpaceRPC"

    const/4 v3, 0x0

    .line 1195
    invoke-static {v0, p1, p2, v3}, Lgot;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    .line 1194
    invoke-static {v1, v2, v3}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public final onException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "errorCode"    # Ljava/lang/String;
    .param p2, "errorMsg"    # Ljava/lang/String;
    .param p3, "throwable"    # Ljava/lang/Throwable;

    .prologue
    .line 1175
    iget-object v0, p0, Lgon$8;->b:Lcma;

    if-eqz v0, :cond_0

    .line 1176
    iget-object v0, p0, Lgon$8;->b:Lcma;

    invoke-interface {v0, p1, p2}, Lcma;->onException(Ljava/lang/String;Ljava/lang/String;)V

    .line 1178
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lgon$8;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1179
    return-void
.end method

.method public final synthetic onLoadSuccess(Ljava/lang/Object;)V
    .locals 8

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    const-wide/16 v4, 0x0

    const/4 v3, 0x0

    .line 1119
    check-cast p1, Lghz;

    .line 2122
    sget-object v0, Lcom/alibaba/alimei/framework/perf/MonitorPriority;->High:Lcom/alibaba/alimei/framework/perf/MonitorPriority;

    const-string/jumbo v1, "CSpace.RPC"

    iget-object v2, p0, Lgon$8;->a:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lyn;->b(Lcom/alibaba/alimei/framework/perf/MonitorPriority;Ljava/lang/String;Ljava/lang/String;)V

    .line 2124
    if-nez p1, :cond_1

    .line 2125
    iget-object v0, p0, Lgon$8;->b:Lcma;

    if-eqz v0, :cond_0

    .line 2127
    iget-object v0, p0, Lgon$8;->b:Lcma;

    invoke-interface {v0, v3}, Lcma;->onDataReceived(Ljava/lang/Object;)V

    .line 2160
    :cond_0
    :goto_0
    return-void

    .line 2132
    :cond_1
    iget-object v0, p1, Lghz;->a:Ljava/lang/Long;

    .line 3044
    invoke-static {v0, v4, v5}, Lcoc;->a(Ljava/lang/Long;J)J

    move-result-wide v0

    .line 2132
    cmp-long v0, v0, v4

    if-eqz v0, :cond_4

    .line 2133
    iget-object v0, p0, Lgon$8;->b:Lcma;

    if-eqz v0, :cond_2

    .line 2134
    iget-object v0, p0, Lgon$8;->b:Lcma;

    iget-object v1, p1, Lghz;->a:Ljava/lang/Long;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p1, Lghz;->b:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcma;->onException(Ljava/lang/String;Ljava/lang/String;)V

    .line 2136
    :cond_2
    iget-object v0, p1, Lghz;->a:Ljava/lang/Long;

    if-eqz v0, :cond_3

    iget-object v0, p1, Lghz;->a:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    :goto_1
    iget-object v1, p1, Lghz;->b:Ljava/lang/String;

    invoke-direct {p0, v0, v1, v3}, Lgon$8;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_3
    const-string/jumbo v0, "(resultCode is null)"

    goto :goto_1

    .line 2141
    :cond_4
    iget-object v0, p1, Lghz;->c:Lghw;

    if-eqz v0, :cond_5

    iget-object v0, p1, Lghz;->c:Lghw;

    iget-object v0, v0, Lghw;->c:Lgil;

    if-nez v0, :cond_6

    .line 2142
    :cond_5
    iget-object v0, p0, Lgon$8;->b:Lcma;

    if-eqz v0, :cond_0

    .line 2143
    iget-object v0, p0, Lgon$8;->b:Lcma;

    invoke-interface {v0, v3}, Lcma;->onDataReceived(Ljava/lang/Object;)V

    goto :goto_0

    .line 2148
    :cond_6
    iget-object v0, p1, Lghz;->c:Lghw;

    iget-object v0, v0, Lghw;->c:Lgil;

    iget-object v0, v0, Lgil;->d:Ljava/util/List;

    if-eqz v0, :cond_7

    iget-object v0, p1, Lghz;->c:Lghw;

    iget-object v0, v0, Lghw;->c:Lgil;

    iget-object v0, v0, Lgil;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_9

    .line 2149
    :cond_7
    iget-object v0, p0, Lgon$8;->b:Lcma;

    if-eqz v0, :cond_0

    .line 2153
    iget-object v0, p1, Lghz;->c:Lghw;

    iget-object v0, v0, Lghw;->c:Lgil;

    iget-object v0, v0, Lgil;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 2154
    iget-object v0, p0, Lgon$8;->b:Lcma;

    const-string/jumbo v1, "6000000"

    const-string/jumbo v2, ""

    invoke-interface {v0, v1, v2}, Lcma;->onException(Ljava/lang/String;Ljava/lang/String;)V

    .line 2155
    iget-object v0, p1, Lghz;->a:Ljava/lang/Long;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "(result transferId is not null, this is a asycn transfer)"

    invoke-direct {p0, v0, v1, v3}, Lgon$8;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 2157
    :cond_8
    iget-object v0, p0, Lgon$8;->b:Lcma;

    invoke-interface {v0, v3}, Lcma;->onDataReceived(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 2163
    :cond_9
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 2165
    iget-object v0, p1, Lghz;->c:Lghw;

    iget-object v0, v0, Lghw;->c:Lgil;

    iget-object v0, v0, Lgil;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lghg;

    .line 2166
    iget-object v3, p0, Lgon$8;->c:Ljava/lang/String;

    invoke-static {v0, v3}, Lgoo;->a(Lghg;Ljava/lang/String;)Lcom/alibaba/alimei/cspace/model/DentryModel;

    move-result-object v0

    .line 2167
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 2170
    :cond_a
    invoke-static {}, Lfzu;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lgoj;->a(Ljava/lang/String;)Lgoj;

    move-result-object v6

    iget-object v1, p0, Lgon$8;->d:Ljava/util/List;

    iget-boolean v3, p0, Lgon$8;->e:Z

    iget-object v4, p0, Lgon$8;->f:Ljava/lang/String;

    iget-object v7, p0, Lgon$8;->b:Lcma;

    .line 3456
    if-eqz v1, :cond_0

    .line 3457
    iget-object v0, v6, Lgoj;->a:Lcom/alibaba/alimei/cspace/openapi/IDentryAPI;

    new-instance v5, Lgoj$12;

    invoke-direct {v5, v6, v7, v2}, Lgoj$12;-><init>(Lgoj;Lcma;Ljava/util/List;)V

    invoke-interface/range {v0 .. v5}, Lcom/alibaba/alimei/cspace/openapi/IDentryAPI;->transferRpcSuccess(Ljava/util/List;Ljava/util/List;ZLjava/lang/String;Lxv;)V

    goto/16 :goto_0
.end method
