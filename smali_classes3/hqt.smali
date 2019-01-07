.class public final Lhqt;
.super Ljava/lang/Object;
.source "OapiAPIImpl.java"

# interfaces
.implements Lhqs;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Long;Ljava/lang/String;Lcma;)V
    .locals 2
    .param p1, "msgId"    # Ljava/lang/Long;
    .param p2, "action"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Long;",
            "Ljava/lang/String;",
            "Lcma",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 16
    .local p3, "listener":Lcma;, "Lcma<Ljava/lang/String;>;"
    const-class v1, Lcom/alibaba/lightapp/runtime/idl/OAPIIService;

    invoke-static {v1}, Liyx;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/lightapp/runtime/idl/OAPIIService;

    .line 17
    .local v0, "service":Lcom/alibaba/lightapp/runtime/idl/OAPIIService;
    new-instance v1, Lhqt$1;

    invoke-direct {v1, p0, p3}, Lhqt$1;-><init>(Lhqt;Lcma;)V

    invoke-interface {v0, p1, p2, v1}, Lcom/alibaba/lightapp/runtime/idl/OAPIIService;->messageActionACK(Ljava/lang/Long;Ljava/lang/String;Liyv;)V

    .line 28
    return-void
.end method

.method public final a(Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/Integer;Lcma;)V
    .locals 7
    .param p1, "appId"    # Ljava/lang/Long;
    .param p2, "corpid"    # Ljava/lang/String;
    .param p3, "url"    # Ljava/lang/String;
    .param p5, "jsapiType"    # Ljava/lang/Integer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Long;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/lang/Integer;",
            "Lcma",
            "<",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;>;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 59
    .local p4, "jsApiList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    .local p6, "listener":Lcma;, "Lcma<Ljava/util/List<Ljava/lang/Long;>;>;"
    const-class v1, Lcom/alibaba/lightapp/runtime/idl/OAPIIService;

    invoke-static {v1}, Liyx;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/lightapp/runtime/idl/OAPIIService;

    .line 60
    .local v0, "service":Lcom/alibaba/lightapp/runtime/idl/OAPIIService;
    new-instance v6, Lhqt$7;

    invoke-direct {v6, p0, p6}, Lhqt$7;-><init>(Lhqt;Lcma;)V

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-interface/range {v0 .. v6}, Lcom/alibaba/lightapp/runtime/idl/OAPIIService;->getJSAPIMethodsBySafeApp(Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/Integer;Liyv;)V

    .line 72
    return-void
.end method

