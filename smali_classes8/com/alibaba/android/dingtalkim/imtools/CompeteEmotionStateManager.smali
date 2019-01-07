.class public Lcom/alibaba/android/dingtalkim/imtools/CompeteEmotionStateManager;
.super Ljava/lang/Object;
.source "CompeteEmotionStateManager.java"

# interfaces
.implements Lcmj;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/android/dingtalkim/imtools/CompeteEmotionStateManager$b;,
        Lcom/alibaba/android/dingtalkim/imtools/CompeteEmotionStateManager$a;,
        Lcom/alibaba/android/dingtalkim/imtools/CompeteEmotionStateManager$Status;
    }
.end annotation


# instance fields
.field public a:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public b:J

.field public c:Z

.field private d:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/alibaba/android/dingtalkim/imtools/CompeteEmotionStateManager$b;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/imtools/CompeteEmotionStateManager;->d:Ljava/util/HashMap;

    .line 63
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/imtools/CompeteEmotionStateManager;->a:Ljava/util/HashSet;

    .line 64
    invoke-static {}, Lebc;->j()Z

    move-result v0

    iput-boolean v0, p0, Lcom/alibaba/android/dingtalkim/imtools/CompeteEmotionStateManager;->c:Z

    .line 65
    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalkim/imtools/CompeteEmotionStateManager;J)J
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/imtools/CompeteEmotionStateManager;
    .param p1, "x1"    # J

    .prologue
    .line 46
    iput-wide p1, p0, Lcom/alibaba/android/dingtalkim/imtools/CompeteEmotionStateManager;->b:J

    return-wide p1
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalkim/imtools/CompeteEmotionStateManager;Ljava/lang/String;)Lcom/alibaba/android/dingtalkim/imtools/CompeteEmotionStateManager$b;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/imtools/CompeteEmotionStateManager;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 46
    invoke-virtual {p0, p1}, Lcom/alibaba/android/dingtalkim/imtools/CompeteEmotionStateManager;->a(Ljava/lang/String;)Lcom/alibaba/android/dingtalkim/imtools/CompeteEmotionStateManager$b;

    move-result-object v0

    return-object v0
.end method

.method public static a(Lcom/alibaba/wukong/im/Message;)Ljava/lang/String;
    .locals 1
    .param p0, "message"    # Lcom/alibaba/wukong/im/Message;

    .prologue
    .line 290
    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/alibaba/wukong/im/Message;->conversation()Lcom/alibaba/wukong/im/Conversation;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 291
    invoke-interface {p0}, Lcom/alibaba/wukong/im/Message;->conversation()Lcom/alibaba/wukong/im/Conversation;

    move-result-object v0

    invoke-interface {v0}, Lcom/alibaba/wukong/im/Conversation;->conversationId()Ljava/lang/String;

    move-result-object v0

    .line 293
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalkim/imtools/CompeteEmotionStateManager;Lcom/alibaba/android/dingtalkim/imtools/CompeteEmotionStateManager$b;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/imtools/CompeteEmotionStateManager;
    .param p1, "x1"    # Lcom/alibaba/android/dingtalkim/imtools/CompeteEmotionStateManager$b;

    .prologue
    .line 46
    invoke-virtual {p0, p1}, Lcom/alibaba/android/dingtalkim/imtools/CompeteEmotionStateManager;->a(Lcom/alibaba/android/dingtalkim/imtools/CompeteEmotionStateManager$b;)V

    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalkim/imtools/CompeteEmotionStateManager;Lcom/alibaba/wukong/im/Message;)V
    .locals 4
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/imtools/CompeteEmotionStateManager;
    .param p1, "x1"    # Lcom/alibaba/wukong/im/Message;

    .prologue
    .line 46
    .line 3129
    if-eqz p1, :cond_0

    .line 3130
    invoke-interface {p1}, Lcom/alibaba/wukong/im/Message;->conversation()Lcom/alibaba/wukong/im/Conversation;

    move-result-object v0

    invoke-static {v0}, Leat;->a(Lcom/alibaba/wukong/im/Conversation;)Ljava/util/Map;

    move-result-object v0

    .line 3131
    const-string/jumbo v1, "spm-url"

    const-string/jumbo v2, "a2o5v.12290095"

    const-string/jumbo v3, "doutu_icon"

    invoke-static {v2, v3}, Leat;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3132
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v1

    const-string/jumbo v2, "Page_Chat_Detail"

    const-string/jumbo v3, "Button-doutu_icon"

    invoke-interface {v1, v2, v3, v0}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 46
    :cond_0
    return-void
