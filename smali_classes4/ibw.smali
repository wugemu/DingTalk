.class public final Libw;
.super Ljava/lang/Object;
.source "MessageExtensionFilterUtil.java"


# static fields
.field private static final a:[Ljava/lang/String;

.field private static final b:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 41
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "sender_name"

    aput-object v1, v0, v3

    const-string/jumbo v1, "reaction_like_count"

    aput-object v1, v0, v4

    const/4 v1, 0x2

    const-string/jumbo v2, "reaction_comment_count"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string/jumbo v2, "reaction_read_count"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string/jumbo v2, "reaction_card"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string/jumbo v2, "authCode"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string/jumbo v2, "picAuthCode"

    aput-object v2, v0, v1

    sput-object v0, Libw;->a:[Ljava/lang/String;

    .line 49
    new-array v0, v4, [Ljava/lang/String;

    const-string/jumbo v1, "local_extra_chat_scene_read"

    aput-object v1, v0, v3

    sput-object v0, Libw;->b:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lcom/alibaba/wukong/im/message/MessageImpl;)Ljava/util/concurrent/ConcurrentHashMap;
    .locals 10
    .param p0, "message"    # Lcom/alibaba/wukong/im/message/MessageImpl;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/wukong/im/message/MessageImpl;",
            ")",
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v9, 0x7

    const/4 v5, 0x0

    .line 55
    if-eqz p0, :cond_0

    iget-object v6, p0, Lcom/alibaba/wukong/im/message/MessageImpl;->mExtension:Ljava/util/concurrent/ConcurrentHashMap;

    if-nez v6, :cond_2

    .line 56
    :cond_0
    const/4 v4, 0x0

    .line 87
    :cond_1
    :goto_0
    return-object v4

    .line 59
    :cond_2
    const/4 v3, 0x0

    .line 60
    .local v3, "needFilter":Z
    sget-object v7, Libw;->a:[Ljava/lang/String;

    move v6, v5

    :goto_1
    if-ge v6, v9, :cond_3

    aget-object v1, v7, v6

    .line 61
    .local v1, "key":Ljava/lang/String;
    iget-object v8, p0, Lcom/alibaba/wukong/im/message/MessageImpl;->mExtension:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v8, v1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 62
    const/4 v3, 0x1

    .line 67
    .end local v1    # "key":Ljava/lang/String;
    :cond_3
    if-nez v3, :cond_5

    .line 68
    iget-object v4, p0, Lcom/alibaba/wukong/im/message/MessageImpl;->mExtension:Ljava/util/concurrent/ConcurrentHashMap;

    goto :goto_0

    .line 60
    .restart local v1    # "key":Ljava/lang/String;
    :cond_4
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 75
    .end local v1    # "key":Ljava/lang/String;
    :cond_5
    :try_start_0
    iget-object v6, p0, Lcom/alibaba/wukong/im/message/MessageImpl;->mExtension:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v6}, Liea;->a(Ljava/util/concurrent/ConcurrentHashMap;)Ljava/util/concurrent/ConcurrentHashMap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 81
    .local v4, "resultExtension":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<Ljava/lang/String;Ljava/lang/String;>;"
    sget-object v6, Libw;->a:[Ljava/lang/String;

    :goto_2
    if-ge v5, v9, :cond_1

    aget-object v2, v6, v5

    .line 82
    .local v2, "keys":Ljava/lang/String;
    invoke-virtual {v4, v2}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 83
    invoke-virtual {v4, v2}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    :cond_6
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 76
    .end local v2    # "keys":Ljava/lang/String;
    .end local v4    # "resultExtension":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :catch_0
    move-exception v0

    .line 77
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 78
    iget-object v4, p0, Lcom/alibaba/wukong/im/message/MessageImpl;->mExtension:Ljava/util/concurrent/ConcurrentHashMap;

    goto :goto_0
.end method

.method public static b(Lcom/alibaba/wukong/im/message/MessageImpl;)Ljava/util/concurrent/ConcurrentHashMap;
    .locals 9
    .param p0, "message"    # Lcom/alibaba/wukong/im/message/MessageImpl;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/wukong/im/message/MessageImpl;",
            ")",
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 94
    if-eqz p0, :cond_0

    iget-object v5, p0, Lcom/alibaba/wukong/im/message/MessageImpl;->mLocalExtras:Ljava/util/concurrent/ConcurrentHashMap;

    if-nez v5, :cond_2

    .line 95
    :cond_0
    const/4 v4, 0x0

    .line 126
    :cond_1
    :goto_0
    return-object v4

    .line 98
    :cond_2
    const/4 v3, 0x0

    .line 99
    .local v3, "needFilter":Z
    sget-object v7, Libw;->b:[Ljava/lang/String;

    move v5, v6

    :goto_1
    if-gtz v5, :cond_3

    aget-object v1, v7, v6

    .line 100
    .local v1, "key":Ljava/lang/String;
    iget-object v8, p0, Lcom/alibaba/wukong/im/message/MessageImpl;->mLocalExtras:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v8, v1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 101
    const/4 v3, 0x1

    .line 106
    .end local v1    # "key":Ljava/lang/String;
    :cond_3
    if-nez v3, :cond_5

    .line 107
    iget-object v4, p0, Lcom/alibaba/wukong/im/message/MessageImpl;->mLocalExtras:Ljava/util/concurrent/ConcurrentHashMap;

    goto :goto_0

    .line 99
    .restart local v1    # "key":Ljava/lang/String;
    :cond_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 114
    .end local v1    # "key":Ljava/lang/String;
    :cond_5
    :try_start_0
    iget-object v5, p0, Lcom/alibaba/wukong/im/message/MessageImpl;->mLocalExtras:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v5}, Liea;->a(Ljava/util/concurrent/ConcurrentHashMap;)Ljava/util/concurrent/ConcurrentHashMap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 120
    .local v4, "resultExtension":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<Ljava/lang/String;Ljava/lang/String;>;"
    sget-object v7, Libw;->b:[Ljava/lang/String;

    move v5, v6

    :goto_2
    if-gtz v5, :cond_1

    aget-object v2, v7, v6

    .line 121
    .local v2, "keys":Ljava/lang/String;
    invoke-virtual {v4, v2}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 122
    invoke-virtual {v4, v2}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    :cond_6
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 115
    .end local v2    # "keys":Ljava/lang/String;
    .end local v4    # "resultExtension":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :catch_0
    move-exception v0

    .line 116
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 117
    iget-object v4, p0, Lcom/alibaba/wukong/im/message/MessageImpl;->mLocalExtras:Ljava/util/concurrent/ConcurrentHashMap;

    goto :goto_0
.end method