.method public final a(Ljava/lang/String;Lcma;)V
    .locals 2
    .param p1, "currentUrl"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcma",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 170
    .local p2, "listener":Lcma;, "Lcma<Ljava/lang/String;>;"
    const-class v1, Lcom/alibaba/lightapp/runtime/idl/OAPIIService;

    invoke-static {v1}, Liyx;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/lightapp/runtime/idl/OAPIIService;

    .line 171
    .local v0, "service":Lcom/alibaba/lightapp/runtime/idl/OAPIIService;
    new-instance v1, Lhqt$13;

    invoke-direct {v1, p0, p2}, Lhqt$13;-><init>(Lhqt;Lcma;)V

    invoke-interface {v0, p1, v1}, Lcom/alibaba/lightapp/runtime/idl/OAPIIService;->authorize302(Ljava/lang/String;Liyv;)V

    .line 182
    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lcma;)V
    .locals 8
    .param p1, "corpid"    # Ljava/lang/String;
    .param p2, "timestamp"    # Ljava/lang/Long;
    .param p3, "nonceStr"    # Ljava/lang/String;
    .param p4, "signature"    # Ljava/lang/String;
    .param p5, "url"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;",
            "Lcma",
            "<",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;>;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 33
    .local p6, "jsApiList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    .local p7, "listener":Lcma;, "Lcma<Ljava/util/List<Ljava/lang/Long;>;>;"
    const-class v1, Lcom/alibaba/lightapp/runtime/idl/OAPIIService;

    invoke-static {v1}, Liyx;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/lightapp/runtime/idl/OAPIIService;

    .line 34
    .local v0, "service":Lcom/alibaba/lightapp/runtime/idl/OAPIIService;
    new-instance v7, Lhqt$6;

    invoke-direct {v7, p0, p7}, Lhqt$6;-><init>(Lhqt;Lcma;)V

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-interface/range {v0 .. v7}, Lcom/alibaba/lightapp/runtime/idl/OAPIIService;->getJSAPIMethods(Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Liyv;)V

    .line 46
    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;JLcma;)V
    .locals 7
    .param p1, "corpId"    # Ljava/lang/String;
    .param p2, "redirectURI"    # Ljava/lang/String;
    .param p3, "agentId"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "J",
            "Lcma",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 131
    .local p5, "listener":Lcma;, "Lcma<Ljava/lang/String;>;"
    const-class v0, Lcom/alibaba/lightapp/runtime/idl/OAPIIService;

    invoke-static {v0}, Liyx;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/lightapp/runtime/idl/OAPIIService;

    .line 132
    .local v1, "service":Lcom/alibaba/lightapp/runtime/idl/OAPIIService;
    new-instance v6, Lhqt$11;

    invoke-direct {v6, p0, p5}, Lhqt$11;-><init>(Lhqt;Lcma;)V

    move-object v2, p1

    move-object v3, p2

    move-wide v4, p3

    invoke-interface/range {v1 .. v6}, Lcom/alibaba/lightapp/runtime/idl/OAPIIService;->authorizeCode(Ljava/lang/String;Ljava/lang/String;JLiyv;)V

    .line 144
    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Lcma;)V
    .locals 2
    .param p1, "corpId"    # Ljava/lang/String;
    .param p2, "currentUrl"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcma",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 115
    .local p3, "listener":Lcma;, "Lcma<Ljava/lang/String;>;"
    const-class v1, Lcom/alibaba/lightapp/runtime/idl/OAPIIService;

    invoke-static {v1}, Liyx;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/lightapp/runtime/idl/OAPIIService;

    .line 116
    .local v0, "service":Lcom/alibaba/lightapp/runtime/idl/OAPIIService;
    new-instance v1, Lhqt$10;

    invoke-direct {v1, p0, p3}, Lhqt$10;-><init>(Lhqt;Lcma;)V

    invoke-interface {v0, p1, p2, v1}, Lcom/alibaba/lightapp/runtime/idl/OAPIIService;->authorize(Ljava/lang/String;Ljava/lang/String;Liyv;)V

    .line 127
    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILcma;)V
    .locals 11
    .param p1, "agentId"    # Ljava/lang/String;
    .param p2, "corpid"    # Ljava/lang/String;
    .param p3, "timestamp"    # Ljava/lang/Long;
    .param p4, "nonceStr"    # Ljava/lang/String;
    .param p5, "signature"    # Ljava/lang/String;
    .param p6, "url"    # Ljava/lang/String;
    .param p8, "type"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;I",
            "Lcma",
            "<",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;>;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v10

    invoke-static {v10}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 96
    .local p7, "jsApiList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    .local p9, "listener":Lcma;, "Lcma<Ljava/util/List<Ljava/lang/Long;>;>;"
    const-class v2, Lcom/alibaba/lightapp/runtime/idl/OAPIIService;

    invoke-static {v2}, Liyx;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/lightapp/runtime/idl/OAPIIService;

    .line 97
    .local v1, "service":Lcom/alibaba/lightapp/runtime/idl/OAPIIService;
    new-instance v10, Lhqt$9;

    move-object/from16 v0, p9

    invoke-direct {v10, p0, v0}, Lhqt$9;-><init>(Lhqt;Lcma;)V

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move/from16 v9, p8

    invoke-interface/range {v1 .. v10}, Lcom/alibaba/lightapp/runtime/idl/OAPIIService;->getJSAPIMethodsWithAgentIdAndType(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILiyv;)V

    .line 109
    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lcma;)V
    .locals 10
    .param p1, "agentId"    # Ljava/lang/String;
    .param p2, "corpid"    # Ljava/lang/String;
    .param p3, "timestamp"    # Ljava/lang/Long;
    .param p4, "nonceStr"    # Ljava/lang/String;
    .param p5, "signature"    # Ljava/lang/String;
    .param p6, "url"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;",
            "Lcma",
            "<",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;>;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 78
    .local p7, "jsApiList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    .local p8, "listener":Lcma;, "Lcma<Ljava/util/List<Ljava/lang/Long;>;>;"
    const-class v2, Lcom/alibaba/lightapp/runtime/idl/OAPIIService;

    invoke-static {v2}, Liyx;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/lightapp/runtime/idl/OAPIIService;

    .line 79
    .local v1, "service":Lcom/alibaba/lightapp/runtime/idl/OAPIIService;
    new-instance v9, Lhqt$8;

    move-object/from16 v0, p8

    invoke-direct {v9, p0, v0}, Lhqt$8;-><init>(Lhqt;Lcma;)V

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    invoke-interface/range {v1 .. v9}, Lcom/alibaba/lightapp/runtime/idl/OAPIIService;->getJSAPIMethodsWithAgentId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Liyv;)V

    .line 91
    return-void
.end method

