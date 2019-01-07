.class public Ldlg;
.super Ldli;
.source "ForwardBatchController.java"


# static fields
.field private static volatile b:Ldlg;


# instance fields
.field private c:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/alibaba/wukong/im/Message;",
            "Lcom/alibaba/wukong/im/Message;",
            ">;"
        }
    .end annotation
.end field

.field private d:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ldlk;",
            ">;"
        }
    .end annotation
.end field

.field private e:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ldlv;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 3

    .prologue
    .line 34
    invoke-direct {p0}, Ldli;-><init>()V

    .line 35
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Ldlg;->c:Ljava/util/HashMap;

    .line 36
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ldlg;->d:Ljava/util/ArrayList;

    .line 38
    new-instance v0, Landroid/util/SparseArray;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Landroid/util/SparseArray;-><init>(I)V

    iput-object v0, p0, Ldlg;->e:Landroid/util/SparseArray;

    .line 39
    iget-object v0, p0, Ldlg;->e:Landroid/util/SparseArray;

    sget-object v1, Lcom/alibaba/android/dingtalkim/imtools/forward/ForwardType;->NORMAL:Lcom/alibaba/android/dingtalkim/imtools/forward/ForwardType;

    invoke-virtual {v1}, Lcom/alibaba/android/dingtalkim/imtools/forward/ForwardType;->ordinal()I

    move-result v1

    new-instance v2, Ldls;

    invoke-direct {v2}, Ldls;-><init>()V

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 40
    iget-object v0, p0, Ldlg;->e:Landroid/util/SparseArray;

    sget-object v1, Lcom/alibaba/android/dingtalkim/imtools/forward/ForwardType;->ENCRYPT_TEXT:Lcom/alibaba/android/dingtalkim/imtools/forward/ForwardType;

    invoke-virtual {v1}, Lcom/alibaba/android/dingtalkim/imtools/forward/ForwardType;->ordinal()I

    move-result v1

    new-instance v2, Ldlr;

    invoke-direct {v2}, Ldlr;-><init>()V

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 41
    iget-object v0, p0, Ldlg;->e:Landroid/util/SparseArray;

    sget-object v1, Lcom/alibaba/android/dingtalkim/imtools/forward/ForwardType;->ENCRYPT_FILE:Lcom/alibaba/android/dingtalkim/imtools/forward/ForwardType;

    invoke-virtual {v1}, Lcom/alibaba/android/dingtalkim/imtools/forward/ForwardType;->ordinal()I

    move-result v1

    new-instance v2, Ldlq;

    invoke-direct {v2}, Ldlq;-><init>()V

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 42
    return-void
.end method

.method public static a()Ldlg;
    .locals 2

    .prologue
    .line 45
    sget-object v0, Ldlg;->b:Ldlg;

    if-nez v0, :cond_1

    .line 46
    const-class v1, Ldlg;

    monitor-enter v1

    .line 47
    :try_start_0
    sget-object v0, Ldlg;->b:Ldlg;

    if-nez v0, :cond_0

    .line 48
    new-instance v0, Ldlg;

    invoke-direct {v0}, Ldlg;-><init>()V

    sput-object v0, Ldlg;->b:Ldlg;

    .line 50
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 52
    :cond_1
    sget-object v0, Ldlg;->b:Ldlg;

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

