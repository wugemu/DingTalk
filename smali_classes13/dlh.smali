.class public Ldlh;
.super Ldli;
.source "ForwardCombineController.java"


# static fields
.field private static volatile b:Ldlh;


# instance fields
.field private c:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/alibaba/wukong/im/Message;",
            "Lcom/alibaba/wukong/idl/im/models/ContentModel;",
            ">;"
        }
    .end annotation
.end field

.field private d:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ldll;",
            ">;"
        }
    .end annotation
.end field

.field private e:Ldlu;

.field private f:Ldlt;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 36
    invoke-direct {p0}, Ldli;-><init>()V

    .line 37
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Ldlh;->c:Ljava/util/HashMap;

    .line 38
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ldlh;->d:Ljava/util/ArrayList;

    .line 40
    new-instance v0, Ldlu;

    invoke-direct {v0}, Ldlu;-><init>()V

    iput-object v0, p0, Ldlh;->e:Ldlu;

    .line 41
    new-instance v0, Ldlt;

    invoke-direct {v0}, Ldlt;-><init>()V

    iput-object v0, p0, Ldlh;->f:Ldlt;

    .line 42
    return-void
.end method

.method public static a()Ldlh;
    .locals 2

    .prologue
    .line 45
    sget-object v0, Ldlh;->b:Ldlh;

    if-nez v0, :cond_1

    .line 46
    const-class v1, Ldlh;

    monitor-enter v1

    .line 47
    :try_start_0
    sget-object v0, Ldlh;->b:Ldlh;

    if-nez v0, :cond_0

    .line 48
    new-instance v0, Ldlh;

    invoke-direct {v0}, Ldlh;-><init>()V

    sput-object v0, Ldlh;->b:Ldlh;

    .line 50
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 52
    :cond_1
    sget-object v0, Ldlh;->b:Ldlh;

    return-object v0

    .line 50
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method static synthetic a(Ldlh;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Ldlh;

    .prologue
    .line 26
    iget-object v0, p0, Ldlh;->c:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic a(Ldlh;Ldll;I)V
    .locals 0
    .param p0, "x0"    # Ldlh;
    .param p1, "x1"    # Ldll;
    .param p2, "x2"    # I

    .prologue
    .line 26
    invoke-direct {p0, p1, p2}, Ldlh;->a(Ldll;I)V

    return-void
.end method

.method private a(Ldll;I)V
    .locals 12
    .param p1, "params"    # Ldll;
    .param p2, "index"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v11

    invoke-static {v11}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v6, 0x0

    .line 103
    .line 1158
    :goto_0
    iget-object v5, p1, Ldll;->c:Ljava/lang/Object;

    check-cast v5, Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-lt p2, v5, :cond_1

    const/4 v5, 0x1

    .line 103
    :goto_1
    if-eqz v5, :cond_3

    .line 1162
    iget-object v7, p0, Ldlh;->e:Ldlu;

    .line 1167
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    .line 1168
    iget-object v5, p1, Ldll;->c:Ljava/lang/Object;

    check-cast v5, Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_0
    :goto_2
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/alibaba/wukong/im/Message;

    .line 1169
    iget-object v6, p0, Ldlh;->c:Ljava/util/HashMap;

    invoke-virtual {v6, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/alibaba/wukong/idl/im/models/ContentModel;

    .line 1170
    if-eqz v6, :cond_0

    .line 1171
    invoke-interface {v5}, Lcom/alibaba/wukong/im/Message;->messageId()J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v8, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 1158
    :cond_1
    const/4 v5, 0x0

    goto :goto_1

    .line 1162
    :cond_2
    invoke-virtual {v7, p1, v8}, Ldlu;->a(Ldlm;Ljava/util/Map;)V

    .line 1163
    invoke-virtual {p0}, Ldlh;->d()V

    .line 152
    :goto_3
    return-void

    .line 108
    :cond_3
    add-int/lit8 v2, p2, 0x1

    .line 109
    .local v2, "nextIndex":I
    iget-object v5, p1, Ldll;->c:Ljava/lang/Object;

    check-cast v5, Ljava/util/List;

    invoke-interface {v5, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/wukong/im/Message;

    .line 110
    .local v1, "message":Lcom/alibaba/wukong/im/Message;
    iget-object v5, p1, Ldll;->b:Lcom/alibaba/wukong/im/Conversation;

    invoke-static {v1, v5}, Lcom/alibaba/android/dingtalkim/imtools/forward/ForwardType;->transformation(Lcom/alibaba/wukong/im/Message;Lcom/alibaba/wukong/im/Conversation;)Lcom/alibaba/android/dingtalkim/imtools/forward/ForwardType;

    move-result-object v4

    .line 111
    .local v4, "type":Lcom/alibaba/android/dingtalkim/imtools/forward/ForwardType;
    sget-object v5, Lcom/alibaba/android/dingtalkim/imtools/forward/ForwardType;->NORMAL:Lcom/alibaba/android/dingtalkim/imtools/forward/ForwardType;

    if-ne v4, v5, :cond_4

    .line 113
    move p2, v2

    goto :goto_0

    .line 116
    :cond_4
    iget-object v5, p0, Ldlh;->c:Ljava/util/HashMap;

    invoke-virtual {v5, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/idl/im/models/ContentModel;

    .line 117
    .local v0, "contentModel":Lcom/alibaba/wukong/idl/im/models/ContentModel;
    if-eqz v0, :cond_5

    .line 119
    move p2, v2

    goto :goto_0

    .line 123
    :cond_5
    sget-object v5, Lcom/alibaba/android/dingtalkim/imtools/forward/ForwardType;->ENCRYPT_TEXT:Lcom/alibaba/android/dingtalkim/imtools/forward/ForwardType;

    if-ne v4, v5, :cond_6

    .line 124
    invoke-interface {v1}, Lcom/alibaba/wukong/im/Message;->messageContent()Lcom/alibaba/wukong/im/MessageContent;

    move-result-object v6

    .line 125
    invoke-interface {v1}, Lcom/alibaba/wukong/im/Message;->atOpenIds()Ljava/util/Map;

    move-result-object v7

    move-object v5, v1

    check-cast v5, Lcom/alibaba/wukong/im/message/MessageImpl;

    .line 124
    invoke-static {v6, v7, v5}, Libt;->a(Lcom/alibaba/wukong/im/MessageContent;Ljava/util/Map;Lcom/alibaba/wukong/im/message/MessageImpl;)Lcom/alibaba/wukong/idl/im/models/ContentModel;

    move-result-object v0

    .line 126
    iget-object v5, p0, Ldlh;->c:Ljava/util/HashMap;

    invoke-virtual {v5, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    add-int/lit8 v5, p2, 0x1

    invoke-direct {p0, p1, v5}, Ldlh;->a(Ldll;I)V

    goto :goto_3

    .line 128
    :cond_6
    sget-object v5, Lcom/alibaba/android/dingtalkim/imtools/forward/ForwardType;->ENCRYPT_FILE:Lcom/alibaba/android/dingtalkim/imtools/forward/ForwardType;

    if-ne v4, v5, :cond_8

    .line 2054
    if-nez p1, :cond_7

    move-object v3, v6

    .line 130
    .local v3, "singleParams":Ldln;
    :goto_4
    new-instance v5, Ldlh$1;

    invoke-direct {v5, p0, v1, p1, v2}, Ldlh$1;-><init>(Ldlh;Lcom/alibaba/wukong/im/Message;Ldll;I)V

    .line 3040
    iput-object v5, v3, Ldlm;->d:Lcom/alibaba/wukong/Callback;

    .line 151
    iget-object v5, p0, Ldlh;->f:Ldlt;

    invoke-virtual {v5, v3}, Ldlt;->a(Ldlm;)V

    goto :goto_3

    .line 2058
    .end local v3    # "singleParams":Ldln;
    :cond_7
    iget-object v5, p1, Ldll;->c:Ljava/lang/Object;

    if-eqz v5, :cond_9

    .line 2059
    if-ltz p2, :cond_9

    iget-object v5, p1, Ldll;->c:Ljava/lang/Object;

    check-cast v5, Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge p2, v5, :cond_9

    .line 2060
    iget-object v5, p1, Ldll;->c:Ljava/lang/Object;

    check-cast v5, Ljava/util/List;

    invoke-interface {v5, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/alibaba/wukong/im/Message;

    .line 2063
    :goto_5
    new-instance v3, Ldln;

    iget-object v6, p1, Ldll;->a:Landroid/app/Activity;

    iget-object v7, p1, Ldll;->b:Lcom/alibaba/wukong/im/Conversation;

    invoke-direct {v3, v6, v7, v5}, Ldln;-><init>(Landroid/app/Activity;Lcom/alibaba/wukong/im/Conversation;Lcom/alibaba/wukong/im/Message;)V

    goto :goto_4

    .line 153
    :cond_8
    move p2, v2

    goto/16 :goto_0

    :cond_9
    move-object v5, v6

    goto :goto_5
.end method


# virtual methods
.method public final a(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ldll;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 63
    .local p1, "paramsList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ldll;>;"
    if-eqz p1, :cond_0

    .line 64
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    .line 65
    iget-object v0, p0, Ldlh;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 68
    :cond_0
    invoke-virtual {p0}, Ldlh;->c()V

    .line 69
    return-void
.end method

.method public final b()V
    .locals 1

    .prologue
    .line 57
    invoke-super {p0}, Ldli;->b()V

    .line 58
    iget-object v0, p0, Ldlh;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 59
    iget-object v0, p0, Ldlh;->c:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 60
    return-void
.end method

.method protected final c()V
    .locals 7

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 73
    iget-object v2, p0, Ldlh;->d:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-gtz v2, :cond_1

    .line 74
    iput-boolean v3, p0, Ldlh;->a:Z

    .line 100
    :cond_0
    :goto_0
    return-void

    .line 78
    :cond_1
    iget-boolean v2, p0, Ldlh;->a:Z

    if-nez v2, :cond_0

    .line 83
    iput-boolean v4, p0, Ldlh;->a:Z

    .line 84
    iget-object v2, p0, Ldlh;->d:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ldll;

    .line 86
    .local v1, "params":Ldll;
    invoke-virtual {v1}, Ldll;->b()Z

    move-result v2

    if-nez v2, :cond_2

    .line 87
    invoke-static {v1}, Ldlh;->a(Ldlm;)V

    .line 88
    invoke-virtual {p0}, Ldlh;->d()V

    goto :goto_0

    .line 92
    :cond_2
    invoke-static {}, Ldlh;->e()Z

    move-result v0

    .line 93
    .local v0, "isFeatureOpen":Z
    if-eqz v0, :cond_4

    .line 1025
    invoke-virtual {v1}, Ldll;->b()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1028
    iget-object v2, v1, Ldll;->c:Ljava/lang/Object;

    check-cast v2, Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/wukong/im/Message;

    .line 1029
    iget-object v6, v1, Ldll;->b:Lcom/alibaba/wukong/im/Conversation;

    invoke-static {v2, v6}, Lcom/alibaba/android/dingtalkim/imtools/forward/ForwardType;->transformation(Lcom/alibaba/wukong/im/Message;Lcom/alibaba/wukong/im/Conversation;)Lcom/alibaba/android/dingtalkim/imtools/forward/ForwardType;

    move-result-object v2

    .line 1030
    sget-object v6, Lcom/alibaba/android/dingtalkim/imtools/forward/ForwardType;->NORMAL:Lcom/alibaba/android/dingtalkim/imtools/forward/ForwardType;

    if-eq v2, v6, :cond_3

    move v2, v3

    .line 93
    :goto_1
    if-eqz v2, :cond_6

    .line 94
    :cond_4
    iget-object v2, p0, Ldlh;->e:Ldlu;

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Ldlu;->a(Ldlm;Ljava/util/Map;)V

    .line 95
    invoke-virtual {p0}, Ldlh;->d()V

    goto :goto_0

    :cond_5
    move v2, v4

    .line 1035
    goto :goto_1

    .line 99
    :cond_6
    invoke-direct {p0, v1, v3}, Ldlh;->a(Ldll;I)V

    goto :goto_0
.end method