.method public final b(Ljava/lang/String;Ljava/lang/String;Lcma;)V
    .locals 2
    .param p1, "corpId"    # Ljava/lang/String;
    .param p2, "currentUrl"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcma",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 148
    .local p3, "listener":Lcma;, "Lcma<Ljava/lang/String;>;"
    const-class v1, Lcom/alibaba/lightapp/runtime/idl/OAPIIService;

    invoke-static {v1}, Liyx;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/lightapp/runtime/idl/OAPIIService;

    .line 149
    .local v0, "service":Lcom/alibaba/lightapp/runtime/idl/OAPIIService;
    new-instance v1, Lhqt$12;

    invoke-direct {v1, p0, p3}, Lhqt$12;-><init>(Lhqt;Lcma;)V

    invoke-interface {v0, p1, p2, v1}, Lcom/alibaba/lightapp/runtime/idl/OAPIIService;->authorizeExt(Ljava/lang/String;Ljava/lang/String;Liyv;)V

    .line 166
    return-void
.end method

.method public final c(Ljava/lang/String;Ljava/lang/String;Lcma;)V
    .locals 2
    .param p1, "corpId"    # Ljava/lang/String;
    .param p2, "cid"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcma",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 185
    .local p3, "listener":Lcma;, "Lcma<Ljava/lang/String;>;"
    const-class v1, Lcom/alibaba/lightapp/runtime/idl/OAPIIService;

    invoke-static {v1}, Liyx;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/lightapp/runtime/idl/OAPIIService;

    .line 186
    .local v0, "service":Lcom/alibaba/lightapp/runtime/idl/OAPIIService;
    new-instance v1, Lhqt$2;

    invoke-direct {v1, p0, p3}, Lhqt$2;-><init>(Lhqt;Lcma;)V

    invoke-interface {v0, p1, p2, v1}, Lcom/alibaba/lightapp/runtime/idl/OAPIIService;->getCidTokenForOrg(Ljava/lang/String;Ljava/lang/String;Liyv;)V

    .line 197
    return-void
.end method

.method public final d(Ljava/lang/String;Ljava/lang/String;Lcma;)V
    .locals 2
    .param p1, "corpId"    # Ljava/lang/String;
    .param p2, "cid"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcma",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 207
    .local p3, "listener":Lcma;, "Lcma<Ljava/lang/String;>;"
    const-class v1, Lcom/alibaba/lightapp/runtime/idl/OAPIIService;

    invoke-static {v1}, Liyx;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/lightapp/runtime/idl/OAPIIService;

    .line 208
    .local v0, "service":Lcom/alibaba/lightapp/runtime/idl/OAPIIService;
    new-instance v1, Lhqt$3;

    invoke-direct {v1, p0, p3}, Lhqt$3;-><init>(Lhqt;Lcma;)V

    invoke-interface {v0, p1, p2, v1}, Lcom/alibaba/lightapp/runtime/idl/OAPIIService;->getEncryptedData(Ljava/lang/String;Ljava/lang/String;Liyv;)V

    .line 219
    return-void
.end method

.method public final e(Ljava/lang/String;Ljava/lang/String;Lcma;)V
    .locals 2
    .param p1, "corpId"    # Ljava/lang/String;
    .param p2, "cid"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcma",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 229
    .local p3, "listener":Lcma;, "Lcma<Ljava/lang/String;>;"
    const-class v1, Lcom/alibaba/lightapp/runtime/idl/OAPIIService;

    invoke-static {v1}, Liyx;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/lightapp/runtime/idl/OAPIIService;

    .line 230
    .local v0, "service":Lcom/alibaba/lightapp/runtime/idl/OAPIIService;
    new-instance v1, Lhqt$4;

    invoke-direct {v1, p0, p3}, Lhqt$4;-><init>(Lhqt;Lcma;)V

    invoke-interface {v0, p1, p2, v1}, Lcom/alibaba/lightapp/runtime/idl/OAPIIService;->getDecryptedData(Ljava/lang/String;Ljava/lang/String;Liyv;)V

    .line 241
    return-void
.end method

.method public final f(Ljava/lang/String;Ljava/lang/String;Lcma;)V
    .locals 2
    .param p1, "agentId"    # Ljava/lang/String;
    .param p2, "cid"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcma",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 245
    .local p3, "listener":Lcma;, "Lcma<Ljava/lang/String;>;"
    const-class v1, Lcom/alibaba/lightapp/runtime/idl/OAPIIService;

    invoke-static {v1}, Liyx;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/lightapp/runtime/idl/OAPIIService;

    .line 246
    .local v0, "service":Lcom/alibaba/lightapp/runtime/idl/OAPIIService;
    new-instance v1, Lhqt$5;

    invoke-direct {v1, p0, p3}, Lhqt$5;-><init>(Lhqt;Lcma;)V

    invoke-interface {v0, p1, p2, v1}, Lcom/alibaba/lightapp/runtime/idl/OAPIIService;->getPermanentEncryptedCid(Ljava/lang/String;Ljava/lang/String;Liyv;)V

    .line 261
    return-void
.end method
