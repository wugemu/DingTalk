.class public Lhzk;
.super Ljava/lang/Object;
.source "GCanvasImageLoader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lhzk$a;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private b:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lhzk$a;",
            ">;"
        }
    .end annotation
.end field

.field private c:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/taobao/weex/bridge/JSCallback;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    const-class v0, Lhzk;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lhzk;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lhzk;->b:Ljava/util/HashMap;

    .line 29
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lhzk;->c:Ljava/util/HashMap;

    .line 31
    return-void
.end method

.method public static a(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 14
    .param p0, "url"    # Ljava/lang/String;

    .prologue
    .line 168
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v10

    .line 1014
    array-length v4, v10

    .line 1019
    div-int/lit8 v3, v4, 0x4

    mul-int/lit8 v3, v3, 0x3

    .line 1022
    if-nez v3, :cond_0

    .line 1023
    const/4 v3, 0x0

    new-array v1, v3, [B

    .line 169
    .local v1, "decodedBytes":[B
    :goto_0
    const/4 v3, 0x0

    array-length v4, v1

    invoke-static {v1, v3, v4}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 177
    .end local v1    # "decodedBytes":[B
    :goto_1
    return-object v0

    .line 1027
    :cond_0
    new-array v11, v3, [B

    .line 1030
    const/4 v3, 0x0

    move v9, v4

    .line 1035
    :goto_2
    add-int/lit8 v4, v9, -0x1

    aget-byte v4, v10, v4

    .line 1037
    const/16 v5, 0xa

    if-eq v4, v5, :cond_1

    const/16 v5, 0xd

    if-eq v4, v5, :cond_1

    const/16 v5, 0x20

    if-eq v4, v5, :cond_1

    const/16 v5, 0x9

    if-eq v4, v5, :cond_1

    .line 1040
    const/16 v5, 0x3d

    if-ne v4, v5, :cond_2

    .line 1041
    add-int/lit8 v3, v3, 0x1

    .line 1034
    :cond_1
    add-int/lit8 v4, v9, -0x1

    move v9, v4

    goto :goto_2

    .line 1048
    :cond_2
    const/4 v7, 0x0

    .line 1051
    const/4 v6, 0x0

    .line 1057
    const/4 v5, 0x0

    .line 1059
    const/4 v4, 0x0

    move v8, v4

    move v4, v7

    :goto_3
    if-ge v8, v9, :cond_9

    .line 1060
    aget-byte v7, v10, v8

    .line 1062
    const/16 v12, 0xa

    if-eq v7, v12, :cond_c

    const/16 v12, 0xd

    if-eq v7, v12, :cond_c

    const/16 v12, 0x20

    if-eq v7, v12, :cond_c

    const/16 v12, 0x9

    if-eq v7, v12, :cond_c

    .line 1065
    const/16 v12, 0x41

    if-lt v7, v12, :cond_4

    const/16 v12, 0x5a

    if-gt v7, v12, :cond_4

    .line 1069
    add-int/lit8 v7, v7, -0x41

    .line 1089
    :goto_4
    shl-int/lit8 v5, v5, 0x6

    int-to-byte v7, v7

    or-int/2addr v5, v7

    .line 1091
    rem-int/lit8 v7, v6, 0x4

    const/4 v12, 0x3

    if-ne v7, v12, :cond_3

    .line 1093
    add-int/lit8 v7, v4, 0x1

    shr-int/lit8 v12, v5, 0x10

    int-to-byte v12, v12

    aput-byte v12, v11, v4

    .line 1094
    add-int/lit8 v12, v7, 0x1

    shr-int/lit8 v4, v5, 0x8

    int-to-byte v4, v4

    aput-byte v4, v11, v7

    .line 1095
    add-int/lit8 v4, v12, 0x1

    int-to-byte v7, v5

    aput-byte v7, v11, v12

    .line 1098
    :cond_3
    add-int/lit8 v6, v6, 0x1

    move v13, v5

    move v5, v6

    move v6, v4

    move v4, v13

    .line 1059
    :goto_5
    add-int/lit8 v7, v8, 0x1

    move v8, v7

    move v13, v4

    move v4, v6

    move v6, v5

    move v5, v13

    goto :goto_3

    .line 1070
    :cond_4
    const/16 v12, 0x61

    if-lt v7, v12, :cond_5

    const/16 v12, 0x7a

    if-gt v7, v12, :cond_5

    .line 1074
    add-int/lit8 v7, v7, -0x47

    goto :goto_4

    .line 1075
    :cond_5
    const/16 v12, 0x30

    if-lt v7, v12, :cond_6

    const/16 v12, 0x39

    if-gt v7, v12, :cond_6

    .line 1079
    add-int/lit8 v7, v7, 0x4

    goto :goto_4

    .line 1080
    :cond_6
    const/16 v12, 0x2b

    if-ne v7, v12, :cond_7

    .line 1081
    const/16 v7, 0x3e

    goto :goto_4

    .line 1082
    :cond_7
    const/16 v12, 0x2f

    if-ne v7, v12, :cond_8

    .line 1083
    const/16 v7, 0x3f

    goto :goto_4

    .line 1085
    :cond_8
    const/4 v1, 0x0

    goto/16 :goto_0

    .line 1101
    :cond_9
    if-lez v3, :cond_a

    .line 1103
    mul-int/lit8 v6, v3, 0x6

    shl-int v6, v5, v6

    .line 1106
    add-int/lit8 v5, v4, 0x1

    shr-int/lit8 v7, v6, 0x10

    int-to-byte v7, v7

    aput-byte v7, v11, v4

    .line 1108
    const/4 v4, 0x1

    if-ne v3, v4, :cond_b

    .line 1109
    add-int/lit8 v4, v5, 0x1

    shr-int/lit8 v3, v6, 0x8

    int-to-byte v3, v3

    aput-byte v3, v11, v5

    .line 1114
    :cond_a
    :goto_6
    new-array v1, v4, [B

    .line 1115
    const/4 v3, 0x0

    const/4 v5, 0x0

    invoke-static {v11, v3, v1, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 173
    :catch_0
    move-exception v2

    .line 174
    .local v2, "e":Ljava/lang/Throwable;
    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "error in processing base64Texture,error="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljmj;->c(Ljava/lang/String;)V

    .line 177
    const/4 v0, 0x0

    goto/16 :goto_1

    .end local v2    # "e":Ljava/lang/Throwable;
    :cond_b
    move v4, v5

    goto :goto_6

    :cond_c
    move v13, v5

    move v5, v6

    move v6, v4

    move v4, v13

    goto :goto_5
.end method


# virtual methods
.method public final a(Ljava/lang/String;ILcom/taobao/weex/bridge/JSCallback;)V
    .locals 14
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "id"    # I
    .param p3, "callBack"    # Lcom/taobao/weex/bridge/JSCallback;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v13

    invoke-static {v13}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 51
    :try_start_0
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 53
    .local v4, "resultMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string/jumbo v1, "data:image"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 54
    const-string/jumbo v1, "base64,"

    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    add-int/lit8 v1, v1, 0x7

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lhzk;->a(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 55
    .local v7, "bmp":Landroid/graphics/Bitmap;
    if-eqz v7, :cond_1

    .line 56
    const-string/jumbo v1, "id"

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v4, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    const-string/jumbo v1, "url"

    invoke-virtual {v4, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    const-string/jumbo v1, "width"

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v4, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    const-string/jumbo v1, "height"

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v4, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    :goto_0
    move-object/from16 v0, p3

    invoke-interface {v0, v4}, Lcom/taobao/weex/bridge/JSCallback;->invoke(Ljava/lang/Object;)V

    .line 164
    .end local v4    # "resultMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v7    # "bmp":Landroid/graphics/Bitmap;
    :cond_0
    :goto_1
    return-void

    .line 61
    .restart local v4    # "resultMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    .restart local v7    # "bmp":Landroid/graphics/Bitmap;
    :cond_1
    const-string/jumbo v1, "error"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "process base64 failed,url="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 161
    .end local v4    # "resultMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v7    # "bmp":Landroid/graphics/Bitmap;
    :catch_0
    move-exception v11

    .line 162
    .local v11, "e":Ljava/lang/Throwable;
    sget-object v1, Lhzk;->a:Ljava/lang/String;

    invoke-virtual {v11}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v11}, Ljmj;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 69
    .end local v11    # "e":Ljava/lang/Throwable;
    .restart local v4    # "resultMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_2
    :try_start_1
    iget-object v1, p0, Lhzk;->b:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lhzk$a;

    .line 71
    .local v12, "imgInfo":Lhzk$a;
    if-nez v12, :cond_3

    .line 72
    new-instance v12, Lhzk$a;

    .end local v12    # "imgInfo":Lhzk$a;
    invoke-direct {v12}, Lhzk$a;-><init>()V

    .line 73
    .restart local v12    # "imgInfo":Lhzk$a;
    iget-object v1, p0, Lhzk;->b:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    :cond_3
    iget-object v1, v12, Lhzk$a;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_5

    .line 76
    iget-object v1, v12, Lhzk$a;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    const/16 v2, 0x100

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 77
    move/from16 v0, p2

    iput v0, v12, Lhzk$a;->a:I

    .line 78
    iget-object v1, p0, Lhzk;->c:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/ArrayList;

    .line 79
    .local v9, "callbacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/taobao/weex/bridge/JSCallback;>;"
    if-nez v9, :cond_4

    .line 80
    new-instance v9, Ljava/util/ArrayList;

    .end local v9    # "callbacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/taobao/weex/bridge/JSCallback;>;"
    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 81
    .restart local v9    # "callbacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/taobao/weex/bridge/JSCallback;>;"
    iget-object v1, p0, Lhzk;->c:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    :cond_4
    move-object/from16 v0, p3

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 84
    invoke-static {}, Lcom/taobao/phenix/intf/Phenix;->instance()Lcom/taobao/phenix/intf/Phenix;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/taobao/phenix/intf/Phenix;->load(Ljava/lang/String;)Lcom/taobao/phenix/intf/PhenixCreator;

    move-result-object v13

    new-instance v1, Lhzk$2;

    move-object v2, p0

    move-object v3, p1

    move/from16 v5, p2

    move-object/from16 v6, p3

    invoke-direct/range {v1 .. v6}, Lhzk$2;-><init>(Lhzk;Ljava/lang/String;Ljava/util/HashMap;ILcom/taobao/weex/bridge/JSCallback;)V

    invoke-virtual {v13, v1}, Lcom/taobao/phenix/intf/PhenixCreator;->succListener(Lcom/taobao/phenix/intf/event/IPhenixListener;)Lcom/taobao/phenix/intf/PhenixCreator;

    move-result-object v1

    new-instance v2, Lhzk$1;

    move-object/from16 v0, p3

    invoke-direct {v2, p0, v4, p1, v0}, Lhzk$1;-><init>(Lhzk;Ljava/util/HashMap;Ljava/lang/String;Lcom/taobao/weex/bridge/JSCallback;)V

    .line 123
    invoke-virtual {v1, v2}, Lcom/taobao/phenix/intf/PhenixCreator;->failListener(Lcom/taobao/phenix/intf/event/IPhenixListener;)Lcom/taobao/phenix/intf/PhenixCreator;

    move-result-object v1

    .line 139
    invoke-virtual {v1}, Lcom/taobao/phenix/intf/PhenixCreator;->fetch()Lcom/taobao/phenix/intf/PhenixTicket;

    goto/16 :goto_1

    .line 140
    .end local v9    # "callbacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/taobao/weex/bridge/JSCallback;>;"
    :cond_5
    const/16 v1, 0x100

    iget-object v2, v12, Lhzk$a;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    if-ne v1, v2, :cond_7

    .line 141
    iget-object v1, p0, Lhzk;->c:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/ArrayList;

    .line 142
    .restart local v9    # "callbacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/taobao/weex/bridge/JSCallback;>;"
    if-nez v9, :cond_6

    .line 143
    new-instance v9, Ljava/util/ArrayList;

    .end local v9    # "callbacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/taobao/weex/bridge/JSCallback;>;"
    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 144
    .restart local v9    # "callbacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/taobao/weex/bridge/JSCallback;>;"
    iget-object v1, p0, Lhzk;->c:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 147
    :cond_6
    move-object/from16 v0, p3

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 148
    .end local v9    # "callbacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/taobao/weex/bridge/JSCallback;>;"
    :cond_7
    const/16 v1, 0x200

    iget-object v2, v12, Lhzk$a;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    if-ne v1, v2, :cond_0

    .line 149
    const-string/jumbo v1, "id"

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v4, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 150
    const-string/jumbo v1, "url"

    invoke-virtual {v4, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 151
    const-string/jumbo v1, "width"

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v4, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 152
    const-string/jumbo v1, "height"

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v4, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 153
    iget-object v1, p0, Lhzk;->c:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/ArrayList;

    .line 154
    .local v8, "callbackList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/taobao/weex/bridge/JSCallback;>;"
    if-eqz v8, :cond_8

    .line 155
    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/taobao/weex/bridge/JSCallback;

    .line 156
    .local v10, "cb":Lcom/taobao/weex/bridge/JSCallback;
    invoke-interface {v10, v4}, Lcom/taobao/weex/bridge/JSCallback;->invoke(Ljava/lang/Object;)V

    goto :goto_2

    .line 159
    .end local v10    # "cb":Lcom/taobao/weex/bridge/JSCallback;
    :cond_8
    move-object/from16 v0, p3

    invoke-interface {v0, v4}, Lcom/taobao/weex/bridge/JSCallback;->invoke(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1
.end method
