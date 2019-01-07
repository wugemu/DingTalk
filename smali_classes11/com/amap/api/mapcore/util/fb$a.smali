.class Lcom/amap/api/mapcore/util/fb$a;
.super Ljava/lang/Object;
.source "TraceManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amap/api/mapcore/util/fb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/amap/api/mapcore/util/fb;

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Liuv;",
            ">;"
        }
    .end annotation
.end field

.field private c:I

.field private d:I

.field private e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Liuv;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/amap/api/mapcore/util/fb;ILjava/util/List;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Liuv;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 77
    iput-object p1, p0, Lcom/amap/api/mapcore/util/fb$a;->a:Lcom/amap/api/mapcore/util/fb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amap/api/mapcore/util/fb$a;->b:Ljava/util/List;

    .line 78
    iput p4, p0, Lcom/amap/api/mapcore/util/fb$a;->c:I

    .line 79
    iput p2, p0, Lcom/amap/api/mapcore/util/fb$a;->d:I

    .line 80
    iput-object p3, p0, Lcom/amap/api/mapcore/util/fb$a;->e:Ljava/util/List;

    .line 81
    return-void
.end method

.method private a()I
    .locals 8

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v0, 0x0

    .line 201
    .line 202
    iget-object v1, p0, Lcom/amap/api/mapcore/util/fb$a;->e:Ljava/util/List;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/amap/api/mapcore/util/fb$a;->e:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_2

    :cond_0
    move v1, v0

    .line 218
    :cond_1
    return v1

    .line 205
    :cond_2
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 206
    iget-object v1, p0, Lcom/amap/api/mapcore/util/fb$a;->e:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v1, v0

    :cond_3
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Liuv;

    .line 207
    if-eqz v0, :cond_3

    .line 4099
    iget v4, v0, Liuv;->c:F

    .line 210
    float-to-double v4, v4

    const-wide v6, 0x3f847ae147ae147bL    # 0.01

    cmpg-double v4, v4, v6

    if-gez v4, :cond_4

    .line 211
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 214
    :cond_4
    invoke-direct {p0, v2}, Lcom/amap/api/mapcore/util/fb$a;->a(Ljava/util/List;)I

    move-result v0

    add-int/2addr v0, v1

    .line 215
    invoke-interface {v2}, Ljava/util/List;->clear()V

    move v1, v0

    .line 217
    goto :goto_0
.end method

.method private a(Ljava/util/List;)I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Liuv;",
            ">;)I"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v2, 0x0

    .line 223
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    .line 224
    const/4 v0, 0x1

    if-gt v1, v0, :cond_1

    .line 237
    :cond_0
    :goto_0
    return v2

    .line 227
    :cond_1
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Liuv;

    .line 228
    add-int/lit8 v1, v1, -0x1

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Liuv;

    .line 229
    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    .line 232
    if-eqz v0, :cond_2

    if-eqz v1, :cond_2

    .line 4137
    iget-wide v2, v1, Liuv;->e:J

    .line 5137
    iget-wide v0, v0, Liuv;->e:J

    .line 233
    sub-long v0, v2, v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    long-to-int v0, v0

    :goto_1
    move v2, v0

    .line 237
    goto :goto_0

    :cond_2
    move v0, v2

    .line 235
    goto :goto_1
.end method

.method private a(Ljava/lang/String;)V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 191
    iget-object v0, p0, Lcom/amap/api/mapcore/util/fb$a;->a:Lcom/amap/api/mapcore/util/fb;

    invoke-static {v0}, Lcom/amap/api/mapcore/util/fb;->a(Lcom/amap/api/mapcore/util/fb;)Lcom/amap/api/mapcore/util/fb$b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/fb$b;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 192
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 193
    const/16 v1, 0x66

    iput v1, v0, Landroid/os/Message;->what:I

    .line 194
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 195
    const-string/jumbo v2, "lineID"

    iget v3, p0, Lcom/amap/api/mapcore/util/fb$a;->d:I

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 196
    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 197
    iget-object v1, p0, Lcom/amap/api/mapcore/util/fb$a;->a:Lcom/amap/api/mapcore/util/fb;

    invoke-static {v1}, Lcom/amap/api/mapcore/util/fb;->a(Lcom/amap/api/mapcore/util/fb;)Lcom/amap/api/mapcore/util/fb$b;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/amap/api/mapcore/util/fb$b;->sendMessage(Landroid/os/Message;)Z

    .line 198
    return-void
