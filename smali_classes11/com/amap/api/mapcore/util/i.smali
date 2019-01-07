.class public Lcom/amap/api/mapcore/util/i;
.super Ljava/lang/Object;
.source "GLMapResManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amap/api/mapcore/util/i$b;,
        Lcom/amap/api/mapcore/util/i$c;,
        Lcom/amap/api/mapcore/util/i$a;
    }
.end annotation


# instance fields
.field public a:Z

.field private b:Lcom/amap/api/mapcore/util/b;

.field private c:Landroid/content/Context;

.field private d:Lcom/autonavi/amap/mapcore/MapCore;


# direct methods
.method public constructor <init>(Lcom/amap/api/mapcore/util/b;Landroid/content/Context;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/amap/api/mapcore/util/i;->a:Z

    .line 70
    iput-object v1, p0, Lcom/amap/api/mapcore/util/i;->b:Lcom/amap/api/mapcore/util/b;

    .line 71
    iput-object v1, p0, Lcom/amap/api/mapcore/util/i;->c:Landroid/content/Context;

    .line 72
    iput-object v1, p0, Lcom/amap/api/mapcore/util/i;->d:Lcom/autonavi/amap/mapcore/MapCore;

    .line 103
    iput-object p1, p0, Lcom/amap/api/mapcore/util/i;->b:Lcom/amap/api/mapcore/util/b;

    .line 104
    iput-object p2, p0, Lcom/amap/api/mapcore/util/i;->c:Landroid/content/Context;

    .line 105
    iget-object v0, p0, Lcom/amap/api/mapcore/util/i;->b:Lcom/amap/api/mapcore/util/b;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/b;->a()Lcom/autonavi/amap/mapcore/MapCore;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/mapcore/util/i;->d:Lcom/autonavi/amap/mapcore/MapCore;

    .line 106
    return-void
.end method

.method static synthetic a(Lcom/amap/api/mapcore/util/i;)Lcom/autonavi/amap/mapcore/MapCore;
    .locals 1

    .prologue
    .line 17
    iget-object v0, p0, Lcom/amap/api/mapcore/util/i;->d:Lcom/autonavi/amap/mapcore/MapCore;

    return-object v0
.end method

.method private a(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 202
    const-string/jumbo v0, "icons_1_7_1444880368.data"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 203
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/amap/api/mapcore/util/i;->a:Z

    .line 204
    const-string/jumbo v0, "icons_4_6_1437480571.data"

    .line 207
    :goto_0
    return-object v0

    .line 206
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/amap/api/mapcore/util/i;->a:Z

    .line 207
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic a(Lcom/amap/api/mapcore/util/i;[B[B[B[B[B)V
    .locals 0

    .prologue
    .line 17
    invoke-direct/range {p0 .. p5}, Lcom/amap/api/mapcore/util/i;->a([B[B[B[B[B)V

    return-void
.end method

.method private a([B[B[B[B[B)V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 347
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore/util/i;->d:Lcom/autonavi/amap/mapcore/MapCore;

    const/4 v1, 0x6

    invoke-virtual {v0, p1, v1}, Lcom/autonavi/amap/mapcore/MapCore;->setInternaltexture([BI)V

    .line 348
    :cond_0
    if-eqz p2, :cond_1

    iget-object v0, p0, Lcom/amap/api/mapcore/util/i;->d:Lcom/autonavi/amap/mapcore/MapCore;

    const/4 v1, 0x4

    invoke-virtual {v0, p2, v1}, Lcom/autonavi/amap/mapcore/MapCore;->setInternaltexture([BI)V

    .line 349
    :cond_1
    if-eqz p3, :cond_2

    iget-object v0, p0, Lcom/amap/api/mapcore/util/i;->d:Lcom/autonavi/amap/mapcore/MapCore;

    const/4 v1, 0x5

    invoke-virtual {v0, p3, v1}, Lcom/autonavi/amap/mapcore/MapCore;->setInternaltexture([BI)V

    .line 350
    :cond_2
    if-eqz p4, :cond_3

    iget-object v0, p0, Lcom/amap/api/mapcore/util/i;->d:Lcom/autonavi/amap/mapcore/MapCore;

    const/4 v1, 0x7

    invoke-virtual {v0, p4, v1}, Lcom/autonavi/amap/mapcore/MapCore;->setInternaltexture([BI)V

    .line 351
    :cond_3
    if-eqz p5, :cond_4

    iget-object v0, p0, Lcom/amap/api/mapcore/util/i;->d:Lcom/autonavi/amap/mapcore/MapCore;

    const/16 v1, 0x12

    invoke-virtual {v0, p5, v1}, Lcom/autonavi/amap/mapcore/MapCore;->setInternaltexture([BI)V

    .line 352
    :cond_4
    return-void
.end method


# virtual methods
.method public a()V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v4, 0x1

    .line 109
    iget-object v0, p0, Lcom/amap/api/mapcore/util/i;->b:Lcom/amap/api/mapcore/util/b;

    if-nez v0, :cond_1

    .line 139
    :cond_0
    :goto_0
    return-void

    .line 113
    :cond_1
    new-instance v0, Lcom/autonavi/amap/mapcore/MapTilsCacheAndResManager$RetStyleIconsFile;

    invoke-direct {v0}, Lcom/autonavi/amap/mapcore/MapTilsCacheAndResManager$RetStyleIconsFile;-><init>()V

    .line 114
    invoke-virtual {p0}, Lcom/amap/api/mapcore/util/i;->b()Ljava/lang/String;

    move-result-object v1

    .line 116
    iget-object v2, p0, Lcom/amap/api/mapcore/util/i;->c:Landroid/content/Context;

    invoke-static {v2}, Lcom/autonavi/amap/mapcore/MapTilsCacheAndResManager;->getInstance(Landroid/content/Context;)Lcom/autonavi/amap/mapcore/MapTilsCacheAndResManager;

    move-result-object v2

    invoke-virtual {v2, v1, v0}, Lcom/autonavi/amap/mapcore/MapTilsCacheAndResManager;->getStyleData(Ljava/lang/String;Lcom/autonavi/amap/mapcore/MapTilsCacheAndResManager$RetStyleIconsFile;)[B

    move-result-object v1

    .line 119
    iget-object v2, p0, Lcom/amap/api/mapcore/util/i;->b:Lcom/amap/api/mapcore/util/b;

    invoke-virtual {v2}, Lcom/amap/api/mapcore/util/b;->getMapConfig()Lcom/autonavi/amap/mapcore/MapConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/autonavi/amap/mapcore/MapConfig;->getCustomStylePath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/amap/api/mapcore/util/i;->b:Lcom/amap/api/mapcore/util/b;

    invoke-virtual {v2}, Lcom/amap/api/mapcore/util/b;->getMapConfig()Lcom/autonavi/amap/mapcore/MapConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/autonavi/amap/mapcore/MapConfig;->isCustomStyleEnable()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 120
    new-instance v1, Lcom/amap/api/mapcore/util/dt;

    iget-object v2, p0, Lcom/amap/api/mapcore/util/i;->c:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/amap/api/mapcore/util/dt;-><init>(Landroid/content/Context;)V

    .line 121
    iget-object v2, p0, Lcom/amap/api/mapcore/util/i;->b:Lcom/amap/api/mapcore/util/b;

    invoke-virtual {v2}, Lcom/amap/api/mapcore/util/b;->getMapConfig()Lcom/autonavi/amap/mapcore/MapConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/autonavi/amap/mapcore/MapConfig;->getCustomStylePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/amap/api/mapcore/util/dt;->b(Ljava/lang/String;)[B

    move-result-object v1

    .line 123
    if-eqz v1, :cond_2

    .line 124
    invoke-virtual {p0, v1}, Lcom/amap/api/mapcore/util/i;->a([B)V

    .line 132
    :cond_2
    :goto_1
    iget-object v1, p0, Lcom/amap/api/mapcore/util/i;->c:Landroid/content/Context;

    .line 133
    invoke-static {v1}, Lcom/autonavi/amap/mapcore/MapTilsCacheAndResManager;->getInstance(Landroid/content/Context;)Lcom/autonavi/amap/mapcore/MapTilsCacheAndResManager;

    move-result-object v1

    const-string/jumbo v2, "style_50_7_1445670996.data"

    invoke-virtual {v1, v2, v0}, Lcom/autonavi/amap/mapcore/MapTilsCacheAndResManager;->getStyleData(Ljava/lang/String;Lcom/autonavi/amap/mapcore/MapTilsCacheAndResManager$RetStyleIconsFile;)[B

    move-result-object v0

    .line 134
    if-eqz v0, :cond_0

    .line 135
    iget-object v1, p0, Lcom/amap/api/mapcore/util/i;->d:Lcom/autonavi/amap/mapcore/MapCore;

    invoke-virtual {v1, v0, v4, v4}, Lcom/autonavi/amap/mapcore/MapCore;->setStyleData([BII)V

    goto :goto_0

    .line 127
    :cond_3
    if-eqz v1, :cond_2

    .line 128
    iget-object v2, p0, Lcom/amap/api/mapcore/util/i;->d:Lcom/autonavi/amap/mapcore/MapCore;

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3, v4}, Lcom/autonavi/amap/mapcore/MapCore;->setStyleData([BII)V

    goto :goto_1
.end method

.method public a(Z)V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 151
    iget-object v0, p0, Lcom/amap/api/mapcore/util/i;->b:Lcom/amap/api/mapcore/util/b;

    if-nez v0, :cond_1

    .line 199
    :cond_0
    :goto_0
    return-void

    .line 155
    :cond_1
    const/4 v0, 0x0

    .line 156
    new-instance v1, Lcom/autonavi/amap/mapcore/MapTilsCacheAndResManager$RetStyleIconsFile;

    invoke-direct {v1}, Lcom/autonavi/amap/mapcore/MapTilsCacheAndResManager$RetStyleIconsFile;-><init>()V

    .line 157
    invoke-virtual {p0}, Lcom/amap/api/mapcore/util/i;->c()Ljava/lang/String;

    move-result-object v2

    .line 158
    invoke-direct {p0, v2}, Lcom/amap/api/mapcore/util/i;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 159
    iget-object v4, p0, Lcom/amap/api/mapcore/util/i;->c:Landroid/content/Context;

    invoke-static {v4}, Lcom/autonavi/amap/mapcore/MapTilsCacheAndResManager;->getInstance(Landroid/content/Context;)Lcom/autonavi/amap/mapcore/MapTilsCacheAndResManager;

    move-result-object v4

    invoke-virtual {v4, v2, v1}, Lcom/autonavi/amap/mapcore/MapTilsCacheAndResManager;->getIconsData(Ljava/lang/String;Lcom/autonavi/amap/mapcore/MapTilsCacheAndResManager$RetStyleIconsFile;)[B

    move-result-object v2

    .line 161
    iget-boolean v4, p0, Lcom/amap/api/mapcore/util/i;->a:Z

    if-eqz v4, :cond_2

    .line 162
    new-instance v0, Lcom/autonavi/amap/mapcore/MapTilsCacheAndResManager$RetStyleIconsFile;

    invoke-direct {v0}, Lcom/autonavi/amap/mapcore/MapTilsCacheAndResManager$RetStyleIconsFile;-><init>()V

    .line 163
    iget-object v4, p0, Lcom/amap/api/mapcore/util/i;->c:Landroid/content/Context;

    invoke-static {v4}, Lcom/autonavi/amap/mapcore/MapTilsCacheAndResManager;->getInstance(Landroid/content/Context;)Lcom/autonavi/amap/mapcore/MapTilsCacheAndResManager;

    move-result-object v4

    .line 164
    invoke-virtual {v4, v3, v0}, Lcom/autonavi/amap/mapcore/MapTilsCacheAndResManager;->getIconsData(Ljava/lang/String;Lcom/autonavi/amap/mapcore/MapTilsCacheAndResManager$RetStyleIconsFile;)[B

    move-result-object v0

    .line 169
    :cond_2
    iget-object v3, p0, Lcom/amap/api/mapcore/util/i;->c:Landroid/content/Context;

    invoke-static {v3}, Lcom/autonavi/amap/mapcore/MapTilsCacheAndResManager;->getInstance(Landroid/content/Context;)Lcom/autonavi/amap/mapcore/MapTilsCacheAndResManager;

    move-result-object v3

    const-string/jumbo v4, "icons_50_7_1444880375.data"

    .line 170
    invoke-virtual {v3, v4, v1}, Lcom/autonavi/amap/mapcore/MapTilsCacheAndResManager;->getIconsData(Ljava/lang/String;Lcom/autonavi/amap/mapcore/MapTilsCacheAndResManager$RetStyleIconsFile;)[B

    move-result-object v1

    .line 171
    if-eqz p1, :cond_5

    .line 172
    if-eqz v2, :cond_3

    .line 173
    iget-object v3, p0, Lcom/amap/api/mapcore/util/i;->d:Lcom/autonavi/amap/mapcore/MapCore;

    const/4 v4, 0x0

    invoke-virtual {v3, v2, v4}, Lcom/autonavi/amap/mapcore/MapCore;->setInternaltexture([BI)V

    .line 175
    :cond_3
    if-eqz v1, :cond_4

    .line 176
    iget-object v2, p0, Lcom/amap/api/mapcore/util/i;->d:Lcom/autonavi/amap/mapcore/MapCore;

    const/16 v3, 0x1f

    invoke-virtual {v2, v1, v3}, Lcom/autonavi/amap/mapcore/MapCore;->setInternaltexture([BI)V

    .line 178
    :cond_4
    iget-boolean v1, p0, Lcom/amap/api/mapcore/util/i;->a:Z

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 179
    iget-object v1, p0, Lcom/amap/api/mapcore/util/i;->d:Lcom/autonavi/amap/mapcore/MapCore;

    const/16 v2, 0x14

    invoke-virtual {v1, v0, v2}, Lcom/autonavi/amap/mapcore/MapCore;->setInternaltexture([BI)V

    goto :goto_0

    .line 183
    :cond_5
    iget-object v3, p0, Lcom/amap/api/mapcore/util/i;->b:Lcom/amap/api/mapcore/util/b;

    new-instance v4, Lcom/amap/api/mapcore/util/i$1;

    invoke-direct {v4, p0, v2, v1, v0}, Lcom/amap/api/mapcore/util/i$1;-><init>(Lcom/amap/api/mapcore/util/i;[B[B[B)V

    invoke-virtual {v3, v4}, Lcom/amap/api/mapcore/util/b;->a(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public a([B)V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v1, 0x0

    .line 142
    iget-object v0, p0, Lcom/amap/api/mapcore/util/i;->b:Lcom/amap/api/mapcore/util/b;

    if-nez v0, :cond_1

    .line 148
    :cond_0
    :goto_0
    return-void

    .line 145
    :cond_1
    if-eqz p1, :cond_0

    .line 146
    iget-object v0, p0, Lcom/amap/api/mapcore/util/i;->d:Lcom/autonavi/amap/mapcore/MapCore;

    invoke-virtual {v0, p1, v1, v1}, Lcom/autonavi/amap/mapcore/MapCore;->setStyleData([BII)V

    goto :goto_0
.end method

.method public b()Ljava/lang/String;
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 211
    const-string/jumbo v0, ""

    .line 213
    iget-object v1, p0, Lcom/amap/api/mapcore/util/i;->b:Lcom/amap/api/mapcore/util/b;

    if-nez v1, :cond_1

    .line 277
    :cond_0
    :goto_0
    return-object v0

    .line 216
    :cond_1
    iget-object v1, p0, Lcom/amap/api/mapcore/util/i;->b:Lcom/amap/api/mapcore/util/b;

    invoke-virtual {v1}, Lcom/amap/api/mapcore/util/b;->v()Lcom/amap/api/mapcore/util/i$c;

    move-result-object v1

    .line 217
    iget-object v2, p0, Lcom/amap/api/mapcore/util/i;->b:Lcom/amap/api/mapcore/util/b;

    invoke-virtual {v2}, Lcom/amap/api/mapcore/util/b;->w()Lcom/amap/api/mapcore/util/i$a;

    move-result-object v2

    .line 218
    iget-object v3, p0, Lcom/amap/api/mapcore/util/i;->b:Lcom/amap/api/mapcore/util/b;

    invoke-virtual {v3}, Lcom/amap/api/mapcore/util/b;->x()Lcom/amap/api/mapcore/util/i$b;

    move-result-object v3

    .line 220
    sget-object v4, Lcom/amap/api/mapcore/util/i$c;->a:Lcom/amap/api/mapcore/util/i$c;

    if-ne v4, v1, :cond_9

    .line 221
    sget-object v1, Lcom/amap/api/mapcore/util/i$a;->a:Lcom/amap/api/mapcore/util/i$a;

    if-ne v1, v2, :cond_5

    .line 222
    sget-object v0, Lcom/amap/api/mapcore/util/i$b;->e:Lcom/amap/api/mapcore/util/i$b;

    if-ne v0, v3, :cond_2

    .line 223
    const-string/jumbo v0, "style_4_7_1445391691.data"

    goto :goto_0

    .line 224
    :cond_2
    sget-object v0, Lcom/amap/api/mapcore/util/i$b;->c:Lcom/amap/api/mapcore/util/i$b;

    if-eq v0, v3, :cond_f

    .line 226
    sget-object v0, Lcom/amap/api/mapcore/util/i$b;->b:Lcom/amap/api/mapcore/util/i$b;

    if-ne v0, v3, :cond_3

    .line 227
    const-string/jumbo v0, "style_8_7_1445391734.data"

    goto :goto_0

    .line 228
    :cond_3
    sget-object v0, Lcom/amap/api/mapcore/util/i$b;->f:Lcom/amap/api/mapcore/util/i$b;

    if-ne v0, v3, :cond_4

    .line 229
    const-string/jumbo v0, "style_9_7_1445327958.data"

    goto :goto_0

    .line 231
    :cond_4
    const-string/jumbo v0, "style_1_7_1445219169.data"

    goto :goto_0

    .line 233
    :cond_5
    sget-object v1, Lcom/amap/api/mapcore/util/i$a;->b:Lcom/amap/api/mapcore/util/i$a;

    if-ne v1, v2, :cond_7

    .line 234
    sget-object v0, Lcom/amap/api/mapcore/util/i$b;->e:Lcom/amap/api/mapcore/util/i$b;

    if-ne v0, v3, :cond_6

    .line 235
    const-string/jumbo v0, "style_4_7_1445391691.data"

    goto :goto_0

    .line 236
    :cond_6
    sget-object v0, Lcom/amap/api/mapcore/util/i$b;->c:Lcom/amap/api/mapcore/util/i$b;

    if-eq v0, v3, :cond_f

    .line 239
    const-string/jumbo v0, "style_3_7_1445827513.data"

    goto :goto_0

    .line 241
    :cond_7
    sget-object v1, Lcom/amap/api/mapcore/util/i$a;->c:Lcom/amap/api/mapcore/util/i$a;

    if-ne v1, v2, :cond_0

    .line 242
    sget-object v0, Lcom/amap/api/mapcore/util/i$b;->e:Lcom/amap/api/mapcore/util/i$b;

    if-ne v0, v3, :cond_8

    .line 243
    const-string/jumbo v0, "style_4_7_1445391691.data"

    goto :goto_0

    .line 244
    :cond_8
    sget-object v0, Lcom/amap/api/mapcore/util/i$b;->c:Lcom/amap/api/mapcore/util/i$b;

    if-eq v0, v3, :cond_f

    .line 247
    const-string/jumbo v0, "style_6_7_1445325996.data"

    goto :goto_0

    .line 250
    :cond_9
    sget-object v4, Lcom/amap/api/mapcore/util/i$c;->b:Lcom/amap/api/mapcore/util/i$c;

    if-ne v4, v1, :cond_0

    .line 251
    sget-object v1, Lcom/amap/api/mapcore/util/i$a;->a:Lcom/amap/api/mapcore/util/i$a;

    if-ne v1, v2, :cond_b

    .line 252
    sget-object v0, Lcom/amap/api/mapcore/util/i$b;->e:Lcom/amap/api/mapcore/util/i$b;

    if-ne v0, v3, :cond_a

    .line 253
    const-string/jumbo v0, "style_5_7_1445391719.data"

    goto/16 :goto_0

    .line 254
    :cond_a
    sget-object v0, Lcom/amap/api/mapcore/util/i$b;->c:Lcom/amap/api/mapcore/util/i$b;

    if-eq v0, v3, :cond_f

    .line 257
    const-string/jumbo v0, "style_1_7_1445219169.data"

    goto/16 :goto_0

    .line 259
    :cond_b
    sget-object v1, Lcom/amap/api/mapcore/util/i$a;->b:Lcom/amap/api/mapcore/util/i$a;

    if-ne v1, v2, :cond_d

    .line 260
    sget-object v0, Lcom/amap/api/mapcore/util/i$b;->e:Lcom/amap/api/mapcore/util/i$b;

    if-ne v0, v3, :cond_c

    .line 261
    const-string/jumbo v0, "style_5_7_1445391719.data"

    goto/16 :goto_0

    .line 262
    :cond_c
    sget-object v0, Lcom/amap/api/mapcore/util/i$b;->c:Lcom/amap/api/mapcore/util/i$b;

    if-eq v0, v3, :cond_f

    .line 265
    const-string/jumbo v0, "style_3_7_1445827513.data"

    goto/16 :goto_0

    .line 267
    :cond_d
    sget-object v1, Lcom/amap/api/mapcore/util/i$a;->c:Lcom/amap/api/mapcore/util/i$a;

    if-ne v1, v2, :cond_0

    .line 268
    sget-object v0, Lcom/amap/api/mapcore/util/i$b;->e:Lcom/amap/api/mapcore/util/i$b;

    if-ne v0, v3, :cond_e

    .line 269
    const-string/jumbo v0, "style_5_7_1445391719.data"

    goto/16 :goto_0

    .line 270
    :cond_e
    sget-object v0, Lcom/amap/api/mapcore/util/i$b;->c:Lcom/amap/api/mapcore/util/i$b;

    .line 273
    :cond_f
    const-string/jumbo v0, "style_6_7_1445325996.data"

    goto/16 :goto_0
.end method

.method public b(Z)V
    .locals 13

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v12

    invoke-static {v12}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 303
    iget-object v0, p0, Lcom/amap/api/mapcore/util/i;->b:Lcom/amap/api/mapcore/util/b;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/b;->v()Lcom/amap/api/mapcore/util/i$c;

    move-result-object v0

    sget-object v1, Lcom/amap/api/mapcore/util/i$c;->b:Lcom/amap/api/mapcore/util/i$c;

    if-eq v0, v1, :cond_0

    .line 304
    iget-object v0, p0, Lcom/amap/api/mapcore/util/i;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/autonavi/amap/mapcore/MapTilsCacheAndResManager;->getInstance(Landroid/content/Context;)Lcom/autonavi/amap/mapcore/MapTilsCacheAndResManager;

    move-result-object v0

    const-string/jumbo v1, "tgl_l.data"

    .line 305
    invoke-virtual {v0, v1}, Lcom/autonavi/amap/mapcore/MapTilsCacheAndResManager;->getOtherResData(Ljava/lang/String;)[B

    move-result-object v1

    .line 306
    iget-object v0, p0, Lcom/amap/api/mapcore/util/i;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/autonavi/amap/mapcore/MapTilsCacheAndResManager;->getInstance(Landroid/content/Context;)Lcom/autonavi/amap/mapcore/MapTilsCacheAndResManager;

    move-result-object v0

    const-string/jumbo v2, "trl_l.data"

    .line 307
    invoke-virtual {v0, v2}, Lcom/autonavi/amap/mapcore/MapTilsCacheAndResManager;->getOtherResData(Ljava/lang/String;)[B

    move-result-object v2

    .line 308
    iget-object v0, p0, Lcom/amap/api/mapcore/util/i;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/autonavi/amap/mapcore/MapTilsCacheAndResManager;->getInstance(Landroid/content/Context;)Lcom/autonavi/amap/mapcore/MapTilsCacheAndResManager;

    move-result-object v0

    const-string/jumbo v3, "tyl_l.data"

    .line 309
    invoke-virtual {v0, v3}, Lcom/autonavi/amap/mapcore/MapTilsCacheAndResManager;->getOtherResData(Ljava/lang/String;)[B

    move-result-object v3

    .line 310
    iget-object v0, p0, Lcom/amap/api/mapcore/util/i;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/autonavi/amap/mapcore/MapTilsCacheAndResManager;->getInstance(Landroid/content/Context;)Lcom/autonavi/amap/mapcore/MapTilsCacheAndResManager;

    move-result-object v0

    const-string/jumbo v4, "tbl_l.data"

    .line 311
    invoke-virtual {v0, v4}, Lcom/autonavi/amap/mapcore/MapTilsCacheAndResManager;->getOtherResData(Ljava/lang/String;)[B

    move-result-object v4

    .line 312
    iget-object v0, p0, Lcom/amap/api/mapcore/util/i;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/autonavi/amap/mapcore/MapTilsCacheAndResManager;->getInstance(Landroid/content/Context;)Lcom/autonavi/amap/mapcore/MapTilsCacheAndResManager;

    move-result-object v0

    const-string/jumbo v5, "tnl_l.data"

    .line 313
    invoke-virtual {v0, v5}, Lcom/autonavi/amap/mapcore/MapTilsCacheAndResManager;->getOtherResData(Ljava/lang/String;)[B

    move-result-object v5

    .line 333
    :goto_0
    if-eqz p1, :cond_1

    move-object v0, p0

    .line 335
    invoke-direct/range {v0 .. v5}, Lcom/amap/api/mapcore/util/i;->a([B[B[B[B[B)V

    .line 344
    :goto_1
    return-void

    .line 315
    :cond_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/i;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/autonavi/amap/mapcore/MapTilsCacheAndResManager;->getInstance(Landroid/content/Context;)Lcom/autonavi/amap/mapcore/MapTilsCacheAndResManager;

    move-result-object v0

    const-string/jumbo v1, "tgl_n.data"

    .line 316
    invoke-virtual {v0, v1}, Lcom/autonavi/amap/mapcore/MapTilsCacheAndResManager;->getOtherResData(Ljava/lang/String;)[B

    move-result-object v1

    .line 317
    iget-object v0, p0, Lcom/amap/api/mapcore/util/i;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/autonavi/amap/mapcore/MapTilsCacheAndResManager;->getInstance(Landroid/content/Context;)Lcom/autonavi/amap/mapcore/MapTilsCacheAndResManager;

    move-result-object v0

    const-string/jumbo v2, "trl_n.data"

    .line 318
    invoke-virtual {v0, v2}, Lcom/autonavi/amap/mapcore/MapTilsCacheAndResManager;->getOtherResData(Ljava/lang/String;)[B

    move-result-object v2

    .line 319
    iget-object v0, p0, Lcom/amap/api/mapcore/util/i;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/autonavi/amap/mapcore/MapTilsCacheAndResManager;->getInstance(Landroid/content/Context;)Lcom/autonavi/amap/mapcore/MapTilsCacheAndResManager;

    move-result-object v0

    const-string/jumbo v3, "tyl_n.data"

    .line 320
    invoke-virtual {v0, v3}, Lcom/autonavi/amap/mapcore/MapTilsCacheAndResManager;->getOtherResData(Ljava/lang/String;)[B

    move-result-object v3

    .line 321
    iget-object v0, p0, Lcom/amap/api/mapcore/util/i;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/autonavi/amap/mapcore/MapTilsCacheAndResManager;->getInstance(Landroid/content/Context;)Lcom/autonavi/amap/mapcore/MapTilsCacheAndResManager;

    move-result-object v0

    const-string/jumbo v4, "tbl_n.data"

    .line 322
    invoke-virtual {v0, v4}, Lcom/autonavi/amap/mapcore/MapTilsCacheAndResManager;->getOtherResData(Ljava/lang/String;)[B

    move-result-object v4

    .line 323
    iget-object v0, p0, Lcom/amap/api/mapcore/util/i;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/autonavi/amap/mapcore/MapTilsCacheAndResManager;->getInstance(Landroid/content/Context;)Lcom/autonavi/amap/mapcore/MapTilsCacheAndResManager;

    move-result-object v0

    const-string/jumbo v5, "tnl_n.data"

    .line 324
    invoke-virtual {v0, v5}, Lcom/autonavi/amap/mapcore/MapTilsCacheAndResManager;->getOtherResData(Ljava/lang/String;)[B

    move-result-object v5

    goto :goto_0

    .line 337
    :cond_1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/i;->b:Lcom/amap/api/mapcore/util/b;

    new-instance v6, Lcom/amap/api/mapcore/util/i$2;

    move-object v7, p0

    move-object v8, v1

    move-object v9, v2

    move-object v10, v3

    move-object v11, v4

    move-object v12, v5

    invoke-direct/range {v6 .. v12}, Lcom/amap/api/mapcore/util/i$2;-><init>(Lcom/amap/api/mapcore/util/i;[B[B[B[B[B)V

    invoke-virtual {v0, v6}, Lcom/amap/api/mapcore/util/b;->a(Ljava/lang/Runnable;)V

    goto :goto_1
.end method

.method public c()Ljava/lang/String;
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 281
    const-string/jumbo v0, ""

    .line 282
    iget-object v1, p0, Lcom/amap/api/mapcore/util/i;->b:Lcom/amap/api/mapcore/util/b;

    if-nez v1, :cond_1

    .line 298
    :cond_0
    :goto_0
    return-object v0

    .line 285
    :cond_1
    iget-object v1, p0, Lcom/amap/api/mapcore/util/i;->b:Lcom/amap/api/mapcore/util/b;

    invoke-virtual {v1}, Lcom/amap/api/mapcore/util/b;->v()Lcom/amap/api/mapcore/util/i$c;

    move-result-object v1

    .line 286
    iget-object v2, p0, Lcom/amap/api/mapcore/util/i;->b:Lcom/amap/api/mapcore/util/b;

    invoke-virtual {v2}, Lcom/amap/api/mapcore/util/b;->w()Lcom/amap/api/mapcore/util/i$a;

    move-result-object v2

    .line 287
    sget-object v3, Lcom/amap/api/mapcore/util/i$c;->a:Lcom/amap/api/mapcore/util/i$c;

    if-ne v3, v1, :cond_3

    .line 288
    sget-object v0, Lcom/amap/api/mapcore/util/i$a;->c:Lcom/amap/api/mapcore/util/i$a;

    if-ne v0, v2, :cond_2

    .line 289
    const-string/jumbo v0, "icons_3_7_1444880372.data"

    goto :goto_0

    .line 291
    :cond_2
    const-string/jumbo v0, "icons_1_7_1444880368.data"

    goto :goto_0

    .line 292
    :cond_3
    sget-object v3, Lcom/amap/api/mapcore/util/i$c;->b:Lcom/amap/api/mapcore/util/i$c;

    if-ne v3, v1, :cond_0

    .line 293
    sget-object v0, Lcom/amap/api/mapcore/util/i$a;->c:Lcom/amap/api/mapcore/util/i$a;

    if-ne v0, v2, :cond_4

    .line 294
    const-string/jumbo v0, "icons_3_7_1444880372.data"

    goto :goto_0

    .line 296
    :cond_4
    const-string/jumbo v0, "icons_2_7_1445580283.data"

    goto :goto_0
.end method

.method public c(Z)V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 357
    iget-object v0, p0, Lcom/amap/api/mapcore/util/i;->b:Lcom/amap/api/mapcore/util/b;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/b;->v()Lcom/amap/api/mapcore/util/i$c;

    move-result-object v0

    sget-object v1, Lcom/amap/api/mapcore/util/i$c;->b:Lcom/amap/api/mapcore/util/i$c;

    if-eq v0, v1, :cond_0

    .line 358
    iget-object v0, p0, Lcom/amap/api/mapcore/util/i;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/autonavi/amap/mapcore/MapTilsCacheAndResManager;->getInstance(Landroid/content/Context;)Lcom/autonavi/amap/mapcore/MapTilsCacheAndResManager;

    move-result-object v0

    const-string/jumbo v1, "bktile.data"

    .line 359
    invoke-virtual {v0, v1}, Lcom/autonavi/amap/mapcore/MapTilsCacheAndResManager;->getOtherResData(Ljava/lang/String;)[B

    move-result-object v1

    .line 360
    iget-object v0, p0, Lcom/amap/api/mapcore/util/i;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/autonavi/amap/mapcore/MapTilsCacheAndResManager;->getInstance(Landroid/content/Context;)Lcom/autonavi/amap/mapcore/MapTilsCacheAndResManager;

    move-result-object v0

    const-string/jumbo v2, "3d_sky_day.dat"

    .line 361
    invoke-virtual {v0, v2}, Lcom/autonavi/amap/mapcore/MapTilsCacheAndResManager;->getOtherResData(Ljava/lang/String;)[B

    move-result-object v0

    .line 372
    :goto_0
    if-eqz p1, :cond_1

    .line 374
    iget-object v2, p0, Lcom/amap/api/mapcore/util/i;->d:Lcom/autonavi/amap/mapcore/MapCore;

    const/4 v3, 0x1

    invoke-virtual {v2, v1, v3}, Lcom/autonavi/amap/mapcore/MapCore;->setInternaltexture([BI)V

    .line 375
    iget-object v1, p0, Lcom/amap/api/mapcore/util/i;->d:Lcom/autonavi/amap/mapcore/MapCore;

    const/16 v2, 0x29

    invoke-virtual {v1, v0, v2}, Lcom/autonavi/amap/mapcore/MapCore;->setInternaltexture([BI)V

    .line 387
    :goto_1
    return-void

    .line 363
    :cond_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/i;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/autonavi/amap/mapcore/MapTilsCacheAndResManager;->getInstance(Landroid/content/Context;)Lcom/autonavi/amap/mapcore/MapTilsCacheAndResManager;

    move-result-object v0

    const-string/jumbo v1, "bktile_n.data"

    .line 364
    invoke-virtual {v0, v1}, Lcom/autonavi/amap/mapcore/MapTilsCacheAndResManager;->getOtherResData(Ljava/lang/String;)[B

    move-result-object v1

    .line 365
    iget-object v0, p0, Lcom/amap/api/mapcore/util/i;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/autonavi/amap/mapcore/MapTilsCacheAndResManager;->getInstance(Landroid/content/Context;)Lcom/autonavi/amap/mapcore/MapTilsCacheAndResManager;

    move-result-object v0

    const-string/jumbo v2, "3d_sky_night.dat"

    .line 366
    invoke-virtual {v0, v2}, Lcom/autonavi/amap/mapcore/MapTilsCacheAndResManager;->getOtherResData(Ljava/lang/String;)[B

    move-result-object v0

    goto :goto_0

    .line 377
    :cond_1
    iget-object v2, p0, Lcom/amap/api/mapcore/util/i;->b:Lcom/amap/api/mapcore/util/b;

    new-instance v3, Lcom/amap/api/mapcore/util/i$3;

    invoke-direct {v3, p0, v1, v0}, Lcom/amap/api/mapcore/util/i$3;-><init>(Lcom/amap/api/mapcore/util/i;[B[B)V

    invoke-virtual {v2, v3}, Lcom/amap/api/mapcore/util/b;->a(Ljava/lang/Runnable;)V

    goto :goto_1
.end method

.method public d(Z)V
    .locals 0

    .prologue
    .line 470
    return-void
.end method

.method public e(Z)V
    .locals 8

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 474
    iget-object v0, p0, Lcom/amap/api/mapcore/util/i;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/autonavi/amap/mapcore/MapTilsCacheAndResManager;->getInstance(Landroid/content/Context;)Lcom/autonavi/amap/mapcore/MapTilsCacheAndResManager;

    move-result-object v0

    const-string/jumbo v1, "roadarrow.data"

    .line 475
    invoke-virtual {v0, v1}, Lcom/autonavi/amap/mapcore/MapTilsCacheAndResManager;->getOtherResData(Ljava/lang/String;)[B

    move-result-object v2

    .line 476
    iget-object v0, p0, Lcom/amap/api/mapcore/util/i;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/autonavi/amap/mapcore/MapTilsCacheAndResManager;->getInstance(Landroid/content/Context;)Lcom/autonavi/amap/mapcore/MapTilsCacheAndResManager;

    move-result-object v0

    const-string/jumbo v1, "lineround.data"

    .line 477
    invoke-virtual {v0, v1}, Lcom/autonavi/amap/mapcore/MapTilsCacheAndResManager;->getOtherResData(Ljava/lang/String;)[B

    move-result-object v3

    .line 479
    iget-object v0, p0, Lcom/amap/api/mapcore/util/i;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/autonavi/amap/mapcore/MapTilsCacheAndResManager;->getInstance(Landroid/content/Context;)Lcom/autonavi/amap/mapcore/MapTilsCacheAndResManager;

    move-result-object v0

    const-string/jumbo v1, "dash.data"

    .line 480
    invoke-virtual {v0, v1}, Lcom/autonavi/amap/mapcore/MapTilsCacheAndResManager;->getOtherResData(Ljava/lang/String;)[B

    move-result-object v4

    .line 481
    iget-object v0, p0, Lcom/amap/api/mapcore/util/i;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/autonavi/amap/mapcore/MapTilsCacheAndResManager;->getInstance(Landroid/content/Context;)Lcom/autonavi/amap/mapcore/MapTilsCacheAndResManager;

    move-result-object v0

    const-string/jumbo v1, "dash_tq.data"

    .line 482
    invoke-virtual {v0, v1}, Lcom/autonavi/amap/mapcore/MapTilsCacheAndResManager;->getOtherResData(Ljava/lang/String;)[B

    move-result-object v5

    .line 483
    iget-object v0, p0, Lcom/amap/api/mapcore/util/i;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/autonavi/amap/mapcore/MapTilsCacheAndResManager;->getInstance(Landroid/content/Context;)Lcom/autonavi/amap/mapcore/MapTilsCacheAndResManager;

    move-result-object v0

    const-string/jumbo v1, "dash_cd.data"

    .line 484
    invoke-virtual {v0, v1}, Lcom/autonavi/amap/mapcore/MapTilsCacheAndResManager;->getOtherResData(Ljava/lang/String;)[B

    move-result-object v6

    .line 486
    if-eqz p1, :cond_0

    .line 488
    iget-object v0, p0, Lcom/amap/api/mapcore/util/i;->d:Lcom/autonavi/amap/mapcore/MapCore;

    const/4 v1, 0x2

    invoke-virtual {v0, v2, v1}, Lcom/autonavi/amap/mapcore/MapCore;->setInternaltexture([BI)V

    .line 489
    iget-object v0, p0, Lcom/amap/api/mapcore/util/i;->d:Lcom/autonavi/amap/mapcore/MapCore;

    const/4 v1, 0x3

    invoke-virtual {v0, v3, v1}, Lcom/autonavi/amap/mapcore/MapCore;->setInternaltexture([BI)V

    .line 490
    iget-object v0, p0, Lcom/amap/api/mapcore/util/i;->d:Lcom/autonavi/amap/mapcore/MapCore;

    const/16 v1, 0x8

    invoke-virtual {v0, v4, v1}, Lcom/autonavi/amap/mapcore/MapCore;->setInternaltexture([BI)V

    .line 491
    iget-object v0, p0, Lcom/amap/api/mapcore/util/i;->d:Lcom/autonavi/amap/mapcore/MapCore;

    const/16 v1, 0x9

    invoke-virtual {v0, v5, v1}, Lcom/autonavi/amap/mapcore/MapCore;->setInternaltexture([BI)V

    .line 492
    iget-object v0, p0, Lcom/amap/api/mapcore/util/i;->d:Lcom/autonavi/amap/mapcore/MapCore;

    const/16 v1, 0xa

    invoke-virtual {v0, v6, v1}, Lcom/autonavi/amap/mapcore/MapCore;->setInternaltexture([BI)V

    .line 505
    :goto_0
    return-void

    .line 494
    :cond_0
    iget-object v7, p0, Lcom/amap/api/mapcore/util/i;->b:Lcom/amap/api/mapcore/util/b;

    new-instance v0, Lcom/amap/api/mapcore/util/i$4;

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/amap/api/mapcore/util/i$4;-><init>(Lcom/amap/api/mapcore/util/i;[B[B[B[B[B)V

    invoke-virtual {v7, v0}, Lcom/amap/api/mapcore/util/b;->a(Ljava/lang/Runnable;)V

    goto :goto_0
.end method
