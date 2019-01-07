.class public final Liyw;
.super Ljava/lang/Object;
.source "RpcCall.java"

# interfaces
.implements Lcom/laiwang/protocol/ResetListener;
.implements Ljava/lang/reflect/InvocationHandler;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Liyw$a;,
        Liyw$b;
    }
.end annotation


# static fields
.field private static a:Ljava/lang/String;


# instance fields
.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private final e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Liyw$b;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    const-string/jumbo v0, "Adaptor"

    sput-object v0, Liyw;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "appName"    # Ljava/lang/String;
    .param p2, "alias"    # Ljava/lang/String;
    .param p3, "bizName"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object v0, p0, Liyw;->b:Ljava/lang/String;

    .line 32
    iput-object v0, p0, Liyw;->c:Ljava/lang/String;

    .line 33
    iput-object v0, p0, Liyw;->d:Ljava/lang/String;

    .line 34
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Liyw;->e:Ljava/util/List;

    .line 41
    iput-object p1, p0, Liyw;->b:Ljava/lang/String;

    .line 42
    iput-object p3, p0, Liyw;->c:Ljava/lang/String;

    .line 43
    iput-object p2, p0, Liyw;->d:Ljava/lang/String;

    .line 44
    invoke-static {p0}, Lcom/laiwang/protocol/android/LWP;->addLogoutListener(Lcom/laiwang/protocol/ResetListener;)V

    .line 45
    return-void
.end method