.end method


# virtual methods
.method public run()V
    .locals 14

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v13

    invoke-static {v13}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 86
    const/4 v2, 0x0

    .line 87
    const/4 v1, 0x0

    .line 88
    :try_start_0
    invoke-direct {p0}, Lcom/amap/api/mapcore/util/fb$a;->a()I

    move-result v5

    .line 89
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 90
    iget-object v0, p0, Lcom/amap/api/mapcore/util/fb$a;->e:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore/util/fb$a;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 91
    :cond_0
    const-string/jumbo v0, "\u8f68\u8ff9\u70b9\u592a\u5c11\u6216\u8ddd\u79bb\u592a\u8fd1,\u8f68\u8ff9\u7ea0\u504f\u5931\u8d25"

    invoke-direct {p0, v0}, Lcom/amap/api/mapcore/util/fb$a;->a(Ljava/lang/String;)V

    .line 188
    :goto_0
    return-void

    .line 94
    :cond_1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/fb$a;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Liuv;

    .line 1164
    new-instance v4, Liuv;

    invoke-direct {v4}, Liuv;-><init>()V

    .line 1165
    iget v7, v0, Liuv;->d:F

    iput v7, v4, Liuv;->d:F

    .line 1166
    iget-wide v8, v0, Liuv;->a:D

    iput-wide v8, v4, Liuv;->a:D

    .line 1167
    iget-wide v8, v0, Liuv;->b:D

    iput-wide v8, v4, Liuv;->b:D

    .line 1168
    iget v7, v0, Liuv;->c:F

    iput v7, v4, Liuv;->c:F

    .line 1169
    iget-wide v8, v0, Liuv;->e:J

    iput-wide v8, v4, Liuv;->e:J

    .line 2060
    iget-wide v8, v4, Liuv;->a:D

    .line 96
    const-wide/16 v10, 0x0

    cmpl-double v0, v8, v10

    if-lez v0, :cond_2

    .line 2079
    iget-wide v8, v4, Liuv;->b:D

    .line 97
    const-wide/16 v10, 0x0

    cmpl-double v0, v8, v10

    if-lez v0, :cond_2

    .line 98
    iget-object v0, p0, Lcom/amap/api/mapcore/util/fb$a;->b:Ljava/util/List;

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 185
    :catch_0
    move-exception v0

    .line 186
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 142
    :cond_3
    :try_start_1
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x2

    if-lt v0, v1, :cond_4

    .line 143
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v0

    const/16 v1, 0x1f4

    if-gt v0, v1, :cond_4

    .line 146
    new-instance v0, Lcom/amap/api/mapcore/util/fa;

    iget-object v1, p0, Lcom/amap/api/mapcore/util/fb$a;->a:Lcom/amap/api/mapcore/util/fb;

    invoke-static {v1}, Lcom/amap/api/mapcore/util/fb;->c(Lcom/amap/api/mapcore/util/fb;)Landroid/content/Context;

    move-result-object v1

    iget v4, p0, Lcom/amap/api/mapcore/util/fb$a;->c:I

    invoke-direct {v0, v1, v8, v4}, Lcom/amap/api/mapcore/util/fa;-><init>(Landroid/content/Context;Ljava/util/List;I)V

    .line 148
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .line 150
    :try_start_2
    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/fa;->d()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 151
    invoke-interface {v6, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 152
    iput-object v0, v7, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 153
    const/16 v0, 0x64

    iput v0, v7, Landroid/os/Message;->what:I

    .line 154
    iput v3, v7, Landroid/os/Message;->arg1:I

    .line 155
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 156
    const-string/jumbo v1, "lineID"

    iget v4, p0, Lcom/amap/api/mapcore/util/fb$a;->d:I

    invoke-virtual {v0, v1, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 157
    invoke-virtual {v7, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V
    :try_end_2
    .catch Lcom/amap/api/mapcore/util/ew; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    .line 158
    add-int/lit8 v1, v3, 0x1

    .line 159
    add-int/lit8 v0, v2, 0x1

    .line 164
    :try_start_3
    iget-object v2, p0, Lcom/amap/api/mapcore/util/fb$a;->a:Lcom/amap/api/mapcore/util/fb;

    invoke-static {v2}, Lcom/amap/api/mapcore/util/fb;->a(Lcom/amap/api/mapcore/util/fb;)Lcom/amap/api/mapcore/util/fb$b;

    move-result-object v2

    invoke-virtual {v2, v7}, Lcom/amap/api/mapcore/util/fb$b;->sendMessage(Landroid/os/Message;)Z
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0

    .line 166
    const-wide/16 v2, 0x32

    :try_start_4
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0

    move v2, v0

    move v3, v1

    .line 103
    :cond_4
    :goto_2
    :try_start_5
    iget-object v0, p0, Lcom/amap/api/mapcore/util/fb$a;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_b

    .line 104
    iget-object v0, p0, Lcom/amap/api/mapcore/util/fb$a;->a:Lcom/amap/api/mapcore/util/fb;

    invoke-static {v0}, Lcom/amap/api/mapcore/util/fb;->a(Lcom/amap/api/mapcore/util/fb;)Lcom/amap/api/mapcore/util/fb$b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/fb$b;->obtainMessage()Landroid/os/Message;

    move-result-object v7

    .line 106
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 107
    iget-object v0, p0, Lcom/amap/api/mapcore/util/fb$a;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 110
    const/16 v1, 0x1f7

    if-le v0, v1, :cond_8

    .line 111
    const/16 v0, 0x1f4

    move v1, v0

    .line 118
    :goto_3
    const/4 v0, 0x0

    move v4, v0

    :goto_4
    if-ge v4, v1, :cond_3

    .line 119
    iget-object v0, p0, Lcom/amap/api/mapcore/util/fb$a;->b:Ljava/util/List;

    const/4 v9, 0x0

    invoke-interface {v0, v9}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Liuv;

    .line 120
    if-eqz v0, :cond_7

    .line 123
    iget v9, p0, Lcom/amap/api/mapcore/util/fb$a;->c:I

    const/4 v10, 0x1

    if-eq v9, v10, :cond_6

    .line 124
    iget v9, p0, Lcom/amap/api/mapcore/util/fb$a;->c:I

    const/4 v10, 0x3

    if-ne v9, v10, :cond_a

    .line 125
    iget-object v9, p0, Lcom/amap/api/mapcore/util/fb$a;->a:Lcom/amap/api/mapcore/util/fb;

    invoke-static {v9}, Lcom/amap/api/mapcore/util/fb;->b(Lcom/amap/api/mapcore/util/fb;)Lcom/amap/api/maps/CoordinateConverter;

    move-result-object v9

    sget-object v10, Lcom/amap/api/maps/CoordinateConverter$CoordType;->BAIDU:Lcom/amap/api/maps/CoordinateConverter$CoordType;

    invoke-virtual {v9, v10}, Lcom/amap/api/maps/CoordinateConverter;->from(Lcom/amap/api/maps/CoordinateConverter$CoordType;)Lcom/amap/api/maps/CoordinateConverter;

    .line 129
    :cond_5
    :goto_5
    new-instance v9, Lcom/amap/api/maps/model/LatLng;

    .line 3060
    iget-wide v10, v0, Liuv;->a:D

    .line 3079
    iget-wide v12, v0, Liuv;->b:D

    .line 131
    invoke-direct {v9, v10, v11, v12, v13}, Lcom/amap/api/maps/model/LatLng;-><init>(DD)V

    .line 132
    iget-object v10, p0, Lcom/amap/api/mapcore/util/fb$a;->a:Lcom/amap/api/mapcore/util/fb;

    invoke-static {v10}, Lcom/amap/api/mapcore/util/fb;->b(Lcom/amap/api/mapcore/util/fb;)Lcom/amap/api/maps/CoordinateConverter;

    move-result-object v10

    invoke-virtual {v10, v9}, Lcom/amap/api/maps/CoordinateConverter;->coord(Lcom/amap/api/maps/model/LatLng;)Lcom/amap/api/maps/CoordinateConverter;

    .line 133
    iget-object v9, p0, Lcom/amap/api/mapcore/util/fb$a;->a:Lcom/amap/api/mapcore/util/fb;

    invoke-static {v9}, Lcom/amap/api/mapcore/util/fb;->b(Lcom/amap/api/mapcore/util/fb;)Lcom/amap/api/maps/CoordinateConverter;

    move-result-object v9

    .line 134
    invoke-virtual {v9}, Lcom/amap/api/maps/CoordinateConverter;->convert()Lcom/amap/api/maps/model/LatLng;

    move-result-object v9

    .line 135
    if-eqz v9, :cond_6

    .line 136
    iget-wide v10, v9, Lcom/amap/api/maps/model/LatLng;->latitude:D

    .line 4070
    invoke-static {v10, v11}, Liuv;->a(D)D

    move-result-wide v10

    iput-wide v10, v0, Liuv;->a:D

    .line 137
    iget-wide v10, v9, Lcom/amap/api/maps/model/LatLng;->longitude:D

    .line 4089
    invoke-static {v10, v11}, Liuv;->a(D)D

    move-result-wide v10

    iput-wide v10, v0, Liuv;->b:D

    .line 140
    :cond_6
    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 118
    :cond_7
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_4

    .line 112
    :cond_8
    const/16 v1, 0x1f7

    if-gt v0, v1, :cond_9

    const/16 v1, 0x1f4

    if-le v0, v1, :cond_9

    .line 114
    const/4 v0, 0x3

    move v1, v0

    goto :goto_3

    .line 116
    :cond_9
    iget-object v0, p0, Lcom/amap/api/mapcore/util/fb$a;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    move v1, v0

    goto :goto_3

    .line 126
    :cond_a
    iget v9, p0, Lcom/amap/api/mapcore/util/fb$a;->c:I

    const/4 v10, 0x2

    if-ne v9, v10, :cond_5

    .line 127
    iget-object v9, p0, Lcom/amap/api/mapcore/util/fb$a;->a:Lcom/amap/api/mapcore/util/fb;

    invoke-static {v9}, Lcom/amap/api/mapcore/util/fb;->b(Lcom/amap/api/mapcore/util/fb;)Lcom/amap/api/maps/CoordinateConverter;

    move-result-object v9

    sget-object v10, Lcom/amap/api/maps/CoordinateConverter$CoordType;->GPS:Lcom/amap/api/maps/CoordinateConverter$CoordType;

    invoke-virtual {v9, v10}, Lcom/amap/api/maps/CoordinateConverter;->from(Lcom/amap/api/maps/CoordinateConverter$CoordType;)Lcom/amap/api/maps/CoordinateConverter;

    goto :goto_5

    .line 160
    :catch_1
    move-exception v0

    .line 161
    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/ew;->a()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/amap/api/mapcore/util/fb$a;->a(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 167
    :catch_2
    move-exception v2

    .line 168
    invoke-virtual {v2}, Ljava/lang/InterruptedException;->printStackTrace()V

    move v2, v0

    move v3, v1

    .line 170
    goto/16 :goto_2

    .line 171
    :cond_b
    if-lez v2, :cond_c

    .line 172
    invoke-static {v6}, Lcom/amap/api/mapcore/util/ez;->a(Ljava/util/List;)I

    move-result v0

    .line 173
    iget-object v1, p0, Lcom/amap/api/mapcore/util/fb$a;->a:Lcom/amap/api/mapcore/util/fb;

    invoke-static {v1}, Lcom/amap/api/mapcore/util/fb;->a(Lcom/amap/api/mapcore/util/fb;)Lcom/amap/api/mapcore/util/fb$b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amap/api/mapcore/util/fb$b;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    .line 174
    iput-object v6, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 175
    const/16 v2, 0x65

    iput v2, v1, Landroid/os/Message;->what:I

    .line 176
    iput v0, v1, Landroid/os/Message;->arg1:I

    .line 177
    iput v5, v1, Landroid/os/Message;->arg2:I

    .line 178
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 179
    const-string/jumbo v2, "lineID"

    iget v3, p0, Lcom/amap/api/mapcore/util/fb$a;->d:I

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 180
    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 181
    iget-object v0, p0, Lcom/amap/api/mapcore/util/fb$a;->a:Lcom/amap/api/mapcore/util/fb;

    invoke-static {v0}, Lcom/amap/api/mapcore/util/fb;->a(Lcom/amap/api/mapcore/util/fb;)Lcom/amap/api/mapcore/util/fb$b;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/amap/api/mapcore/util/fb$b;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    .line 183
    :cond_c
    const-string/jumbo v0, "\u8f68\u8ff9\u70b9\u592a\u5c11\u6216\u8ddd\u79bb\u592a\u8fd1,\u8f68\u8ff9\u7ea0\u504f\u5931\u8d25"

    invoke-direct {p0, v0}, Lcom/amap/api/mapcore/util/fb$a;->a(Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_0

    goto/16 :goto_0

    :cond_d
    move v3, v2

    move v2, v1

    goto/16 :goto_2
.end method
