.class public final Ldlj;
.super Ldli;
.source "MultiToTaskController.java"


# instance fields
.field b:Ljava/util/HashMap;
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

.field private c:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ldlo;",
            ">;"
        }
    .end annotation
.end field

.field private d:Ldlw;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 31
    invoke-direct {p0}, Ldli;-><init>()V

    .line 32
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Ldlj;->b:Ljava/util/HashMap;

    .line 33
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ldlj;->c:Ljava/util/ArrayList;

    .line 35
    new-instance v0, Ldlw;

    invoke-direct {v0}, Ldlw;-><init>()V

    iput-object v0, p0, Ldlj;->d:Ldlw;

    .line 36
    return-void
.end method

.method static synthetic a(Ldlj;Ldlo;I)V
    .locals 0
    .param p0, "x0"    # Ldlj;
    .param p1, "x1"    # Ldlo;
    .param p2, "x2"    # I

    .prologue
    .line 24
    invoke-direct {p0, p1, p2}, Ldlj;->a(Ldlo;I)V

    return-void
.end method

.method private a(Ldlo;I)V
    .locals 12
    .param p1, "params"    # Ldlo;
    .param p2, "index"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v11

    invoke-static {v11}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 86
    .line 1141
    :goto_0
    iget-object v5, p1, Ldlo;->c:Ljava/lang/Object;

    check-cast v5, Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-lt p2, v5, :cond_1

    const/4 v5, 0x1

    .line 86
    :goto_1
    if-eqz v5, :cond_3

    .line 1150
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 1151
    iget-object v5, p1, Ldlo;->c:Ljava/lang/Object;

    check-cast v5, Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_0
    :goto_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/alibaba/wukong/im/Message;

    .line 1152
    iget-object v6, p0, Ldlj;->b:Ljava/util/HashMap;

    invoke-virtual {v6, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/alibaba/wukong/idl/im/models/ContentModel;

    .line 1153
    if-eqz v6, :cond_0

    .line 1154
    invoke-interface {v5}, Lcom/alibaba/wukong/im/Message;->messageId()J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v7, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 1141
    :cond_1
    const/4 v5, 0x0

    goto :goto_1

    .line 1145
    :cond_2
    invoke-virtual {p1, v7}, Ldlo;->a(Ljava/util/Map;)V

    .line 1146
    invoke-virtual {p0}, Ldlj;->d()V

    .line 135
    :goto_3
    return-void

    .line 91
    :cond_3
    add-int/lit8 v3, p2, 0x1

    .line 92
    .local v3, "nextIndex":I
    iget-object v5, p1, Ldlo;->c:Ljava/lang/Object;

    check-cast v5, Ljava/util/List;

    invoke-interface {v5, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/wukong/im/Message;

    .line 93
    .local v1, "message":Lcom/alibaba/wukong/im/Message;
    iget-object v5, p1, Ldlo;->b:Lcom/alibaba/wukong/im/Conversation;

    invoke-static {v1, v5}, Lcom/alibaba/android/dingtalkim/imtools/forward/ForwardType;->transformation(Lcom/alibaba/wukong/im/Message;Lcom/alibaba/wukong/im/Conversation;)Lcom/alibaba/android/dingtalkim/imtools/forward/ForwardType;

    move-result-object v4

    .line 94
    .local v4, "type":Lcom/alibaba/android/dingtalkim/imtools/forward/ForwardType;
    sget-object v5, Lcom/alibaba/android/dingtalkim/imtools/forward/ForwardType;->NORMAL:Lcom/alibaba/android/dingtalkim/imtools/forward/ForwardType;

    if-ne v4, v5, :cond_4

    .line 96
    move p2, v3

    goto :goto_0

    .line 99
    :cond_4
    iget-object v5, p0, Ldlj;->b:Ljava/util/HashMap;

    invoke-virtual {v5, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/idl/im/models/ContentModel;

    .line 100
    .local v0, "contentModel":Lcom/alibaba/wukong/idl/im/models/ContentModel;
    if-eqz v0, :cond_5

    .line 102
    move p2, v3

    goto :goto_0

    .line 106
    :cond_5
    sget-object v5, Lcom/alibaba/android/dingtalkim/imtools/forward/ForwardType;->ENCRYPT_TEXT:Lcom/alibaba/android/dingtalkim/imtools/forward/ForwardType;

    if-ne v4, v5, :cond_6

    .line 107
    invoke-interface {v1}, Lcom/alibaba/wukong/im/Message;->messageContent()Lcom/alibaba/wukong/im/MessageContent;

    move-result-object v6

    .line 108
    invoke-interface {v1}, Lcom/alibaba/wukong/im/Message;->atOpenIds()Ljava/util/Map;

    move-result-object v7

    move-object v5, v1

    check-cast v5, Lcom/alibaba/wukong/im/message/MessageImpl;

    .line 107
    invoke-static {v6, v7, v5}, Libt;->a(Lcom/alibaba/wukong/im/MessageContent;Ljava/util/Map;Lcom/alibaba/wukong/im/message/MessageImpl;)Lcom/alibaba/wukong/idl/im/models/ContentModel;

    move-result-object v0

    .line 109
    iget-object v5, p0, Ldlj;->b:Ljava/util/HashMap;

    invoke-virtual {v5, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    add-int/lit8 v5, p2, 0x1

    invoke-direct {p0, p1, v5}, Ldlj;->a(Ldlo;I)V

    goto :goto_3

    .line 111
    :cond_6
    sget-object v5, Lcom/alibaba/android/dingtalkim/imtools/forward/ForwardType;->ENCRYPT_FILE:Lcom/alibaba/android/dingtalkim/imtools/forward/ForwardType;

    if-ne v4, v5, :cond_7

    .line 112
    new-instance v2, Ldlp;

    iget-object v5, p1, Ldlo;->a:Landroid/app/Activity;

    invoke-direct {v2, v5, v1}, Ldlp;-><init>(Landroid/app/Activity;Lcom/alibaba/wukong/im/Message;)V

    .line 113
    .local v2, "multiToTaskSingleParams":Ldlp;
    new-instance v5, Ldlj$1;

    invoke-direct {v5, p0, v1, p1, v3}, Ldlj$1;-><init>(Ldlj;Lcom/alibaba/wukong/im/Message;Ldlo;I)V

    .line 2040
    iput-object v5, v2, Ldlm;->d:Lcom/alibaba/wukong/Callback;

    .line 134
    iget-object v5, p0, Ldlj;->d:Ldlw;

    invoke-virtual {v5, v2}, Ldlw;->a(Ldlm;)V

    goto :goto_3

    .line 136
    .end local v2    # "multiToTaskSingleParams":Ldlp;
    :cond_7
    move p2, v3

    goto/16 :goto_0
.end method


# virtual methods
.method public final a(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ldlo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 47
    .local p1, "paramsList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ldlo;>;"
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    .line 48
    iget-object v0, p0, Ldlj;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 51
    invoke-virtual {p0}, Ldlj;->c()V

    .line 52
    return-void
.end method

.method public final b()V
    .locals 1

    .prologue
    .line 40
    invoke-super {p0}, Ldli;->b()V

    .line 41
    iget-object v0, p0, Ldlj;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 42
    iget-object v0, p0, Ldlj;->b:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 43
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

    .line 56
    iget-object v2, p0, Ldlj;->c:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-gtz v2, :cond_1

    .line 57
    iput-boolean v3, p0, Ldlj;->a:Z

    .line 83
    :cond_0
    :goto_0
    return-void

    .line 61
    :cond_1
    iget-boolean v2, p0, Ldlj;->a:Z

    if-nez v2, :cond_0

    .line 66
    iput-boolean v4, p0, Ldlj;->a:Z

    .line 67
    iget-object v2, p0, Ldlj;->c:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ldlo;

    .line 69
    .local v1, "params":Ldlo;
    invoke-virtual {v1}, Ldlo;->b()Z

    move-result v2

    if-nez v2, :cond_2

    .line 70
    invoke-static {v1}, Ldlj;->a(Ldlm;)V

    .line 71
    invoke-virtual {p0}, Ldlj;->d()V

    goto :goto_0

    .line 75
    :cond_2
    invoke-static {}, Ldlj;->e()Z

    move-result v0

    .line 76
    .local v0, "isFeatureOpen":Z
    if-eqz v0, :cond_4

    .line 1043
    invoke-virtual {v1}, Ldlo;->b()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1046
    iget-object v2, v1, Ldlo;->c:Ljava/lang/Object;

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

    .line 1047
    iget-object v6, v1, Ldlo;->b:Lcom/alibaba/wukong/im/Conversation;

    invoke-static {v2, v6}, Lcom/alibaba/android/dingtalkim/imtools/forward/ForwardType;->transformation(Lcom/alibaba/wukong/im/Message;Lcom/alibaba/wukong/im/Conversation;)Lcom/alibaba/android/dingtalkim/imtools/forward/ForwardType;

    move-result-object v2

    .line 1048
    sget-object v6, Lcom/alibaba/android/dingtalkim/imtools/forward/ForwardType;->NORMAL:Lcom/alibaba/android/dingtalkim/imtools/forward/ForwardType;

    if-eq v2, v6, :cond_3

    move v2, v3

    .line 76
    :goto_1
    if-eqz v2, :cond_6

    .line 77
    :cond_4
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ldlo;->a(Ljava/util/Map;)V

    .line 78
    invoke-virtual {p0}, Ldlj;->d()V

    goto :goto_0

    :cond_5
    move v2, v4

    .line 1052
    goto :goto_1

    .line 82
    :cond_6
    invoke-direct {p0, v1, v3}, Ldlj;->a(Ldlo;I)V

    goto :goto_0
.end method
