.class Lcom/amap/api/mapcore/util/a;
.super Lcom/autonavi/amap/mapcore/BaseMapCallImplement;
.source "AMapCallback.java"


# instance fields
.field private a:Lcom/amap/api/mapcore/util/b;


# direct methods
.method public constructor <init>(Lcom/amap/api/mapcore/util/b;)V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/autonavi/amap/mapcore/BaseMapCallImplement;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/amap/api/mapcore/util/a;->a:Lcom/amap/api/mapcore/util/b;

    .line 33
    return-void
.end method


# virtual methods
.method public OnMapDestory(Ljavax/microedition/khronos/opengles/GL10;Lcom/autonavi/amap/mapcore/MapCore;)V
    .locals 0

    .prologue
    .line 65
    invoke-super {p0, p2}, Lcom/autonavi/amap/mapcore/BaseMapCallImplement;->OnMapDestory(Lcom/autonavi/amap/mapcore/MapCore;)V

    .line 66
    return-void
.end method

.method public OnMapLoaderError(I)V
    .locals 0

    .prologue
    .line 108
    return-void
.end method

.method public OnMapProcessEvent(Lcom/autonavi/amap/mapcore/MapCore;)V
    .locals 0

    .prologue
    .line 61
    return-void
.end method

.method public OnMapReferencechanged(Lcom/autonavi/amap/mapcore/MapCore;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/amap/api/mapcore/util/a;->a:Lcom/amap/api/mapcore/util/b;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/b;->s()V

    .line 87
    return-void
.end method

.method public OnMapSufaceChanged(Ljavax/microedition/khronos/opengles/GL10;Lcom/autonavi/amap/mapcore/MapCore;II)V
    .locals 0

    .prologue
    .line 57
    return-void
.end method

.method public OnMapSurfaceCreate(Ljavax/microedition/khronos/opengles/GL10;Lcom/autonavi/amap/mapcore/MapCore;)V
    .locals 0

    .prologue
    .line 37
    invoke-super {p0, p2}, Lcom/autonavi/amap/mapcore/BaseMapCallImplement;->OnMapSurfaceCreate(Lcom/autonavi/amap/mapcore/MapCore;)V

    .line 38
    return-void
.end method

.method public OnMapSurfaceRenderer(Ljavax/microedition/khronos/opengles/GL10;Lcom/autonavi/amap/mapcore/MapCore;I)V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 43
    invoke-super {p0, p1, p2, p3}, Lcom/autonavi/amap/mapcore/BaseMapCallImplement;->OnMapSurfaceRenderer(Ljavax/microedition/khronos/opengles/GL10;Lcom/autonavi/amap/mapcore/MapCore;I)V

    .line 44
    const/4 v0, 0x3

    if-ne p3, v0, :cond_0

    .line 45
    iget-object v0, p0, Lcom/amap/api/mapcore/util/a;->a:Lcom/amap/api/mapcore/util/b;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/b;->j()V

    .line 46
    iget-object v0, p0, Lcom/amap/api/mapcore/util/a;->a:Lcom/amap/api/mapcore/util/b;

    iget-object v0, v0, Lcom/amap/api/mapcore/util/b;->b:Lcom/amap/api/mapcore/util/j;

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/amap/api/mapcore/util/a;->a:Lcom/amap/api/mapcore/util/b;

    .line 47
    invoke-virtual {v2}, Lcom/amap/api/mapcore/util/b;->getMapTextZIndex()I

    move-result v2

    .line 46
    invoke-virtual {v0, p1, v1, v2}, Lcom/amap/api/mapcore/util/j;->a(Ljavax/microedition/khronos/opengles/GL10;ZI)V

    .line 48
    iget-object v0, p0, Lcom/amap/api/mapcore/util/a;->a:Lcom/amap/api/mapcore/util/b;

    iget-object v0, v0, Lcom/amap/api/mapcore/util/b;->o:Lcom/amap/api/maps/CustomRenderer;

    if-eqz v0, :cond_0

    .line 49
    iget-object v0, p0, Lcom/amap/api/mapcore/util/a;->a:Lcom/amap/api/mapcore/util/b;

    iget-object v0, v0, Lcom/amap/api/mapcore/util/b;->o:Lcom/amap/api/maps/CustomRenderer;

    invoke-interface {v0, p1}, Lcom/amap/api/maps/CustomRenderer;->onDrawFrame(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 52
    :cond_0
    return-void
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/amap/api/mapcore/util/a;->a:Lcom/amap/api/mapcore/util/b;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/b;->t()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public getMapSvrAddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 28
    const-string/jumbo v0, "http://mps.amap.com"

    return-object v0
.end method

.method public isMapEngineValid()Z
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lcom/amap/api/mapcore/util/a;->a:Lcom/amap/api/mapcore/util/b;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/b;->a()Lcom/autonavi/amap/mapcore/MapCore;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 98
    iget-object v0, p0, Lcom/amap/api/mapcore/util/a;->a:Lcom/amap/api/mapcore/util/b;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/b;->a()Lcom/autonavi/amap/mapcore/MapCore;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autonavi/amap/mapcore/MapCore;->isMapEngineValid()Z

    move-result v0

    .line 100
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onIndoorBuildingActivity(Lcom/autonavi/amap/mapcore/MapCore;[B)V
    .locals 9

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v2, 0x0

    .line 118
    const/4 v0, 0x0

    .line 119
    if-eqz p2, :cond_3

    .line 120
    :try_start_0
    new-instance v1, Lcom/amap/api/mapcore/util/aq;

    invoke-direct {v1}, Lcom/amap/api/mapcore/util/aq;-><init>()V

    .line 123
    const/4 v0, 0x0

    aget-byte v0, p2, v0

    .line 124
    new-instance v3, Ljava/lang/String;

    const/4 v4, 0x1

    const-string/jumbo v5, "utf-8"

    invoke-direct {v3, p2, v4, v0, v5}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    iput-object v3, v1, Lcom/amap/api/mapcore/util/aq;->a:Ljava/lang/String;

    .line 125
    add-int/lit8 v0, v0, 0x1

    .line 126
    add-int/lit8 v3, v0, 0x1

    aget-byte v0, p2, v0

    .line 127
    new-instance v4, Ljava/lang/String;

    const-string/jumbo v5, "utf-8"

    invoke-direct {v4, p2, v3, v0, v5}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    iput-object v4, v1, Lcom/amap/api/mapcore/util/aq;->b:Ljava/lang/String;

    .line 128
    add-int/2addr v0, v3

    .line 129
    add-int/lit8 v3, v0, 0x1

    aget-byte v0, p2, v0

    .line 130
    new-instance v4, Ljava/lang/String;

    const-string/jumbo v5, "utf-8"

    invoke-direct {v4, p2, v3, v0, v5}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    iput-object v4, v1, Lcom/amap/api/mapcore/util/aq;->activeFloorName:Ljava/lang/String;

    .line 132
    add-int/2addr v0, v3

    .line 133
    invoke-static {p2, v0}, Lcom/autonavi/amap/mapcore/Convert;->getInt([BI)I

    move-result v3

    iput v3, v1, Lcom/amap/api/mapcore/util/aq;->activeFloorIndex:I

    .line 134
    add-int/lit8 v0, v0, 0x4

    .line 135
    add-int/lit8 v3, v0, 0x1

    aget-byte v0, p2, v0

    .line 136
    new-instance v4, Ljava/lang/String;

    const-string/jumbo v5, "utf-8"

    invoke-direct {v4, p2, v3, v0, v5}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    iput-object v4, v1, Lcom/amap/api/mapcore/util/aq;->poiid:Ljava/lang/String;

    .line 137
    add-int/2addr v0, v3

    .line 138
    invoke-static {p2, v0}, Lcom/autonavi/amap/mapcore/Convert;->getInt([BI)I

    move-result v3

    iput v3, v1, Lcom/amap/api/mapcore/util/aq;->c:I

    .line 139
    add-int/lit8 v0, v0, 0x4

    .line 140
    iget v3, v1, Lcom/amap/api/mapcore/util/aq;->c:I

    new-array v3, v3, [I

    iput-object v3, v1, Lcom/amap/api/mapcore/util/aq;->floor_indexs:[I

    .line 141
    iget v3, v1, Lcom/amap/api/mapcore/util/aq;->c:I

    new-array v3, v3, [Ljava/lang/String;

    iput-object v3, v1, Lcom/amap/api/mapcore/util/aq;->floor_names:[Ljava/lang/String;

    .line 142
    iget v3, v1, Lcom/amap/api/mapcore/util/aq;->c:I

    new-array v3, v3, [Ljava/lang/String;

    iput-object v3, v1, Lcom/amap/api/mapcore/util/aq;->d:[Ljava/lang/String;

    move v4, v2

    .line 143
    :goto_0
    iget v3, v1, Lcom/amap/api/mapcore/util/aq;->c:I

    if-ge v4, v3, :cond_1

    .line 144
    iget-object v3, v1, Lcom/amap/api/mapcore/util/aq;->floor_indexs:[I

    invoke-static {p2, v0}, Lcom/autonavi/amap/mapcore/Convert;->getInt([BI)I

    move-result v5

    aput v5, v3, v4

    .line 146
    add-int/lit8 v3, v0, 0x4

    .line 147
    add-int/lit8 v0, v3, 0x1

    aget-byte v3, p2, v3

    .line 148
    if-lez v3, :cond_4

    .line 149
    iget-object v5, v1, Lcom/amap/api/mapcore/util/aq;->floor_names:[Ljava/lang/String;

    new-instance v6, Ljava/lang/String;

    const-string/jumbo v7, "utf-8"

    invoke-direct {v6, p2, v0, v3, v7}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    aput-object v6, v5, v4

    .line 151
    add-int/2addr v0, v3

    move v3, v0

    .line 154
    :goto_1
    add-int/lit8 v0, v3, 0x1

    aget-byte v3, p2, v3

    .line 155
    if-lez v3, :cond_0

    .line 156
    iget-object v5, v1, Lcom/amap/api/mapcore/util/aq;->d:[Ljava/lang/String;

    new-instance v6, Ljava/lang/String;

    const-string/jumbo v7, "utf-8"

    invoke-direct {v6, p2, v0, v3, v7}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    aput-object v6, v5, v4

    .line 158
    add-int/2addr v0, v3

    .line 143
    :cond_0
    add-int/lit8 v3, v4, 0x1

    move v4, v3

    goto :goto_0

    .line 164
    :cond_1
    invoke-static {p2, v0}, Lcom/autonavi/amap/mapcore/Convert;->getInt([BI)I

    move-result v3

    iput v3, v1, Lcom/amap/api/mapcore/util/aq;->e:I

    .line 165
    add-int/lit8 v0, v0, 0x4

    .line 166
    iget v3, v1, Lcom/amap/api/mapcore/util/aq;->e:I

    if-lez v3, :cond_2

    .line 167
    iget v3, v1, Lcom/amap/api/mapcore/util/aq;->e:I

    new-array v3, v3, [I

    iput-object v3, v1, Lcom/amap/api/mapcore/util/aq;->f:[I

    move v8, v2

    move v2, v0

    move v0, v8

    .line 168
    :goto_2
    iget v3, v1, Lcom/amap/api/mapcore/util/aq;->e:I

    if-ge v0, v3, :cond_2

    .line 169
    iget-object v3, v1, Lcom/amap/api/mapcore/util/aq;->f:[I

    invoke-static {p2, v2}, Lcom/autonavi/amap/mapcore/Convert;->getInt([BI)I

    move-result v4

    aput v4, v3, v0

    .line 171
    add-int/lit8 v2, v2, 0x4

    .line 168
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_2
    move-object v0, v1

    .line 175
    :cond_3
    iget-object v1, p0, Lcom/amap/api/mapcore/util/a;->a:Lcom/amap/api/mapcore/util/b;

    invoke-virtual {v1, v0}, Lcom/amap/api/mapcore/util/b;->a(Lcom/amap/api/mapcore/util/aq;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 181
    :goto_3
    return-void

    .line 176
    :catch_0
    move-exception v0

    .line 177
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 178
    const-string/jumbo v1, "AMapCallback"

    const-string/jumbo v2, "onIndoorBuildingActivity"

    invoke-static {v0, v1, v2}, Lcom/amap/api/mapcore/util/ft;->b(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :cond_4
    move v3, v0

    goto :goto_1
.end method

.method public onIndoorDataRequired(Lcom/autonavi/amap/mapcore/MapCore;I[Ljava/lang/String;[I[I)V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 188
    if-eqz p3, :cond_0

    array-length v0, p3

    if-nez v0, :cond_1

    .line 207
    :cond_0
    :goto_0
    return-void

    .line 193
    :cond_1
    invoke-virtual {p0, p2}, Lcom/amap/api/mapcore/util/a;->getReqGridList(I)Ljava/util/ArrayList;

    move-result-object v1

    .line 195
    if-eqz v1, :cond_0

    .line 196
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 197
    const/4 v0, 0x0

    :goto_1
    array-length v2, p3

    if-ge v0, v2, :cond_2

    .line 198
    new-instance v2, Lcom/autonavi/amap/mapcore/MapSourceGridData;

    aget-object v3, p3, v0

    aget v4, p4, v0

    aget v5, p5, v0

    invoke-direct {v2, v3, p2, v4, v5}, Lcom/autonavi/amap/mapcore/MapSourceGridData;-><init>(Ljava/lang/String;III)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 197
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 202
    :cond_2
    const/4 v0, 0x5

    if-eq p2, v0, :cond_0

    .line 203
    invoke-virtual {p0, p1, v1, p2}, Lcom/amap/api/mapcore/util/a;->proccessRequiredData(Lcom/autonavi/amap/mapcore/MapCore;Ljava/util/ArrayList;I)V

    goto :goto_0
.end method

.method public requestRender()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 112
    iget-object v0, p0, Lcom/amap/api/mapcore/util/a;->a:Lcom/amap/api/mapcore/util/b;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/amap/api/mapcore/util/b;->setRunLowFrame(Z)V

    .line 113
    return-void
.end method