.method private static a(Lcom/laiwang/protocol/core/Request$Builder;[Ljava/lang/Object;)Lcom/laiwang/protocol/core/Request$Builder;
    .locals 7
    .param p0, "request"    # Lcom/laiwang/protocol/core/Request$Builder;
    .param p1, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 133
    if-eqz p1, :cond_0

    array-length v4, p1

    const/4 v5, 0x1

    if-gt v4, v5, :cond_1

    .line 145
    .end local p0    # "request":Lcom/laiwang/protocol/core/Request$Builder;
    :cond_0
    :goto_0
    return-object p0

    .line 136
    .restart local p0    # "request":Lcom/laiwang/protocol/core/Request$Builder;
    :cond_1
    const-string/jumbo v4, "dt"

    invoke-virtual {p0, v4}, Lcom/laiwang/protocol/core/Request$Builder;->headers(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 137
    .local v1, "dtList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string/jumbo v0, "p"

    .line 138
    .local v0, "dt":Ljava/lang/String;
    if-eqz v1, :cond_2

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_2

    .line 139
    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "dt":Ljava/lang/String;
    check-cast v0, Ljava/lang/String;

    .line 141
    .restart local v0    # "dt":Ljava/lang/String;
    :cond_2
    array-length v4, p1

    add-int/lit8 v4, v4, -0x1

    new-array v3, v4, [Ljava/lang/Object;

    .line 142
    .local v3, "newArgs":[Ljava/lang/Object;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    array-length v4, v3

    if-ge v2, v4, :cond_3

    .line 143
    aget-object v4, p1, v2

    aput-object v4, v3, v2

    .line 142
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 145
    :cond_3
    invoke-static {v0}, Ljad;->a(Ljava/lang/String;)Ljac;

    move-result-object v4

    invoke-interface {v4, v3, v6}, Ljac;->a(Ljava/lang/Object;Z)[B

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/laiwang/protocol/core/Request$Builder;->payload([B)Lcom/laiwang/protocol/core/Request$Builder;

    move-result-object p0

    goto :goto_0
.end method

.method static synthetic a(Liyw;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Liyw;

    .prologue
    .line 28
    iget-object v0, p0, Liyw;->e:Ljava/util/List;

    return-object v0
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 15
    .param p1, "proxy"    # Ljava/lang/Object;
    .param p2, "method"    # Ljava/lang/reflect/Method;
    .param p3, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v14

    invoke-static {v14}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 49
    invoke-virtual/range {p2 .. p2}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v10

    .line 50
    .local v10, "types":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    array-length v11, v10

    if-eqz v11, :cond_0

    const-class v11, Liyv;

    array-length v12, v10

    add-int/lit8 v12, v12, -0x1

    aget-object v12, v10, v12

    invoke-virtual {v11, v12}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v11

    if-nez v11, :cond_1

    .line 52
    :cond_0
    new-instance v11, Ljava/lang/IllegalArgumentException;

    new-instance v12, Ljava/lang/StringBuilder;

    const-string/jumbo v13, "RequestHandler should be the last parameter at: "

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 55
    :cond_1
    array-length v11, v10

    add-int/lit8 v11, v11, -0x1

    aget-object v4, p3, v11

    check-cast v4, Liyv;

    .line 1114
    .local v4, "handler":Liyv;, "Liyv<Ljava/lang/Object;>;"
    :try_start_0
    invoke-virtual/range {p2 .. p2}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lizn;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 1115
    new-instance v14, Ljava/lang/StringBuilder;

    sget-object v12, Lizn;->a:Ljava/lang/String;

    invoke-direct {v14, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1116
    iget-object v12, p0, Liyw;->b:Ljava/lang/String;

    if-eqz v12, :cond_2

    .line 1118
    sget-object v12, Liyw;->a:Ljava/lang/String;

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    sget-object v13, Lizn;->b:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1120
    :cond_2
    iget-object v12, p0, Liyw;->d:Ljava/lang/String;

    if-eqz v12, :cond_c

    .line 1121
    iget-object v11, p0, Liyw;->d:Ljava/lang/String;

    move-object v13, v11

    .line 1123
    :goto_0
    invoke-virtual/range {p2 .. p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v12

    .line 1124
    const-class v11, Lcom/laiwang/idl/Alias;

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Ljava/lang/reflect/Method;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v11

    check-cast v11, Lcom/laiwang/idl/Alias;

    .line 1125
    if-eqz v11, :cond_b

    .line 1126
    invoke-interface {v11}, Lcom/laiwang/idl/Alias;->value()Ljava/lang/String;

    move-result-object v11

    .line 1129
    :goto_1
    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    sget-object v13, Lizn;->b:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 59
    invoke-static {v11}, Lcom/laiwang/protocol/core/Request;->request(Ljava/lang/String;)Lcom/laiwang/protocol/core/Request$Builder;

    move-result-object v2

    .line 60
    .local v2, "builder":Lcom/laiwang/protocol/core/Request$Builder;
    const-string/jumbo v11, "mid"

    invoke-interface {v4, v11}, Liyv;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    .line 61
    .local v6, "obj":Ljava/lang/Object;
    if-eqz v6, :cond_3

    .line 62
    const-string/jumbo v11, "mid"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, " 0"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v2, v11, v12}, Lcom/laiwang/protocol/core/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lcom/laiwang/protocol/core/Request$Builder;

    .line 65
    :cond_3
    instance-of v11, v4, Liyr;

    if-eqz v11, :cond_4

    .line 66
    const-string/jumbo v11, "stream"

    const-string/jumbo v12, "new"

    invoke-virtual {v2, v11, v12}, Lcom/laiwang/protocol/core/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lcom/laiwang/protocol/core/Request$Builder;

    .line 68
    :cond_4
    iget-object v11, p0, Liyw;->c:Ljava/lang/String;

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_5

    .line 69
    sget-object v11, Lcom/laiwang/protocol/attribute/Attributes;->REQUEST_BIZ_NAME:Lcom/laiwang/protocol/attribute/AttributeKey;

    iget-object v12, p0, Liyw;->c:Ljava/lang/String;

    invoke-virtual {v2, v11, v12}, Lcom/laiwang/protocol/core/Request$Builder;->attr(Lcom/laiwang/protocol/attribute/AttributeKey;Ljava/lang/Object;)V

    .line 72
    :cond_5
    invoke-interface {v4, v2}, Liyv;->setRequestBuilder(Lcom/laiwang/protocol/core/Request$Builder;)V

    .line 74
    invoke-interface {v4}, Liyv;->getRequestFilterChain()Liyu;

    move-result-object v11

    invoke-virtual {v11, v4}, Liyu;->a(Liys;)V

    .line 76
    invoke-interface {v4}, Liyv;->getRequestBuilder()Lcom/laiwang/protocol/core/Request$Builder;

    move-result-object v11

    move-object/from16 v0, p3

    invoke-static {v11, v0}, Liyw;->a(Lcom/laiwang/protocol/core/Request$Builder;[Ljava/lang/Object;)Lcom/laiwang/protocol/core/Request$Builder;

    move-result-object v11

    invoke-interface {v4, v11}, Liyv;->setRequestBuilder(Lcom/laiwang/protocol/core/Request$Builder;)V

    .line 78
    invoke-interface {v4}, Liyv;->getRequestFilterChain()Liyu;

    move-result-object v11

    invoke-virtual {v11, v4}, Liyu;->b(Liys;)V

    .line 80
    invoke-interface {v4}, Liyv;->getRequestBuilder()Lcom/laiwang/protocol/core/Request$Builder;

    move-result-object v11

    invoke-virtual {v11}, Lcom/laiwang/protocol/core/Request$Builder;->build()Lcom/laiwang/protocol/core/Request;

    move-result-object v7

    .line 81
    .local v7, "request":Lcom/laiwang/protocol/core/Request;
    const-class v11, Lcom/laiwang/idl/NoAuth;

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Ljava/lang/reflect/Method;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v11

    if-eqz v11, :cond_6

    .line 82
    sget-object v11, Lcom/laiwang/protocol/attribute/Attributes;->NO_AUTH:Lcom/laiwang/protocol/attribute/AttributeKey;

    invoke-virtual {v7, v11}, Lcom/laiwang/protocol/core/Request;->attr(Lcom/laiwang/protocol/attribute/AttributeKey;)Lcom/laiwang/protocol/attribute/Attribute;

    move-result-object v11

    const/4 v12, 0x1

    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    invoke-interface {v11, v12}, Lcom/laiwang/protocol/attribute/Attribute;->set(Ljava/lang/Object;)V

    .line 84
    :cond_6
    const-class v11, Lcom/laiwang/idl/AntRpcCache;

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Ljava/lang/reflect/Method;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v1

    .line 85
    .local v1, "annotation":Ljava/lang/annotation/Annotation;
    new-instance v8, Liyw$a;

    invoke-direct {v8, p0, v4}, Liyw$a;-><init>(Liyw;Liyv;)V

    .line 86
    .local v8, "responseReply":Liyw$a;
    if-eqz v1, :cond_8

    .line 87
    iget-object v12, p0, Liyw;->e:Ljava/util/List;

    monitor-enter v12
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 89
    :try_start_1
    new-instance v9, Liyw$b;

    invoke-virtual/range {p2 .. p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p3

    invoke-direct {v9, v11, v0}, Liyw$b;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 90
    .local v9, "rpcKey":Liyw$b;
    iget-object v11, p0, Liyw;->e:Ljava/util/List;

    invoke-interface {v11, v9}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v5

    .line 91
    .local v5, "index":I
    const/4 v11, -0x1

    if-eq v5, v11, :cond_7

    .line 92
    iget-object v11, p0, Liyw;->e:Ljava/util/List;

    invoke-interface {v11, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    .end local v9    # "rpcKey":Liyw$b;
    check-cast v9, Liyw$b;

    .line 1163
    .restart local v9    # "rpcKey":Liyw$b;
    iget-object v8, v9, Liyw$b;->a:Liyw$a;

    .line 1217
    iget-object v11, v8, Liyw$a;->a:Ljava/util/List;

    invoke-interface {v11, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 95
    const/4 v11, 0x0

    monitor-exit v12

    .line 109
    .end local v1    # "annotation":Ljava/lang/annotation/Annotation;
    .end local v2    # "builder":Lcom/laiwang/protocol/core/Request$Builder;
    .end local v5    # "index":I
    .end local v6    # "obj":Ljava/lang/Object;
    .end local v7    # "request":Lcom/laiwang/protocol/core/Request;
    .end local v8    # "responseReply":Liyw$a;
    .end local v9    # "rpcKey":Liyw$b;
    :goto_2
    return-object v11

    .line 1221
    .restart local v1    # "annotation":Ljava/lang/annotation/Annotation;
    .restart local v2    # "builder":Lcom/laiwang/protocol/core/Request$Builder;
    .restart local v5    # "index":I
    .restart local v6    # "obj":Ljava/lang/Object;
    .restart local v7    # "request":Lcom/laiwang/protocol/core/Request;
    .restart local v8    # "responseReply":Liyw$a;
    .restart local v9    # "rpcKey":Liyw$b;
    :cond_7
    iput-object v9, v8, Liyw$a;->b:Liyw$b;

    .line 2174
    iput-object v8, v9, Liyw$b;->a:Liyw$a;

    .line 100
    iget-object v11, p0, Liyw;->e:Ljava/util/List;

    invoke-interface {v11, v9}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 101
    iget-object v11, p0, Liyw;->e:Ljava/util/List;

    invoke-interface {v11, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 102
    monitor-exit v12
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 105
    .end local v5    # "index":I
    .end local v9    # "rpcKey":Liyw$b;
    :cond_8
    :try_start_2
    const-class v11, Lcom/laiwang/idl/common/NoRetry;

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Ljava/lang/reflect/Method;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v11

    if-nez v11, :cond_9

    const/4 v11, 0x1

    .line 3149
    :goto_3
    if-nez v11, :cond_a

    .line 3150
    invoke-static {v7, v8}, Lcom/laiwang/protocol/android/LWP;->askOnce(Lcom/laiwang/protocol/core/Request;Lcom/laiwang/protocol/android/Reply;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    .line 106
    :goto_4
    const/4 v11, 0x0

    goto :goto_2

    .line 102
    :catchall_0
    move-exception v11

    :try_start_3
    monitor-exit v12
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v11
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0

    .line 107
    .end local v1    # "annotation":Ljava/lang/annotation/Annotation;
    .end local v2    # "builder":Lcom/laiwang/protocol/core/Request$Builder;
    .end local v6    # "obj":Ljava/lang/Object;
    .end local v7    # "request":Lcom/laiwang/protocol/core/Request;
    .end local v8    # "responseReply":Liyw$a;
    :catch_0
    move-exception v3

    .line 108
    .local v3, "e":Ljava/lang/Throwable;
    const/4 v11, 0x0

    invoke-interface {v4, v11, v3}, Liyv;->caught(Lcom/laiwang/idl/service/ResultError;Ljava/lang/Throwable;)V

    .line 109
    const/4 v11, 0x0

    goto :goto_2

    .line 105
    .end local v3    # "e":Ljava/lang/Throwable;
    .restart local v1    # "annotation":Ljava/lang/annotation/Annotation;
    .restart local v2    # "builder":Lcom/laiwang/protocol/core/Request$Builder;
    .restart local v6    # "obj":Ljava/lang/Object;
    .restart local v7    # "request":Lcom/laiwang/protocol/core/Request;
    .restart local v8    # "responseReply":Liyw$a;
    :cond_9
    const/4 v11, 0x0

    goto :goto_3

    .line 3152
    :cond_a
    :try_start_5
    invoke-static {v7, v8}, Lcom/laiwang/protocol/android/LWP;->ask(Lcom/laiwang/protocol/core/Request;Lcom/laiwang/protocol/android/Reply;)V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_0

    goto :goto_4

    .end local v1    # "annotation":Ljava/lang/annotation/Annotation;
    .end local v2    # "builder":Lcom/laiwang/protocol/core/Request$Builder;
    .end local v6    # "obj":Ljava/lang/Object;
    .end local v7    # "request":Lcom/laiwang/protocol/core/Request;
    .end local v8    # "responseReply":Liyw$a;
    :cond_b
    move-object v11, v12

    goto/16 :goto_1

    :cond_c
    move-object v13, v11

    goto/16 :goto_0
.end method

.method public final onReset()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 158
    iget-object v1, p0, Liyw;->e:Ljava/util/List;

    monitor-enter v1

    .line 159
    :try_start_0
    iget-object v0, p0, Liyw;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 160
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
