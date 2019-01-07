.class public final Ldft;
.super Ljava/lang/Object;
.source "ConversationThemeApiImpl.java"

# interfaces
.implements Ldfs;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(JLcma;)V
    .locals 3
    .param p1, "themeId"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lcma",
            "<",
            "Lcom/alibaba/android/dingtalkim/chat/theme/idl/object/ChatThemeItemObject;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 37
    .local p3, "listener":Lcma;, "Lcma<Lcom/alibaba/android/dingtalkim/chat/theme/idl/object/ChatThemeItemObject;>;"
    new-instance v0, Ldft$2;

    invoke-direct {v0, p0, p3}, Ldft$2;-><init>(Ldft;Lcma;)V

    .line 45
    .local v0, "handler":Lcmg;, "Lcmg<Ldfz;Lcom/alibaba/android/dingtalkim/chat/theme/idl/object/ChatThemeItemObject;>;"
    const-class v2, Lcom/alibaba/android/dingtalkim/models/idl/service/ConversationThemeIService;

    invoke-static {v2}, Liyx;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/dingtalkim/models/idl/service/ConversationThemeIService;

    .line 46
    .local v1, "service":Lcom/alibaba/android/dingtalkim/models/idl/service/ConversationThemeIService;
    if-eqz v1, :cond_0

    .line 47
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Lcom/alibaba/android/dingtalkim/models/idl/service/ConversationThemeIService;->getChatThemeById(Ljava/lang/Long;Liyv;)V

    .line 49
    :cond_0
    return-void
.end method

.method public final a(Ljava/lang/String;IJLcma;)V
    .locals 5
    .param p1, "cid"    # Ljava/lang/String;
    .param p2, "type"    # I
    .param p3, "themeId"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "IJ",
            "Lcma",
            "<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 86
    .local p5, "listener":Lcma;, "Lcma<Ljava/lang/Boolean;>;"
    new-instance v0, Ldft$4;

    invoke-direct {v0, p0, p5}, Ldft$4;-><init>(Ldft;Lcma;)V

    .line 92
    .local v0, "handler":Lcmg;, "Lcmg<Ljava/lang/Boolean;Ljava/lang/Boolean;>;"
    const-class v2, Lcom/alibaba/android/dingtalkim/models/idl/service/ConversationThemeIService;

    invoke-static {v2}, Liyx;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/dingtalkim/models/idl/service/ConversationThemeIService;

    .line 93
    .local v1, "service":Lcom/alibaba/android/dingtalkim/models/idl/service/ConversationThemeIService;
    if-eqz v1, :cond_0

    .line 94
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v1, p1, v2, v3, v0}, Lcom/alibaba/android/dingtalkim/models/idl/service/ConversationThemeIService;->setChatTheme(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Long;Liyv;)V

    .line 96
    :cond_0
    return-void
.end method

.method public final a(Ljava/lang/String;ILcma;)V
    .locals 3
    .param p1, "cid"    # Ljava/lang/String;
    .param p2, "type"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Lcma",
            "<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 100
    .local p3, "listener":Lcma;, "Lcma<Ljava/lang/Boolean;>;"
    new-instance v0, Ldft$5;

    invoke-direct {v0, p0, p3}, Ldft$5;-><init>(Ldft;Lcma;)V

    .line 106
    .local v0, "handler":Lcmg;, "Lcmg<Ljava/lang/Boolean;Ljava/lang/Boolean;>;"
    const-class v2, Lcom/alibaba/android/dingtalkim/models/idl/service/ConversationThemeIService;

    invoke-static {v2}, Liyx;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/dingtalkim/models/idl/service/ConversationThemeIService;

    .line 107
    .local v1, "service":Lcom/alibaba/android/dingtalkim/models/idl/service/ConversationThemeIService;
    if-eqz v1, :cond_0

    .line 108
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, p1, v2, v0}, Lcom/alibaba/android/dingtalkim/models/idl/service/ConversationThemeIService;->resetChatTheme(Ljava/lang/String;Ljava/lang/Integer;Liyv;)V

    .line 110
    :cond_0
    return-void
.end method

.method public final a(Ljava/lang/String;Lcma;)V
    .locals 3
    .param p1, "cid"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcma",
            "<",
            "Ldge;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 21
    .local p2, "listener":Lcma;, "Lcma<Ldge;>;"
    new-instance v0, Ldft$1;

    invoke-direct {v0, p0, p2}, Ldft$1;-><init>(Ldft;Lcma;)V

    .line 29
    .local v0, "handler":Lcmg;, "Lcmg<Ldgc;Ldge;>;"
    const-class v2, Lcom/alibaba/android/dingtalkim/models/idl/service/ConversationThemeIService;

    invoke-static {v2}, Liyx;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/dingtalkim/models/idl/service/ConversationThemeIService;

    .line 30
    .local v1, "service":Lcom/alibaba/android/dingtalkim/models/idl/service/ConversationThemeIService;
    if-eqz v1, :cond_0

    .line 31
    invoke-interface {v1, p1, v0}, Lcom/alibaba/android/dingtalkim/models/idl/service/ConversationThemeIService;->getIndexChatTheme(Ljava/lang/String;Liyv;)V

    .line 33
    :cond_0
    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Ldgd;Lcma;)V
    .locals 4
    .param p1, "cid"    # Ljava/lang/String;
    .param p2, "mediaId"    # Ljava/lang/String;
    .param p3, "object"    # Ldgd;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ldgd;",
            "Lcma",
            "<",
            "Lcom/alibaba/android/dingtalkim/chat/theme/idl/object/ChatThemeItemObject;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 70
    .local p4, "listener":Lcma;, "Lcma<Lcom/alibaba/android/dingtalkim/chat/theme/idl/object/ChatThemeItemObject;>;"
    new-instance v0, Ldft$3;

    invoke-direct {v0, p0, p4}, Ldft$3;-><init>(Ldft;Lcma;)V

    .line 77
    .local v0, "handler":Lcmg;, "Lcmg<Ldfz;Lcom/alibaba/android/dingtalkim/chat/theme/idl/object/ChatThemeItemObject;>;"
    const-class v3, Lcom/alibaba/android/dingtalkim/models/idl/service/ConversationThemeIService;

    invoke-static {v3}, Liyx;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/android/dingtalkim/models/idl/service/ConversationThemeIService;

    .line 78
    .local v2, "service":Lcom/alibaba/android/dingtalkim/models/idl/service/ConversationThemeIService;
    if-eqz v2, :cond_0

    .line 1015
    if-nez p3, :cond_1

    .line 1016
    const/4 v1, 0x0

    .line 80
    .local v1, "model":Ldgb;
    :goto_0
    invoke-interface {v2, p1, p2, v1, v0}, Lcom/alibaba/android/dingtalkim/models/idl/service/ConversationThemeIService;->createChatTheme(Ljava/lang/String;Ljava/lang/String;Ldgb;Liyv;)V

    .line 82
    .end local v1    # "model":Ldgb;
    :cond_0
    return-void

    .line 1019
    :cond_1
    new-instance v1, Ldgb;

    invoke-direct {v1}, Ldgb;-><init>()V

    .line 1020
    iget v3, p3, Ldgd;->a:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iput-object v3, v1, Ldgb;->a:Ljava/lang/Integer;

    .line 1021
    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iput-object v3, v1, Ldgb;->b:Ljava/lang/Integer;

    goto :goto_0
.end method