.end method

.method public static b()Lcom/alibaba/android/dingtalkim/imtools/CompeteEmotionStateManager;
    .locals 2

    .prologue
    .line 306
    invoke-static {}, Lcmk;->a()Lcmk;

    move-result-object v0

    const-class v1, Lcom/alibaba/android/dingtalkim/imtools/CompeteEmotionStateManager;

    invoke-virtual {v0, v1}, Lcmk;->a(Ljava/lang/Class;)Lcmj;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkim/imtools/CompeteEmotionStateManager;

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/String;)Lcom/alibaba/android/dingtalkim/imtools/CompeteEmotionStateManager$b;
    .locals 2
    .param p1, "cid"    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 239
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/imtools/CompeteEmotionStateManager;->d:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkim/imtools/CompeteEmotionStateManager$b;

    .line 240
    .local v0, "model":Lcom/alibaba/android/dingtalkim/imtools/CompeteEmotionStateManager$b;
    if-nez v0, :cond_0

    .line 1321
    new-instance v0, Lcom/alibaba/android/dingtalkim/imtools/CompeteEmotionStateManager$b;

    .end local v0    # "model":Lcom/alibaba/android/dingtalkim/imtools/CompeteEmotionStateManager$b;
    invoke-direct {v0}, Lcom/alibaba/android/dingtalkim/imtools/CompeteEmotionStateManager$b;-><init>()V

    .line 1322
    sget-object v1, Lcom/alibaba/android/dingtalkim/imtools/CompeteEmotionStateManager$Status;->init:Lcom/alibaba/android/dingtalkim/imtools/CompeteEmotionStateManager$Status;

    iput-object v1, v0, Lcom/alibaba/android/dingtalkim/imtools/CompeteEmotionStateManager$b;->a:Lcom/alibaba/android/dingtalkim/imtools/CompeteEmotionStateManager$Status;

    .line 242
    .restart local v0    # "model":Lcom/alibaba/android/dingtalkim/imtools/CompeteEmotionStateManager$b;
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/imtools/CompeteEmotionStateManager;->d:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 244
    :cond_0
    return-object v0
.end method

.method public final a()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 211
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/imtools/CompeteEmotionStateManager;->d:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    .line 212
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/imtools/CompeteEmotionStateManager;->d:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 214
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/imtools/CompeteEmotionStateManager;->a:Ljava/util/HashSet;

    if-eqz v0, :cond_1

    .line 215
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/imtools/CompeteEmotionStateManager;->a:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 217
    :cond_1
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/alibaba/android/dingtalkim/imtools/CompeteEmotionStateManager;->b:J

    .line 218
    return-void
.end method

.method public a(Lcom/alibaba/android/dingtalkim/imtools/CompeteEmotionStateManager$b;)V
    .locals 1
    .param p1, "model"    # Lcom/alibaba/android/dingtalkim/imtools/CompeteEmotionStateManager$b;

    .prologue
    .line 203
    if-eqz p1, :cond_0

    .line 204
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/imtools/CompeteEmotionStateManager;->a:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 205
    const/4 v0, 0x0

    .line 1309
    iput v0, p1, Lcom/alibaba/android/dingtalkim/imtools/CompeteEmotionStateManager$b;->d:I

    .line 207
    :cond_0
    return-void
.end method

.method public a(Ljava/lang/String;Lcom/alibaba/wukong/im/Message;)Z
    .locals 3
    .param p1, "cid"    # Ljava/lang/String;
    .param p2, "message"    # Lcom/alibaba/wukong/im/Message;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 297
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-static {}, Ldjc;->c()Ldjc;

    move-result-object v2

    .line 2017
    iget-object v2, v2, Ldjc;->a:Ljava/lang/String;

    .line 297
    invoke-static {p1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2302
    invoke-static {p2}, Ldkc;->n(Lcom/alibaba/wukong/im/Message;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {p2}, Ldkc;->z(Lcom/alibaba/wukong/im/Message;)Z

    move-result v2

    if-nez v2, :cond_0

    move v2, v0

    .line 298
    :goto_0
    if-eqz v2, :cond_1

    :goto_1
    return v0

    :cond_0
    move v2, v1

    .line 2302
    goto :goto_0

    :cond_1
    move v0, v1

    .line 298
    goto :goto_1
.end method