.method static synthetic a(Ldlg;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Ldlg;

    .prologue
    .line 24
    iget-object v0, p0, Ldlg;->c:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic a(Ldlg;Ldlk;Ljava/util/ArrayList;I)V
    .locals 0
    .param p0, "x0"    # Ldlg;
    .param p1, "x1"    # Ldlk;
    .param p2, "x2"    # Ljava/util/ArrayList;
    .param p3, "x3"    # I

    .prologue
    .line 24
    invoke-direct {p0, p1, p2, p3}, Ldlg;->a(Ldlk;Ljava/util/ArrayList;I)V

    return-void
.end method

.method private a(Ldlk;Ljava/util/ArrayList;I)V
    .locals 9
    .param p1, "params"    # Ldlk;
    .param p3, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ldlk;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/alibaba/wukong/im/Message;",
            ">;I)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .local p2, "results":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/wukong/im/Message;>;"
    const/4 v1, 0x0

    .line 106
    .line 1151
    iget-object v0, p1, Ldlk;->c:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p3, v0, :cond_1

    const/4 v0, 0x1

    .line 106
    :goto_0
    if-eqz v0, :cond_3

    .line 1155
    iget-object v0, p1, Ldlk;->d:Lcom/alibaba/wukong/Callback;

    if-eqz v0, :cond_0

    .line 1156
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 1157
    iget-object v0, p1, Ldlk;->d:Lcom/alibaba/wukong/Callback;

    invoke-interface {v0, p2}, Lcom/alibaba/wukong/Callback;->onSuccess(Ljava/lang/Object;)V

    .line 1163
    :cond_0
    :goto_1
    invoke-virtual {p0}, Ldlg;->d()V

    .line 148
    :goto_2
    return-void

    .line 1151
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 1159
    :cond_2
    iget-object v0, p1, Ldlk;->d:Lcom/alibaba/wukong/Callback;

    const-string/jumbo v1, ""

    const-string/jumbo v2, ""

    invoke-interface {v0, v1, v2}, Lcom/alibaba/wukong/Callback;->onException(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 111
    :cond_3
    iget-object v0, p1, Ldlk;->c:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/alibaba/wukong/im/Message;

    .line 112
    .local v4, "message":Lcom/alibaba/wukong/im/Message;
    iget-object v0, p1, Ldlk;->b:Lcom/alibaba/wukong/im/Conversation;

    invoke-static {v4, v0}, Lcom/alibaba/android/dingtalkim/imtools/forward/ForwardType;->transformation(Lcom/alibaba/wukong/im/Message;Lcom/alibaba/wukong/im/Conversation;)Lcom/alibaba/android/dingtalkim/imtools/forward/ForwardType;

    move-result-object v3

    .line 2041
    .local v3, "type":Lcom/alibaba/android/dingtalkim/imtools/forward/ForwardType;
    if-nez p1, :cond_4

    move-object v8, v1

    .line 114
    .local v8, "singleParams":Ldln;
    :goto_3
    new-instance v0, Ldlg$1;

    move-object v1, p0

    move-object v2, p2

    move-object v5, p1

    move v6, p3

    invoke-direct/range {v0 .. v6}, Ldlg$1;-><init>(Ldlg;Ljava/util/ArrayList;Lcom/alibaba/android/dingtalkim/imtools/forward/ForwardType;Lcom/alibaba/wukong/im/Message;Ldlk;I)V

    .line 3040
    iput-object v0, v8, Ldlm;->d:Lcom/alibaba/wukong/Callback;

    .line 137
    sget-object v0, Lcom/alibaba/android/dingtalkim/imtools/forward/ForwardType;->ENCRYPT_FILE:Lcom/alibaba/android/dingtalkim/imtools/forward/ForwardType;

    if-ne v3, v0, :cond_5

    .line 138
    iget-object v0, p0, Ldlg;->c:Ljava/util/HashMap;

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/alibaba/wukong/im/Message;

    .line 139
    .local v7, "result":Lcom/alibaba/wukong/im/Message;
    if-eqz v7, :cond_5

    .line 141
    iput-object v7, v8, Ldln;->c:Ljava/lang/Object;

    .line 142
    iget-object v0, p0, Ldlg;->e:Landroid/util/SparseArray;

    sget-object v1, Lcom/alibaba/android/dingtalkim/imtools/forward/ForwardType;->NORMAL:Lcom/alibaba/android/dingtalkim/imtools/forward/ForwardType;

    invoke-virtual {v1}, Lcom/alibaba/android/dingtalkim/imtools/forward/ForwardType;->ordinal()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldlv;

    invoke-virtual {v0, v8}, Ldlv;->a(Ldlm;)V

    goto :goto_2

    .line 2045
    .end local v7    # "result":Lcom/alibaba/wukong/im/Message;
    .end local v8    # "singleParams":Ldln;
    :cond_4
    iget-object v0, p1, Ldlk;->c:Ljava/lang/Object;

    if-eqz v0, :cond_6

    .line 2046
    if-ltz p3, :cond_6

    iget-object v0, p1, Ldlk;->c:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p3, v0, :cond_6

    .line 2047
    iget-object v0, p1, Ldlk;->c:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/im/Message;

    .line 2050
    :goto_4
    new-instance v8, Ldln;

    iget-object v1, p1, Ldlk;->a:Landroid/app/Activity;

    iget-object v2, p1, Ldlk;->b:Lcom/alibaba/wukong/im/Conversation;

    invoke-direct {v8, v1, v2, v0}, Ldln;-><init>(Landroid/app/Activity;Lcom/alibaba/wukong/im/Conversation;Lcom/alibaba/wukong/im/Message;)V

    goto :goto_3

    .line 147
    .restart local v8    # "singleParams":Ldln;
    :cond_5
    iget-object v0, p0, Ldlg;->e:Landroid/util/SparseArray;

    invoke-virtual {v3}, Lcom/alibaba/android/dingtalkim/imtools/forward/ForwardType;->ordinal()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldlv;

    invoke-virtual {v0, v8}, Ldlv;->a(Ldlm;)V

    goto/16 :goto_2

    .end local v8    # "singleParams":Ldln;
    :cond_6
    move-object v0, v1

    goto :goto_4
.end method


# virtual methods
.method public final a(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ldlk;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 62
    .local p1, "paramsList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ldlk;>;"
    if-eqz p1, :cond_0

    .line 63
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    .line 64
    iget-object v0, p0, Ldlg;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 67
    :cond_0
    invoke-virtual {p0}, Ldlg;->c()V

    .line 68
    return-void
.end method

.method public final b()V
    .locals 1

    .prologue
    .line 57
    invoke-super {p0}, Ldli;->b()V

    .line 58
    iget-object v0, p0, Ldlg;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 59
    return-void
.end method

.method protected final c()V
    .locals 8

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 72
    iget-object v3, p0, Ldlg;->d:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-gtz v3, :cond_1

    .line 102
    :cond_0
    :goto_0
    return-void

    .line 76
    :cond_1
    iget-boolean v3, p0, Ldlg;->a:Z

    if-nez v3, :cond_0

    .line 82
    iput-boolean v5, p0, Ldlg;->a:Z

    .line 83
    iget-object v3, p0, Ldlg;->d:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ldlk;

    .line 85
    .local v1, "params":Ldlk;
    invoke-virtual {v1}, Ldlk;->b()Z

    move-result v3

    if-nez v3, :cond_3

    .line 86
    iget-object v3, v1, Ldlk;->d:Lcom/alibaba/wukong/Callback;

    if-eqz v3, :cond_2

    .line 87
    iget-object v3, v1, Ldlk;->d:Lcom/alibaba/wukong/Callback;

    const-string/jumbo v4, ""

    const-string/jumbo v5, "params is incorrect"

    invoke-interface {v3, v4, v5}, Lcom/alibaba/wukong/Callback;->onException(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    :cond_2
    invoke-virtual {p0}, Ldlg;->d()V

    goto :goto_0

    .line 93
    :cond_3
    invoke-static {}, Ldlg;->e()Z

    move-result v0

    .line 94
    .local v0, "isFeatureOpen":Z
    if-eqz v0, :cond_5

    .line 1025
    invoke-virtual {v1}, Ldlk;->b()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 1028
    iget-object v3, v1, Ldlk;->c:Ljava/lang/Object;

    check-cast v3, Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_4
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alibaba/wukong/im/Message;

    .line 1029
    iget-object v7, v1, Ldlk;->b:Lcom/alibaba/wukong/im/Conversation;

    invoke-static {v3, v7}, Lcom/alibaba/android/dingtalkim/imtools/forward/ForwardType;->transformation(Lcom/alibaba/wukong/im/Message;Lcom/alibaba/wukong/im/Conversation;)Lcom/alibaba/android/dingtalkim/imtools/forward/ForwardType;

    move-result-object v3

    .line 1030
    sget-object v7, Lcom/alibaba/android/dingtalkim/imtools/forward/ForwardType;->NORMAL:Lcom/alibaba/android/dingtalkim/imtools/forward/ForwardType;

    if-eq v3, v7, :cond_4

    move v3, v4

    .line 94
    :goto_1
    if-eqz v3, :cond_7

    .line 95
    :cond_5
    iget-object v3, p0, Ldlg;->e:Landroid/util/SparseArray;

    sget-object v4, Lcom/alibaba/android/dingtalkim/imtools/forward/ForwardType;->NORMAL:Lcom/alibaba/android/dingtalkim/imtools/forward/ForwardType;

    invoke-virtual {v4}, Lcom/alibaba/android/dingtalkim/imtools/forward/ForwardType;->ordinal()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ldlv;

    invoke-virtual {v3, v1}, Ldlv;->a(Ldlm;)V

    .line 96
    invoke-virtual {p0}, Ldlg;->d()V

    goto :goto_0

    :cond_6
    move v3, v5

    .line 1035
    goto :goto_1

    .line 100
    :cond_7
    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, v1, Ldlk;->c:Ljava/lang/Object;

    check-cast v3, Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 101
    .local v2, "results":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/wukong/im/Message;>;"
    invoke-direct {p0, v1, v2, v4}, Ldlg;->a(Ldlk;Ljava/util/ArrayList;I)V

    goto/16 :goto_0
.end method
