.class public Lcom/amap/api/mapcore/util/b;
.super Ljava/lang/Object;
.source "AMapDelegateImp.java"

# interfaces
.implements Landroid/opengl/GLSurfaceView$Renderer;
.implements Lcom/amap/api/mapcore/util/l;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amap/api/mapcore/util/b$b;,
        Lcom/amap/api/mapcore/util/b$a;,
        Lcom/amap/api/mapcore/util/b$c;
    }
.end annotation


# static fields
.field private static as:Z


# instance fields
.field private A:I

.field private B:I

.field private C:Lcom/amap/api/maps/model/MyTrafficStyle;

.field private D:Lcom/amap/api/mapcore/util/i$c;

.field private E:Lcom/amap/api/mapcore/util/i$a;

.field private F:Lcom/amap/api/mapcore/util/i$b;

.field private G:Lcom/amap/api/mapcore/util/i$c;

.field private H:Lcom/amap/api/mapcore/util/i$a;

.field private I:Lcom/amap/api/mapcore/util/i$b;

.field private J:I

.field private K:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<",
            "Lcom/amap/api/mapcore/util/s;",
            ">;"
        }
    .end annotation
.end field

.field private L:I

.field private M:Lcom/autonavi/amap/mapcore/MapCore;

.field private N:Landroid/content/Context;

.field private O:Lcom/amap/api/mapcore/util/a;

.field private P:Lcom/autonavi/amap/mapcore/MapProjection;

.field private Q:Lcom/amap/api/mapcore/util/de;

.field private R:Lcom/amap/api/maps/AMap$OnMyLocationChangeListener;

.field private S:Lcom/amap/api/maps/AMap$OnMarkerClickListener;

.field private T:Lcom/amap/api/maps/AMap$OnPolylineClickListener;

.field private U:Lcom/amap/api/maps/AMap$OnMarkerDragListener;

.field private V:Lcom/amap/api/maps/AMap$OnMapLoadedListener;

.field private W:Lcom/amap/api/maps/AMap$OnCameraChangeListener;

.field private X:Lcom/amap/api/maps/AMap$OnMapClickListener;

.field private Y:Lcom/amap/api/maps/AMap$OnMapTouchListener;

.field private Z:Lcom/amap/api/maps/AMap$OnPOIClickListener;

.field a:I

.field private final aA:Lcom/amap/api/mapcore/util/r;

.field private volatile aB:Z

.field private aC:Z

.field private aD:Z

.field private aE:Lcom/amap/api/maps/model/Marker;

.field private aF:Lcom/amap/api/mapcore/util/cr;

.field private aG:Z

.field private aH:Z

.field private aI:Ljava/lang/Thread;

.field private aJ:Lcom/amap/api/mapcore/util/b$a;

.field private aa:Lcom/amap/api/maps/AMap$OnMapLongClickListener;

.field private ab:Lcom/amap/api/maps/AMap$OnInfoWindowClickListener;

.field private ac:Lcom/amap/api/maps/AMap$OnIndoorBuildingActiveListener;

.field private ad:Lcom/amap/api/mapcore/util/e;

.field private ae:Lcom/amap/api/maps/AMap$onMapPrintScreenListener;

.field private af:Lcom/amap/api/maps/AMap$OnMapScreenShotListener;

.field private ag:Lcom/amap/api/maps/model/AMapGestureListener;

.field private ah:Lcom/amap/api/mapcore/util/n;

.field private ai:Lcom/amap/api/mapcore/util/o;

.field private aj:Lcom/amap/api/maps/LocationSource;

.field private ak:Landroid/graphics/Rect;

.field private al:Lcom/amap/api/mapcore/util/da;

.field private am:Lcom/amap/api/maps/AMap$CancelableCallback;

.field private an:I

.field private ao:Landroid/location/Location;

.field private ap:Z

.field private aq:Z

.field private ar:Z

.field private at:Z

.field private au:Ljava/lang/Boolean;

.field private av:Z

.field private aw:Z

.field private ax:Z

.field private ay:Lcom/autonavi/amap/mapcore/MapConfig;

.field private az:Lcom/amap/api/mapcore/util/dv;

.field b:Lcom/amap/api/mapcore/util/j;

.field c:Lcom/amap/api/mapcore/util/i;

.field d:Lcom/amap/api/mapcore/util/m;

.field e:Lcom/amap/api/mapcore/util/q;

.field f:Lcom/amap/api/mapcore/util/v;

.field g:Lcom/amap/api/mapcore/util/es;

.field h:Lcom/amap/api/mapcore/util/h;

.field i:Lcom/amap/api/mapcore/util/aq;

.field j:Lcom/amap/api/mapcore/util/cq;

.field k:I

.field l:I

.field m:Ljava/lang/Runnable;

.field final n:Landroid/os/Handler;

.field o:Lcom/amap/api/maps/CustomRenderer;

.field private p:I

.field private q:I

.field private r:Landroid/graphics/Bitmap;

.field private s:Landroid/graphics/Bitmap;

.field private t:F

.field private u:I

.field private v:Z

.field private w:Z

.field private x:Z

.field private y:Z

.field private z:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 222
    const/4 v0, 0x0

    sput-boolean v0, Lcom/amap/api/mapcore/util/b;->as:Z

    return-void
.end method

.method public constructor <init>(Lcom/amap/api/mapcore/util/m;Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6

    .prologue
    const/16 v5, 0xa

    const/4 v4, 0x1

    const/4 v3, -0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 243
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 137
    iput v3, p0, Lcom/amap/api/mapcore/util/b;->p:I

    .line 138
    iput v3, p0, Lcom/amap/api/mapcore/util/b;->q:I

    .line 139
    iput-object v2, p0, Lcom/amap/api/mapcore/util/b;->r:Landroid/graphics/Bitmap;

    .line 140
    iput-object v2, p0, Lcom/amap/api/mapcore/util/b;->s:Landroid/graphics/Bitmap;

    .line 141
    iput v3, p0, Lcom/amap/api/mapcore/util/b;->a:I

    .line 142
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/amap/api/mapcore/util/b;->t:F

    .line 145
    iput v1, p0, Lcom/amap/api/mapcore/util/b;->u:I

    .line 150
    iput-boolean v1, p0, Lcom/amap/api/mapcore/util/b;->x:Z

    .line 151
    iput-boolean v1, p0, Lcom/amap/api/mapcore/util/b;->y:Z

    .line 152
    iput-boolean v1, p0, Lcom/amap/api/mapcore/util/b;->z:Z

    .line 156
    iput-object v2, p0, Lcom/amap/api/mapcore/util/b;->C:Lcom/amap/api/maps/model/MyTrafficStyle;

    .line 158
    sget-object v0, Lcom/amap/api/mapcore/util/i$c;->a:Lcom/amap/api/mapcore/util/i$c;

    iput-object v0, p0, Lcom/amap/api/mapcore/util/b;->D:Lcom/amap/api/mapcore/util/i$c;

    .line 159
    sget-object v0, Lcom/amap/api/mapcore/util/i$a;->a:Lcom/amap/api/mapcore/util/i$a;

    iput-object v0, p0, Lcom/amap/api/mapcore/util/b;->E:Lcom/amap/api/mapcore/util/i$a;

    .line 160
    sget-object v0, Lcom/amap/api/mapcore/util/i$b;->a:Lcom/amap/api/mapcore/util/i$b;

    iput-object v0, p0, Lcom/amap/api/mapcore/util/b;->F:Lcom/amap/api/mapcore/util/i$b;

    .line 161
    sget-object v0, Lcom/amap/api/mapcore/util/i$c;->a:Lcom/amap/api/mapcore/util/i$c;

    iput-object v0, p0, Lcom/amap/api/mapcore/util/b;->G:Lcom/amap/api/mapcore/util/i$c;

    .line 162
    sget-object v0, Lcom/amap/api/mapcore/util/i$a;->a:Lcom/amap/api/mapcore/util/i$a;

    iput-object v0, p0, Lcom/amap/api/mapcore/util/b;->H:Lcom/amap/api/mapcore/util/i$a;

    .line 163
    sget-object v0, Lcom/amap/api/mapcore/util/i$b;->a:Lcom/amap/api/mapcore/util/i$b;

    iput-object v0, p0, Lcom/amap/api/mapcore/util/b;->I:Lcom/amap/api/mapcore/util/i$b;

    .line 166
    iput v3, p0, Lcom/amap/api/mapcore/util/b;->J:I

    .line 172
    iput-object v2, p0, Lcom/amap/api/mapcore/util/b;->b:Lcom/amap/api/mapcore/util/j;

    .line 173
    iput-object v2, p0, Lcom/amap/api/mapcore/util/b;->c:Lcom/amap/api/mapcore/util/i;

    .line 174
    iput-object v2, p0, Lcom/amap/api/mapcore/util/b;->d:Lcom/amap/api/mapcore/util/m;

    .line 177
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/amap/api/mapcore/util/b;->K:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 182
    iput v4, p0, Lcom/amap/api/mapcore/util/b;->L:I

    .line 185
    iput-object v2, p0, Lcom/amap/api/mapcore/util/b;->O:Lcom/amap/api/mapcore/util/a;

    .line 203
    iput-object v2, p0, Lcom/amap/api/mapcore/util/b;->ae:Lcom/amap/api/maps/AMap$onMapPrintScreenListener;

    .line 204
    iput-object v2, p0, Lcom/amap/api/mapcore/util/b;->af:Lcom/amap/api/maps/AMap$OnMapScreenShotListener;

    .line 210
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/amap/api/mapcore/util/b;->ak:Landroid/graphics/Rect;

    .line 211
    iput-object v2, p0, Lcom/amap/api/mapcore/util/b;->h:Lcom/amap/api/mapcore/util/h;

    .line 213
    iput-object v2, p0, Lcom/amap/api/mapcore/util/b;->am:Lcom/amap/api/maps/AMap$CancelableCallback;

    .line 214
    iput v1, p0, Lcom/amap/api/mapcore/util/b;->an:I

    .line 216
    iput-object v2, p0, Lcom/amap/api/mapcore/util/b;->i:Lcom/amap/api/mapcore/util/aq;

    .line 217
    iput-boolean v4, p0, Lcom/amap/api/mapcore/util/b;->ap:Z

    .line 218
    iput-boolean v1, p0, Lcom/amap/api/mapcore/util/b;->aq:Z

    .line 219
    iput-boolean v1, p0, Lcom/amap/api/mapcore/util/b;->ar:Z

    .line 223
    iput-boolean v1, p0, Lcom/amap/api/mapcore/util/b;->at:Z

    .line 224
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/mapcore/util/b;->au:Ljava/lang/Boolean;

    .line 225
    iput-boolean v1, p0, Lcom/amap/api/mapcore/util/b;->av:Z

    .line 226
    iput-boolean v1, p0, Lcom/amap/api/mapcore/util/b;->aw:Z

    .line 227
    iput-boolean v1, p0, Lcom/amap/api/mapcore/util/b;->ax:Z

    .line 229
    new-instance v0, Lcom/autonavi/amap/mapcore/MapConfig;

    invoke-direct {v0, v4}, Lcom/autonavi/amap/mapcore/MapConfig;-><init>(Z)V

    iput-object v0, p0, Lcom/amap/api/mapcore/util/b;->ay:Lcom/autonavi/amap/mapcore/MapConfig;

    .line 232
    iput-object v2, p0, Lcom/amap/api/mapcore/util/b;->j:Lcom/amap/api/mapcore/util/cq;

    .line 967
    iput v5, p0, Lcom/amap/api/mapcore/util/b;->k:I

    .line 968
    iput v5, p0, Lcom/amap/api/mapcore/util/b;->l:I

    .line 1114
    iput-boolean v1, p0, Lcom/amap/api/mapcore/util/b;->aB:Z

    .line 2227
    iput-boolean v1, p0, Lcom/amap/api/mapcore/util/b;->aC:Z

    .line 2231
    iput-boolean v1, p0, Lcom/amap/api/mapcore/util/b;->aD:Z

    .line 2232
    iput-object v2, p0, Lcom/amap/api/mapcore/util/b;->aE:Lcom/amap/api/maps/model/Marker;

    .line 2233
    iput-object v2, p0, Lcom/amap/api/mapcore/util/b;->aF:Lcom/amap/api/mapcore/util/cr;

    .line 2234
    iput-boolean v1, p0, Lcom/amap/api/mapcore/util/b;->aG:Z

    .line 2283
    iput-boolean v1, p0, Lcom/amap/api/mapcore/util/b;->aH:Z

    .line 2667
    new-instance v0, Lcom/amap/api/mapcore/util/b$5;

    invoke-direct {v0, p0}, Lcom/amap/api/mapcore/util/b$5;-><init>(Lcom/amap/api/mapcore/util/b;)V

    iput-object v0, p0, Lcom/amap/api/mapcore/util/b;->n:Landroid/os/Handler;

    .line 3478
    new-instance v0, Lcom/amap/api/mapcore/util/b$13;

    invoke-direct {v0, p0}, Lcom/amap/api/mapcore/util/b$13;-><init>(Lcom/amap/api/mapcore/util/b;)V

    iput-object v0, p0, Lcom/amap/api/mapcore/util/b;->aJ:Lcom/amap/api/mapcore/util/b$a;

    .line 244
    invoke-static {p2}, Lcom/amap/api/mapcore/util/fd;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amap/api/mapcore/util/g;->b:Ljava/lang/String;

    .line 245
    iput-object p1, p0, Lcom/amap/api/mapcore/util/b;->d:Lcom/amap/api/mapcore/util/m;

    .line 246
    invoke-virtual {p2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/mapcore/util/b;->N:Landroid/content/Context;

    .line 247
    new-instance v0, Lcom/amap/api/mapcore/util/dv;

    invoke-direct {v0, p1}, Lcom/amap/api/mapcore/util/dv;-><init>(Lcom/amap/api/mapcore/util/m;)V

    iput-object v0, p0, Lcom/amap/api/mapcore/util/b;->az:Lcom/amap/api/mapcore/util/dv;

    .line 252
    new-instance v0, Lcom/amap/api/mapcore/util/w;

    invoke-direct {v0, p0}, Lcom/amap/api/mapcore/util/w;-><init>(Lcom/amap/api/mapcore/util/l;)V

    iput-object v0, p0, Lcom/amap/api/mapcore/util/b;->ai:Lcom/amap/api/mapcore/util/o;

    .line 253
    new-instance v0, Lcom/autonavi/amap/mapcore/MapCore;

    iget-object v1, p0, Lcom/amap/api/mapcore/util/b;->N:Landroid/content/Context;

    invoke-direct {v0, v1, p0}, Lcom/autonavi/amap/mapcore/MapCore;-><init>(Landroid/content/Context;Lcom/autonavi/amap/mapcore/interfaces/IAMap;)V

    iput-object v0, p0, Lcom/amap/api/mapcore/util/b;->M:Lcom/autonavi/amap/mapcore/MapCore;

    .line 254
    new-instance v0, Lcom/amap/api/mapcore/util/a;

    invoke-direct {v0, p0}, Lcom/amap/api/mapcore/util/a;-><init>(Lcom/amap/api/mapcore/util/b;)V

    iput-object v0, p0, Lcom/amap/api/mapcore/util/b;->O:Lcom/amap/api/mapcore/util/a;

    .line 255
    iget-object v0, p0, Lcom/amap/api/mapcore/util/b;->M:Lcom/autonavi/amap/mapcore/MapCore;

    iget-object v1, p0, Lcom/amap/api/mapcore/util/b;->O:Lcom/amap/api/mapcore/util/a;

    invoke-virtual {v0, v1}, Lcom/autonavi/amap/mapcore/MapCore;->setMapCallback(Lcom/autonavi/amap/mapcore/IMapCallback;)V

    .line 256
    iget-object v0, p0, Lcom/amap/api/mapcore/util/b;->d:Lcom/amap/api/mapcore/util/m;

    invoke-interface {v0, p0}, Lcom/amap/api/mapcore/util/m;->setRenderer(Landroid/opengl/GLSurfaceView$Renderer;)V

    .line 258
    invoke-direct {p0}, Lcom/amap/api/mapcore/util/b;->C()V

    .line 260
    new-instance v0, Lcom/amap/api/mapcore/util/i;

    invoke-direct {v0, p0, p2}, Lcom/amap/api/mapcore/util/i;-><init>(Lcom/amap/api/mapcore/util/b;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/amap/api/mapcore/util/b;->c:Lcom/amap/api/mapcore/util/i;

    .line 261
    new-instance v0, Lcom/amap/api/mapcore/util/t;

    invoke-direct {v0, p0}, Lcom/amap/api/mapcore/util/t;-><init>(Lcom/amap/api/mapcore/util/l;)V

    iput-object v0, p0, Lcom/amap/api/mapcore/util/b;->ah:Lcom/amap/api/mapcore/util/n;

    .line 262
    new-instance v0, Lcom/amap/api/mapcore/util/h;

    iget-object v1, p0, Lcom/amap/api/mapcore/util/b;->N:Landroid/content/Context;

    invoke-direct {v0, v1, p0}, Lcom/amap/api/mapcore/util/h;-><init>(Landroid/content/Context;Lcom/amap/api/mapcore/util/l;)V

    iput-object v0, p0, Lcom/amap/api/mapcore/util/b;->h:Lcom/amap/api/mapcore/util/h;

    .line 263
    new-instance v0, Lcom/amap/api/mapcore/util/e;

    invoke-direct {v0, p0}, Lcom/amap/api/mapcore/util/e;-><init>(Lcom/amap/api/mapcore/util/l;)V

    iput-object v0, p0, Lcom/amap/api/mapcore/util/b;->ad:Lcom/amap/api/mapcore/util/e;

    .line 265
    new-instance v0, Lcom/amap/api/mapcore/util/es;

    iget-object v1, p0, Lcom/amap/api/mapcore/util/b;->N:Landroid/content/Context;

    invoke-direct {v0, v1, p0}, Lcom/amap/api/mapcore/util/es;-><init>(Landroid/content/Context;Lcom/amap/api/mapcore/util/l;)V

    iput-object v0, p0, Lcom/amap/api/mapcore/util/b;->g:Lcom/amap/api/mapcore/util/es;

    .line 266
    iget-object v0, p0, Lcom/amap/api/mapcore/util/b;->g:Lcom/amap/api/mapcore/util/es;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/es;->f()Lcom/amap/api/mapcore/util/eq;

    move-result-object v0

    new-instance v1, Lcom/amap/api/mapcore/util/b$b;

    invoke-direct {v1, p0, v2}, Lcom/amap/api/mapcore/util/b$b;-><init>(Lcom/amap/api/mapcore/util/b;Lcom/amap/api/mapcore/util/b$1;)V

    invoke-virtual {v0, v1}, Lcom/amap/api/mapcore/util/eq;->a(Lcom/amap/api/mapcore/util/eq$a;)V

    .line 269
    new-instance v0, Lcom/amap/api/mapcore/util/f;

    iget-object v1, p0, Lcom/amap/api/mapcore/util/b;->N:Landroid/content/Context;

    invoke-direct {v0, v1, p0}, Lcom/amap/api/mapcore/util/f;-><init>(Landroid/content/Context;Lcom/amap/api/mapcore/util/l;)V

    iput-object v0, p0, Lcom/amap/api/mapcore/util/b;->aI:Ljava/lang/Thread;

    .line 270
    new-instance v0, Lcom/amap/api/mapcore/util/j;

    invoke-direct {v0, p0}, Lcom/amap/api/mapcore/util/j;-><init>(Lcom/amap/api/mapcore/util/l;)V

    iput-object v0, p0, Lcom/amap/api/mapcore/util/b;->b:Lcom/amap/api/mapcore/util/j;

    .line 271
    new-instance v0, Lcom/amap/api/mapcore/util/q;

    iget-object v1, p0, Lcom/amap/api/mapcore/util/b;->N:Landroid/content/Context;

    invoke-direct {v0, v1, p0}, Lcom/amap/api/mapcore/util/q;-><init>(Landroid/content/Context;Lcom/amap/api/mapcore/util/l;)V

    iput-object v0, p0, Lcom/amap/api/mapcore/util/b;->e:Lcom/amap/api/mapcore/util/q;

    .line 272
    new-instance v0, Lcom/amap/api/mapcore/util/v;

    iget-object v1, p0, Lcom/amap/api/mapcore/util/b;->N:Landroid/content/Context;

    invoke-direct {v0, v1, p0}, Lcom/amap/api/mapcore/util/v;-><init>(Landroid/content/Context;Lcom/amap/api/mapcore/util/l;)V

    iput-object v0, p0, Lcom/amap/api/mapcore/util/b;->f:Lcom/amap/api/mapcore/util/v;

    .line 273
    new-instance v0, Lcom/amap/api/mapcore/util/da;

    invoke-direct {v0, p0, p2}, Lcom/amap/api/mapcore/util/da;-><init>(Lcom/amap/api/mapcore/util/l;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/amap/api/mapcore/util/b;->al:Lcom/amap/api/mapcore/util/da;

    .line 277
    iget-object v0, p0, Lcom/amap/api/mapcore/util/b;->g:Lcom/amap/api/mapcore/util/es;

    iput-object v0, p0, Lcom/amap/api/mapcore/util/b;->j:Lcom/amap/api/mapcore/util/cq;

    .line 278
    new-instance v0, Lcom/amap/api/mapcore/util/de;

    invoke-direct {v0, p0, p2}, Lcom/amap/api/mapcore/util/de;-><init>(Lcom/amap/api/mapcore/util/l;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/amap/api/mapcore/util/b;->Q:Lcom/amap/api/mapcore/util/de;

    .line 280
    new-instance v0, Lcom/amap/api/mapcore/util/r;

    invoke-direct {v0}, Lcom/amap/api/mapcore/util/r;-><init>()V

    iput-object v0, p0, Lcom/amap/api/mapcore/util/b;->aA:Lcom/amap/api/mapcore/util/r;

    .line 282
    return-void
.end method

.method private B()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 416
    new-instance v0, Lcom/autonavi/amap/mapcore/IPoint;

    invoke-direct {v0}, Lcom/autonavi/amap/mapcore/IPoint;-><init>()V

    .line 417
    iget-object v1, p0, Lcom/amap/api/mapcore/util/b;->P:Lcom/autonavi/amap/mapcore/MapProjection;

    if-eqz v1, :cond_0

    .line 418
    iget-object v1, p0, Lcom/amap/api/mapcore/util/b;->P:Lcom/autonavi/amap/mapcore/MapProjection;

    invoke-virtual {v1}, Lcom/autonavi/amap/mapcore/MapProjection;->recalculate()V

    .line 419
    iget-object v1, p0, Lcom/amap/api/mapcore/util/b;->P:Lcom/autonavi/amap/mapcore/MapProjection;

    invoke-virtual {v1, v0}, Lcom/autonavi/amap/mapcore/MapProjection;->getGeoCenter(Lcom/autonavi/amap/mapcore/IPoint;)V

    .line 420
    iget-object v1, p0, Lcom/amap/api/mapcore/util/b;->ay:Lcom/autonavi/amap/mapcore/MapConfig;

    iget v2, v0, Lcom/autonavi/amap/mapcore/IPoint;->x:I

    invoke-virtual {v1, v2}, Lcom/autonavi/amap/mapcore/MapConfig;->setS_x(I)V

    .line 421
    iget-object v1, p0, Lcom/amap/api/mapcore/util/b;->ay:Lcom/autonavi/amap/mapcore/MapConfig;

    iget v0, v0, Lcom/autonavi/amap/mapcore/IPoint;->y:I

    invoke-virtual {v1, v0}, Lcom/autonavi/amap/mapcore/MapConfig;->setS_y(I)V

    .line 422
    iget-object v0, p0, Lcom/amap/api/mapcore/util/b;->ay:Lcom/autonavi/amap/mapcore/MapConfig;

    iget-object v1, p0, Lcom/amap/api/mapcore/util/b;->P:Lcom/autonavi/amap/mapcore/MapProjection;

    invoke-virtual {v1}, Lcom/autonavi/amap/mapcore/MapProjection;->getMapZoomer()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/autonavi/amap/mapcore/MapConfig;->setS_z(F)V

    .line 423
    iget-object v0, p0, Lcom/amap/api/mapcore/util/b;->ay:Lcom/autonavi/amap/mapcore/MapConfig;

    iget-object v1, p0, Lcom/amap/api/mapcore/util/b;->P:Lcom/autonavi/amap/mapcore/MapProjection;

    invoke-virtual {v1}, Lcom/autonavi/amap/mapcore/MapProjection;->getCameraHeaderAngle()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/autonavi/amap/mapcore/MapConfig;->setS_c(F)V

    .line 424
    iget-object v0, p0, Lcom/amap/api/mapcore/util/b;->ay:Lcom/autonavi/amap/mapcore/MapConfig;

    iget-object v1, p0, Lcom/amap/api/mapcore/util/b;->P:Lcom/autonavi/amap/mapcore/MapProjection;

    invoke-virtual {v1}, Lcom/autonavi/amap/mapcore/MapProjection;->getMapAngle()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/autonavi/amap/mapcore/MapConfig;->setS_r(F)V

    .line 431
    :cond_0
    return-void
.end method

.method private C()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 437
    iget-boolean v0, p0, Lcom/amap/api/mapcore/util/b;->aq:Z

    if-nez v0, :cond_0

    .line 443
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/b;->M:Lcom/autonavi/amap/mapcore/MapCore;

    invoke-virtual {v0}, Lcom/autonavi/amap/mapcore/MapCore;->newMap()V

    .line 444
    iget-object v0, p0, Lcom/amap/api/mapcore/util/b;->O:Lcom/amap/api/mapcore/util/a;

    iget-object v1, p0, Lcom/amap/api/mapcore/util/b;->M:Lcom/autonavi/amap/mapcore/MapCore;

    invoke-virtual {v0, v1}, Lcom/amap/api/mapcore/util/a;->onResume(Lcom/autonavi/amap/mapcore/MapCore;)V

    .line 446
    iget-object v0, p0, Lcom/amap/api/mapcore/util/b;->M:Lcom/autonavi/amap/mapcore/MapCore;

    invoke-virtual {v0}, Lcom/autonavi/amap/mapcore/MapCore;->getMapstate()Lcom/autonavi/amap/mapcore/MapProjection;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/mapcore/util/b;->P:Lcom/autonavi/amap/mapcore/MapProjection;

    .line 447
    iget-object v0, p0, Lcom/amap/api/mapcore/util/b;->P:Lcom/autonavi/amap/mapcore/MapProjection;

    iget-object v1, p0, Lcom/amap/api/mapcore/util/b;->ay:Lcom/autonavi/amap/mapcore/MapConfig;

    invoke-virtual {v1}, Lcom/autonavi/amap/mapcore/MapConfig;->getS_x()I

    move-result v1

    iget-object v2, p0, Lcom/amap/api/mapcore/util/b;->ay:Lcom/autonavi/amap/mapcore/MapConfig;

    .line 448
    invoke-virtual {v2}, Lcom/autonavi/amap/mapcore/MapConfig;->getS_y()I

    move-result v2

    .line 447
    invoke-virtual {v0, v1, v2}, Lcom/autonavi/amap/mapcore/MapProjection;->setGeoCenter(II)V

    .line 449
    iget-object v0, p0, Lcom/amap/api/mapcore/util/b;->P:Lcom/autonavi/amap/mapcore/MapProjection;

    iget-object v1, p0, Lcom/amap/api/mapcore/util/b;->ay:Lcom/autonavi/amap/mapcore/MapConfig;

    invoke-virtual {v1}, Lcom/autonavi/amap/mapcore/MapConfig;->getS_r()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/autonavi/amap/mapcore/MapProjection;->setMapAngle(F)V

    .line 450
    iget-object v0, p0, Lcom/amap/api/mapcore/util/b;->P:Lcom/autonavi/amap/mapcore/MapProjection;

    iget-object v1, p0, Lcom/amap/api/mapcore/util/b;->ay:Lcom/autonavi/amap/mapcore/MapConfig;

    invoke-virtual {v1}, Lcom/autonavi/amap/mapcore/MapConfig;->getS_z()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/autonavi/amap/mapcore/MapProjection;->setMapZoomer(F)V

    .line 451
    iget-object v0, p0, Lcom/amap/api/mapcore/util/b;->P:Lcom/autonavi/amap/mapcore/MapProjection;

    iget-object v1, p0, Lcom/amap/api/mapcore/util/b;->ay:Lcom/autonavi/amap/mapcore/MapConfig;

    invoke-virtual {v1}, Lcom/autonavi/amap/mapcore/MapConfig;->getS_c()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/autonavi/amap/mapcore/MapProjection;->setCameraHeaderAngle(F)V

    .line 456
    iget-object v0, p0, Lcom/amap/api/mapcore/util/b;->M:Lcom/autonavi/amap/mapcore/MapCore;

    iget-object v1, p0, Lcom/amap/api/mapcore/util/b;->P:Lcom/autonavi/amap/mapcore/MapProjection;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/autonavi/amap/mapcore/MapCore;->setMapstate(Lcom/autonavi/amap/mapcore/MapProjection;Z)V

    .line 465
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/amap/api/mapcore/util/b;->aq:Z

    .line 466
    iget-object v0, p0, Lcom/amap/api/mapcore/util/b;->az:Lcom/amap/api/mapcore/util/dv;

    const/16 v1, 0xf

    invoke-virtual {v0, v1}, Lcom/amap/api/mapcore/util/dv;->a(I)V

    .line 467
    iget-object v0, p0, Lcom/amap/api/mapcore/util/b;->d:Lcom/amap/api/mapcore/util/m;

    const/4 v1, 0x0

    .line 468
    invoke-interface {v0, v1}, Lcom/amap/api/mapcore/util/m;->setRenderMode(I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 476
    :cond_0
    :goto_0
    return-void

    .line 472
    :catch_0
    move-exception v0

    .line 473
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method private D()V
    .locals 1

    .prologue
    .line 479
    new-instance v0, Lcom/amap/api/mapcore/util/b$12;

    invoke-direct {v0, p0}, Lcom/amap/api/mapcore/util/b$12;-><init>(Lcom/amap/api/mapcore/util/b;)V

    invoke-virtual {p0, v0}, Lcom/amap/api/mapcore/util/b;->a(Ljava/lang/Runnable;)V

    .line 509
    return-void
.end method

.method private E()V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v2, 0x0

    .line 517
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/b;->ay:Lcom/autonavi/amap/mapcore/MapConfig;

    invoke-virtual {v0}, Lcom/autonavi/amap/mapcore/MapConfig;->isIndoorEnable()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/amap/api/mapcore/util/b;->setIndoorEnabled(Z)V

    .line 518
    iget-object v0, p0, Lcom/amap/api/mapcore/util/b;->ay:Lcom/autonavi/amap/mapcore/MapConfig;

    invoke-virtual {v0}, Lcom/autonavi/amap/mapcore/MapConfig;->isBuildingEnable()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/amap/api/mapcore/util/b;->set3DBuildingEnabled(Z)V

    .line 519
    iget-object v0, p0, Lcom/amap/api/mapcore/util/b;->ay:Lcom/autonavi/amap/mapcore/MapConfig;

    invoke-virtual {v0}, Lcom/autonavi/amap/mapcore/MapConfig;->isMapTextEnable()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/amap/api/mapcore/util/b;->setMapTextEnable(Z)V

    .line 520
    iget-object v0, p0, Lcom/amap/api/mapcore/util/b;->ay:Lcom/autonavi/amap/mapcore/MapConfig;

    invoke-virtual {v0}, Lcom/autonavi/amap/mapcore/MapConfig;->isTrafficEnabled()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/amap/api/mapcore/util/b;->setTrafficEnabled(Z)V

    .line 523
    iget-object v0, p0, Lcom/amap/api/mapcore/util/b;->C:Lcom/amap/api/maps/model/MyTrafficStyle;

    invoke-virtual {p0, v0}, Lcom/amap/api/mapcore/util/b;->setMyTrafficStyle(Lcom/amap/api/maps/model/MyTrafficStyle;)V

    .line 526
    iget-object v0, p0, Lcom/amap/api/mapcore/util/b;->M:Lcom/autonavi/amap/mapcore/MapCore;

    const/16 v1, 0x7db

    iget-object v3, p0, Lcom/amap/api/mapcore/util/b;->E:Lcom/amap/api/mapcore/util/i$a;

    sget-object v4, Lcom/amap/api/mapcore/util/i$a;->b:Lcom/amap/api/mapcore/util/i$a;

    if-ne v3, v4, :cond_0

    const/4 v2, 0x1

    :cond_0
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/autonavi/amap/mapcore/MapCore;->setParameter(IIIII)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 532
    :goto_0
    return-void

    .line 529
    :catch_0
    move-exception v0

    .line 530
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method private F()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 715
    iput-object v0, p0, Lcom/amap/api/mapcore/util/b;->R:Lcom/amap/api/maps/AMap$OnMyLocationChangeListener;

    .line 716
    iput-object v0, p0, Lcom/amap/api/mapcore/util/b;->S:Lcom/amap/api/maps/AMap$OnMarkerClickListener;

    .line 717
    iput-object v0, p0, Lcom/amap/api/mapcore/util/b;->T:Lcom/amap/api/maps/AMap$OnPolylineClickListener;

    .line 718
    iput-object v0, p0, Lcom/amap/api/mapcore/util/b;->U:Lcom/amap/api/maps/AMap$OnMarkerDragListener;

    .line 719
    iput-object v0, p0, Lcom/amap/api/mapcore/util/b;->V:Lcom/amap/api/maps/AMap$OnMapLoadedListener;

    .line 720
    iput-object v0, p0, Lcom/amap/api/mapcore/util/b;->W:Lcom/amap/api/maps/AMap$OnCameraChangeListener;

    .line 721
    iput-object v0, p0, Lcom/amap/api/mapcore/util/b;->X:Lcom/amap/api/maps/AMap$OnMapClickListener;

    .line 722
    iput-object v0, p0, Lcom/amap/api/mapcore/util/b;->Y:Lcom/amap/api/maps/AMap$OnMapTouchListener;

    .line 723
    iput-object v0, p0, Lcom/amap/api/mapcore/util/b;->Z:Lcom/amap/api/maps/AMap$OnPOIClickListener;

    .line 724
    iput-object v0, p0, Lcom/amap/api/mapcore/util/b;->aa:Lcom/amap/api/maps/AMap$OnMapLongClickListener;

    .line 725
    iput-object v0, p0, Lcom/amap/api/mapcore/util/b;->ab:Lcom/amap/api/maps/AMap$OnInfoWindowClickListener;

    .line 726
    iput-object v0, p0, Lcom/amap/api/mapcore/util/b;->ac:Lcom/amap/api/maps/AMap$OnIndoorBuildingActiveListener;

    .line 727
    iput-object v0, p0, Lcom/amap/api/mapcore/util/b;->ad:Lcom/amap/api/mapcore/util/e;

    .line 728
    iput-object v0, p0, Lcom/amap/api/mapcore/util/b;->ae:Lcom/amap/api/maps/AMap$onMapPrintScreenListener;

    .line 729
    iput-object v0, p0, Lcom/amap/api/mapcore/util/b;->af:Lcom/amap/api/maps/AMap$OnMapScreenShotListener;

    .line 730
    return-void
.end method

.method private G()V
    .locals 1

    .prologue
    .line 811
    iget-boolean v0, p0, Lcom/amap/api/mapcore/util/b;->aq:Z

    if-nez v0, :cond_1

    .line 817
    :cond_0
    :goto_0
    return-void

    .line 813
    :cond_1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/b;->az:Lcom/amap/api/mapcore/util/dv;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore/util/b;->az:Lcom/amap/api/mapcore/util/dv;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/dv;->c()Z

    move-result v0

    if-nez v0, :cond_0

    .line 814
    iget-object v0, p0, Lcom/amap/api/mapcore/util/b;->d:Lcom/amap/api/mapcore/util/m;

    invoke-interface {v0}, Lcom/amap/api/mapcore/util/m;->requestRender()V

    goto :goto_0
.end method

.method private H()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v3, 0x1

    .line 878
    iget-object v0, p0, Lcom/amap/api/mapcore/util/b;->g:Lcom/amap/api/mapcore/util/es;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/es;->c()Lcom/amap/api/mapcore/util/eo;

    move-result-object v0

    .line 879
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/eo;->getVisibility()I

    move-result v1

    const/16 v2, 0x8

    if-eq v1, v2, :cond_1

    .line 880
    iget-boolean v1, p0, Lcom/amap/api/mapcore/util/b;->ar:Z

    if-nez v1, :cond_0

    .line 881
    iget-object v1, p0, Lcom/amap/api/mapcore/util/b;->n:Landroid/os/Handler;

    const/16 v2, 0x12

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 882
    iput-boolean v3, p0, Lcom/amap/api/mapcore/util/b;->ar:Z

    .line 884
    invoke-virtual {p0, v3}, Lcom/amap/api/mapcore/util/b;->g(Z)V

    .line 886
    :cond_0
    iget-object v1, p0, Lcom/amap/api/mapcore/util/b;->n:Landroid/os/Handler;

    new-instance v2, Lcom/amap/api/mapcore/util/b$17;

    invoke-direct {v2, p0, v0}, Lcom/amap/api/mapcore/util/b$17;-><init>(Lcom/amap/api/mapcore/util/b;Lcom/amap/api/mapcore/util/eo;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 918
    :cond_1
    return-void
.end method

.method private I()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 921
    iget-object v0, p0, Lcom/amap/api/mapcore/util/b;->ay:Lcom/autonavi/amap/mapcore/MapConfig;

    const/4 v1, 0x1

    invoke-static {p0, v1}, Lcom/amap/api/mapcore/util/en;->a(Lcom/amap/api/mapcore/util/l;Z)[Lcom/autonavi/amap/mapcore/FPoint;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/autonavi/amap/mapcore/MapConfig;->setMapRect([Lcom/autonavi/amap/mapcore/FPoint;)V

    .line 922
    return-void
.end method

.method private J()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/16 v2, 0x1e

    .line 970
    iget v0, p0, Lcom/amap/api/mapcore/util/b;->a:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 971
    iget-object v0, p0, Lcom/amap/api/mapcore/util/b;->az:Lcom/amap/api/mapcore/util/dv;

    iget v1, p0, Lcom/amap/api/mapcore/util/b;->a:I

    invoke-virtual {v0, v1}, Lcom/amap/api/mapcore/util/dv;->a(I)V

    .line 972
    invoke-direct {p0}, Lcom/amap/api/mapcore/util/b;->K()V

    .line 989
    :goto_0
    return-void

    .line 973
    :cond_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/b;->M:Lcom/autonavi/amap/mapcore/MapCore;

    invoke-virtual {v0}, Lcom/autonavi/amap/mapcore/MapCore;->getAnimateionsCount()I

    move-result v0

    if-lez v0, :cond_1

    .line 974
    iget-object v0, p0, Lcom/amap/api/mapcore/util/b;->az:Lcom/amap/api/mapcore/util/dv;

    invoke-virtual {v0, v2}, Lcom/amap/api/mapcore/util/dv;->a(I)V

    .line 975
    invoke-direct {p0}, Lcom/amap/api/mapcore/util/b;->K()V

    goto :goto_0

    .line 981
    :cond_1
    iget v0, p0, Lcom/amap/api/mapcore/util/b;->k:I

    iget v1, p0, Lcom/amap/api/mapcore/util/b;->l:I

    if-le v0, v1, :cond_2

    .line 982
    iget-object v0, p0, Lcom/amap/api/mapcore/util/b;->az:Lcom/amap/api/mapcore/util/dv;

    const/16 v1, 0xf

    invoke-virtual {v0, v1}, Lcom/amap/api/mapcore/util/dv;->a(I)V

    goto :goto_0

    .line 984
    :cond_2
    iget v0, p0, Lcom/amap/api/mapcore/util/b;->k:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/amap/api/mapcore/util/b;->k:I

    .line 985
    iget-object v0, p0, Lcom/amap/api/mapcore/util/b;->az:Lcom/amap/api/mapcore/util/dv;

    invoke-virtual {v0, v2}, Lcom/amap/api/mapcore/util/dv;->a(I)V

    .line 986
    iget-object v0, p0, Lcom/amap/api/mapcore/util/b;->az:Lcom/amap/api/mapcore/util/dv;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/amap/api/mapcore/util/dv;->b(I)V

    goto :goto_0
.end method

.method private K()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 1101
    iget-object v0, p0, Lcom/amap/api/mapcore/util/b;->az:Lcom/amap/api/mapcore/util/dv;

    if-eqz v0, :cond_0

    .line 1102
    iget-object v0, p0, Lcom/amap/api/mapcore/util/b;->az:Lcom/amap/api/mapcore/util/dv;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/amap/api/mapcore/util/dv;->b(I)V

    .line 1104
    :cond_0
    return-void
.end method

.method private declared-synchronized L()V
    .locals 1

    .prologue
    .line 1107
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/b;->az:Lcom/amap/api/mapcore/util/dv;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/dv;->b()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1108
    monitor-exit p0

    return-void

    .line 1107
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized M()V
    .locals 1

    .prologue
    .line 1111
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/b;->az:Lcom/amap/api/mapcore/util/dv;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/dv;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1112
    monitor-exit p0

    return-void

    .line 1111
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized N()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 1121
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/amap/api/mapcore/util/b;->aB:Z

    if-nez v0, :cond_0

    .line 1122
    iget-object v0, p0, Lcom/amap/api/mapcore/util/b;->c:Lcom/amap/api/mapcore/util/i;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/i;->a()V

    .line 1124
    iget-object v0, p0, Lcom/amap/api/mapcore/util/b;->c:Lcom/amap/api/mapcore/util/i;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/amap/api/mapcore/util/i;->a(Z)V

    .line 1125
    iget-object v0, p0, Lcom/amap/api/mapcore/util/b;->c:Lcom/amap/api/mapcore/util/i;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/amap/api/mapcore/util/i;->b(Z)V

    .line 1126
    iget-object v0, p0, Lcom/amap/api/mapcore/util/b;->c:Lcom/amap/api/mapcore/util/i;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/amap/api/mapcore/util/i;->e(Z)V

    .line 1127
    iget-object v0, p0, Lcom/amap/api/mapcore/util/b;->c:Lcom/amap/api/mapcore/util/i;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/amap/api/mapcore/util/i;->d(Z)V

    .line 1129
    iget-object v0, p0, Lcom/amap/api/mapcore/util/b;->c:Lcom/amap/api/mapcore/util/i;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/amap/api/mapcore/util/i;->c(Z)V

    .line 1130
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/amap/api/mapcore/util/b;->aB:Z
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1141
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 1132
    :catch_0
    move-exception v0

    .line 1133
    :try_start_1
    const-string/jumbo v1, "AMapDelegateImp"

    const-string/jumbo v2, "setInternaltexture"

    invoke-static {v0, v1, v2}, Lcom/amap/api/mapcore/util/ft;->b(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 1134
    invoke-virtual {v0}, Ljava/lang/OutOfMemoryError;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1121
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 1135
    :catch_1
    move-exception v0

    .line 1136
    :try_start_2
    const-string/jumbo v1, "AMapDelegateImp"

    const-string/jumbo v2, "setInternaltexture"

    invoke-static {v0, v1, v2}, Lcom/amap/api/mapcore/util/ft;->b(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 1139
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method private O()Lcom/amap/api/maps/model/LatLng;
    .locals 7

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 2189
    iget-boolean v0, p0, Lcom/amap/api/mapcore/util/b;->aq:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore/util/b;->P:Lcom/autonavi/amap/mapcore/MapProjection;

    if-eqz v0, :cond_0

    .line 2190
    new-instance v0, Lcom/autonavi/amap/mapcore/DPoint;

    invoke-direct {v0}, Lcom/autonavi/amap/mapcore/DPoint;-><init>()V

    .line 2191
    new-instance v1, Lcom/autonavi/amap/mapcore/IPoint;

    invoke-direct {v1}, Lcom/autonavi/amap/mapcore/IPoint;-><init>()V

    .line 2192
    iget-object v2, p0, Lcom/amap/api/mapcore/util/b;->P:Lcom/autonavi/amap/mapcore/MapProjection;

    invoke-virtual {v2, v1}, Lcom/autonavi/amap/mapcore/MapProjection;->getGeoCenter(Lcom/autonavi/amap/mapcore/IPoint;)V

    .line 2193
    iget v2, v1, Lcom/autonavi/amap/mapcore/IPoint;->x:I

    iget v1, v1, Lcom/autonavi/amap/mapcore/IPoint;->y:I

    invoke-static {v2, v1, v0}, Lcom/autonavi/amap/mapcore/MapProjection;->geo2LonLat(IILcom/autonavi/amap/mapcore/DPoint;)V

    .line 2194
    new-instance v1, Lcom/amap/api/maps/model/LatLng;

    iget-wide v2, v0, Lcom/autonavi/amap/mapcore/DPoint;->y:D

    iget-wide v4, v0, Lcom/autonavi/amap/mapcore/DPoint;->x:D

    const/4 v6, 0x0

    invoke-direct/range {v1 .. v6}, Lcom/amap/api/maps/model/LatLng;-><init>(DDZ)V

    .line 2197
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private P()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 2237
    iget-boolean v0, p0, Lcom/amap/api/mapcore/util/b;->aH:Z

    if-eqz v0, :cond_0

    .line 2238
    iput-boolean v2, p0, Lcom/amap/api/mapcore/util/b;->aH:Z

    .line 2239
    :cond_0
    iget-boolean v0, p0, Lcom/amap/api/mapcore/util/b;->aG:Z

    if-eqz v0, :cond_1

    .line 2240
    iput-boolean v2, p0, Lcom/amap/api/mapcore/util/b;->aG:Z

    .line 2241
    invoke-static {}, Lcom/amap/api/mapcore/util/ag;->c()Lcom/amap/api/mapcore/util/af;

    move-result-object v0

    .line 2242
    iput-boolean v3, v0, Lcom/amap/api/mapcore/util/af;->isChangeFinished:Z

    .line 2243
    iget-object v1, p0, Lcom/amap/api/mapcore/util/b;->M:Lcom/autonavi/amap/mapcore/MapCore;

    invoke-virtual {v1, v0}, Lcom/autonavi/amap/mapcore/MapCore;->addMessage(Lcom/autonavi/amap/mapcore/MapMessage;)V

    .line 2245
    :cond_1
    iget-boolean v0, p0, Lcom/amap/api/mapcore/util/b;->aC:Z

    if-eqz v0, :cond_2

    .line 2246
    iput-boolean v2, p0, Lcom/amap/api/mapcore/util/b;->aC:Z

    .line 2247
    invoke-static {}, Lcom/amap/api/mapcore/util/ag;->c()Lcom/amap/api/mapcore/util/af;

    move-result-object v0

    .line 2248
    iput-boolean v3, v0, Lcom/amap/api/mapcore/util/af;->isChangeFinished:Z

    .line 2249
    iget-object v1, p0, Lcom/amap/api/mapcore/util/b;->M:Lcom/autonavi/amap/mapcore/MapCore;

    invoke-virtual {v1, v0}, Lcom/autonavi/amap/mapcore/MapCore;->addMessage(Lcom/autonavi/amap/mapcore/MapMessage;)V

    .line 2251
    :cond_2
    iput-boolean v2, p0, Lcom/amap/api/mapcore/util/b;->aD:Z

    .line 2252
    iget-object v0, p0, Lcom/amap/api/mapcore/util/b;->U:Lcom/amap/api/maps/AMap$OnMarkerDragListener;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/amap/api/mapcore/util/b;->aE:Lcom/amap/api/maps/model/Marker;

    if-eqz v0, :cond_3

    .line 2255
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/b;->U:Lcom/amap/api/maps/AMap$OnMarkerDragListener;

    iget-object v1, p0, Lcom/amap/api/mapcore/util/b;->aE:Lcom/amap/api/maps/model/Marker;

    invoke-interface {v0, v1}, Lcom/amap/api/maps/AMap$OnMarkerDragListener;->onMarkerDragEnd(Lcom/amap/api/maps/model/Marker;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 2260
    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/api/mapcore/util/b;->aE:Lcom/amap/api/maps/model/Marker;

    .line 2262
    :cond_3
    return-void

    .line 2256
    :catch_0
    move-exception v0

    .line 2257
    const-string/jumbo v1, "AMapDelegateImp"

    const-string/jumbo v2, "OnMarkerDragListener.onMarkerDragEnd"

    invoke-static {v0, v1, v2}, Lcom/amap/api/mapcore/util/ft;->b(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 2258
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method private Q()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 3293
    sget-boolean v0, Lcom/amap/api/mapcore/util/b;->as:Z

    if-nez v0, :cond_0

    .line 3295
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/b;->aI:Ljava/lang/Thread;

    const-string/jumbo v1, "AuthThread"

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 3296
    iget-object v0, p0, Lcom/amap/api/mapcore/util/b;->aI:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 3297
    const/4 v0, 0x1

    sput-boolean v0, Lcom/amap/api/mapcore/util/b;->as:Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 3302
    :cond_0
    :goto_0
    return-void

    .line 3298
    :catch_0
    move-exception v0

    .line 3299
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method private R()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 3322
    iget-object v0, p0, Lcom/amap/api/mapcore/util/b;->au:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3329
    :goto_0
    return-void

    .line 3326
    :cond_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/b;->E:Lcom/amap/api/mapcore/util/i$a;

    sget-object v1, Lcom/amap/api/mapcore/util/i$a;->b:Lcom/amap/api/mapcore/util/i$a;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/amap/api/mapcore/util/b;->D:Lcom/amap/api/mapcore/util/i$c;

    sget-object v1, Lcom/amap/api/mapcore/util/i$c;->b:Lcom/amap/api/mapcore/util/i$c;

    if-eq v0, v1, :cond_1

    const/4 v0, 0x1

    .line 3328
    :goto_1
    iget-object v1, p0, Lcom/amap/api/mapcore/util/b;->g:Lcom/amap/api/mapcore/util/es;

    invoke-virtual {v1, v0}, Lcom/amap/api/mapcore/util/es;->f(Z)V

    goto :goto_0

    .line 3326
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private S()V
    .locals 1

    .prologue
    .line 3384
    iget-object v0, p0, Lcom/amap/api/mapcore/util/b;->K:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-eqz v0, :cond_0

    .line 3385
    iget-object v0, p0, Lcom/amap/api/mapcore/util/b;->K:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    .line 3388
    :cond_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/b;->e:Lcom/amap/api/mapcore/util/q;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/q;->h()V

    .line 3389
    iget-object v0, p0, Lcom/amap/api/mapcore/util/b;->b:Lcom/amap/api/mapcore/util/j;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/j;->f()V

    .line 3390
    iget-object v0, p0, Lcom/amap/api/mapcore/util/b;->f:Lcom/amap/api/mapcore/util/v;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/v;->g()V

    .line 3392
    return-void
.end method

.method private T()V
    .locals 1

    .prologue
    .line 3395
    iget-boolean v0, p0, Lcom/amap/api/mapcore/util/b;->aq:Z

    if-nez v0, :cond_0

    .line 3412
    :goto_0
    return-void

    .line 3397
    :cond_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/b;->h:Lcom/amap/api/mapcore/util/h;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/h;->a()V

    .line 3398
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/amap/api/mapcore/util/b;->x:Z

    .line 3400
    :try_start_0
    invoke-virtual {p0}, Lcom/amap/api/mapcore/util/b;->stopAnimation()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3403
    :goto_1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/b;->M:Lcom/autonavi/amap/mapcore/MapCore;

    invoke-virtual {v0}, Lcom/autonavi/amap/mapcore/MapCore;->clearAllMessages()V

    .line 3404
    iget-object v0, p0, Lcom/amap/api/mapcore/util/b;->M:Lcom/autonavi/amap/mapcore/MapCore;

    invoke-virtual {v0}, Lcom/autonavi/amap/mapcore/MapCore;->clearAnimations()V

    .line 3405
    new-instance v0, Lcom/amap/api/mapcore/util/b$10;

    invoke-direct {v0, p0}, Lcom/amap/api/mapcore/util/b$10;-><init>(Lcom/amap/api/mapcore/util/b;)V

    invoke-virtual {p0, v0}, Lcom/amap/api/mapcore/util/b;->a(Ljava/lang/Runnable;)V

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method private U()V
    .locals 1

    .prologue
    .line 3415
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/amap/api/mapcore/util/b;->x:Z

    .line 3416
    new-instance v0, Lcom/amap/api/mapcore/util/b$11;

    invoke-direct {v0, p0}, Lcom/amap/api/mapcore/util/b$11;-><init>(Lcom/amap/api/mapcore/util/b;)V

    invoke-virtual {p0, v0}, Lcom/amap/api/mapcore/util/b;->a(Ljava/lang/Runnable;)V

    .line 3422
    return-void
.end method

.method private declared-synchronized V()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 3526
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/b;->K:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/mapcore/util/s;

    .line 3527
    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/s;->a()Lcom/amap/api/maps/model/BitmapDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amap/api/maps/model/BitmapDescriptor;->recycle()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 3526
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 3529
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/b;->K:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3530
    monitor-exit p0

    return-void
.end method

.method private W()V
    .locals 8

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 3748
    iget-object v0, p0, Lcom/amap/api/mapcore/util/b;->ay:Lcom/autonavi/amap/mapcore/MapConfig;

    invoke-virtual {v0}, Lcom/autonavi/amap/mapcore/MapConfig;->getLimitLatLngBounds()Lcom/amap/api/maps/model/LatLngBounds;

    move-result-object v0

    .line 3749
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/amap/api/mapcore/util/b;->M:Lcom/autonavi/amap/mapcore/MapCore;

    if-eqz v1, :cond_0

    .line 3751
    new-instance v1, Lcom/autonavi/amap/mapcore/MapProjection;

    iget-object v2, p0, Lcom/amap/api/mapcore/util/b;->M:Lcom/autonavi/amap/mapcore/MapCore;

    invoke-direct {v1, v2}, Lcom/autonavi/amap/mapcore/MapProjection;-><init>(Lcom/autonavi/amap/mapcore/MapCore;)V

    .line 3753
    new-instance v2, Lcom/autonavi/amap/mapcore/IPoint;

    invoke-direct {v2}, Lcom/autonavi/amap/mapcore/IPoint;-><init>()V

    .line 3754
    iget-object v3, v0, Lcom/amap/api/maps/model/LatLngBounds;->northeast:Lcom/amap/api/maps/model/LatLng;

    iget-wide v4, v3, Lcom/amap/api/maps/model/LatLng;->longitude:D

    iget-object v3, v0, Lcom/amap/api/maps/model/LatLngBounds;->northeast:Lcom/amap/api/maps/model/LatLng;

    iget-wide v6, v3, Lcom/amap/api/maps/model/LatLng;->latitude:D

    invoke-static {v4, v5, v6, v7, v2}, Lcom/autonavi/amap/mapcore/MapProjection;->lonlat2Geo(DDLcom/autonavi/amap/mapcore/IPoint;)V

    .line 3756
    new-instance v3, Lcom/autonavi/amap/mapcore/IPoint;

    invoke-direct {v3}, Lcom/autonavi/amap/mapcore/IPoint;-><init>()V

    .line 3757
    iget-object v4, v0, Lcom/amap/api/maps/model/LatLngBounds;->southwest:Lcom/amap/api/maps/model/LatLng;

    iget-wide v4, v4, Lcom/amap/api/maps/model/LatLng;->longitude:D

    iget-object v0, v0, Lcom/amap/api/maps/model/LatLngBounds;->southwest:Lcom/amap/api/maps/model/LatLng;

    iget-wide v6, v0, Lcom/amap/api/maps/model/LatLng;->latitude:D

    invoke-static {v4, v5, v6, v7, v3}, Lcom/autonavi/amap/mapcore/MapProjection;->lonlat2Geo(DDLcom/autonavi/amap/mapcore/IPoint;)V

    .line 3759
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/autonavi/amap/mapcore/IPoint;

    const/4 v4, 0x0

    aput-object v2, v0, v4

    const/4 v2, 0x1

    aput-object v3, v0, v2

    .line 3761
    iget-object v2, p0, Lcom/amap/api/mapcore/util/b;->ay:Lcom/autonavi/amap/mapcore/MapConfig;

    invoke-virtual {v2, v0}, Lcom/autonavi/amap/mapcore/MapConfig;->setLimitIPoints([Lcom/autonavi/amap/mapcore/IPoint;)V

    .line 3763
    invoke-virtual {v1}, Lcom/autonavi/amap/mapcore/MapProjection;->recycle()V

    .line 3765
    invoke-direct {p0}, Lcom/amap/api/mapcore/util/b;->X()V

    .line 3773
    :goto_0
    return-void

    .line 3769
    :cond_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/b;->ay:Lcom/autonavi/amap/mapcore/MapConfig;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/autonavi/amap/mapcore/MapConfig;->setLimitIPoints([Lcom/autonavi/amap/mapcore/IPoint;)V

    .line 3770
    iget-object v0, p0, Lcom/amap/api/mapcore/util/b;->ay:Lcom/autonavi/amap/mapcore/MapConfig;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/autonavi/amap/mapcore/MapConfig;->setLimitZoomLevel(F)V

    goto :goto_0
.end method

.method private X()V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 3780
    iget-object v0, p0, Lcom/amap/api/mapcore/util/b;->ay:Lcom/autonavi/amap/mapcore/MapConfig;

    invoke-virtual {v0}, Lcom/autonavi/amap/mapcore/MapConfig;->getLimitIPoints()[Lcom/autonavi/amap/mapcore/IPoint;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore/util/b;->ay:Lcom/autonavi/amap/mapcore/MapConfig;

    invoke-virtual {v0}, Lcom/autonavi/amap/mapcore/MapConfig;->getLimitIPoints()[Lcom/autonavi/amap/mapcore/IPoint;

    move-result-object v0

    array-length v0, v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 3781
    iget-object v0, p0, Lcom/amap/api/mapcore/util/b;->ay:Lcom/autonavi/amap/mapcore/MapConfig;

    invoke-virtual {v0}, Lcom/autonavi/amap/mapcore/MapConfig;->getLimitIPoints()[Lcom/autonavi/amap/mapcore/IPoint;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v2, v0, v1

    .line 3782
    iget-object v0, p0, Lcom/amap/api/mapcore/util/b;->ay:Lcom/autonavi/amap/mapcore/MapConfig;

    invoke-virtual {v0}, Lcom/autonavi/amap/mapcore/MapConfig;->getLimitIPoints()[Lcom/autonavi/amap/mapcore/IPoint;

    move-result-object v0

    const/4 v1, 0x1

    aget-object v3, v0, v1

    .line 3784
    new-instance v0, Lcom/autonavi/amap/mapcore/MapProjection;

    iget-object v1, p0, Lcom/amap/api/mapcore/util/b;->M:Lcom/autonavi/amap/mapcore/MapCore;

    invoke-direct {v0, v1}, Lcom/autonavi/amap/mapcore/MapProjection;-><init>(Lcom/autonavi/amap/mapcore/MapCore;)V

    .line 3785
    invoke-virtual {p0}, Lcom/amap/api/mapcore/util/b;->getMapConfig()Lcom/autonavi/amap/mapcore/MapConfig;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amap/api/mapcore/util/b;->getMapWidth()I

    move-result v4

    invoke-virtual {p0}, Lcom/amap/api/mapcore/util/b;->getMapHeight()I

    move-result v5

    invoke-static/range {v0 .. v5}, Lcom/amap/api/mapcore/util/en;->a(Lcom/autonavi/amap/mapcore/MapProjection;Lcom/autonavi/amap/mapcore/MapConfig;Lcom/autonavi/amap/mapcore/IPoint;Lcom/autonavi/amap/mapcore/IPoint;II)F

    move-result v1

    .line 3787
    invoke-virtual {v0}, Lcom/autonavi/amap/mapcore/MapProjection;->recycle()V

    .line 3789
    invoke-virtual {p0, v1}, Lcom/amap/api/mapcore/util/b;->setMinZoomLevel(F)V

    .line 3791
    iget-object v0, p0, Lcom/amap/api/mapcore/util/b;->ay:Lcom/autonavi/amap/mapcore/MapConfig;

    invoke-virtual {v0, v1}, Lcom/autonavi/amap/mapcore/MapConfig;->setLimitZoomLevel(F)V

    .line 3794
    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/amap/api/mapcore/util/b;I)I
    .locals 0

    .prologue
    .line 133
    iput p1, p0, Lcom/amap/api/mapcore/util/b;->J:I

    return p1
.end method

.method static synthetic a(Lcom/amap/api/mapcore/util/b;Lcom/amap/api/mapcore/util/i$a;)Lcom/amap/api/mapcore/util/i$a;
    .locals 0

    .prologue
    .line 133
    iput-object p1, p0, Lcom/amap/api/mapcore/util/b;->E:Lcom/amap/api/mapcore/util/i$a;

    return-object p1
.end method

.method static synthetic a(Lcom/amap/api/mapcore/util/b;Lcom/amap/api/mapcore/util/i$b;)Lcom/amap/api/mapcore/util/i$b;
    .locals 0

    .prologue
    .line 133
    iput-object p1, p0, Lcom/amap/api/mapcore/util/b;->F:Lcom/amap/api/mapcore/util/i$b;

    return-object p1
.end method

.method static synthetic a(Lcom/amap/api/mapcore/util/b;Lcom/amap/api/mapcore/util/i$c;)Lcom/amap/api/mapcore/util/i$c;
    .locals 0

    .prologue
    .line 133
    iput-object p1, p0, Lcom/amap/api/mapcore/util/b;->D:Lcom/amap/api/mapcore/util/i$c;

    return-object p1
.end method

.method static synthetic a(Lcom/amap/api/mapcore/util/b;Lcom/amap/api/maps/AMap$CancelableCallback;)Lcom/amap/api/maps/AMap$CancelableCallback;
    .locals 0

    .prologue
    .line 133
    iput-object p1, p0, Lcom/amap/api/mapcore/util/b;->am:Lcom/amap/api/maps/AMap$CancelableCallback;

    return-object p1
.end method

.method static synthetic a(Lcom/amap/api/mapcore/util/b;Lcom/amap/api/maps/AMap$OnMapScreenShotListener;)Lcom/amap/api/maps/AMap$OnMapScreenShotListener;
    .locals 0

    .prologue
    .line 133
    iput-object p1, p0, Lcom/amap/api/mapcore/util/b;->af:Lcom/amap/api/maps/AMap$OnMapScreenShotListener;

    return-object p1
.end method

.method static synthetic a(Lcom/amap/api/mapcore/util/b;Lcom/amap/api/maps/AMap$onMapPrintScreenListener;)Lcom/amap/api/maps/AMap$onMapPrintScreenListener;
    .locals 0

    .prologue
    .line 133
    iput-object p1, p0, Lcom/amap/api/mapcore/util/b;->ae:Lcom/amap/api/maps/AMap$onMapPrintScreenListener;

    return-object p1
.end method

.method static synthetic a(Lcom/amap/api/mapcore/util/b;Lcom/autonavi/amap/mapcore/MapCore;)Lcom/autonavi/amap/mapcore/MapCore;
    .locals 0

    .prologue
    .line 133
    iput-object p1, p0, Lcom/amap/api/mapcore/util/b;->M:Lcom/autonavi/amap/mapcore/MapCore;

    return-object p1
.end method

.method static synthetic a(Lcom/amap/api/mapcore/util/b;)V
    .locals 0

    .prologue
    .line 133
    invoke-direct {p0}, Lcom/amap/api/mapcore/util/b;->C()V

    return-void
.end method

.method static synthetic a(Lcom/amap/api/mapcore/util/b;Landroid/view/MotionEvent;)V
    .locals 0

    .prologue
    .line 133
    invoke-direct {p0, p1}, Lcom/amap/api/mapcore/util/b;->g(Landroid/view/MotionEvent;)V

    return-void
.end method

.method private a(Lcom/autonavi/amap/mapcore/MapProjection;IILcom/autonavi/amap/mapcore/DPoint;)V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 2104
    iget-boolean v0, p0, Lcom/amap/api/mapcore/util/b;->aq:Z

    if-eqz v0, :cond_0

    .line 2105
    new-instance v0, Lcom/autonavi/amap/mapcore/FPoint;

    invoke-direct {v0}, Lcom/autonavi/amap/mapcore/FPoint;-><init>()V

    .line 2106
    invoke-virtual {p1, p2, p3, v0}, Lcom/autonavi/amap/mapcore/MapProjection;->win2Map(IILcom/autonavi/amap/mapcore/FPoint;)V

    .line 2107
    new-instance v1, Lcom/autonavi/amap/mapcore/IPoint;

    invoke-direct {v1}, Lcom/autonavi/amap/mapcore/IPoint;-><init>()V

    .line 2108
    iget v2, v0, Lcom/autonavi/amap/mapcore/FPoint;->x:F

    iget v0, v0, Lcom/autonavi/amap/mapcore/FPoint;->y:F

    invoke-virtual {p1, v2, v0, v1}, Lcom/autonavi/amap/mapcore/MapProjection;->map2Geo(FFLcom/autonavi/amap/mapcore/IPoint;)V

    .line 2109
    iget v0, v1, Lcom/autonavi/amap/mapcore/IPoint;->x:I

    iget v1, v1, Lcom/autonavi/amap/mapcore/IPoint;->y:I

    invoke-static {v0, v1, p4}, Lcom/autonavi/amap/mapcore/MapProjection;->geo2LonLat(IILcom/autonavi/amap/mapcore/DPoint;)V

    .line 2111
    :cond_0
    return-void
.end method

.method private a(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v1, 0x0

    .line 865
    iget-boolean v0, p0, Lcom/amap/api/mapcore/util/b;->av:Z

    if-eqz v0, :cond_0

    .line 867
    iget-object v0, p0, Lcom/amap/api/mapcore/util/b;->M:Lcom/autonavi/amap/mapcore/MapCore;

    invoke-virtual {v0}, Lcom/autonavi/amap/mapcore/MapCore;->canStopRenderMap()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    .line 868
    :goto_0
    invoke-virtual {p0}, Lcom/amap/api/mapcore/util/b;->getMapWidth()I

    move-result v2

    invoke-virtual {p0}, Lcom/amap/api/mapcore/util/b;->getMapHeight()I

    move-result v3

    invoke-static {v1, v1, v2, v3, p1}, Lcom/amap/api/mapcore/util/en;->a(IIIILjavax/microedition/khronos/opengles/GL10;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 869
    iget-object v3, p0, Lcom/amap/api/mapcore/util/b;->n:Landroid/os/Handler;

    const/16 v4, 0x11

    invoke-virtual {v3, v4, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 871
    iput v0, v2, Landroid/os/Message;->arg1:I

    .line 872
    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 873
    iput-boolean v1, p0, Lcom/amap/api/mapcore/util/b;->av:Z

    .line 875
    :cond_0
    return-void

    :cond_1
    move v0, v1

    .line 867
    goto :goto_0
.end method

.method static synthetic a(Lcom/amap/api/mapcore/util/b;Z)Z
    .locals 0

    .prologue
    .line 133
    iput-boolean p1, p0, Lcom/amap/api/mapcore/util/b;->aq:Z

    return p1
.end method

.method static synthetic b(Lcom/amap/api/mapcore/util/b;)V
    .locals 0

    .prologue
    .line 133
    invoke-direct {p0}, Lcom/amap/api/mapcore/util/b;->L()V

    return-void
.end method

.method private b(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 3279
    iget-object v0, p0, Lcom/amap/api/mapcore/util/b;->r:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore/util/b;->r:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3280
    :cond_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/b;->N:Landroid/content/Context;

    const-string/jumbo v1, "amap_sdk_lineTexture.png"

    invoke-static {v0, v1}, Lcom/amap/api/mapcore/util/en;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/mapcore/util/b;->r:Landroid/graphics/Bitmap;

    .line 3282
    :cond_1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/b;->s:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/amap/api/mapcore/util/b;->s:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 3283
    :cond_2
    iget-object v0, p0, Lcom/amap/api/mapcore/util/b;->N:Landroid/content/Context;

    const-string/jumbo v1, "amap_sdk_lineDashTexture.png"

    invoke-static {v0, v1}, Lcom/amap/api/mapcore/util/en;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/mapcore/util/b;->s:Landroid/graphics/Bitmap;

    .line 3287
    :cond_3
    iget-object v0, p0, Lcom/amap/api/mapcore/util/b;->r:Landroid/graphics/Bitmap;

    invoke-static {p1, v0}, Lcom/amap/api/mapcore/util/en;->a(Ljavax/microedition/khronos/opengles/GL10;Landroid/graphics/Bitmap;)I

    move-result v0

    iput v0, p0, Lcom/amap/api/mapcore/util/b;->p:I

    .line 3288
    iget-object v0, p0, Lcom/amap/api/mapcore/util/b;->s:Landroid/graphics/Bitmap;

    const/4 v1, 0x1

    invoke-static {p1, v0, v1}, Lcom/amap/api/mapcore/util/en;->a(Ljavax/microedition/khronos/opengles/GL10;Landroid/graphics/Bitmap;Z)I

    move-result v0

    iput v0, p0, Lcom/amap/api/mapcore/util/b;->q:I

    .line 3289
    return-void
.end method

.method static synthetic b(Lcom/amap/api/mapcore/util/b;Z)Z
    .locals 0

    .prologue
    .line 133
    iput-boolean p1, p0, Lcom/amap/api/mapcore/util/b;->ax:Z

    return p1
.end method

.method static synthetic c(Lcom/amap/api/mapcore/util/b;)Lcom/amap/api/mapcore/util/a;
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Lcom/amap/api/mapcore/util/b;->O:Lcom/amap/api/mapcore/util/a;

    return-object v0
.end method

.method private c(Lcom/autonavi/amap/mapcore/MapMessage;)V
    .locals 1

    .prologue
    .line 1331
    iget-boolean v0, p0, Lcom/amap/api/mapcore/util/b;->z:Z

    iput-boolean v0, p1, Lcom/autonavi/amap/mapcore/MapMessage;->isUseAnchor:Z

    .line 1332
    iget-boolean v0, p0, Lcom/amap/api/mapcore/util/b;->z:Z

    if-eqz v0, :cond_0

    .line 1333
    iget v0, p0, Lcom/amap/api/mapcore/util/b;->A:I

    iput v0, p1, Lcom/autonavi/amap/mapcore/MapMessage;->anchorX:I

    .line 1334
    iget v0, p0, Lcom/amap/api/mapcore/util/b;->B:I

    iput v0, p1, Lcom/autonavi/amap/mapcore/MapMessage;->anchorY:I

    .line 1336
    :cond_0
    iget v0, p1, Lcom/autonavi/amap/mapcore/MapMessage;->width:I

    if-nez v0, :cond_1

    .line 1337
    invoke-virtual {p0}, Lcom/amap/api/mapcore/util/b;->getMapWidth()I

    move-result v0

    iput v0, p1, Lcom/autonavi/amap/mapcore/MapMessage;->width:I

    .line 1339
    :cond_1
    iget v0, p1, Lcom/autonavi/amap/mapcore/MapMessage;->height:I

    if-nez v0, :cond_2

    .line 1340
    invoke-virtual {p0}, Lcom/amap/api/mapcore/util/b;->getMapHeight()I

    move-result v0

    iput v0, p1, Lcom/autonavi/amap/mapcore/MapMessage;->height:I

    .line 1342
    :cond_2
    iget-object v0, p0, Lcom/amap/api/mapcore/util/b;->ay:Lcom/autonavi/amap/mapcore/MapConfig;

    iput-object v0, p1, Lcom/autonavi/amap/mapcore/MapMessage;->mapConfig:Lcom/autonavi/amap/mapcore/MapConfig;

    .line 1343
    return-void
.end method

.method static synthetic c(Lcom/amap/api/mapcore/util/b;Z)Z
    .locals 0

    .prologue
    .line 133
    iput-boolean p1, p0, Lcom/amap/api/mapcore/util/b;->at:Z

    return p1
.end method

.method static synthetic d(Lcom/amap/api/mapcore/util/b;)Lcom/autonavi/amap/mapcore/MapCore;
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Lcom/amap/api/mapcore/util/b;->M:Lcom/autonavi/amap/mapcore/MapCore;

    return-object v0
.end method

.method private e(Landroid/view/MotionEvent;)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 2265
    iget-boolean v0, p0, Lcom/amap/api/mapcore/util/b;->aD:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore/util/b;->aE:Lcom/amap/api/maps/model/Marker;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore/util/b;->aF:Lcom/amap/api/mapcore/util/cr;

    if-eqz v0, :cond_0

    .line 2266
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    .line 2267
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    const/high16 v2, 0x42700000    # 60.0f

    sub-float/2addr v1, v2

    float-to-int v1, v1

    .line 2268
    iget-object v2, p0, Lcom/amap/api/mapcore/util/b;->aF:Lcom/amap/api/mapcore/util/cr;

    invoke-interface {v2}, Lcom/amap/api/mapcore/util/cr;->b()Lcom/amap/api/maps/model/LatLng;

    move-result-object v2

    .line 2269
    iget-object v3, p0, Lcom/amap/api/mapcore/util/b;->aF:Lcom/amap/api/mapcore/util/cr;

    invoke-interface {v3}, Lcom/amap/api/mapcore/util/cr;->getPosition()Lcom/amap/api/maps/model/LatLng;

    move-result-object v3

    .line 2270
    new-instance v4, Lcom/autonavi/amap/mapcore/DPoint;

    invoke-direct {v4}, Lcom/autonavi/amap/mapcore/DPoint;-><init>()V

    .line 2271
    invoke-virtual {p0, v0, v1, v4}, Lcom/amap/api/mapcore/util/b;->a(IILcom/autonavi/amap/mapcore/DPoint;)V

    .line 2272
    new-instance v0, Lcom/amap/api/maps/model/LatLng;

    iget-wide v6, v3, Lcom/amap/api/maps/model/LatLng;->latitude:D

    iget-wide v8, v4, Lcom/autonavi/amap/mapcore/DPoint;->y:D

    add-double/2addr v6, v8

    iget-wide v8, v2, Lcom/amap/api/maps/model/LatLng;->latitude:D

    sub-double/2addr v6, v8

    iget-wide v8, v3, Lcom/amap/api/maps/model/LatLng;->longitude:D

    iget-wide v4, v4, Lcom/autonavi/amap/mapcore/DPoint;->x:D

    add-double/2addr v4, v8

    iget-wide v2, v2, Lcom/amap/api/maps/model/LatLng;->longitude:D

    sub-double v2, v4, v2

    invoke-direct {v0, v6, v7, v2, v3}, Lcom/amap/api/maps/model/LatLng;-><init>(DD)V

    .line 2275
    iget-object v1, p0, Lcom/amap/api/mapcore/util/b;->aE:Lcom/amap/api/maps/model/Marker;

    invoke-virtual {v1, v0}, Lcom/amap/api/maps/model/Marker;->setPosition(Lcom/amap/api/maps/model/LatLng;)V

    .line 2276
    iget-object v0, p0, Lcom/amap/api/mapcore/util/b;->U:Lcom/amap/api/maps/AMap$OnMarkerDragListener;

    iget-object v1, p0, Lcom/amap/api/mapcore/util/b;->aE:Lcom/amap/api/maps/model/Marker;

    invoke-interface {v0, v1}, Lcom/amap/api/maps/AMap$OnMarkerDragListener;->onMarkerDrag(Lcom/amap/api/maps/model/Marker;)V

    .line 2278
    :cond_0
    return-void
.end method

.method static synthetic e(Lcom/amap/api/mapcore/util/b;)V
    .locals 0

    .prologue
    .line 133
    invoke-direct {p0}, Lcom/amap/api/mapcore/util/b;->K()V

    return-void
.end method

.method static synthetic f(Lcom/amap/api/mapcore/util/b;)Lcom/amap/api/mapcore/util/da;
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Lcom/amap/api/mapcore/util/b;->al:Lcom/amap/api/mapcore/util/da;

    return-object v0
.end method

.method private f(Landroid/view/MotionEvent;)V
    .locals 1

    .prologue
    .line 2428
    new-instance v0, Lcom/amap/api/mapcore/util/b$3;

    invoke-direct {v0, p0, p1}, Lcom/amap/api/mapcore/util/b$3;-><init>(Lcom/amap/api/mapcore/util/b;Landroid/view/MotionEvent;)V

    invoke-virtual {p0, v0}, Lcom/amap/api/mapcore/util/b;->a(Ljava/lang/Runnable;)V

    .line 2455
    return-void
.end method

.method private g(Landroid/view/MotionEvent;)V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 2458
    iget-object v0, p0, Lcom/amap/api/mapcore/util/b;->n:Landroid/os/Handler;

    new-instance v1, Lcom/amap/api/mapcore/util/b$4;

    invoke-direct {v1, p0, p1}, Lcom/amap/api/mapcore/util/b$4;-><init>(Lcom/amap/api/mapcore/util/b;Landroid/view/MotionEvent;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2478
    return-void
.end method

.method static synthetic g(Lcom/amap/api/mapcore/util/b;)Z
    .locals 1

    .prologue
    .line 133
    iget-boolean v0, p0, Lcom/amap/api/mapcore/util/b;->aq:Z

    return v0
.end method

.method private h(Landroid/view/MotionEvent;)Z
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 2481
    iget-object v0, p0, Lcom/amap/api/mapcore/util/b;->T:Lcom/amap/api/maps/AMap$OnPolylineClickListener;

    if-eqz v0, :cond_0

    .line 2483
    new-instance v0, Lcom/autonavi/amap/mapcore/DPoint;

    invoke-direct {v0}, Lcom/autonavi/amap/mapcore/DPoint;-><init>()V

    .line 2484
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {p0, v1, v2, v0}, Lcom/amap/api/mapcore/util/b;->a(IILcom/autonavi/amap/mapcore/DPoint;)V

    .line 2485
    new-instance v1, Lcom/amap/api/maps/model/LatLng;

    iget-wide v2, v0, Lcom/autonavi/amap/mapcore/DPoint;->y:D

    iget-wide v4, v0, Lcom/autonavi/amap/mapcore/DPoint;->x:D

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/amap/api/maps/model/LatLng;-><init>(DD)V

    .line 2488
    iget-object v0, p0, Lcom/amap/api/mapcore/util/b;->b:Lcom/amap/api/mapcore/util/j;

    .line 2489
    invoke-virtual {v0, v1}, Lcom/amap/api/mapcore/util/j;->a(Lcom/amap/api/maps/model/LatLng;)Lcom/amap/api/mapcore/util/ct;

    move-result-object v0

    .line 2490
    if-eqz v0, :cond_0

    .line 2492
    iget-object v1, p0, Lcom/amap/api/mapcore/util/b;->T:Lcom/amap/api/maps/AMap$OnPolylineClickListener;

    new-instance v2, Lcom/amap/api/maps/model/Polyline;

    check-cast v0, Lcom/amap/api/mapcore/util/cw;

    invoke-direct {v2, v0}, Lcom/amap/api/maps/model/Polyline;-><init>(Lcom/autonavi/amap/mapcore/interfaces/IPolyline;)V

    invoke-interface {v1, v2}, Lcom/amap/api/maps/AMap$OnPolylineClickListener;->onPolylineClick(Lcom/amap/api/maps/model/Polyline;)V

    .line 2494
    const/4 v0, 0x1

    .line 2498
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic h(Lcom/amap/api/mapcore/util/b;)Z
    .locals 1

    .prologue
    .line 133
    iget-boolean v0, p0, Lcom/amap/api/mapcore/util/b;->v:Z

    return v0
.end method

.method static synthetic i(Lcom/amap/api/mapcore/util/b;)Lcom/amap/api/mapcore/util/i$a;
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Lcom/amap/api/mapcore/util/b;->E:Lcom/amap/api/mapcore/util/i$a;

    return-object v0
.end method

.method private i(Landroid/view/MotionEvent;)Z
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v0, 0x1

    .line 2502
    iget-object v1, p0, Lcom/amap/api/mapcore/util/b;->e:Lcom/amap/api/mapcore/util/q;

    invoke-virtual {v1, p1}, Lcom/amap/api/mapcore/util/q;->b(Landroid/view/MotionEvent;)Z

    move-result v1

    .line 2503
    if-eqz v1, :cond_3

    .line 2504
    iget-object v1, p0, Lcom/amap/api/mapcore/util/b;->e:Lcom/amap/api/mapcore/util/q;

    .line 2505
    invoke-virtual {v1}, Lcom/amap/api/mapcore/util/q;->d()Lcom/amap/api/mapcore/util/cr;

    move-result-object v7

    .line 2506
    if-eqz v7, :cond_0

    invoke-interface {v7}, Lcom/amap/api/mapcore/util/cr;->isVisible()Z

    move-result v1

    if-nez v1, :cond_1

    .line 2537
    :cond_0
    :goto_0
    return v0

    .line 2511
    :cond_1
    :try_start_0
    new-instance v1, Lcom/amap/api/maps/model/Marker;

    invoke-direct {v1, v7}, Lcom/amap/api/maps/model/Marker;-><init>(Lcom/autonavi/amap/mapcore/interfaces/IMarker;)V

    .line 2512
    iget-object v2, p0, Lcom/amap/api/mapcore/util/b;->S:Lcom/amap/api/maps/AMap$OnMarkerClickListener;

    if-eqz v2, :cond_4

    .line 2513
    iget-object v2, p0, Lcom/amap/api/mapcore/util/b;->S:Lcom/amap/api/maps/AMap$OnMarkerClickListener;

    invoke-interface {v2, v1}, Lcom/amap/api/maps/AMap$OnMarkerClickListener;->onMarkerClick(Lcom/amap/api/maps/model/Marker;)Z

    move-result v1

    .line 2514
    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/amap/api/mapcore/util/b;->e:Lcom/amap/api/mapcore/util/q;

    invoke-virtual {v1}, Lcom/amap/api/mapcore/util/q;->b()I

    move-result v1

    if-gtz v1, :cond_4

    .line 2515
    :cond_2
    iget-object v1, p0, Lcom/amap/api/mapcore/util/b;->e:Lcom/amap/api/mapcore/util/q;

    invoke-virtual {v1, v7}, Lcom/amap/api/mapcore/util/q;->b(Lcom/amap/api/mapcore/util/cu;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2532
    :catch_0
    move-exception v0

    .line 2533
    const-string/jumbo v1, "AMapDelegateImp"

    const-string/jumbo v2, "onMarkerTap"

    invoke-static {v0, v1, v2}, Lcom/amap/api/mapcore/util/ft;->b(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 2534
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 2537
    :cond_3
    const/4 v0, 0x0

    goto :goto_0

    .line 2519
    :cond_4
    :try_start_1
    invoke-virtual {p0, v7}, Lcom/amap/api/mapcore/util/b;->a(Lcom/amap/api/mapcore/util/cr;)V

    .line 2520
    invoke-interface {v7}, Lcom/amap/api/mapcore/util/cr;->g()Z

    move-result v1

    if-nez v1, :cond_5

    .line 2521
    invoke-interface {v7}, Lcom/amap/api/mapcore/util/cr;->b()Lcom/amap/api/maps/model/LatLng;

    move-result-object v1

    .line 2522
    if-eqz v1, :cond_5

    .line 2523
    new-instance v6, Lcom/autonavi/amap/mapcore/IPoint;

    invoke-direct {v6}, Lcom/autonavi/amap/mapcore/IPoint;-><init>()V

    .line 2524
    iget-wide v2, v1, Lcom/amap/api/maps/model/LatLng;->latitude:D

    iget-wide v4, v1, Lcom/amap/api/maps/model/LatLng;->longitude:D

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Lcom/amap/api/mapcore/util/b;->a(DDLcom/autonavi/amap/mapcore/IPoint;)V

    .line 2526
    invoke-static {v6}, Lcom/amap/api/mapcore/util/ag;->a(Lcom/autonavi/amap/mapcore/IPoint;)Lcom/amap/api/mapcore/util/af;

    move-result-object v1

    .line 2525
    invoke-virtual {p0, v1}, Lcom/amap/api/mapcore/util/b;->a(Lcom/autonavi/amap/mapcore/MapMessage;)V

    .line 2530
    :cond_5
    iget-object v1, p0, Lcom/amap/api/mapcore/util/b;->e:Lcom/amap/api/mapcore/util/q;

    invoke-virtual {v1, v7}, Lcom/amap/api/mapcore/util/q;->b(Lcom/amap/api/mapcore/util/cu;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method static synthetic j(Lcom/amap/api/mapcore/util/b;)Lcom/amap/api/mapcore/util/i$c;
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Lcom/amap/api/mapcore/util/b;->D:Lcom/amap/api/mapcore/util/i$c;

    return-object v0
.end method

.method private j(Landroid/view/MotionEvent;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v0, 0x1

    .line 2548
    iget-object v1, p0, Lcom/amap/api/mapcore/util/b;->j:Lcom/amap/api/mapcore/util/cq;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/amap/api/mapcore/util/b;->j:Lcom/amap/api/mapcore/util/cq;

    invoke-interface {v1, p1}, Lcom/amap/api/mapcore/util/cq;->a(Landroid/view/MotionEvent;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2549
    iget-object v1, p0, Lcom/amap/api/mapcore/util/b;->ab:Lcom/amap/api/maps/AMap$OnInfoWindowClickListener;

    if-eqz v1, :cond_0

    .line 2550
    iget-object v1, p0, Lcom/amap/api/mapcore/util/b;->e:Lcom/amap/api/mapcore/util/q;

    .line 2551
    invoke-virtual {v1}, Lcom/amap/api/mapcore/util/q;->d()Lcom/amap/api/mapcore/util/cr;

    move-result-object v1

    .line 2552
    invoke-interface {v1}, Lcom/amap/api/mapcore/util/cr;->isVisible()Z

    move-result v2

    if-nez v2, :cond_1

    .line 2560
    :cond_0
    :goto_0
    return v0

    .line 2555
    :cond_1
    new-instance v2, Lcom/amap/api/maps/model/Marker;

    invoke-direct {v2, v1}, Lcom/amap/api/maps/model/Marker;-><init>(Lcom/autonavi/amap/mapcore/interfaces/IMarker;)V

    .line 2556
    iget-object v1, p0, Lcom/amap/api/mapcore/util/b;->ab:Lcom/amap/api/maps/AMap$OnInfoWindowClickListener;

    invoke-interface {v1, v2}, Lcom/amap/api/maps/AMap$OnInfoWindowClickListener;->onInfoWindowClick(Lcom/amap/api/maps/model/Marker;)V

    goto :goto_0

    .line 2560
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic k(Lcom/amap/api/mapcore/util/b;)V
    .locals 0

    .prologue
    .line 133
    invoke-direct {p0}, Lcom/amap/api/mapcore/util/b;->R()V

    return-void
.end method

.method static synthetic l(Lcom/amap/api/mapcore/util/b;)Lcom/autonavi/amap/mapcore/MapConfig;
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Lcom/amap/api/mapcore/util/b;->ay:Lcom/autonavi/amap/mapcore/MapConfig;

    return-object v0
.end method

.method static synthetic m(Lcom/amap/api/mapcore/util/b;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Lcom/amap/api/mapcore/util/b;->N:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic n(Lcom/amap/api/mapcore/util/b;)Lcom/amap/api/mapcore/util/i$b;
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Lcom/amap/api/mapcore/util/b;->F:Lcom/amap/api/mapcore/util/i$b;

    return-object v0
.end method

.method static synthetic o(Lcom/amap/api/mapcore/util/b;)Lcom/amap/api/maps/AMap$OnPOIClickListener;
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Lcom/amap/api/mapcore/util/b;->Z:Lcom/amap/api/maps/AMap$OnPOIClickListener;

    return-object v0
.end method

.method static synthetic p(Lcom/amap/api/mapcore/util/b;)Lcom/amap/api/maps/AMap$OnMapClickListener;
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Lcom/amap/api/mapcore/util/b;->X:Lcom/amap/api/maps/AMap$OnMapClickListener;

    return-object v0
.end method

.method static synthetic q(Lcom/amap/api/mapcore/util/b;)Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Lcom/amap/api/mapcore/util/b;->au:Ljava/lang/Boolean;

    return-object v0
.end method

.method static synthetic r(Lcom/amap/api/mapcore/util/b;)Lcom/amap/api/maps/AMap$OnCameraChangeListener;
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Lcom/amap/api/mapcore/util/b;->W:Lcom/amap/api/maps/AMap$OnCameraChangeListener;

    return-object v0
.end method

.method static synthetic s(Lcom/amap/api/mapcore/util/b;)Lcom/amap/api/maps/AMap$OnMapLoadedListener;
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Lcom/amap/api/mapcore/util/b;->V:Lcom/amap/api/maps/AMap$OnMapLoadedListener;

    return-object v0
.end method

.method static synthetic t(Lcom/amap/api/mapcore/util/b;)Lcom/amap/api/maps/AMap$OnMapTouchListener;
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Lcom/amap/api/mapcore/util/b;->Y:Lcom/amap/api/maps/AMap$OnMapTouchListener;

    return-object v0
.end method

.method static synthetic u(Lcom/amap/api/mapcore/util/b;)Lcom/amap/api/maps/AMap$onMapPrintScreenListener;
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Lcom/amap/api/mapcore/util/b;->ae:Lcom/amap/api/maps/AMap$onMapPrintScreenListener;

    return-object v0
.end method

.method static synthetic v(Lcom/amap/api/mapcore/util/b;)Lcom/amap/api/maps/AMap$OnMapScreenShotListener;
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Lcom/amap/api/mapcore/util/b;->af:Lcom/amap/api/maps/AMap$OnMapScreenShotListener;

    return-object v0
.end method

.method static synthetic w(Lcom/amap/api/mapcore/util/b;)Z
    .locals 1

    .prologue
    .line 133
    iget-boolean v0, p0, Lcom/amap/api/mapcore/util/b;->ax:Z

    return v0
.end method

.method static synthetic x(Lcom/amap/api/mapcore/util/b;)Lcom/amap/api/maps/AMap$CancelableCallback;
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Lcom/amap/api/mapcore/util/b;->am:Lcom/amap/api/maps/AMap$CancelableCallback;

    return-object v0
.end method

.method static synthetic y(Lcom/amap/api/mapcore/util/b;)Z
    .locals 1

    .prologue
    .line 133
    iget-boolean v0, p0, Lcom/amap/api/mapcore/util/b;->at:Z

    return v0
.end method


# virtual methods
.method public A()I
    .locals 1

    .prologue
    .line 3717
    iget v0, p0, Lcom/amap/api/mapcore/util/b;->J:I

    return v0
.end method

.method public a(I)F
    .locals 1

    .prologue
    .line 2084
    iget-boolean v0, p0, Lcom/amap/api/mapcore/util/b;->aq:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore/util/b;->P:Lcom/autonavi/amap/mapcore/MapProjection;

    if-eqz v0, :cond_0

    .line 2085
    iget-object v0, p0, Lcom/amap/api/mapcore/util/b;->P:Lcom/autonavi/amap/mapcore/MapProjection;

    invoke-virtual {v0, p1}, Lcom/autonavi/amap/mapcore/MapProjection;->getMapLenWithWin(I)F

    move-result v0

    .line 2087
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public declared-synchronized a(Lcom/amap/api/maps/model/BitmapDescriptor;)I
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v1, 0x0

    .line 3571
    monitor-enter p0

    if-eqz p1, :cond_0

    :try_start_0
    invoke-virtual {p1}, Lcom/amap/api/maps/model/BitmapDescriptor;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3572
    invoke-virtual {p1}, Lcom/amap/api/maps/model/BitmapDescriptor;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    move v0, v1

    .line 3583
    :goto_0
    monitor-exit p0

    return v0

    :cond_1
    move v2, v1

    .line 3577
    :goto_1
    :try_start_1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/b;->K:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v0

    if-ge v2, v0, :cond_3

    .line 3578
    iget-object v0, p0, Lcom/amap/api/mapcore/util/b;->K:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/mapcore/util/s;

    .line 3579
    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/s;->a()Lcom/amap/api/maps/model/BitmapDescriptor;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/amap/api/maps/model/BitmapDescriptor;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 3580
    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/s;->b()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    goto :goto_0

    .line 3577
    :cond_2
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    :cond_3
    move v0, v1

    .line 3583
    goto :goto_0

    .line 3571
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public a(Lcom/autonavi/amap/mapcore/interfaces/IMarkerAction;Landroid/graphics/Rect;)I
    .locals 1

    .prologue
    .line 3589
    iget-object v0, p0, Lcom/amap/api/mapcore/util/b;->e:Lcom/amap/api/mapcore/util/q;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 3590
    iget-object v0, p0, Lcom/amap/api/mapcore/util/b;->e:Lcom/amap/api/mapcore/util/q;

    invoke-virtual {v0, p1, p2}, Lcom/amap/api/mapcore/util/q;->a(Lcom/autonavi/amap/mapcore/interfaces/IMarkerAction;Landroid/graphics/Rect;)I

    move-result v0

    .line 3591
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(Lcom/amap/api/maps/model/LatLng;FFF)Lcom/amap/api/maps/model/LatLngBounds;
    .locals 12

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v11

    invoke-static {v11}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 2640
    invoke-virtual {p0}, Lcom/amap/api/mapcore/util/b;->getMapWidth()I

    move-result v0

    .line 2641
    invoke-virtual {p0}, Lcom/amap/api/mapcore/util/b;->getMapHeight()I

    move-result v7

    .line 2642
    if-lez v0, :cond_0

    if-lez v7, :cond_0

    iget-object v1, p0, Lcom/amap/api/mapcore/util/b;->au:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2644
    :cond_0
    const/4 v0, 0x0

    .line 2664
    :goto_0
    return-object v0

    .line 2646
    :cond_1
    iget-object v1, p0, Lcom/amap/api/mapcore/util/b;->ay:Lcom/autonavi/amap/mapcore/MapConfig;

    invoke-static {v1, p2}, Lcom/amap/api/mapcore/util/en;->a(Lcom/autonavi/amap/mapcore/MapConfig;F)F

    move-result v1

    .line 2647
    new-instance v9, Lcom/autonavi/amap/mapcore/MapProjection;

    iget-object v2, p0, Lcom/amap/api/mapcore/util/b;->M:Lcom/autonavi/amap/mapcore/MapCore;

    invoke-direct {v9, v2}, Lcom/autonavi/amap/mapcore/MapProjection;-><init>(Lcom/autonavi/amap/mapcore/MapCore;)V

    .line 2648
    if-eqz p1, :cond_2

    .line 2649
    new-instance v2, Lcom/autonavi/amap/mapcore/IPoint;

    invoke-direct {v2}, Lcom/autonavi/amap/mapcore/IPoint;-><init>()V

    .line 2650
    iget-wide v4, p1, Lcom/amap/api/maps/model/LatLng;->longitude:D

    iget-wide v10, p1, Lcom/amap/api/maps/model/LatLng;->latitude:D

    invoke-static {v4, v5, v10, v11, v2}, Lcom/autonavi/amap/mapcore/MapProjection;->lonlat2Geo(DDLcom/autonavi/amap/mapcore/IPoint;)V

    .line 2651
    const/4 v3, 0x0

    invoke-virtual {v9, v3}, Lcom/autonavi/amap/mapcore/MapProjection;->setCameraHeaderAngle(F)V

    .line 2652
    const/4 v3, 0x0

    invoke-virtual {v9, v3}, Lcom/autonavi/amap/mapcore/MapProjection;->setMapAngle(F)V

    .line 2653
    iget v3, v2, Lcom/autonavi/amap/mapcore/IPoint;->x:I

    iget v2, v2, Lcom/autonavi/amap/mapcore/IPoint;->y:I

    invoke-virtual {v9, v3, v2}, Lcom/autonavi/amap/mapcore/MapProjection;->setGeoCenter(II)V

    .line 2654
    invoke-virtual {v9, v1}, Lcom/autonavi/amap/mapcore/MapProjection;->setMapZoomer(F)V

    .line 2655
    invoke-virtual {v9}, Lcom/autonavi/amap/mapcore/MapProjection;->recalculate()V

    .line 2657
    :cond_2
    new-instance v8, Lcom/autonavi/amap/mapcore/DPoint;

    invoke-direct {v8}, Lcom/autonavi/amap/mapcore/DPoint;-><init>()V

    .line 2658
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, v9, v1, v2, v8}, Lcom/amap/api/mapcore/util/b;->a(Lcom/autonavi/amap/mapcore/MapProjection;IILcom/autonavi/amap/mapcore/DPoint;)V

    .line 2659
    new-instance v1, Lcom/amap/api/maps/model/LatLng;

    iget-wide v2, v8, Lcom/autonavi/amap/mapcore/DPoint;->y:D

    iget-wide v4, v8, Lcom/autonavi/amap/mapcore/DPoint;->x:D

    const/4 v6, 0x0

    invoke-direct/range {v1 .. v6}, Lcom/amap/api/maps/model/LatLng;-><init>(DDZ)V

    .line 2660
    invoke-direct {p0, v9, v0, v7, v8}, Lcom/amap/api/mapcore/util/b;->a(Lcom/autonavi/amap/mapcore/MapProjection;IILcom/autonavi/amap/mapcore/DPoint;)V

    .line 2661
    new-instance v3, Lcom/amap/api/maps/model/LatLng;

    iget-wide v4, v8, Lcom/autonavi/amap/mapcore/DPoint;->y:D

    iget-wide v6, v8, Lcom/autonavi/amap/mapcore/DPoint;->x:D

    const/4 v8, 0x0

    invoke-direct/range {v3 .. v8}, Lcom/amap/api/maps/model/LatLng;-><init>(DDZ)V

    .line 2662
    invoke-virtual {v9}, Lcom/autonavi/amap/mapcore/MapProjection;->recycle()V

    .line 2663
    invoke-static {}, Lcom/amap/api/maps/model/LatLngBounds;->builder()Lcom/amap/api/maps/model/LatLngBounds$Builder;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/amap/api/maps/model/LatLngBounds$Builder;->include(Lcom/amap/api/maps/model/LatLng;)Lcom/amap/api/maps/model/LatLngBounds$Builder;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/amap/api/maps/model/LatLngBounds$Builder;->include(Lcom/amap/api/maps/model/LatLng;)Lcom/amap/api/maps/model/LatLngBounds$Builder;

    move-result-object v0

    .line 2664
    invoke-virtual {v0}, Lcom/amap/api/maps/model/LatLngBounds$Builder;->build()Lcom/amap/api/maps/model/LatLngBounds;

    move-result-object v0

    goto :goto_0
.end method

.method public a()Lcom/autonavi/amap/mapcore/MapCore;
    .locals 1

    .prologue
    .line 290
    iget-object v0, p0, Lcom/amap/api/mapcore/util/b;->M:Lcom/autonavi/amap/mapcore/MapCore;

    return-object v0
.end method

.method public a(DDLcom/autonavi/amap/mapcore/FPoint;)V
    .locals 3

    .prologue
    .line 2131
    iget-boolean v0, p0, Lcom/amap/api/mapcore/util/b;->aq:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore/util/b;->P:Lcom/autonavi/amap/mapcore/MapProjection;

    if-eqz v0, :cond_0

    .line 2132
    new-instance v0, Lcom/autonavi/amap/mapcore/IPoint;

    invoke-direct {v0}, Lcom/autonavi/amap/mapcore/IPoint;-><init>()V

    .line 2133
    invoke-static {p3, p4, p1, p2, v0}, Lcom/autonavi/amap/mapcore/MapProjection;->lonlat2Geo(DDLcom/autonavi/amap/mapcore/IPoint;)V

    .line 2134
    iget-object v1, p0, Lcom/amap/api/mapcore/util/b;->P:Lcom/autonavi/amap/mapcore/MapProjection;

    iget v2, v0, Lcom/autonavi/amap/mapcore/IPoint;->x:I

    iget v0, v0, Lcom/autonavi/amap/mapcore/IPoint;->y:I

    invoke-virtual {v1, v2, v0, p5}, Lcom/autonavi/amap/mapcore/MapProjection;->geo2Map(IILcom/autonavi/amap/mapcore/FPoint;)V

    .line 2136
    :cond_0
    return-void
.end method

.method public a(DDLcom/autonavi/amap/mapcore/IPoint;)V
    .locals 1

    .prologue
    .line 2140
    invoke-static {p3, p4, p1, p2, p5}, Lcom/autonavi/amap/mapcore/MapProjection;->lonlat2Geo(DDLcom/autonavi/amap/mapcore/IPoint;)V

    .line 2141
    return-void
.end method

.method public a(FFLcom/autonavi/amap/mapcore/IPoint;)V
    .locals 1

    .prologue
    .line 2159
    iget-boolean v0, p0, Lcom/amap/api/mapcore/util/b;->aq:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore/util/b;->P:Lcom/autonavi/amap/mapcore/MapProjection;

    if-eqz v0, :cond_0

    .line 2160
    iget-object v0, p0, Lcom/amap/api/mapcore/util/b;->P:Lcom/autonavi/amap/mapcore/MapProjection;

    invoke-virtual {v0, p1, p2, p3}, Lcom/autonavi/amap/mapcore/MapProjection;->map2Geo(FFLcom/autonavi/amap/mapcore/IPoint;)V

    .line 2162
    :cond_0
    return-void
.end method

.method public a(IF)V
    .locals 1

    .prologue
    .line 2903
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/b;->g:Lcom/amap/api/mapcore/util/es;

    if-eqz v0, :cond_0

    .line 2904
    iget-object v0, p0, Lcom/amap/api/mapcore/util/b;->g:Lcom/amap/api/mapcore/util/es;

    invoke-virtual {v0, p1, p2}, Lcom/amap/api/mapcore/util/es;->a(IF)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 2908
    :cond_0
    :goto_0
    return-void

    .line 2905
    :catch_0
    move-exception v0

    .line 2906
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public a(IILcom/autonavi/amap/mapcore/DPoint;)V
    .locals 1

    .prologue
    .line 2098
    iget-object v0, p0, Lcom/amap/api/mapcore/util/b;->P:Lcom/autonavi/amap/mapcore/MapProjection;

    if-eqz v0, :cond_0

    .line 2099
    iget-object v0, p0, Lcom/amap/api/mapcore/util/b;->P:Lcom/autonavi/amap/mapcore/MapProjection;

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/amap/api/mapcore/util/b;->a(Lcom/autonavi/amap/mapcore/MapProjection;IILcom/autonavi/amap/mapcore/DPoint;)V

    .line 2100
    :cond_0
    return-void
.end method

.method public a(IILcom/autonavi/amap/mapcore/FPoint;)V
    .locals 1

    .prologue
    .line 2145
    iget-boolean v0, p0, Lcom/amap/api/mapcore/util/b;->aq:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore/util/b;->P:Lcom/autonavi/amap/mapcore/MapProjection;

    if-eqz v0, :cond_0

    .line 2146
    iget-object v0, p0, Lcom/amap/api/mapcore/util/b;->P:Lcom/autonavi/amap/mapcore/MapProjection;

    invoke-virtual {v0, p1, p2, p3}, Lcom/autonavi/amap/mapcore/MapProjection;->win2Map(IILcom/autonavi/amap/mapcore/FPoint;)V

    .line 2148
    :cond_0
    return-void
.end method

.method public a(IILcom/autonavi/amap/mapcore/IPoint;)V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 2114
    iget-boolean v0, p0, Lcom/amap/api/mapcore/util/b;->aq:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore/util/b;->P:Lcom/autonavi/amap/mapcore/MapProjection;

    if-eqz v0, :cond_0

    .line 2115
    new-instance v0, Lcom/autonavi/amap/mapcore/FPoint;

    invoke-direct {v0}, Lcom/autonavi/amap/mapcore/FPoint;-><init>()V

    .line 2116
    iget-object v1, p0, Lcom/amap/api/mapcore/util/b;->P:Lcom/autonavi/amap/mapcore/MapProjection;

    invoke-virtual {v1, p1, p2, v0}, Lcom/autonavi/amap/mapcore/MapProjection;->win2Map(IILcom/autonavi/amap/mapcore/FPoint;)V

    .line 2117
    iget-object v1, p0, Lcom/amap/api/mapcore/util/b;->P:Lcom/autonavi/amap/mapcore/MapProjection;

    iget v2, v0, Lcom/autonavi/amap/mapcore/FPoint;->x:F

    iget v0, v0, Lcom/autonavi/amap/mapcore/FPoint;->y:F

    invoke-virtual {v1, v2, v0, p3}, Lcom/autonavi/amap/mapcore/MapProjection;->map2Geo(FFLcom/autonavi/amap/mapcore/IPoint;)V

    .line 2119
    :cond_0
    return-void
.end method

.method public a(Landroid/location/Location;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 557
    if-nez p1, :cond_0

    .line 593
    :goto_0
    return-void

    .line 560
    :cond_0
    new-instance v0, Lcom/amap/api/maps/model/LatLng;

    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    .line 561
    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v4

    invoke-direct {v0, v2, v3, v4, v5}, Lcom/amap/api/maps/model/LatLng;-><init>(DD)V

    .line 563
    :try_start_0
    iget-boolean v1, p0, Lcom/amap/api/mapcore/util/b;->ap:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/amap/api/mapcore/util/b;->aj:Lcom/amap/api/maps/LocationSource;

    if-nez v1, :cond_3

    .line 564
    :cond_1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/b;->al:Lcom/amap/api/mapcore/util/da;

    if-eqz v0, :cond_2

    .line 565
    iget-object v0, p0, Lcom/amap/api/mapcore/util/b;->al:Lcom/amap/api/mapcore/util/da;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/da;->b()V

    .line 566
    :cond_2
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/api/mapcore/util/b;->al:Lcom/amap/api/mapcore/util/da;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 588
    :catch_0
    move-exception v0

    .line 589
    const-string/jumbo v1, "AMapDelegateImp"

    const-string/jumbo v2, "showMyLocationOverlay"

    invoke-static {v0, v1, v2}, Lcom/amap/api/mapcore/util/ft;->b(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 590
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 569
    :cond_3
    :try_start_1
    iget-object v1, p0, Lcom/amap/api/mapcore/util/b;->al:Lcom/amap/api/mapcore/util/da;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/amap/api/mapcore/util/b;->ao:Landroid/location/Location;

    if-nez v1, :cond_6

    .line 570
    :cond_4
    iget-object v1, p0, Lcom/amap/api/mapcore/util/b;->al:Lcom/amap/api/mapcore/util/da;

    if-nez v1, :cond_5

    .line 571
    new-instance v1, Lcom/amap/api/mapcore/util/da;

    iget-object v2, p0, Lcom/amap/api/mapcore/util/b;->N:Landroid/content/Context;

    invoke-direct {v1, p0, v2}, Lcom/amap/api/mapcore/util/da;-><init>(Lcom/amap/api/mapcore/util/l;Landroid/content/Context;)V

    iput-object v1, p0, Lcom/amap/api/mapcore/util/b;->al:Lcom/amap/api/mapcore/util/da;

    .line 574
    :cond_5
    iget-object v1, p0, Lcom/amap/api/mapcore/util/b;->P:Lcom/autonavi/amap/mapcore/MapProjection;

    if-eqz v1, :cond_6

    .line 575
    iget-object v1, p0, Lcom/amap/api/mapcore/util/b;->P:Lcom/autonavi/amap/mapcore/MapProjection;

    .line 576
    invoke-virtual {v1}, Lcom/autonavi/amap/mapcore/MapProjection;->getMapZoomer()F

    move-result v1

    .line 575
    invoke-static {v0, v1}, Lcom/amap/api/mapcore/util/ag;->a(Lcom/amap/api/maps/model/LatLng;F)Lcom/amap/api/mapcore/util/af;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/amap/api/mapcore/util/b;->a(Lcom/autonavi/amap/mapcore/MapMessage;)V

    .line 579
    :cond_6
    iget-object v0, p0, Lcom/amap/api/mapcore/util/b;->al:Lcom/amap/api/mapcore/util/da;

    invoke-virtual {v0, p1}, Lcom/amap/api/mapcore/util/da;->a(Landroid/location/Location;)V

    .line 581
    iget-object v0, p0, Lcom/amap/api/mapcore/util/b;->R:Lcom/amap/api/maps/AMap$OnMyLocationChangeListener;

    if-eqz v0, :cond_8

    .line 582
    iget-object v0, p0, Lcom/amap/api/mapcore/util/b;->ao:Landroid/location/Location;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/amap/api/mapcore/util/b;->ao:Landroid/location/Location;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 583
    :cond_7
    iget-object v0, p0, Lcom/amap/api/mapcore/util/b;->R:Lcom/amap/api/maps/AMap$OnMyLocationChangeListener;

    invoke-interface {v0, p1}, Lcom/amap/api/maps/AMap$OnMyLocationChangeListener;->onMyLocationChange(Landroid/location/Location;)V

    .line 586
    :cond_8
    new-instance v0, Landroid/location/Location;

    invoke-direct {v0, p1}, Landroid/location/Location;-><init>(Landroid/location/Location;)V

    iput-object v0, p0, Lcom/amap/api/mapcore/util/b;->ao:Landroid/location/Location;

    .line 587
    invoke-direct {p0}, Lcom/amap/api/mapcore/util/b;->K()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public a(Lcom/amap/api/mapcore/util/aq;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 3068
    iget-object v0, p0, Lcom/amap/api/mapcore/util/b;->ay:Lcom/autonavi/amap/mapcore/MapConfig;

    invoke-virtual {v0}, Lcom/autonavi/amap/mapcore/MapConfig;->isIndoorEnable()Z

    move-result v0

    if-nez v0, :cond_1

    .line 3153
    :cond_0
    :goto_0
    return-void

    .line 3074
    :cond_1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/b;->g:Lcom/amap/api/mapcore/util/es;

    .line 3075
    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/es;->f()Lcom/amap/api/mapcore/util/eq;

    move-result-object v1

    .line 3076
    if-nez p1, :cond_6

    .line 3078
    invoke-virtual {p0}, Lcom/amap/api/mapcore/util/b;->f()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3081
    iget-object v0, p0, Lcom/amap/api/mapcore/util/b;->ac:Lcom/amap/api/maps/AMap$OnIndoorBuildingActiveListener;

    if-eqz v0, :cond_2

    .line 3082
    iget-object v0, p0, Lcom/amap/api/mapcore/util/b;->ac:Lcom/amap/api/maps/AMap$OnIndoorBuildingActiveListener;

    invoke-interface {v0, p1}, Lcom/amap/api/maps/AMap$OnIndoorBuildingActiveListener;->OnIndoorBuilding(Lcom/amap/api/maps/model/IndoorBuildingInfo;)V

    .line 3084
    :cond_2
    iget-object v0, p0, Lcom/amap/api/mapcore/util/b;->i:Lcom/amap/api/mapcore/util/aq;

    if-eqz v0, :cond_3

    .line 3085
    iget-object v0, p0, Lcom/amap/api/mapcore/util/b;->i:Lcom/amap/api/mapcore/util/aq;

    const/4 v2, 0x0

    iput-object v2, v0, Lcom/amap/api/mapcore/util/aq;->g:Lcom/autonavi/amap/mapcore/IPoint;

    .line 3087
    :cond_3
    invoke-virtual {v1}, Lcom/amap/api/mapcore/util/eq;->c()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 3089
    iget-object v0, p0, Lcom/amap/api/mapcore/util/b;->n:Landroid/os/Handler;

    new-instance v2, Lcom/amap/api/mapcore/util/b$7;

    invoke-direct {v2, p0, v1}, Lcom/amap/api/mapcore/util/b$7;-><init>(Lcom/amap/api/mapcore/util/b;Lcom/amap/api/mapcore/util/eq;)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 3099
    :cond_4
    iget-object v1, p0, Lcom/amap/api/mapcore/util/b;->ay:Lcom/autonavi/amap/mapcore/MapConfig;

    iget-object v0, p0, Lcom/amap/api/mapcore/util/b;->ay:Lcom/autonavi/amap/mapcore/MapConfig;

    invoke-virtual {v0}, Lcom/autonavi/amap/mapcore/MapConfig;->isSetLimitZoomLevel()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/amap/api/mapcore/util/b;->ay:Lcom/autonavi/amap/mapcore/MapConfig;

    invoke-virtual {v0}, Lcom/autonavi/amap/mapcore/MapConfig;->getMaxZoomLevel()F

    move-result v0

    :goto_1
    iput v0, v1, Lcom/autonavi/amap/mapcore/MapConfig;->maxZoomLevel:F

    .line 3100
    iget-object v0, p0, Lcom/amap/api/mapcore/util/b;->ai:Lcom/amap/api/mapcore/util/o;

    invoke-interface {v0}, Lcom/amap/api/mapcore/util/o;->isZoomControlsEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3101
    invoke-virtual {p0}, Lcom/amap/api/mapcore/util/b;->h()V

    goto :goto_0

    .line 3099
    :cond_5
    const/high16 v0, 0x41980000    # 19.0f

    goto :goto_1

    .line 3106
    :cond_6
    iget-object v0, p0, Lcom/amap/api/mapcore/util/b;->i:Lcom/amap/api/mapcore/util/aq;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/amap/api/mapcore/util/b;->i:Lcom/amap/api/mapcore/util/aq;

    iget-object v0, v0, Lcom/amap/api/mapcore/util/aq;->poiid:Ljava/lang/String;

    iget-object v2, p1, Lcom/amap/api/mapcore/util/aq;->poiid:Ljava/lang/String;

    .line 3107
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 3108
    invoke-virtual {v1}, Lcom/amap/api/mapcore/util/eq;->c()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3111
    :cond_7
    iget-object v0, p0, Lcom/amap/api/mapcore/util/b;->i:Lcom/amap/api/mapcore/util/aq;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/amap/api/mapcore/util/b;->i:Lcom/amap/api/mapcore/util/aq;

    iget-object v0, v0, Lcom/amap/api/mapcore/util/aq;->poiid:Ljava/lang/String;

    iget-object v2, p1, Lcom/amap/api/mapcore/util/aq;->poiid:Ljava/lang/String;

    .line 3112
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/amap/api/mapcore/util/b;->i:Lcom/amap/api/mapcore/util/aq;

    iget-object v0, v0, Lcom/amap/api/mapcore/util/aq;->g:Lcom/autonavi/amap/mapcore/IPoint;

    if-nez v0, :cond_9

    .line 3114
    :cond_8
    iput-object p1, p0, Lcom/amap/api/mapcore/util/b;->i:Lcom/amap/api/mapcore/util/aq;

    .line 3115
    iget-object v0, p0, Lcom/amap/api/mapcore/util/b;->i:Lcom/amap/api/mapcore/util/aq;

    new-instance v2, Lcom/autonavi/amap/mapcore/IPoint;

    invoke-direct {v2}, Lcom/autonavi/amap/mapcore/IPoint;-><init>()V

    iput-object v2, v0, Lcom/amap/api/mapcore/util/aq;->g:Lcom/autonavi/amap/mapcore/IPoint;

    .line 3116
    iget-object v0, p0, Lcom/amap/api/mapcore/util/b;->P:Lcom/autonavi/amap/mapcore/MapProjection;

    if-eqz v0, :cond_9

    .line 3117
    iget-object v0, p0, Lcom/amap/api/mapcore/util/b;->P:Lcom/autonavi/amap/mapcore/MapProjection;

    iget-object v2, p0, Lcom/amap/api/mapcore/util/b;->i:Lcom/amap/api/mapcore/util/aq;

    iget-object v2, v2, Lcom/amap/api/mapcore/util/aq;->g:Lcom/autonavi/amap/mapcore/IPoint;

    invoke-virtual {v0, v2}, Lcom/autonavi/amap/mapcore/MapProjection;->getGeoCenter(Lcom/autonavi/amap/mapcore/IPoint;)V

    .line 3120
    :cond_9
    iget-object v0, p0, Lcom/amap/api/mapcore/util/b;->ac:Lcom/amap/api/maps/AMap$OnIndoorBuildingActiveListener;

    if-eqz v0, :cond_a

    .line 3121
    iget-object v0, p0, Lcom/amap/api/mapcore/util/b;->ac:Lcom/amap/api/maps/AMap$OnIndoorBuildingActiveListener;

    invoke-interface {v0, p1}, Lcom/amap/api/maps/AMap$OnIndoorBuildingActiveListener;->OnIndoorBuilding(Lcom/amap/api/maps/model/IndoorBuildingInfo;)V

    .line 3125
    :cond_a
    iget-object v2, p0, Lcom/amap/api/mapcore/util/b;->ay:Lcom/autonavi/amap/mapcore/MapConfig;

    iget-object v0, p0, Lcom/amap/api/mapcore/util/b;->ay:Lcom/autonavi/amap/mapcore/MapConfig;

    invoke-virtual {v0}, Lcom/autonavi/amap/mapcore/MapConfig;->isSetLimitZoomLevel()Z

    move-result v0

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/amap/api/mapcore/util/b;->ay:Lcom/autonavi/amap/mapcore/MapConfig;

    invoke-virtual {v0}, Lcom/autonavi/amap/mapcore/MapConfig;->getMaxZoomLevel()F

    move-result v0

    :goto_2
    iput v0, v2, Lcom/autonavi/amap/mapcore/MapConfig;->maxZoomLevel:F

    .line 3126
    iget-object v0, p0, Lcom/amap/api/mapcore/util/b;->ai:Lcom/amap/api/mapcore/util/o;

    invoke-interface {v0}, Lcom/amap/api/mapcore/util/o;->isZoomControlsEnabled()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 3127
    invoke-virtual {p0}, Lcom/amap/api/mapcore/util/b;->h()V

    .line 3130
    :cond_b
    iget-object v0, p0, Lcom/amap/api/mapcore/util/b;->ai:Lcom/amap/api/mapcore/util/o;

    invoke-interface {v0}, Lcom/amap/api/mapcore/util/o;->isIndoorSwitchEnabled()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 3131
    invoke-virtual {v1}, Lcom/amap/api/mapcore/util/eq;->c()Z

    move-result v0

    if-nez v0, :cond_d

    .line 3132
    iget-object v0, p0, Lcom/amap/api/mapcore/util/b;->ai:Lcom/amap/api/mapcore/util/o;

    const/4 v2, 0x1

    invoke-interface {v0, v2}, Lcom/amap/api/mapcore/util/o;->setIndoorSwitchEnabled(Z)V

    .line 3133
    iget-object v0, p0, Lcom/amap/api/mapcore/util/b;->n:Landroid/os/Handler;

    new-instance v2, Lcom/amap/api/mapcore/util/b$8;

    invoke-direct {v2, p0, v1}, Lcom/amap/api/mapcore/util/b$8;-><init>(Lcom/amap/api/mapcore/util/b;Lcom/amap/api/mapcore/util/eq;)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_0

    .line 3125
    :cond_c
    const/high16 v0, 0x41a00000    # 20.0f

    goto :goto_2

    .line 3147
    :cond_d
    iget-object v0, p0, Lcom/amap/api/mapcore/util/b;->ai:Lcom/amap/api/mapcore/util/o;

    invoke-interface {v0}, Lcom/amap/api/mapcore/util/o;->isIndoorSwitchEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3148
    invoke-virtual {v1}, Lcom/amap/api/mapcore/util/eq;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3149
    iget-object v0, p0, Lcom/amap/api/mapcore/util/b;->ai:Lcom/amap/api/mapcore/util/o;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/amap/api/mapcore/util/o;->setIndoorSwitchEnabled(Z)V

    goto/16 :goto_0
.end method

.method public a(Lcom/amap/api/mapcore/util/cr;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 746
    if-nez p1, :cond_1

    .line 756
    :cond_0
    :goto_0
    return-void

    .line 749
    :cond_1
    invoke-interface {p1}, Lcom/amap/api/mapcore/util/cr;->getTitle()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    invoke-interface {p1}, Lcom/amap/api/mapcore/util/cr;->getSnippet()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 753
    :cond_2
    iget-object v0, p0, Lcom/amap/api/mapcore/util/b;->j:Lcom/amap/api/mapcore/util/cq;

    if-eqz v0, :cond_0

    .line 754
    iget-object v0, p0, Lcom/amap/api/mapcore/util/b;->j:Lcom/amap/api/mapcore/util/cq;

    invoke-interface {v0, p1}, Lcom/amap/api/mapcore/util/cq;->a(Lcom/amap/api/mapcore/util/cr;)V

    goto :goto_0
.end method

.method public a(Lcom/amap/api/mapcore/util/i$a;Lcom/amap/api/mapcore/util/i$c;)V
    .locals 1

    .prologue
    .line 1610
    sget-object v0, Lcom/amap/api/mapcore/util/i$b;->a:Lcom/amap/api/mapcore/util/i$b;

    invoke-virtual {p0, p1, p2, v0}, Lcom/amap/api/mapcore/util/b;->a(Lcom/amap/api/mapcore/util/i$a;Lcom/amap/api/mapcore/util/i$c;Lcom/amap/api/mapcore/util/i$b;)V

    .line 1611
    return-void
.end method

.method public a(Lcom/amap/api/mapcore/util/i$a;Lcom/amap/api/mapcore/util/i$c;Lcom/amap/api/mapcore/util/i$b;)V
    .locals 7

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 1623
    iget-object v0, p0, Lcom/amap/api/mapcore/util/b;->D:Lcom/amap/api/mapcore/util/i$c;

    if-ne v0, p2, :cond_1

    iget-object v0, p0, Lcom/amap/api/mapcore/util/b;->E:Lcom/amap/api/mapcore/util/i$a;

    if-ne v0, p1, :cond_1

    iget-object v0, p0, Lcom/amap/api/mapcore/util/b;->F:Lcom/amap/api/mapcore/util/i$b;

    if-ne v0, p3, :cond_1

    iget-object v0, p0, Lcom/amap/api/mapcore/util/b;->ay:Lcom/autonavi/amap/mapcore/MapConfig;

    .line 1624
    invoke-virtual {v0}, Lcom/autonavi/amap/mapcore/MapConfig;->getCustomStylePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1735
    :cond_0
    :goto_0
    return-void

    .line 1628
    :cond_1
    sget-boolean v0, Lcom/amap/api/mapcore/util/b;->as:Z

    if-nez v0, :cond_2

    .line 1629
    iput-object p2, p0, Lcom/amap/api/mapcore/util/b;->D:Lcom/amap/api/mapcore/util/i$c;

    .line 1630
    iput-object p1, p0, Lcom/amap/api/mapcore/util/b;->E:Lcom/amap/api/mapcore/util/i$a;

    .line 1631
    iput-object p3, p0, Lcom/amap/api/mapcore/util/b;->F:Lcom/amap/api/mapcore/util/i$b;

    goto :goto_0

    .line 1636
    :cond_2
    iget-object v5, p0, Lcom/amap/api/mapcore/util/b;->D:Lcom/amap/api/mapcore/util/i$c;

    .line 1637
    iget-object v6, p0, Lcom/amap/api/mapcore/util/b;->E:Lcom/amap/api/mapcore/util/i$a;

    .line 1638
    iget-boolean v0, p0, Lcom/amap/api/mapcore/util/b;->aB:Z

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/amap/api/mapcore/util/b;->aq:Z

    if-eqz v0, :cond_3

    .line 1640
    new-instance v0, Lcom/amap/api/mapcore/util/b$18;

    move-object v1, p0

    move-object v2, p2

    move-object v3, p1

    move-object v4, p3

    invoke-direct/range {v0 .. v6}, Lcom/amap/api/mapcore/util/b$18;-><init>(Lcom/amap/api/mapcore/util/b;Lcom/amap/api/mapcore/util/i$c;Lcom/amap/api/mapcore/util/i$a;Lcom/amap/api/mapcore/util/i$b;Lcom/amap/api/mapcore/util/i$c;Lcom/amap/api/mapcore/util/i$a;)V

    invoke-virtual {p0, v0}, Lcom/amap/api/mapcore/util/b;->a(Ljava/lang/Runnable;)V

    .line 1729
    :goto_1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/b;->ay:Lcom/autonavi/amap/mapcore/MapConfig;

    invoke-virtual {v0}, Lcom/autonavi/amap/mapcore/MapConfig;->getCustomStylePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore/util/b;->ay:Lcom/autonavi/amap/mapcore/MapConfig;

    invoke-virtual {v0}, Lcom/autonavi/amap/mapcore/MapConfig;->isCustomStyleEnable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1730
    iput-object p1, p0, Lcom/amap/api/mapcore/util/b;->H:Lcom/amap/api/mapcore/util/i$a;

    .line 1731
    iput-object p2, p0, Lcom/amap/api/mapcore/util/b;->G:Lcom/amap/api/mapcore/util/i$c;

    .line 1732
    iput-object p3, p0, Lcom/amap/api/mapcore/util/b;->I:Lcom/amap/api/mapcore/util/i$b;

    goto :goto_0

    .line 1723
    :cond_3
    iget-object v0, p0, Lcom/amap/api/mapcore/util/b;->aJ:Lcom/amap/api/mapcore/util/b$a;

    iput-object p1, v0, Lcom/amap/api/mapcore/util/b$a;->c:Lcom/amap/api/mapcore/util/i$a;

    .line 1724
    iget-object v0, p0, Lcom/amap/api/mapcore/util/b;->aJ:Lcom/amap/api/mapcore/util/b$a;

    iput-object p2, v0, Lcom/amap/api/mapcore/util/b$a;->d:Lcom/amap/api/mapcore/util/i$c;

    .line 1725
    iget-object v0, p0, Lcom/amap/api/mapcore/util/b;->aJ:Lcom/amap/api/mapcore/util/b$a;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/amap/api/mapcore/util/b$a;->b:Z

    goto :goto_1
.end method

.method public declared-synchronized a(Lcom/amap/api/mapcore/util/s;)V
    .locals 1

    .prologue
    .line 3539
    monitor-enter p0

    if-nez p1, :cond_1

    .line 3547
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 3543
    :cond_1
    :try_start_0
    invoke-virtual {p1}, Lcom/amap/api/mapcore/util/s;->b()I

    move-result v0

    if-eqz v0, :cond_0

    .line 3546
    iget-object v0, p0, Lcom/amap/api/mapcore/util/b;->K:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 3539
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public a(Lcom/autonavi/amap/mapcore/MapMessage;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 1194
    iget-object v0, p0, Lcom/amap/api/mapcore/util/b;->M:Lcom/autonavi/amap/mapcore/MapCore;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore/util/b;->au:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1246
    :cond_0
    :goto_0
    return-void

    .line 1203
    :cond_1
    :try_start_0
    iget-boolean v0, p0, Lcom/amap/api/mapcore/util/b;->v:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/amap/api/mapcore/util/b;->w:Z

    if-eqz v0, :cond_5

    .line 1207
    :cond_2
    iget-object v0, p0, Lcom/amap/api/mapcore/util/b;->M:Lcom/autonavi/amap/mapcore/MapCore;

    invoke-virtual {v0}, Lcom/autonavi/amap/mapcore/MapCore;->getStateMessageCount()I

    move-result v0

    if-lez v0, :cond_5

    .line 1209
    invoke-static {}, Lcom/amap/api/mapcore/util/ag;->c()Lcom/amap/api/mapcore/util/af;

    move-result-object v1

    .line 1210
    sget-object v0, Lcom/amap/api/mapcore/util/af$a;->o:Lcom/amap/api/mapcore/util/af$a;

    iput-object v0, v1, Lcom/amap/api/mapcore/util/af;->a:Lcom/amap/api/mapcore/util/af$a;

    .line 1211
    new-instance v0, Lcom/autonavi/amap/mapcore/IPoint;

    iget-object v2, p0, Lcom/amap/api/mapcore/util/b;->ay:Lcom/autonavi/amap/mapcore/MapConfig;

    invoke-virtual {v2}, Lcom/autonavi/amap/mapcore/MapConfig;->getS_x()I

    move-result v2

    iget-object v3, p0, Lcom/amap/api/mapcore/util/b;->ay:Lcom/autonavi/amap/mapcore/MapConfig;

    .line 1212
    invoke-virtual {v3}, Lcom/autonavi/amap/mapcore/MapConfig;->getS_y()I

    move-result v3

    invoke-direct {v0, v2, v3}, Lcom/autonavi/amap/mapcore/IPoint;-><init>(II)V

    iput-object v0, v1, Lcom/amap/api/mapcore/util/af;->geoPoint:Lcom/autonavi/amap/mapcore/IPoint;

    .line 1213
    iget-object v0, p0, Lcom/amap/api/mapcore/util/b;->ay:Lcom/autonavi/amap/mapcore/MapConfig;

    invoke-virtual {v0}, Lcom/autonavi/amap/mapcore/MapConfig;->getS_z()F

    move-result v0

    iput v0, v1, Lcom/amap/api/mapcore/util/af;->zoom:F

    .line 1214
    iget-object v0, p0, Lcom/amap/api/mapcore/util/b;->ay:Lcom/autonavi/amap/mapcore/MapConfig;

    invoke-virtual {v0}, Lcom/autonavi/amap/mapcore/MapConfig;->getS_r()F

    move-result v0

    iput v0, v1, Lcom/amap/api/mapcore/util/af;->bearing:F

    .line 1215
    iget-object v0, p0, Lcom/amap/api/mapcore/util/b;->ay:Lcom/autonavi/amap/mapcore/MapConfig;

    invoke-virtual {v0}, Lcom/autonavi/amap/mapcore/MapConfig;->getS_c()F

    move-result v0

    iput v0, v1, Lcom/amap/api/mapcore/util/af;->tilt:F

    .line 1217
    iget-object v0, p0, Lcom/amap/api/mapcore/util/b;->M:Lcom/autonavi/amap/mapcore/MapCore;

    invoke-virtual {v0, p1}, Lcom/autonavi/amap/mapcore/MapCore;->addMessage(Lcom/autonavi/amap/mapcore/MapMessage;)V

    .line 1225
    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/b;->M:Lcom/autonavi/amap/mapcore/MapCore;

    invoke-virtual {v0}, Lcom/autonavi/amap/mapcore/MapCore;->getStateMessageCount()I

    move-result v0

    if-lez v0, :cond_4

    .line 1226
    iget-object v0, p0, Lcom/amap/api/mapcore/util/b;->M:Lcom/autonavi/amap/mapcore/MapCore;

    .line 1227
    invoke-virtual {v0}, Lcom/autonavi/amap/mapcore/MapCore;->getStateMessage()Lcom/autonavi/amap/mapcore/MapMessage;

    move-result-object v0

    check-cast v0, Lcom/amap/api/mapcore/util/af;

    .line 1228
    if-eqz v0, :cond_3

    .line 1229
    invoke-virtual {p1, v1}, Lcom/autonavi/amap/mapcore/MapMessage;->mergeCameraUpdateDelegate(Lcom/autonavi/amap/mapcore/MapMessage;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 1242
    :catch_0
    move-exception v0

    .line 1243
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    :cond_4
    move-object p1, v1

    .line 1237
    :cond_5
    :try_start_1
    invoke-direct {p0}, Lcom/amap/api/mapcore/util/b;->K()V

    .line 1238
    iget-object v0, p0, Lcom/amap/api/mapcore/util/b;->M:Lcom/autonavi/amap/mapcore/MapCore;

    invoke-virtual {v0}, Lcom/autonavi/amap/mapcore/MapCore;->clearAnimations()V

    .line 1239
    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/autonavi/amap/mapcore/MapMessage;->isChangeFinished:Z

    .line 1240
    invoke-direct {p0, p1}, Lcom/amap/api/mapcore/util/b;->c(Lcom/autonavi/amap/mapcore/MapMessage;)V

    .line 1241
    iget-object v0, p0, Lcom/amap/api/mapcore/util/b;->M:Lcom/autonavi/amap/mapcore/MapCore;

    invoke-virtual {v0, p1}, Lcom/autonavi/amap/mapcore/MapCore;->addMessage(Lcom/autonavi/amap/mapcore/MapMessage;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public a(Lcom/autonavi/amap/mapcore/MapMessage;JLcom/amap/api/maps/AMap$CancelableCallback;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1291
    iget-boolean v0, p0, Lcom/amap/api/mapcore/util/b;->v:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/amap/api/mapcore/util/b;->w:Z

    if-eqz v0, :cond_1

    .line 1295
    :cond_0
    invoke-virtual {p0, p1}, Lcom/amap/api/mapcore/util/b;->a(Lcom/autonavi/amap/mapcore/MapMessage;)V

    .line 1323
    :goto_0
    return-void

    .line 1299
    :cond_1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/b;->M:Lcom/autonavi/amap/mapcore/MapCore;

    invoke-virtual {v0}, Lcom/autonavi/amap/mapcore/MapCore;->getAnimateionsCount()I

    move-result v0

    if-lez v0, :cond_2

    .line 1300
    iget-object v0, p0, Lcom/amap/api/mapcore/util/b;->am:Lcom/amap/api/maps/AMap$CancelableCallback;

    if-eqz v0, :cond_2

    .line 1303
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/b;->am:Lcom/amap/api/maps/AMap$CancelableCallback;

    invoke-interface {v0}, Lcom/amap/api/maps/AMap$CancelableCallback;->onCancel()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 1310
    :cond_2
    :goto_1
    invoke-direct {p0}, Lcom/amap/api/mapcore/util/b;->K()V

    .line 1312
    if-eqz p4, :cond_3

    .line 1313
    iput-object p4, p0, Lcom/amap/api/mapcore/util/b;->am:Lcom/amap/api/maps/AMap$CancelableCallback;

    .line 1315
    :cond_3
    invoke-direct {p0, p1}, Lcom/amap/api/mapcore/util/b;->c(Lcom/autonavi/amap/mapcore/MapMessage;)V

    .line 1317
    iget-object v0, p0, Lcom/amap/api/mapcore/util/b;->M:Lcom/autonavi/amap/mapcore/MapCore;

    invoke-virtual {v0}, Lcom/autonavi/amap/mapcore/MapCore;->clearAnimations()V

    .line 1318
    new-instance v0, Lcom/autonavi/amap/mapcore/MapProjection;

    iget-object v1, p0, Lcom/amap/api/mapcore/util/b;->M:Lcom/autonavi/amap/mapcore/MapCore;

    invoke-direct {v0, v1}, Lcom/autonavi/amap/mapcore/MapProjection;-><init>(Lcom/autonavi/amap/mapcore/MapCore;)V

    .line 1319
    iget-object v1, p0, Lcom/amap/api/mapcore/util/b;->M:Lcom/autonavi/amap/mapcore/MapCore;

    long-to-int v2, p2

    invoke-virtual {p1, v0, v2}, Lcom/autonavi/amap/mapcore/MapMessage;->generateMapAnimation(Lcom/autonavi/amap/mapcore/MapProjection;I)Lcom/autonavi/amap/mapcore/ADGLMapAnimGroup;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/autonavi/amap/mapcore/MapCore;->addMapAnimation(Lcom/autonavi/amap/mapcore/ADGLAnimation;)Z

    .line 1321
    invoke-virtual {v0}, Lcom/autonavi/amap/mapcore/MapProjection;->recycle()V

    goto :goto_0

    .line 1304
    :catch_0
    move-exception v0

    .line 1305
    const-string/jumbo v1, "AMapDelegateImp"

    const-string/jumbo v2, "CancelableCallback.onCancel"

    invoke-static {v0, v1, v2}, Lcom/amap/api/mapcore/util/ft;->b(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 1306
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1
.end method

.method public a(Ljava/lang/Runnable;)V
    .locals 1

    .prologue
    .line 3203
    iget-object v0, p0, Lcom/amap/api/mapcore/util/b;->d:Lcom/amap/api/mapcore/util/m;

    if-eqz v0, :cond_0

    .line 3204
    iget-object v0, p0, Lcom/amap/api/mapcore/util/b;->d:Lcom/amap/api/mapcore/util/m;

    invoke-interface {v0, p1}, Lcom/amap/api/mapcore/util/m;->queueEvent(Ljava/lang/Runnable;)V

    .line 3206
    :cond_0
    return-void
.end method

.method public a(Z)V
    .locals 1

    .prologue
    .line 597
    iget-object v0, p0, Lcom/amap/api/mapcore/util/b;->au:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    .line 598
    iget-object v0, p0, Lcom/amap/api/mapcore/util/b;->g:Lcom/amap/api/mapcore/util/es;

    invoke-virtual {v0, p1}, Lcom/amap/api/mapcore/util/es;->b(Z)V

    .line 599
    :cond_0
    return-void
.end method

.method protected a(ZLcom/amap/api/maps/model/CameraPosition;)V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 2945
    iget-object v0, p0, Lcom/amap/api/mapcore/util/b;->ay:Lcom/autonavi/amap/mapcore/MapConfig;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore/util/b;->ay:Lcom/autonavi/amap/mapcore/MapConfig;

    invoke-virtual {v0}, Lcom/autonavi/amap/mapcore/MapConfig;->getChangedCounter()I

    move-result v0

    if-nez v0, :cond_1

    .line 2973
    :cond_0
    :goto_0
    return-void

    .line 2951
    :cond_1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/b;->ay:Lcom/autonavi/amap/mapcore/MapConfig;

    invoke-virtual {v0}, Lcom/autonavi/amap/mapcore/MapConfig;->resetChangedCounter()V

    .line 2953
    iget-object v0, p0, Lcom/amap/api/mapcore/util/b;->ag:Lcom/amap/api/maps/model/AMapGestureListener;

    if-eqz v0, :cond_2

    .line 2954
    iget-object v0, p0, Lcom/amap/api/mapcore/util/b;->ag:Lcom/amap/api/maps/model/AMapGestureListener;

    invoke-interface {v0}, Lcom/amap/api/maps/model/AMapGestureListener;->onMapStable()V

    .line 2957
    :cond_2
    iget-object v0, p0, Lcom/amap/api/mapcore/util/b;->W:Lcom/amap/api/maps/AMap$OnCameraChangeListener;

    if-eqz v0, :cond_0

    .line 2961
    iget-object v0, p0, Lcom/amap/api/mapcore/util/b;->d:Lcom/amap/api/mapcore/util/m;

    invoke-interface {v0}, Lcom/amap/api/mapcore/util/m;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2964
    if-nez p2, :cond_3

    .line 2966
    :try_start_0
    invoke-virtual {p0}, Lcom/amap/api/mapcore/util/b;->getCameraPosition()Lcom/amap/api/maps/model/CameraPosition;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p2

    .line 2972
    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/b;->W:Lcom/amap/api/maps/AMap$OnCameraChangeListener;

    invoke-interface {v0, p2}, Lcom/amap/api/maps/AMap$OnCameraChangeListener;->onCameraChangeFinish(Lcom/amap/api/maps/model/CameraPosition;)V

    goto :goto_0

    .line 2967
    :catch_0
    move-exception v0

    .line 2968
    const-string/jumbo v1, "AMapDelegateImp"

    const-string/jumbo v2, "cameraChangeFinish"

    invoke-static {v0, v1, v2}, Lcom/amap/api/mapcore/util/ft;->b(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 2969
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1
.end method

.method public a(Landroid/view/MotionEvent;)Z
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/16 v3, 0x10

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 2287
    iget-boolean v2, p0, Lcom/amap/api/mapcore/util/b;->ar:Z

    if-nez v2, :cond_0

    .line 2339
    :goto_0
    return v0

    .line 2292
    :cond_0
    :try_start_0
    invoke-direct {p0}, Lcom/amap/api/mapcore/util/b;->K()V

    .line 2293
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    and-int/lit16 v0, v0, 0xff

    packed-switch v0, :pswitch_data_0

    .line 2312
    :goto_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_1

    iget-boolean v0, p0, Lcom/amap/api/mapcore/util/b;->aD:Z

    if-eqz v0, :cond_1

    .line 2314
    :try_start_1
    invoke-direct {p0, p1}, Lcom/amap/api/mapcore/util/b;->e(Landroid/view/MotionEvent;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    :goto_2
    move v0, v1

    .line 2319
    goto :goto_0

    .line 2295
    :pswitch_0
    const/4 v0, 0x1

    :try_start_2
    iput-boolean v0, p0, Lcom/amap/api/mapcore/util/b;->y:Z

    .line 2296
    invoke-direct {p0}, Lcom/amap/api/mapcore/util/b;->T()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    .line 2307
    :catch_0
    move-exception v0

    .line 2308
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1

    .line 2300
    :pswitch_1
    const/4 v0, 0x0

    :try_start_3
    iput-boolean v0, p0, Lcom/amap/api/mapcore/util/b;->y:Z

    .line 2303
    invoke-direct {p0}, Lcom/amap/api/mapcore/util/b;->U()V

    .line 2304
    invoke-direct {p0}, Lcom/amap/api/mapcore/util/b;->P()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_1

    .line 2315
    :catch_1
    move-exception v0

    .line 2316
    const-string/jumbo v2, "AMapDelegateImp"

    const-string/jumbo v3, "onDragMarker"

    invoke-static {v0, v2, v3}, Lcom/amap/api/mapcore/util/ft;->b(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 2317
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_2

    .line 2322
    :cond_1
    iget-boolean v0, p0, Lcom/amap/api/mapcore/util/b;->x:Z

    if-eqz v0, :cond_2

    .line 2327
    :try_start_4
    iget-object v0, p0, Lcom/amap/api/mapcore/util/b;->h:Lcom/amap/api/mapcore/util/h;

    invoke-virtual {v0, p1}, Lcom/amap/api/mapcore/util/h;->a(Landroid/view/MotionEvent;)Z
    :try_end_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_4} :catch_2

    .line 2332
    :cond_2
    :goto_3
    iget-object v0, p0, Lcom/amap/api/mapcore/util/b;->Y:Lcom/amap/api/maps/AMap$OnMapTouchListener;

    if-eqz v0, :cond_3

    .line 2333
    iget-object v0, p0, Lcom/amap/api/mapcore/util/b;->n:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 2334
    iget-object v0, p0, Lcom/amap/api/mapcore/util/b;->n:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 2335
    iput v3, v0, Landroid/os/Message;->what:I

    .line 2336
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v2

    iput-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 2337
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    :cond_3
    move v0, v1

    .line 2339
    goto :goto_0

    .line 2328
    :catch_2
    move-exception v0

    .line 2329
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_3

    .line 2293
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public a(Ljava/lang/String;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 792
    invoke-direct {p0}, Lcom/amap/api/mapcore/util/b;->K()V

    .line 793
    iget-object v0, p0, Lcom/amap/api/mapcore/util/b;->b:Lcom/amap/api/mapcore/util/j;

    invoke-virtual {v0, p1}, Lcom/amap/api/mapcore/util/j;->d(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public addArc(Lcom/amap/api/maps/model/ArcOptions;)Lcom/amap/api/maps/model/Arc;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 1425
    :try_start_0
    invoke-direct {p0}, Lcom/amap/api/mapcore/util/b;->K()V

    .line 1426
    iget-object v0, p0, Lcom/amap/api/mapcore/util/b;->b:Lcom/amap/api/mapcore/util/j;

    invoke-virtual {v0, p1}, Lcom/amap/api/mapcore/util/j;->a(Lcom/amap/api/maps/model/ArcOptions;)Lcom/amap/api/mapcore/util/cn;

    move-result-object v1

    .line 1427
    if-eqz v1, :cond_0

    .line 1428
    new-instance v0, Lcom/amap/api/maps/model/Arc;

    invoke-direct {v0, v1}, Lcom/amap/api/maps/model/Arc;-><init>(Lcom/autonavi/amap/mapcore/interfaces/IArc;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 1432
    :goto_0
    return-object v0

    .line 1429
    :catch_0
    move-exception v0

    .line 1430
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 1432
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public addCircle(Lcom/amap/api/maps/model/CircleOptions;)Lcom/amap/api/maps/model/Circle;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 1412
    :try_start_0
    invoke-direct {p0}, Lcom/amap/api/mapcore/util/b;->K()V

    .line 1413
    iget-object v0, p0, Lcom/amap/api/mapcore/util/b;->b:Lcom/amap/api/mapcore/util/j;

    invoke-virtual {v0, p1}, Lcom/amap/api/mapcore/util/j;->a(Lcom/amap/api/maps/model/CircleOptions;)Lcom/amap/api/mapcore/util/co;

    move-result-object v1

    .line 1414
    if-eqz v1, :cond_0

    .line 1415
    new-instance v0, Lcom/amap/api/maps/model/Circle;

    invoke-direct {v0, v1}, Lcom/amap/api/maps/model/Circle;-><init>(Lcom/autonavi/amap/mapcore/interfaces/ICircle;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 1419
    :goto_0
    return-object v0

    .line 1416
    :catch_0
    move-exception v0

    .line 1417
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 1419
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public addGroundOverlay(Lcom/amap/api/maps/model/GroundOverlayOptions;)Lcom/amap/api/maps/model/GroundOverlay;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 1439
    :try_start_0
    invoke-direct {p0}, Lcom/amap/api/mapcore/util/b;->K()V

    .line 1440
    iget-object v0, p0, Lcom/amap/api/mapcore/util/b;->b:Lcom/amap/api/mapcore/util/j;

    invoke-virtual {v0, p1}, Lcom/amap/api/mapcore/util/j;->a(Lcom/amap/api/maps/model/GroundOverlayOptions;)Lcom/amap/api/mapcore/util/cp;

    move-result-object v1

    .line 1441
    if-eqz v1, :cond_0

    .line 1442
    new-instance v0, Lcom/amap/api/maps/model/GroundOverlay;

    invoke-direct {v0, v1}, Lcom/amap/api/maps/model/GroundOverlay;-><init>(Lcom/autonavi/amap/mapcore/interfaces/IGroundOverlay;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 1446
    :goto_0
    return-object v0

    .line 1443
    :catch_0
    move-exception v0

    .line 1444
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 1446
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public addMarker(Lcom/amap/api/maps/model/MarkerOptions;)Lcom/amap/api/maps/model/Marker;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1452
    :try_start_0
    invoke-direct {p0}, Lcom/amap/api/mapcore/util/b;->K()V

    .line 1453
    iget-object v0, p0, Lcom/amap/api/mapcore/util/b;->e:Lcom/amap/api/mapcore/util/q;

    invoke-virtual {v0, p1}, Lcom/amap/api/mapcore/util/q;->a(Lcom/amap/api/maps/model/MarkerOptions;)Lcom/amap/api/maps/model/Marker;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 1457
    :goto_0
    return-object v0

    .line 1454
    :catch_0
    move-exception v0

    .line 1455
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 1457
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public addMarkers(Ljava/util/ArrayList;Z)Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/amap/api/maps/model/MarkerOptions;",
            ">;Z)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/amap/api/maps/model/Marker;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1475
    :try_start_0
    invoke-direct {p0}, Lcom/amap/api/mapcore/util/b;->K()V

    .line 1476
    iget-object v0, p0, Lcom/amap/api/mapcore/util/b;->e:Lcom/amap/api/mapcore/util/q;

    invoke-virtual {v0, p1, p2}, Lcom/amap/api/mapcore/util/q;->a(Ljava/util/ArrayList;Z)Ljava/util/ArrayList;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 1480
    :goto_0
    return-object v0

    .line 1477
    :catch_0
    move-exception v0

    .line 1478
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 1480
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public addNavigateArrow(Lcom/amap/api/maps/model/NavigateArrowOptions;)Lcom/amap/api/maps/model/NavigateArrow;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 1384
    :try_start_0
    invoke-direct {p0}, Lcom/amap/api/mapcore/util/b;->K()V

    .line 1385
    iget-object v0, p0, Lcom/amap/api/mapcore/util/b;->b:Lcom/amap/api/mapcore/util/j;

    invoke-virtual {v0, p1}, Lcom/amap/api/mapcore/util/j;->a(Lcom/amap/api/maps/model/NavigateArrowOptions;)Lcom/amap/api/mapcore/util/cs;

    move-result-object v1

    .line 1386
    if-eqz v1, :cond_0

    .line 1387
    new-instance v0, Lcom/amap/api/maps/model/NavigateArrow;

    invoke-direct {v0, v1}, Lcom/amap/api/maps/model/NavigateArrow;-><init>(Lcom/autonavi/amap/mapcore/interfaces/INavigateArrow;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 1391
    :goto_0
    return-object v0

    .line 1388
    :catch_0
    move-exception v0

    .line 1389
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 1391
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public addPolygon(Lcom/amap/api/maps/model/PolygonOptions;)Lcom/amap/api/maps/model/Polygon;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 1398
    :try_start_0
    invoke-direct {p0}, Lcom/amap/api/mapcore/util/b;->K()V

    .line 1399
    iget-object v0, p0, Lcom/amap/api/mapcore/util/b;->b:Lcom/amap/api/mapcore/util/j;

    invoke-virtual {v0, p1}, Lcom/amap/api/mapcore/util/j;->a(Lcom/amap/api/maps/model/PolygonOptions;)Lcom/amap/api/mapcore/util/cv;

    move-result-object v1

    .line 1400
    if-eqz v1, :cond_0

    .line 1401
    new-instance v0, Lcom/amap/api/maps/model/Polygon;

    invoke-direct {v0, v1}, Lcom/amap/api/maps/model/Polygon;-><init>(Lcom/autonavi/amap/mapcore/interfaces/IPolygon;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 1405
    :goto_0
    return-object v0

    .line 1402
    :catch_0
    move-exception v0

    .line 1403
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 1405
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public addPolyline(Lcom/amap/api/maps/model/PolylineOptions;)Lcom/amap/api/maps/model/Polyline;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 1370
    :try_start_0
    invoke-direct {p0}, Lcom/amap/api/mapcore/util/b;->K()V

    .line 1371
    iget-object v0, p0, Lcom/amap/api/mapcore/util/b;->b:Lcom/amap/api/mapcore/util/j;

    invoke-virtual {v0, p1}, Lcom/amap/api/mapcore/util/j;->a(Lcom/amap/api/maps/model/PolylineOptions;)Lcom/amap/api/mapcore/util/cw;

    move-result-object v1

    .line 1372
    if-eqz v1, :cond_0

    .line 1373
    new-instance v0, Lcom/amap/api/maps/model/Polyline;

    invoke-direct {v0, v1}, Lcom/amap/api/maps/model/Polyline;-><init>(Lcom/autonavi/amap/mapcore/interfaces/IPolyline;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 1377
    :goto_0
    return-object v0

    .line 1374
    :catch_0
    move-exception v0

    .line 1375
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 1377
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public addText(Lcom/amap/api/maps/model/TextOptions;)Lcom/amap/api/maps/model/Text;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1463
    :try_start_0
    invoke-direct {p0}, Lcom/amap/api/mapcore/util/b;->K()V

    .line 1464
    iget-object v0, p0, Lcom/amap/api/mapcore/util/b;->e:Lcom/amap/api/mapcore/util/q;

    invoke-virtual {v0, p1}, Lcom/amap/api/mapcore/util/q;->a(Lcom/amap/api/maps/model/TextOptions;)Lcom/amap/api/maps/model/Text;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 1468
    :goto_0
    return-object v0

    .line 1465
    :catch_0
    move-exception v0

    .line 1466
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 1468
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public addTileOverlay(Lcom/amap/api/maps/model/TileOverlayOptions;)Lcom/amap/api/maps/model/TileOverlay;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1499
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/b;->f:Lcom/amap/api/mapcore/util/v;

    invoke-virtual {v0, p1}, Lcom/amap/api/mapcore/util/v;->a(Lcom/amap/api/maps/model/TileOverlayOptions;)Lcom/amap/api/maps/model/TileOverlay;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 1503
    :goto_0
    return-object v0

    .line 1500
    :catch_0
    move-exception v0

    .line 1501
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 1503
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public animateCamera(Lcom/amap/api/maps/CameraUpdate;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1253
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/amap/api/mapcore/util/b;->animateCameraWithCallback(Lcom/amap/api/maps/CameraUpdate;Lcom/amap/api/maps/AMap$CancelableCallback;)V

    .line 1254
    return-void
.end method

.method public animateCameraWithCallback(Lcom/amap/api/maps/CameraUpdate;Lcom/amap/api/maps/AMap$CancelableCallback;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 1271
    const-wide/16 v0, 0xfa

    invoke-virtual {p0, p1, v0, v1, p2}, Lcom/amap/api/mapcore/util/b;->animateCameraWithDurationAndCallback(Lcom/amap/api/maps/CameraUpdate;JLcom/amap/api/maps/AMap$CancelableCallback;)V

    .line 1273
    return-void
.end method

.method public animateCameraWithDurationAndCallback(Lcom/amap/api/maps/CameraUpdate;JLcom/amap/api/maps/AMap$CancelableCallback;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1277
    if-nez p1, :cond_0

    .line 1284
    :goto_0
    return-void

    .line 1280
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Lcom/amap/api/maps/CameraUpdate;->getCameraUpdateFactoryDelegate()Lcom/autonavi/amap/mapcore/MapMessage;

    move-result-object v0

    invoke-virtual {p0, v0, p2, p3, p4}, Lcom/amap/api/mapcore/util/b;->a(Lcom/autonavi/amap/mapcore/MapMessage;JLcom/amap/api/maps/AMap$CancelableCallback;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1281
    :catch_0
    move-exception v0

    .line 1282
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public b()I
    .locals 1

    .prologue
    .line 298
    iget v0, p0, Lcom/amap/api/mapcore/util/b;->p:I

    return v0
.end method

.method public b(DDLcom/autonavi/amap/mapcore/IPoint;)V
    .locals 5

    .prologue
    .line 2171
    iget-boolean v0, p0, Lcom/amap/api/mapcore/util/b;->aq:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore/util/b;->P:Lcom/autonavi/amap/mapcore/MapProjection;

    if-eqz v0, :cond_0

    .line 2172
    new-instance v0, Lcom/autonavi/amap/mapcore/MapProjection;

    iget-object v1, p0, Lcom/amap/api/mapcore/util/b;->M:Lcom/autonavi/amap/mapcore/MapCore;

    invoke-direct {v0, v1}, Lcom/autonavi/amap/mapcore/MapProjection;-><init>(Lcom/autonavi/amap/mapcore/MapCore;)V

    .line 2173
    invoke-virtual {v0}, Lcom/autonavi/amap/mapcore/MapProjection;->recalculate()V

    .line 2174
    new-instance v1, Lcom/autonavi/amap/mapcore/IPoint;

    invoke-direct {v1}, Lcom/autonavi/amap/mapcore/IPoint;-><init>()V

    .line 2175
    new-instance v2, Lcom/autonavi/amap/mapcore/FPoint;

    invoke-direct {v2}, Lcom/autonavi/amap/mapcore/FPoint;-><init>()V

    .line 2176
    invoke-static {p3, p4, p1, p2, v1}, Lcom/autonavi/amap/mapcore/MapProjection;->lonlat2Geo(DDLcom/autonavi/amap/mapcore/IPoint;)V

    .line 2177
    iget v3, v1, Lcom/autonavi/amap/mapcore/IPoint;->x:I

    iget v1, v1, Lcom/autonavi/amap/mapcore/IPoint;->y:I

    invoke-virtual {v0, v3, v1, v2}, Lcom/autonavi/amap/mapcore/MapProjection;->geo2Map(IILcom/autonavi/amap/mapcore/FPoint;)V

    .line 2178
    iget v1, v2, Lcom/autonavi/amap/mapcore/FPoint;->x:F

    iget v2, v2, Lcom/autonavi/amap/mapcore/FPoint;->y:F

    invoke-virtual {v0, v1, v2, p5}, Lcom/autonavi/amap/mapcore/MapProjection;->map2Win(FFLcom/autonavi/amap/mapcore/IPoint;)V

    .line 2179
    invoke-virtual {v0}, Lcom/autonavi/amap/mapcore/MapProjection;->recycle()V

    .line 2181
    :cond_0
    return-void
.end method

.method public b(I)V
    .locals 1

    .prologue
    .line 2862
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/b;->g:Lcom/amap/api/mapcore/util/es;

    if-eqz v0, :cond_0

    .line 2863
    iget-object v0, p0, Lcom/amap/api/mapcore/util/b;->g:Lcom/amap/api/mapcore/util/es;

    invoke-virtual {v0, p1}, Lcom/amap/api/mapcore/util/es;->b(I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 2867
    :cond_0
    :goto_0
    return-void

    .line 2864
    :catch_0
    move-exception v0

    .line 2865
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public b(IILcom/autonavi/amap/mapcore/DPoint;)V
    .locals 0

    .prologue
    .line 2166
    invoke-static {p1, p2, p3}, Lcom/autonavi/amap/mapcore/MapProjection;->geo2LonLat(IILcom/autonavi/amap/mapcore/DPoint;)V

    .line 2167
    return-void
.end method

.method public b(IILcom/autonavi/amap/mapcore/FPoint;)V
    .locals 1

    .prologue
    .line 2152
    iget-boolean v0, p0, Lcom/amap/api/mapcore/util/b;->aq:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore/util/b;->P:Lcom/autonavi/amap/mapcore/MapProjection;

    if-eqz v0, :cond_0

    .line 2153
    iget-object v0, p0, Lcom/amap/api/mapcore/util/b;->P:Lcom/autonavi/amap/mapcore/MapProjection;

    invoke-virtual {v0, p2, p1, p3}, Lcom/autonavi/amap/mapcore/MapProjection;->geo2Map(IILcom/autonavi/amap/mapcore/FPoint;)V

    .line 2155
    :cond_0
    return-void
.end method

.method public b(IILcom/autonavi/amap/mapcore/IPoint;)V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 2122
    iget-boolean v0, p0, Lcom/amap/api/mapcore/util/b;->aq:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore/util/b;->P:Lcom/autonavi/amap/mapcore/MapProjection;

    if-eqz v0, :cond_0

    .line 2123
    new-instance v0, Lcom/autonavi/amap/mapcore/FPoint;

    invoke-direct {v0}, Lcom/autonavi/amap/mapcore/FPoint;-><init>()V

    .line 2124
    iget-object v1, p0, Lcom/amap/api/mapcore/util/b;->P:Lcom/autonavi/amap/mapcore/MapProjection;

    invoke-virtual {v1, p1, p2, v0}, Lcom/autonavi/amap/mapcore/MapProjection;->geo2Map(IILcom/autonavi/amap/mapcore/FPoint;)V

    .line 2125
    iget-object v1, p0, Lcom/amap/api/mapcore/util/b;->P:Lcom/autonavi/amap/mapcore/MapProjection;

    iget v2, v0, Lcom/autonavi/amap/mapcore/FPoint;->x:F

    iget v0, v0, Lcom/autonavi/amap/mapcore/FPoint;->y:F

    invoke-virtual {v1, v2, v0, p3}, Lcom/autonavi/amap/mapcore/MapProjection;->map2Win(FFLcom/autonavi/amap/mapcore/IPoint;)V

    .line 2127
    :cond_0
    return-void
.end method

.method public b(Landroid/view/MotionEvent;)V
    .locals 10

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 2359
    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/amap/api/mapcore/util/b;->aG:Z

    .line 2360
    iget-object v0, p0, Lcom/amap/api/mapcore/util/b;->e:Lcom/amap/api/mapcore/util/q;

    invoke-virtual {v0, p1}, Lcom/amap/api/mapcore/util/q;->a(Landroid/view/MotionEvent;)Lcom/amap/api/mapcore/util/cr;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/mapcore/util/b;->aF:Lcom/amap/api/mapcore/util/cr;

    .line 2361
    iget-object v0, p0, Lcom/amap/api/mapcore/util/b;->U:Lcom/amap/api/maps/AMap$OnMarkerDragListener;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amap/api/mapcore/util/b;->aF:Lcom/amap/api/mapcore/util/cr;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amap/api/mapcore/util/b;->aF:Lcom/amap/api/mapcore/util/cr;

    .line 2362
    invoke-interface {v0}, Lcom/amap/api/mapcore/util/cr;->isDraggable()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2363
    new-instance v0, Lcom/amap/api/maps/model/Marker;

    iget-object v1, p0, Lcom/amap/api/mapcore/util/b;->aF:Lcom/amap/api/mapcore/util/cr;

    invoke-direct {v0, v1}, Lcom/amap/api/maps/model/Marker;-><init>(Lcom/autonavi/amap/mapcore/interfaces/IMarker;)V

    iput-object v0, p0, Lcom/amap/api/mapcore/util/b;->aE:Lcom/amap/api/maps/model/Marker;

    .line 2364
    iget-object v0, p0, Lcom/amap/api/mapcore/util/b;->aE:Lcom/amap/api/maps/model/Marker;

    invoke-virtual {v0}, Lcom/amap/api/maps/model/Marker;->getPosition()Lcom/amap/api/maps/model/LatLng;

    move-result-object v0

    .line 2365
    iget-object v1, p0, Lcom/amap/api/mapcore/util/b;->aF:Lcom/amap/api/mapcore/util/cr;

    invoke-interface {v1}, Lcom/amap/api/mapcore/util/cr;->b()Lcom/amap/api/maps/model/LatLng;

    move-result-object v7

    .line 2366
    new-instance v6, Lcom/autonavi/amap/mapcore/IPoint;

    invoke-direct {v6}, Lcom/autonavi/amap/mapcore/IPoint;-><init>()V

    .line 2367
    iget-wide v2, v7, Lcom/amap/api/maps/model/LatLng;->latitude:D

    iget-wide v4, v7, Lcom/amap/api/maps/model/LatLng;->longitude:D

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Lcom/amap/api/mapcore/util/b;->b(DDLcom/autonavi/amap/mapcore/IPoint;)V

    .line 2369
    iget v1, v6, Lcom/autonavi/amap/mapcore/IPoint;->y:I

    add-int/lit8 v1, v1, -0x3c

    iput v1, v6, Lcom/autonavi/amap/mapcore/IPoint;->y:I

    .line 2370
    new-instance v1, Lcom/autonavi/amap/mapcore/DPoint;

    invoke-direct {v1}, Lcom/autonavi/amap/mapcore/DPoint;-><init>()V

    .line 2371
    iget v2, v6, Lcom/autonavi/amap/mapcore/IPoint;->x:I

    iget v3, v6, Lcom/autonavi/amap/mapcore/IPoint;->y:I

    invoke-virtual {p0, v2, v3, v1}, Lcom/amap/api/mapcore/util/b;->a(IILcom/autonavi/amap/mapcore/DPoint;)V

    .line 2372
    new-instance v2, Lcom/amap/api/maps/model/LatLng;

    iget-wide v4, v0, Lcom/amap/api/maps/model/LatLng;->latitude:D

    iget-wide v8, v1, Lcom/autonavi/amap/mapcore/DPoint;->y:D

    add-double/2addr v4, v8

    iget-wide v8, v7, Lcom/amap/api/maps/model/LatLng;->latitude:D

    sub-double/2addr v4, v8

    iget-wide v8, v0, Lcom/amap/api/maps/model/LatLng;->longitude:D

    iget-wide v0, v1, Lcom/autonavi/amap/mapcore/DPoint;->x:D

    add-double/2addr v0, v8

    iget-wide v6, v7, Lcom/amap/api/maps/model/LatLng;->longitude:D

    sub-double/2addr v0, v6

    invoke-direct {v2, v4, v5, v0, v1}, Lcom/amap/api/maps/model/LatLng;-><init>(DD)V

    .line 2375
    iget-object v0, p0, Lcom/amap/api/mapcore/util/b;->aE:Lcom/amap/api/maps/model/Marker;

    invoke-virtual {v0, v2}, Lcom/amap/api/maps/model/Marker;->setPosition(Lcom/amap/api/maps/model/LatLng;)V

    .line 2376
    iget-object v0, p0, Lcom/amap/api/mapcore/util/b;->e:Lcom/amap/api/mapcore/util/q;

    iget-object v1, p0, Lcom/amap/api/mapcore/util/b;->aF:Lcom/amap/api/mapcore/util/cr;

    invoke-virtual {v0, v1}, Lcom/amap/api/mapcore/util/q;->b(Lcom/amap/api/mapcore/util/cu;)V

    .line 2377
    iget-object v0, p0, Lcom/amap/api/mapcore/util/b;->U:Lcom/amap/api/maps/AMap$OnMarkerDragListener;

    iget-object v1, p0, Lcom/amap/api/mapcore/util/b;->aE:Lcom/amap/api/maps/model/Marker;

    invoke-interface {v0, v1}, Lcom/amap/api/maps/AMap$OnMarkerDragListener;->onMarkerDragStart(Lcom/amap/api/maps/model/Marker;)V

    .line 2378
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/amap/api/mapcore/util/b;->aD:Z

    .line 2391
    :cond_0
    :goto_0
    return-void

    .line 2380
    :cond_1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/b;->aa:Lcom/amap/api/maps/AMap$OnMapLongClickListener;

    if-eqz v0, :cond_0

    .line 2381
    new-instance v0, Lcom/autonavi/amap/mapcore/DPoint;

    invoke-direct {v0}, Lcom/autonavi/amap/mapcore/DPoint;-><init>()V

    .line 2382
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {p0, v1, v2, v0}, Lcom/amap/api/mapcore/util/b;->a(IILcom/autonavi/amap/mapcore/DPoint;)V

    .line 2383
    iget-object v1, p0, Lcom/amap/api/mapcore/util/b;->aa:Lcom/amap/api/maps/AMap$OnMapLongClickListener;

    new-instance v2, Lcom/amap/api/maps/model/LatLng;

    iget-wide v4, v0, Lcom/autonavi/amap/mapcore/DPoint;->y:D

    iget-wide v6, v0, Lcom/autonavi/amap/mapcore/DPoint;->x:D

    invoke-direct {v2, v4, v5, v6, v7}, Lcom/amap/api/maps/model/LatLng;-><init>(DD)V

    invoke-interface {v1, v2}, Lcom/amap/api/maps/AMap$OnMapLongClickListener;->onMapLongClick(Lcom/amap/api/maps/model/LatLng;)V

    .line 2384
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/amap/api/mapcore/util/b;->aH:Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2387
    :catch_0
    move-exception v0

    .line 2388
    const-string/jumbo v1, "AMapDelegateImp"

    const-string/jumbo v2, "onLongPress"

    invoke-static {v0, v1, v2}, Lcom/amap/api/mapcore/util/ft;->b(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 2389
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public b(Lcom/autonavi/amap/mapcore/MapMessage;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 1261
    const-wide/16 v0, 0xfa

    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/amap/api/mapcore/util/b;->a(Lcom/autonavi/amap/mapcore/MapMessage;JLcom/amap/api/maps/AMap$CancelableCallback;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 1265
    :goto_0
    return-void

    .line 1262
    :catch_0
    move-exception v0

    .line 1263
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public b(Z)V
    .locals 1

    .prologue
    .line 603
    iget-object v0, p0, Lcom/amap/api/mapcore/util/b;->au:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    .line 604
    iget-object v0, p0, Lcom/amap/api/mapcore/util/b;->g:Lcom/amap/api/mapcore/util/es;

    invoke-virtual {v0, p1}, Lcom/amap/api/mapcore/util/es;->a(Z)V

    .line 605
    :cond_0
    return-void
.end method

.method public c()Lcom/autonavi/amap/mapcore/MapProjection;
    .locals 1

    .prologue
    .line 302
    iget-object v0, p0, Lcom/amap/api/mapcore/util/b;->P:Lcom/autonavi/amap/mapcore/MapProjection;

    if-nez v0, :cond_0

    .line 303
    iget-object v0, p0, Lcom/amap/api/mapcore/util/b;->M:Lcom/autonavi/amap/mapcore/MapCore;

    invoke-virtual {v0}, Lcom/autonavi/amap/mapcore/MapCore;->getMapstate()Lcom/autonavi/amap/mapcore/MapProjection;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/mapcore/util/b;->P:Lcom/autonavi/amap/mapcore/MapProjection;

    .line 305
    :cond_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/b;->P:Lcom/autonavi/amap/mapcore/MapProjection;

    return-object v0
.end method

.method public c(I)V
    .locals 1

    .prologue
    .line 2872
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/b;->g:Lcom/amap/api/mapcore/util/es;

    if-eqz v0, :cond_0

    .line 2873
    iget-object v0, p0, Lcom/amap/api/mapcore/util/b;->g:Lcom/amap/api/mapcore/util/es;

    invoke-virtual {v0, p1}, Lcom/amap/api/mapcore/util/es;->c(I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 2877
    :cond_0
    :goto_0
    return-void

    .line 2874
    :catch_0
    move-exception v0

    .line 2875
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public c(Z)V
    .locals 1

    .prologue
    .line 734
    iget-object v0, p0, Lcom/amap/api/mapcore/util/b;->au:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    .line 735
    iget-object v0, p0, Lcom/amap/api/mapcore/util/b;->g:Lcom/amap/api/mapcore/util/es;

    invoke-virtual {v0, p1}, Lcom/amap/api/mapcore/util/es;->c(Z)V

    .line 736
    :cond_0
    return-void
.end method

.method public c(Landroid/view/MotionEvent;)Z
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x1

    .line 2396
    iput-boolean v1, p0, Lcom/amap/api/mapcore/util/b;->aG:Z

    .line 2397
    iget-boolean v0, p0, Lcom/amap/api/mapcore/util/b;->aH:Z

    if-eqz v0, :cond_1

    .line 2398
    iput-boolean v1, p0, Lcom/amap/api/mapcore/util/b;->aH:Z

    .line 2424
    :cond_0
    :goto_0
    return v3

    .line 2403
    :cond_1
    :try_start_0
    invoke-direct {p0, p1}, Lcom/amap/api/mapcore/util/b;->j(Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2408
    invoke-direct {p0, p1}, Lcom/amap/api/mapcore/util/b;->i(Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2413
    invoke-direct {p0, p1}, Lcom/amap/api/mapcore/util/b;->h(Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2418
    invoke-direct {p0, p1}, Lcom/amap/api/mapcore/util/b;->f(Landroid/view/MotionEvent;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2419
    :catch_0
    move-exception v0

    .line 2420
    const-string/jumbo v1, "AMapDelegateImp"

    const-string/jumbo v2, "onSingleTapUp"

    invoke-static {v0, v1, v2}, Lcom/amap/api/mapcore/util/ft;->b(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 2421
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public calculateZoomToSpanLevel(IIIILcom/amap/api/maps/model/LatLng;Lcom/amap/api/maps/model/LatLng;)Landroid/util/Pair;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIII",
            "Lcom/amap/api/maps/model/LatLng;",
            "Lcom/amap/api/maps/model/LatLng;",
            ")",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/Float;",
            "Lcom/amap/api/maps/model/LatLng;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 3622
    invoke-virtual {p0}, Lcom/amap/api/mapcore/util/b;->getMapConfig()Lcom/autonavi/amap/mapcore/MapConfig;

    move-result-object v1

    .line 3623
    if-eqz p5, :cond_1

    if-eqz p6, :cond_1

    iget-boolean v0, p0, Lcom/amap/api/mapcore/util/b;->aq:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amap/api/mapcore/util/b;->au:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1

    .line 3624
    new-instance v2, Lcom/amap/api/maps/model/LatLngBounds$Builder;

    invoke-direct {v2}, Lcom/amap/api/maps/model/LatLngBounds$Builder;-><init>()V

    .line 3625
    invoke-virtual {v2, p5}, Lcom/amap/api/maps/model/LatLngBounds$Builder;->include(Lcom/amap/api/maps/model/LatLng;)Lcom/amap/api/maps/model/LatLngBounds$Builder;

    .line 3626
    invoke-virtual {v2, p6}, Lcom/amap/api/maps/model/LatLngBounds$Builder;->include(Lcom/amap/api/maps/model/LatLng;)Lcom/amap/api/maps/model/LatLngBounds$Builder;

    .line 3627
    new-instance v0, Lcom/autonavi/amap/mapcore/MapProjection;

    iget-object v3, p0, Lcom/amap/api/mapcore/util/b;->M:Lcom/autonavi/amap/mapcore/MapCore;

    invoke-direct {v0, v3}, Lcom/autonavi/amap/mapcore/MapProjection;-><init>(Lcom/autonavi/amap/mapcore/MapCore;)V

    .line 3629
    invoke-virtual {v2}, Lcom/amap/api/maps/model/LatLngBounds$Builder;->build()Lcom/amap/api/maps/model/LatLngBounds;

    move-result-object v6

    .line 3630
    invoke-virtual {p0}, Lcom/amap/api/mapcore/util/b;->getMapWidth()I

    move-result v7

    invoke-virtual {p0}, Lcom/amap/api/mapcore/util/b;->getMapHeight()I

    move-result v8

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    .line 3628
    invoke-static/range {v0 .. v8}, Lcom/amap/api/mapcore/util/en;->a(Lcom/autonavi/amap/mapcore/MapProjection;Lcom/autonavi/amap/mapcore/MapConfig;IIIILcom/amap/api/maps/model/LatLngBounds;II)Landroid/util/Pair;

    move-result-object v1

    .line 3631
    invoke-virtual {v0}, Lcom/autonavi/amap/mapcore/MapProjection;->recycle()V

    .line 3632
    if-eqz v1, :cond_0

    .line 3633
    new-instance v2, Lcom/autonavi/amap/mapcore/DPoint;

    invoke-direct {v2}, Lcom/autonavi/amap/mapcore/DPoint;-><init>()V

    .line 3634
    iget-object v0, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Lcom/autonavi/amap/mapcore/IPoint;

    iget v3, v0, Lcom/autonavi/amap/mapcore/IPoint;->x:I

    iget-object v0, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Lcom/autonavi/amap/mapcore/IPoint;

    iget v0, v0, Lcom/autonavi/amap/mapcore/IPoint;->y:I

    invoke-static {v3, v0, v2}, Lcom/autonavi/amap/mapcore/MapProjection;->geo2LonLat(IILcom/autonavi/amap/mapcore/DPoint;)V

    .line 3636
    new-instance v0, Landroid/util/Pair;

    iget-object v1, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    new-instance v3, Lcom/amap/api/maps/model/LatLng;

    iget-wide v4, v2, Lcom/autonavi/amap/mapcore/DPoint;->y:D

    iget-wide v6, v2, Lcom/autonavi/amap/mapcore/DPoint;->x:D

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/amap/api/maps/model/LatLng;-><init>(DD)V

    invoke-direct {v0, v1, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 3643
    :goto_0
    return-object v0

    .line 3639
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 3641
    :cond_1
    new-instance v2, Lcom/autonavi/amap/mapcore/DPoint;

    invoke-direct {v2}, Lcom/autonavi/amap/mapcore/DPoint;-><init>()V

    .line 3642
    invoke-virtual {v1}, Lcom/autonavi/amap/mapcore/MapConfig;->getS_x()I

    move-result v0

    invoke-virtual {v1}, Lcom/autonavi/amap/mapcore/MapConfig;->getS_y()I

    move-result v3

    invoke-static {v0, v3, v2}, Lcom/autonavi/amap/mapcore/MapProjection;->geo2LonLat(IILcom/autonavi/amap/mapcore/DPoint;)V

    .line 3643
    new-instance v0, Landroid/util/Pair;

    invoke-virtual {v1}, Lcom/autonavi/amap/mapcore/MapConfig;->getS_z()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    new-instance v3, Lcom/amap/api/maps/model/LatLng;

    iget-wide v4, v2, Lcom/autonavi/amap/mapcore/DPoint;->y:D

    iget-wide v6, v2, Lcom/autonavi/amap/mapcore/DPoint;->x:D

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/amap/api/maps/model/LatLng;-><init>(DD)V

    invoke-direct {v0, v1, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public clear()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 1509
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, v0}, Lcom/amap/api/mapcore/util/b;->clear(Z)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 1514
    :goto_0
    return-void

    .line 1510
    :catch_0
    move-exception v0

    .line 1511
    const-string/jumbo v1, "AMapDelegateImp"

    const-string/jumbo v2, "clear"

    invoke-static {v0, v1, v2}, Lcom/amap/api/mapcore/util/ft;->b(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 1512
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public clear(Z)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v0, 0x0

    .line 1519
    :try_start_0
    invoke-virtual {p0}, Lcom/amap/api/mapcore/util/b;->n()V

    .line 1522
    iget-object v1, p0, Lcom/amap/api/mapcore/util/b;->al:Lcom/amap/api/mapcore/util/da;

    if-eqz v1, :cond_2

    .line 1523
    if-eqz p1, :cond_1

    .line 1524
    iget-object v0, p0, Lcom/amap/api/mapcore/util/b;->al:Lcom/amap/api/mapcore/util/da;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/da;->c()Ljava/lang/String;

    move-result-object v1

    .line 1525
    iget-object v0, p0, Lcom/amap/api/mapcore/util/b;->al:Lcom/amap/api/mapcore/util/da;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/da;->d()Ljava/lang/String;

    move-result-object v0

    .line 1530
    :goto_0
    iget-object v2, p0, Lcom/amap/api/mapcore/util/b;->b:Lcom/amap/api/mapcore/util/j;

    invoke-virtual {v2, v0}, Lcom/amap/api/mapcore/util/j;->b(Ljava/lang/String;)V

    .line 1531
    iget-object v0, p0, Lcom/amap/api/mapcore/util/b;->f:Lcom/amap/api/mapcore/util/v;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/v;->b()V

    .line 1532
    iget-object v0, p0, Lcom/amap/api/mapcore/util/b;->e:Lcom/amap/api/mapcore/util/q;

    invoke-virtual {v0, v1}, Lcom/amap/api/mapcore/util/q;->a(Ljava/lang/String;)V

    .line 1533
    iget-object v0, p0, Lcom/amap/api/mapcore/util/b;->g:Lcom/amap/api/mapcore/util/es;

    if-eqz v0, :cond_0

    .line 1534
    iget-object v0, p0, Lcom/amap/api/mapcore/util/b;->g:Lcom/amap/api/mapcore/util/es;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/es;->k()V

    .line 1535
    :cond_0
    invoke-direct {p0}, Lcom/amap/api/mapcore/util/b;->K()V

    .line 1543
    :goto_1
    return-void

    .line 1527
    :cond_1
    iget-object v1, p0, Lcom/amap/api/mapcore/util/b;->al:Lcom/amap/api/mapcore/util/da;

    invoke-virtual {v1}, Lcom/amap/api/mapcore/util/da;->e()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    move-object v1, v0

    goto :goto_0

    .line 1536
    :catch_0
    move-exception v0

    .line 1537
    const-string/jumbo v1, "AMapDelegateImp"

    const-string/jumbo v2, "clear"

    invoke-static {v0, v1, v2}, Lcom/amap/api/mapcore/util/ft;->b(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 1541
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1
.end method

.method public d()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v1, 0x1

    .line 331
    iget v0, p0, Lcom/amap/api/mapcore/util/b;->u:I

    if-ne v0, v1, :cond_0

    .line 365
    :goto_0
    return-void

    .line 333
    :cond_0
    iput v1, p0, Lcom/amap/api/mapcore/util/b;->u:I

    .line 334
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/amap/api/mapcore/util/b;->v:Z

    .line 335
    iget-boolean v0, p0, Lcom/amap/api/mapcore/util/b;->aq:Z

    if-nez v0, :cond_1

    .line 336
    new-instance v0, Lcom/amap/api/mapcore/util/b$1;

    invoke-direct {v0, p0}, Lcom/amap/api/mapcore/util/b$1;-><init>(Lcom/amap/api/mapcore/util/b;)V

    invoke-virtual {p0, v0}, Lcom/amap/api/mapcore/util/b;->a(Ljava/lang/Runnable;)V

    .line 360
    :cond_1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/b;->d:Lcom/amap/api/mapcore/util/m;

    instance-of v0, v0, Lcom/amap/api/mapcore/util/c;

    if-eqz v0, :cond_2

    .line 361
    iget-object v0, p0, Lcom/amap/api/mapcore/util/b;->d:Lcom/amap/api/mapcore/util/m;

    check-cast v0, Lcom/amap/api/mapcore/util/c;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/c;->onResume()V

    goto :goto_0

    .line 363
    :cond_2
    iget-object v0, p0, Lcom/amap/api/mapcore/util/b;->d:Lcom/amap/api/mapcore/util/m;

    check-cast v0, Lcom/amap/api/mapcore/util/d;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/d;->c()V

    goto :goto_0
.end method

.method public d(I)V
    .locals 1

    .prologue
    .line 2882
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/b;->g:Lcom/amap/api/mapcore/util/es;

    if-eqz v0, :cond_0

    .line 2883
    iget-object v0, p0, Lcom/amap/api/mapcore/util/b;->g:Lcom/amap/api/mapcore/util/es;

    invoke-virtual {v0, p1}, Lcom/amap/api/mapcore/util/es;->d(I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 2887
    :cond_0
    :goto_0
    return-void

    .line 2884
    :catch_0
    move-exception v0

    .line 2885
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public d(Z)V
    .locals 1

    .prologue
    .line 740
    iget-object v0, p0, Lcom/amap/api/mapcore/util/b;->au:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    .line 741
    iget-object v0, p0, Lcom/amap/api/mapcore/util/b;->g:Lcom/amap/api/mapcore/util/es;

    invoke-virtual {v0, p1}, Lcom/amap/api/mapcore/util/es;->d(Z)V

    .line 742
    :cond_0
    return-void
.end method

.method public d(Landroid/view/MotionEvent;)Z
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v4, 0x1

    .line 2565
    iget-object v0, p0, Lcom/amap/api/mapcore/util/b;->P:Lcom/autonavi/amap/mapcore/MapProjection;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore/util/b;->P:Lcom/autonavi/amap/mapcore/MapProjection;

    invoke-virtual {v0}, Lcom/autonavi/amap/mapcore/MapProjection;->getMapZoomer()F

    move-result v0

    .line 2566
    :goto_0
    invoke-virtual {p0}, Lcom/amap/api/mapcore/util/b;->getMaxZoomLevel()F

    move-result v1

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_1

    .line 2591
    :goto_1
    return v4

    .line 2565
    :cond_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/b;->ay:Lcom/autonavi/amap/mapcore/MapConfig;

    invoke-virtual {v0}, Lcom/autonavi/amap/mapcore/MapConfig;->getS_z()F

    move-result v0

    goto :goto_0

    .line 2569
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 2570
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    .line 2571
    float-to-int v1, v0

    .line 2572
    float-to-int v0, v2

    .line 2576
    :try_start_0
    iget-object v2, p0, Lcom/amap/api/mapcore/util/b;->ai:Lcom/amap/api/mapcore/util/o;

    invoke-interface {v2}, Lcom/amap/api/mapcore/util/o;->isZoomInByScreenCenter()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2577
    invoke-virtual {p0}, Lcom/amap/api/mapcore/util/b;->getMapWidth()I

    move-result v0

    div-int/lit8 v1, v0, 0x2

    .line 2578
    invoke-virtual {p0}, Lcom/amap/api/mapcore/util/b;->getMapHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    .line 2583
    :cond_2
    const/high16 v2, 0x3f800000    # 1.0f

    new-instance v3, Landroid/graphics/Point;

    invoke-direct {v3, v1, v0}, Landroid/graphics/Point;-><init>(II)V

    invoke-static {v2, v3}, Lcom/amap/api/mapcore/util/ag;->a(FLandroid/graphics/Point;)Lcom/amap/api/mapcore/util/af;

    move-result-object v0

    .line 2586
    invoke-virtual {p0, v0}, Lcom/amap/api/mapcore/util/b;->b(Lcom/autonavi/amap/mapcore/MapMessage;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 2587
    :catch_0
    move-exception v0

    .line 2588
    const-string/jumbo v1, "AMapDelegateImp"

    const-string/jumbo v2, "onDoubleTap"

    invoke-static {v0, v1, v2}, Lcom/amap/api/mapcore/util/ft;->b(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 2589
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1
.end method

.method public destroy()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 630
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/mapcore/util/b;->au:Ljava/lang/Boolean;

    .line 633
    :try_start_0
    invoke-direct {p0}, Lcom/amap/api/mapcore/util/b;->M()V

    .line 634
    iget-object v0, p0, Lcom/amap/api/mapcore/util/b;->s:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 635
    iget-object v0, p0, Lcom/amap/api/mapcore/util/b;->s:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 636
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/api/mapcore/util/b;->s:Landroid/graphics/Bitmap;

    .line 638
    :cond_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/b;->r:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    .line 639
    iget-object v0, p0, Lcom/amap/api/mapcore/util/b;->r:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 640
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/api/mapcore/util/b;->r:Landroid/graphics/Bitmap;

    .line 642
    :cond_1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/b;->n:Landroid/os/Handler;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/amap/api/mapcore/util/b;->m:Ljava/lang/Runnable;

    if-eqz v0, :cond_2

    .line 643
    iget-object v0, p0, Lcom/amap/api/mapcore/util/b;->n:Landroid/os/Handler;

    iget-object v1, p0, Lcom/amap/api/mapcore/util/b;->m:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 644
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/api/mapcore/util/b;->m:Ljava/lang/Runnable;

    .line 647
    :cond_2
    iget-object v0, p0, Lcom/amap/api/mapcore/util/b;->b:Lcom/amap/api/mapcore/util/j;

    if-eqz v0, :cond_3

    .line 648
    iget-object v0, p0, Lcom/amap/api/mapcore/util/b;->b:Lcom/amap/api/mapcore/util/j;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/j;->b()V

    .line 650
    :cond_3
    iget-object v0, p0, Lcom/amap/api/mapcore/util/b;->e:Lcom/amap/api/mapcore/util/q;

    if-eqz v0, :cond_4

    .line 651
    iget-object v0, p0, Lcom/amap/api/mapcore/util/b;->e:Lcom/amap/api/mapcore/util/q;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/q;->e()V

    .line 654
    :cond_4
    iget-object v0, p0, Lcom/amap/api/mapcore/util/b;->f:Lcom/amap/api/mapcore/util/v;

    if-eqz v0, :cond_5

    .line 655
    iget-object v0, p0, Lcom/amap/api/mapcore/util/b;->f:Lcom/amap/api/mapcore/util/v;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/v;->f()V

    .line 658
    :cond_5
    invoke-direct {p0}, Lcom/amap/api/mapcore/util/b;->V()V

    .line 660
    iget-object v0, p0, Lcom/amap/api/mapcore/util/b;->aI:Ljava/lang/Thread;

    if-eqz v0, :cond_6

    .line 661
    iget-object v0, p0, Lcom/amap/api/mapcore/util/b;->aI:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 662
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/api/mapcore/util/b;->aI:Ljava/lang/Thread;

    .line 664
    :cond_6
    iget-object v0, p0, Lcom/amap/api/mapcore/util/b;->O:Lcom/amap/api/mapcore/util/a;

    if-eqz v0, :cond_7

    .line 665
    iget-object v0, p0, Lcom/amap/api/mapcore/util/b;->O:Lcom/amap/api/mapcore/util/a;

    iget-object v1, p0, Lcom/amap/api/mapcore/util/b;->M:Lcom/autonavi/amap/mapcore/MapCore;

    invoke-virtual {v0, v1}, Lcom/amap/api/mapcore/util/a;->OnMapDestory(Lcom/autonavi/amap/mapcore/MapCore;)V

    .line 666
    iget-object v0, p0, Lcom/amap/api/mapcore/util/b;->M:Lcom/autonavi/amap/mapcore/MapCore;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/autonavi/amap/mapcore/MapCore;->setMapCallback(Lcom/autonavi/amap/mapcore/IMapCallback;)V

    .line 667
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/api/mapcore/util/b;->O:Lcom/amap/api/mapcore/util/a;

    .line 670
    :cond_7
    iget-object v0, p0, Lcom/amap/api/mapcore/util/b;->M:Lcom/autonavi/amap/mapcore/MapCore;

    if-eqz v0, :cond_8

    .line 671
    new-instance v0, Lcom/amap/api/mapcore/util/b$15;

    invoke-direct {v0, p0}, Lcom/amap/api/mapcore/util/b$15;-><init>(Lcom/amap/api/mapcore/util/b;)V

    invoke-virtual {p0, v0}, Lcom/amap/api/mapcore/util/b;->a(Ljava/lang/Runnable;)V

    .line 683
    const-wide/16 v0, 0xc8

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V

    .line 686
    :cond_8
    iget-object v0, p0, Lcom/amap/api/mapcore/util/b;->g:Lcom/amap/api/mapcore/util/es;

    if-eqz v0, :cond_9

    .line 687
    iget-object v0, p0, Lcom/amap/api/mapcore/util/b;->g:Lcom/amap/api/mapcore/util/es;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/es;->j()V

    .line 688
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/api/mapcore/util/b;->g:Lcom/amap/api/mapcore/util/es;

    .line 691
    :cond_9
    iget-object v0, p0, Lcom/amap/api/mapcore/util/b;->al:Lcom/amap/api/mapcore/util/da;

    if-eqz v0, :cond_a

    .line 692
    iget-object v0, p0, Lcom/amap/api/mapcore/util/b;->al:Lcom/amap/api/mapcore/util/da;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/da;->b()V

    .line 693
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/api/mapcore/util/b;->al:Lcom/amap/api/mapcore/util/da;

    .line 695
    :cond_a
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/api/mapcore/util/b;->aj:Lcom/amap/api/maps/LocationSource;

    .line 696
    invoke-direct {p0}, Lcom/amap/api/mapcore/util/b;->F()V

    .line 697
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/api/mapcore/util/b;->C:Lcom/amap/api/maps/model/MyTrafficStyle;

    .line 699
    invoke-static {}, Lcom/amap/api/mapcore/util/ft;->b()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 709
    :goto_0
    return-void

    .line 702
    :catch_0
    move-exception v0

    .line 703
    const-string/jumbo v1, "AMapDelegateImp"

    const-string/jumbo v2, "destroy"

    invoke-static {v0, v1, v2}, Lcom/amap/api/mapcore/util/ft;->b(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 707
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public e(I)F
    .locals 1

    .prologue
    .line 2892
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/b;->g:Lcom/amap/api/mapcore/util/es;

    if-eqz v0, :cond_0

    .line 2893
    iget-object v0, p0, Lcom/amap/api/mapcore/util/b;->g:Lcom/amap/api/mapcore/util/es;

    invoke-virtual {v0, p1}, Lcom/amap/api/mapcore/util/es;->e(I)F
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 2897
    :goto_0
    return v0

    .line 2894
    :catch_0
    move-exception v0

    .line 2895
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 2897
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public e()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v1, 0x1

    .line 372
    iget v0, p0, Lcom/amap/api/mapcore/util/b;->u:I

    if-eq v0, v1, :cond_0

    .line 410
    :goto_0
    return-void

    .line 374
    :cond_0
    const/4 v0, -0x1

    iput v0, p0, Lcom/amap/api/mapcore/util/b;->u:I

    .line 376
    invoke-direct {p0}, Lcom/amap/api/mapcore/util/b;->B()V

    .line 377
    iput-boolean v1, p0, Lcom/amap/api/mapcore/util/b;->v:Z

    .line 381
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/b;->g:Lcom/amap/api/mapcore/util/es;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/es;->c()Lcom/amap/api/mapcore/util/eo;

    move-result-object v0

    .line 382
    if-eqz v0, :cond_1

    .line 386
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/amap/api/mapcore/util/eo;->a(Z)V

    .line 393
    :cond_1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/b;->O:Lcom/amap/api/mapcore/util/a;

    if-eqz v0, :cond_2

    .line 394
    iget-object v0, p0, Lcom/amap/api/mapcore/util/b;->O:Lcom/amap/api/mapcore/util/a;

    iget-object v1, p0, Lcom/amap/api/mapcore/util/b;->M:Lcom/autonavi/amap/mapcore/MapCore;

    invoke-virtual {v0, v1}, Lcom/amap/api/mapcore/util/a;->destoryMap(Lcom/autonavi/amap/mapcore/MapCore;)V

    .line 396
    :cond_2
    invoke-direct {p0}, Lcom/amap/api/mapcore/util/b;->M()V

    .line 399
    iget-object v0, p0, Lcom/amap/api/mapcore/util/b;->d:Lcom/amap/api/mapcore/util/m;

    instance-of v0, v0, Lcom/amap/api/mapcore/util/c;

    if-eqz v0, :cond_3

    .line 400
    iget-object v0, p0, Lcom/amap/api/mapcore/util/b;->d:Lcom/amap/api/mapcore/util/m;

    check-cast v0, Lcom/amap/api/mapcore/util/c;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/c;->onPause()V

    .line 405
    :goto_1
    invoke-direct {p0}, Lcom/amap/api/mapcore/util/b;->D()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 406
    :catch_0
    move-exception v0

    .line 407
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 402
    :cond_3
    :try_start_1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/b;->d:Lcom/amap/api/mapcore/util/m;

    check-cast v0, Lcom/amap/api/mapcore/util/d;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/d;->b()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method public e(Z)V
    .locals 1

    .prologue
    .line 770
    iget-object v0, p0, Lcom/amap/api/mapcore/util/b;->au:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    .line 771
    iget-object v0, p0, Lcom/amap/api/mapcore/util/b;->g:Lcom/amap/api/mapcore/util/es;

    invoke-virtual {v0, p1}, Lcom/amap/api/mapcore/util/es;->e(Z)V

    .line 772
    :cond_0
    return-void
.end method

.method public f(Z)Lcom/amap/api/maps/model/CameraPosition;
    .locals 8

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 2201
    iget-boolean v0, p0, Lcom/amap/api/mapcore/util/b;->v:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/amap/api/mapcore/util/b;->P:Lcom/autonavi/amap/mapcore/MapProjection;

    if-eqz v0, :cond_1

    .line 2203
    if-eqz p1, :cond_0

    .line 2204
    new-instance v0, Lcom/autonavi/amap/mapcore/DPoint;

    invoke-direct {v0}, Lcom/autonavi/amap/mapcore/DPoint;-><init>()V

    .line 2205
    iget v1, p0, Lcom/amap/api/mapcore/util/b;->A:I

    iget v2, p0, Lcom/amap/api/mapcore/util/b;->B:I

    invoke-virtual {p0, v1, v2, v0}, Lcom/amap/api/mapcore/util/b;->a(IILcom/autonavi/amap/mapcore/DPoint;)V

    .line 2206
    new-instance v1, Lcom/amap/api/maps/model/LatLng;

    iget-wide v2, v0, Lcom/autonavi/amap/mapcore/DPoint;->y:D

    iget-wide v4, v0, Lcom/autonavi/amap/mapcore/DPoint;->x:D

    const/4 v6, 0x0

    invoke-direct/range {v1 .. v6}, Lcom/amap/api/maps/model/LatLng;-><init>(DDZ)V

    .line 2210
    :goto_0
    invoke-static {}, Lcom/amap/api/maps/model/CameraPosition;->builder()Lcom/amap/api/maps/model/CameraPosition$Builder;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/amap/api/maps/model/CameraPosition$Builder;->target(Lcom/amap/api/maps/model/LatLng;)Lcom/amap/api/maps/model/CameraPosition$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/amap/api/mapcore/util/b;->P:Lcom/autonavi/amap/mapcore/MapProjection;

    .line 2211
    invoke-virtual {v1}, Lcom/autonavi/amap/mapcore/MapProjection;->getMapAngle()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/amap/api/maps/model/CameraPosition$Builder;->bearing(F)Lcom/amap/api/maps/model/CameraPosition$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/amap/api/mapcore/util/b;->P:Lcom/autonavi/amap/mapcore/MapProjection;

    .line 2212
    invoke-virtual {v1}, Lcom/autonavi/amap/mapcore/MapProjection;->getCameraHeaderAngle()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/amap/api/maps/model/CameraPosition$Builder;->tilt(F)Lcom/amap/api/maps/model/CameraPosition$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/amap/api/mapcore/util/b;->P:Lcom/autonavi/amap/mapcore/MapProjection;

    .line 2213
    invoke-virtual {v1}, Lcom/autonavi/amap/mapcore/MapProjection;->getMapZoomer()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/amap/api/maps/model/CameraPosition$Builder;->zoom(F)Lcom/amap/api/maps/model/CameraPosition$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amap/api/maps/model/CameraPosition$Builder;->build()Lcom/amap/api/maps/model/CameraPosition;

    move-result-object v0

    .line 2220
    :goto_1
    return-object v0

    .line 2208
    :cond_0
    invoke-direct {p0}, Lcom/amap/api/mapcore/util/b;->O()Lcom/amap/api/maps/model/LatLng;

    move-result-object v1

    goto :goto_0

    .line 2215
    :cond_1
    new-instance v0, Lcom/autonavi/amap/mapcore/DPoint;

    invoke-direct {v0}, Lcom/autonavi/amap/mapcore/DPoint;-><init>()V

    .line 2216
    iget-object v1, p0, Lcom/amap/api/mapcore/util/b;->ay:Lcom/autonavi/amap/mapcore/MapConfig;

    invoke-virtual {v1}, Lcom/autonavi/amap/mapcore/MapConfig;->getS_x()I

    move-result v1

    iget-object v2, p0, Lcom/amap/api/mapcore/util/b;->ay:Lcom/autonavi/amap/mapcore/MapConfig;

    invoke-virtual {v2}, Lcom/autonavi/amap/mapcore/MapConfig;->getS_y()I

    move-result v2

    invoke-virtual {p0, v1, v2, v0}, Lcom/amap/api/mapcore/util/b;->b(IILcom/autonavi/amap/mapcore/DPoint;)V

    .line 2217
    invoke-static {}, Lcom/amap/api/maps/model/CameraPosition;->builder()Lcom/amap/api/maps/model/CameraPosition$Builder;

    move-result-object v1

    new-instance v2, Lcom/amap/api/maps/model/LatLng;

    iget-wide v4, v0, Lcom/autonavi/amap/mapcore/DPoint;->y:D

    iget-wide v6, v0, Lcom/autonavi/amap/mapcore/DPoint;->x:D

    invoke-direct {v2, v4, v5, v6, v7}, Lcom/amap/api/maps/model/LatLng;-><init>(DD)V

    invoke-virtual {v1, v2}, Lcom/amap/api/maps/model/CameraPosition$Builder;->target(Lcom/amap/api/maps/model/LatLng;)Lcom/amap/api/maps/model/CameraPosition$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/amap/api/mapcore/util/b;->ay:Lcom/autonavi/amap/mapcore/MapConfig;

    .line 2218
    invoke-virtual {v1}, Lcom/autonavi/amap/mapcore/MapConfig;->getS_r()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/amap/api/maps/model/CameraPosition$Builder;->bearing(F)Lcom/amap/api/maps/model/CameraPosition$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/amap/api/mapcore/util/b;->ay:Lcom/autonavi/amap/mapcore/MapConfig;

    .line 2219
    invoke-virtual {v1}, Lcom/autonavi/amap/mapcore/MapConfig;->getS_c()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/amap/api/maps/model/CameraPosition$Builder;->tilt(F)Lcom/amap/api/maps/model/CameraPosition$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/amap/api/mapcore/util/b;->ay:Lcom/autonavi/amap/mapcore/MapConfig;

    .line 2220
    invoke-virtual {v1}, Lcom/autonavi/amap/mapcore/MapConfig;->getS_z()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/amap/api/maps/model/CameraPosition$Builder;->zoom(F)Lcom/amap/api/maps/model/CameraPosition$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amap/api/maps/model/CameraPosition$Builder;->build()Lcom/amap/api/maps/model/CameraPosition;

    move-result-object v0

    goto :goto_1
.end method

.method public f(I)V
    .locals 1

    .prologue
    .line 2913
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/b;->g:Lcom/amap/api/mapcore/util/es;

    if-eqz v0, :cond_0

    .line 2914
    iget-object v0, p0, Lcom/amap/api/mapcore/util/b;->g:Lcom/amap/api/mapcore/util/es;

    invoke-virtual {v0, p1}, Lcom/amap/api/mapcore/util/es;->a(I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 2918
    :cond_0
    :goto_0
    return-void

    .line 2915
    :catch_0
    move-exception v0

    .line 2916
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public f()Z
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 613
    iget-object v0, p0, Lcom/amap/api/mapcore/util/b;->P:Lcom/autonavi/amap/mapcore/MapProjection;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore/util/b;->P:Lcom/autonavi/amap/mapcore/MapProjection;

    invoke-virtual {v0}, Lcom/autonavi/amap/mapcore/MapProjection;->getMapZoomer()F

    move-result v0

    const/high16 v1, 0x41880000    # 17.0f

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore/util/b;->i:Lcom/amap/api/mapcore/util/aq;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore/util/b;->i:Lcom/amap/api/mapcore/util/aq;

    iget-object v0, v0, Lcom/amap/api/mapcore/util/aq;->g:Lcom/autonavi/amap/mapcore/IPoint;

    if-eqz v0, :cond_0

    .line 615
    new-instance v0, Lcom/autonavi/amap/mapcore/IPoint;

    invoke-direct {v0}, Lcom/autonavi/amap/mapcore/IPoint;-><init>()V

    .line 616
    iget-object v1, p0, Lcom/amap/api/mapcore/util/b;->i:Lcom/amap/api/mapcore/util/aq;

    iget-object v1, v1, Lcom/amap/api/mapcore/util/aq;->g:Lcom/autonavi/amap/mapcore/IPoint;

    iget v1, v1, Lcom/autonavi/amap/mapcore/IPoint;->x:I

    iget-object v2, p0, Lcom/amap/api/mapcore/util/b;->i:Lcom/amap/api/mapcore/util/aq;

    iget-object v2, v2, Lcom/amap/api/mapcore/util/aq;->g:Lcom/autonavi/amap/mapcore/IPoint;

    iget v2, v2, Lcom/autonavi/amap/mapcore/IPoint;->y:I

    invoke-virtual {p0, v1, v2, v0}, Lcom/amap/api/mapcore/util/b;->b(IILcom/autonavi/amap/mapcore/IPoint;)V

    .line 618
    iget-object v1, p0, Lcom/amap/api/mapcore/util/b;->ak:Landroid/graphics/Rect;

    iget v2, v0, Lcom/autonavi/amap/mapcore/IPoint;->x:I

    iget v0, v0, Lcom/autonavi/amap/mapcore/IPoint;->y:I

    invoke-virtual {v1, v2, v0}, Landroid/graphics/Rect;->contains(II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 619
    const/4 v0, 0x1

    .line 622
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method g()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 759
    iget-object v0, p0, Lcom/amap/api/mapcore/util/b;->n:Landroid/os/Handler;

    const/16 v1, 0xf

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 760
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 761
    return-void
.end method

.method public declared-synchronized g(I)V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 3556
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/b;->K:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/mapcore/util/s;

    .line 3557
    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/s;->b()I

    move-result v2

    if-ne v2, p1, :cond_0

    .line 3558
    iget-object v2, p0, Lcom/amap/api/mapcore/util/b;->K:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 3556
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 3561
    :cond_1
    monitor-exit p0

    return-void
.end method

.method g(Z)V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v1, 0x0

    .line 2938
    iget-object v2, p0, Lcom/amap/api/mapcore/util/b;->n:Landroid/os/Handler;

    const/16 v3, 0x13

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v2, v3, v0, v1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 2939
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 2940
    return-void

    :cond_0
    move v0, v1

    .line 2938
    goto :goto_0
.end method

.method public getAMapProjection()Lcom/amap/api/maps/Projection;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 1951
    new-instance v0, Lcom/amap/api/maps/Projection;

    iget-object v1, p0, Lcom/amap/api/mapcore/util/b;->ah:Lcom/amap/api/mapcore/util/n;

    invoke-direct {v0, v1}, Lcom/amap/api/maps/Projection;-><init>(Lcom/autonavi/amap/mapcore/interfaces/IProjection;)V

    return-object v0
.end method

.method public getAMapUiSettings()Lcom/amap/api/maps/UiSettings;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 1930
    new-instance v0, Lcom/amap/api/maps/UiSettings;

    iget-object v1, p0, Lcom/amap/api/mapcore/util/b;->ai:Lcom/amap/api/mapcore/util/o;

    invoke-direct {v0, v1}, Lcom/amap/api/maps/UiSettings;-><init>(Lcom/autonavi/amap/mapcore/interfaces/IUiSettings;)V

    return-object v0
.end method

.method public getCameraAngle()F
    .locals 1

    .prologue
    .line 3347
    iget-object v0, p0, Lcom/amap/api/mapcore/util/b;->ay:Lcom/autonavi/amap/mapcore/MapConfig;

    invoke-virtual {v0}, Lcom/autonavi/amap/mapcore/MapConfig;->getS_c()F

    move-result v0

    return v0
.end method

.method public getCameraPosition()Lcom/amap/api/maps/model/CameraPosition;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1160
    iget-boolean v0, p0, Lcom/amap/api/mapcore/util/b;->z:Z

    invoke-virtual {p0, v0}, Lcom/amap/api/mapcore/util/b;->f(Z)Lcom/amap/api/maps/model/CameraPosition;

    move-result-object v0

    return-object v0
.end method

.method public getInfoWindowAnimationManager()Lcom/amap/api/maps/InfoWindowAnimationManager;
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 3597
    new-instance v0, Lcom/amap/api/maps/InfoWindowAnimationManager;

    iget-object v1, p0, Lcom/amap/api/mapcore/util/b;->Q:Lcom/amap/api/mapcore/util/de;

    invoke-direct {v0, v1}, Lcom/amap/api/maps/InfoWindowAnimationManager;-><init>(Lcom/autonavi/amap/mapcore/interfaces/IInfoWindowManager;)V

    return-object v0
.end method

.method public getMainHandler()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 3361
    iget-object v0, p0, Lcom/amap/api/mapcore/util/b;->n:Landroid/os/Handler;

    return-object v0
.end method

.method public getMapConfig()Lcom/autonavi/amap/mapcore/MapConfig;
    .locals 1

    .prologue
    .line 3366
    iget-object v0, p0, Lcom/amap/api/mapcore/util/b;->ay:Lcom/autonavi/amap/mapcore/MapConfig;

    return-object v0
.end method

.method public getMapHeight()I
    .locals 1

    .prologue
    .line 1078
    iget-object v0, p0, Lcom/amap/api/mapcore/util/b;->d:Lcom/amap/api/mapcore/util/m;

    invoke-interface {v0}, Lcom/amap/api/mapcore/util/m;->getHeight()I

    move-result v0

    return v0
.end method

.method public getMapPrintScreen(Lcom/amap/api/maps/AMap$onMapPrintScreenListener;)V
    .locals 1

    .prologue
    .line 2837
    iput-object p1, p0, Lcom/amap/api/mapcore/util/b;->ae:Lcom/amap/api/maps/AMap$onMapPrintScreenListener;

    .line 2838
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/amap/api/mapcore/util/b;->av:Z

    .line 2839
    invoke-direct {p0}, Lcom/amap/api/mapcore/util/b;->K()V

    .line 2840
    return-void
.end method

.method public getMapScreenMarkers()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/amap/api/maps/model/Marker;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 2977
    invoke-virtual {p0}, Lcom/amap/api/mapcore/util/b;->getMapWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/amap/api/mapcore/util/b;->getMapHeight()I

    move-result v1

    invoke-static {v0, v1}, Lcom/amap/api/mapcore/util/en;->a(II)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2978
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2980
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/b;->e:Lcom/amap/api/mapcore/util/q;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/q;->f()Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method public getMapScreenShot(Lcom/amap/api/maps/AMap$OnMapScreenShotListener;)V
    .locals 1

    .prologue
    .line 2844
    iput-object p1, p0, Lcom/amap/api/mapcore/util/b;->af:Lcom/amap/api/maps/AMap$OnMapScreenShotListener;

    .line 2845
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/amap/api/mapcore/util/b;->av:Z

    .line 2846
    invoke-direct {p0}, Lcom/amap/api/mapcore/util/b;->K()V

    .line 2847
    return-void
.end method

.method public getMapTextZIndex()I
    .locals 1

    .prologue
    .line 3009
    iget v0, p0, Lcom/amap/api/mapcore/util/b;->an:I

    return v0
.end method

.method public getMapType()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1563
    iget v0, p0, Lcom/amap/api/mapcore/util/b;->L:I

    return v0
.end method

.method public getMapWidth()I
    .locals 1

    .prologue
    .line 1074
    iget-object v0, p0, Lcom/amap/api/mapcore/util/b;->d:Lcom/amap/api/mapcore/util/m;

    invoke-interface {v0}, Lcom/amap/api/mapcore/util/m;->getWidth()I

    move-result v0

    return v0
.end method

.method public getMaxZoomLevel()F
    .locals 1

    .prologue
    .line 1165
    iget-object v0, p0, Lcom/amap/api/mapcore/util/b;->ay:Lcom/autonavi/amap/mapcore/MapConfig;

    invoke-virtual {v0}, Lcom/autonavi/amap/mapcore/MapConfig;->getMaxZoomLevel()F

    move-result v0

    return v0
.end method

.method public getMinZoomLevel()F
    .locals 1

    .prologue
    .line 1170
    iget-object v0, p0, Lcom/amap/api/mapcore/util/b;->ay:Lcom/autonavi/amap/mapcore/MapConfig;

    invoke-virtual {v0}, Lcom/autonavi/amap/mapcore/MapConfig;->getMinZoomLevel()F

    move-result v0

    return v0
.end method

.method public getMyLocation()Landroid/location/Location;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1887
    iget-object v0, p0, Lcom/amap/api/mapcore/util/b;->aj:Lcom/amap/api/maps/LocationSource;

    if-eqz v0, :cond_0

    .line 1888
    iget-object v0, p0, Lcom/amap/api/mapcore/util/b;->ad:Lcom/amap/api/mapcore/util/e;

    iget-object v0, v0, Lcom/amap/api/mapcore/util/e;->a:Landroid/location/Location;

    .line 1890
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getScalePerPixel()F
    .locals 10

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const-wide v8, 0x400921fb54442d18L    # Math.PI

    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    .line 2923
    :try_start_0
    invoke-virtual {p0}, Lcom/amap/api/mapcore/util/b;->getCameraPosition()Lcom/amap/api/maps/model/CameraPosition;

    move-result-object v0

    iget-object v1, v0, Lcom/amap/api/maps/model/CameraPosition;->target:Lcom/amap/api/maps/model/LatLng;

    .line 2924
    iget-object v0, p0, Lcom/amap/api/mapcore/util/b;->ay:Lcom/autonavi/amap/mapcore/MapConfig;

    invoke-virtual {v0}, Lcom/autonavi/amap/mapcore/MapConfig;->getS_z()F

    move-result v0

    .line 2925
    iget-boolean v2, p0, Lcom/amap/api/mapcore/util/b;->aq:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/amap/api/mapcore/util/b;->P:Lcom/autonavi/amap/mapcore/MapProjection;

    if-eqz v2, :cond_0

    .line 2926
    iget-object v0, p0, Lcom/amap/api/mapcore/util/b;->P:Lcom/autonavi/amap/mapcore/MapProjection;

    invoke-virtual {v0}, Lcom/autonavi/amap/mapcore/MapProjection;->getMapZoomer()F

    move-result v0

    .line 2928
    :cond_0
    iget-wide v2, v1, Lcom/amap/api/maps/model/LatLng;->latitude:D

    mul-double/2addr v2, v8

    const-wide v4, 0x4066800000000000L    # 180.0

    div-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    mul-double/2addr v2, v6

    mul-double/2addr v2, v8

    const-wide v4, 0x415854a640000000L    # 6378137.0

    mul-double/2addr v2, v4

    const-wide/high16 v4, 0x4070000000000000L    # 256.0

    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    float-to-double v0, v0

    .line 2929
    invoke-static {v6, v7, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    mul-double/2addr v0, v4

    div-double v0, v2, v0

    double-to-float v0, v0

    invoke-virtual {p0}, Lcom/amap/api/mapcore/util/b;->u()F
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    mul-float/2addr v0, v1

    .line 2933
    :goto_0
    return v0

    .line 2930
    :catch_0
    move-exception v0

    .line 2931
    const-string/jumbo v1, "AMapDelegateImp"

    const-string/jumbo v2, "getScalePerPixel"

    invoke-static {v0, v1, v2}, Lcom/amap/api/mapcore/util/ft;->b(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 2932
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 2933
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getView()Landroid/view/View;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2074
    iget-object v0, p0, Lcom/amap/api/mapcore/util/b;->g:Lcom/amap/api/mapcore/util/es;

    return-object v0
.end method

.method public getZoomToSpanLevel(Lcom/amap/api/maps/model/LatLng;Lcom/amap/api/maps/model/LatLng;)F
    .locals 9

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v2, 0x0

    .line 3602
    invoke-virtual {p0}, Lcom/amap/api/mapcore/util/b;->getMapConfig()Lcom/autonavi/amap/mapcore/MapConfig;

    move-result-object v1

    .line 3603
    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    iget-boolean v0, p0, Lcom/amap/api/mapcore/util/b;->aq:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amap/api/mapcore/util/b;->au:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1

    .line 3604
    new-instance v3, Lcom/amap/api/maps/model/LatLngBounds$Builder;

    invoke-direct {v3}, Lcom/amap/api/maps/model/LatLngBounds$Builder;-><init>()V

    .line 3605
    invoke-virtual {v3, p1}, Lcom/amap/api/maps/model/LatLngBounds$Builder;->include(Lcom/amap/api/maps/model/LatLng;)Lcom/amap/api/maps/model/LatLngBounds$Builder;

    .line 3606
    invoke-virtual {v3, p2}, Lcom/amap/api/maps/model/LatLngBounds$Builder;->include(Lcom/amap/api/maps/model/LatLng;)Lcom/amap/api/maps/model/LatLngBounds$Builder;

    .line 3607
    new-instance v0, Lcom/autonavi/amap/mapcore/MapProjection;

    iget-object v4, p0, Lcom/amap/api/mapcore/util/b;->M:Lcom/autonavi/amap/mapcore/MapCore;

    invoke-direct {v0, v4}, Lcom/autonavi/amap/mapcore/MapProjection;-><init>(Lcom/autonavi/amap/mapcore/MapCore;)V

    .line 3609
    invoke-virtual {v3}, Lcom/amap/api/maps/model/LatLngBounds$Builder;->build()Lcom/amap/api/maps/model/LatLngBounds;

    move-result-object v6

    invoke-virtual {p0}, Lcom/amap/api/mapcore/util/b;->getMapWidth()I

    move-result v7

    invoke-virtual {p0}, Lcom/amap/api/mapcore/util/b;->getMapHeight()I

    move-result v8

    move v3, v2

    move v4, v2

    move v5, v2

    .line 3608
    invoke-static/range {v0 .. v8}, Lcom/amap/api/mapcore/util/en;->a(Lcom/autonavi/amap/mapcore/MapProjection;Lcom/autonavi/amap/mapcore/MapConfig;IIIILcom/amap/api/maps/model/LatLngBounds;II)Landroid/util/Pair;

    move-result-object v1

    .line 3610
    invoke-virtual {v0}, Lcom/autonavi/amap/mapcore/MapProjection;->recycle()V

    .line 3611
    if-eqz v1, :cond_0

    .line 3612
    iget-object v0, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 3616
    :goto_0
    return v0

    .line 3614
    :cond_0
    invoke-virtual {v0}, Lcom/autonavi/amap/mapcore/MapProjection;->getMapZoomer()F

    move-result v0

    goto :goto_0

    .line 3616
    :cond_1
    invoke-virtual {v1}, Lcom/autonavi/amap/mapcore/MapConfig;->getS_z()F

    move-result v0

    goto :goto_0
.end method

.method h()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 764
    iget-object v0, p0, Lcom/amap/api/mapcore/util/b;->n:Landroid/os/Handler;

    const/16 v1, 0xe

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 765
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 766
    return-void
.end method

.method i()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 775
    iget-object v0, p0, Lcom/amap/api/mapcore/util/b;->n:Landroid/os/Handler;

    new-instance v1, Lcom/amap/api/mapcore/util/b$16;

    invoke-direct {v1, p0}, Lcom/amap/api/mapcore/util/b$16;-><init>(Lcom/amap/api/mapcore/util/b;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 782
    return-void
.end method

.method public isIndoorEnabled()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1786
    iget-object v0, p0, Lcom/amap/api/mapcore/util/b;->ay:Lcom/autonavi/amap/mapcore/MapConfig;

    invoke-virtual {v0}, Lcom/autonavi/amap/mapcore/MapConfig;->isIndoorEnable()Z

    move-result v0

    return v0
.end method

.method public isMaploaded()Z
    .locals 1

    .prologue
    .line 3014
    iget-boolean v0, p0, Lcom/amap/api/mapcore/util/b;->ar:Z

    return v0
.end method

.method public isMyLocationEnabled()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1847
    iget-boolean v0, p0, Lcom/amap/api/mapcore/util/b;->ap:Z

    return v0
.end method

.method public isTrafficEnabled()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1742
    iget-object v0, p0, Lcom/amap/api/mapcore/util/b;->ay:Lcom/autonavi/amap/mapcore/MapConfig;

    invoke-virtual {v0}, Lcom/autonavi/amap/mapcore/MapConfig;->isTrafficEnabled()Z

    move-result v0

    return v0
.end method

.method public j()V
    .locals 8

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v4, 0x1

    .line 993
    iget-object v0, p0, Lcom/amap/api/mapcore/util/b;->ay:Lcom/autonavi/amap/mapcore/MapConfig;

    invoke-virtual {v0}, Lcom/autonavi/amap/mapcore/MapConfig;->getMapRect()[Lcom/autonavi/amap/mapcore/FPoint;

    move-result-object v0

    if-nez v0, :cond_0

    .line 994
    invoke-direct {p0}, Lcom/amap/api/mapcore/util/b;->I()V

    .line 996
    :cond_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/b;->M:Lcom/autonavi/amap/mapcore/MapCore;

    invoke-virtual {v0}, Lcom/autonavi/amap/mapcore/MapCore;->getMapstate()Lcom/autonavi/amap/mapcore/MapProjection;

    move-result-object v0

    .line 997
    if-eqz v0, :cond_7

    .line 998
    new-instance v1, Lcom/autonavi/amap/mapcore/IPoint;

    invoke-direct {v1}, Lcom/autonavi/amap/mapcore/IPoint;-><init>()V

    .line 999
    invoke-virtual {v0, v1}, Lcom/autonavi/amap/mapcore/MapProjection;->getGeoCenter(Lcom/autonavi/amap/mapcore/IPoint;)V

    .line 1001
    iget-object v2, p0, Lcom/amap/api/mapcore/util/b;->ay:Lcom/autonavi/amap/mapcore/MapConfig;

    iget v3, v1, Lcom/autonavi/amap/mapcore/IPoint;->x:I

    invoke-virtual {v2, v3}, Lcom/autonavi/amap/mapcore/MapConfig;->setS_x(I)V

    .line 1002
    iget-object v2, p0, Lcom/amap/api/mapcore/util/b;->ay:Lcom/autonavi/amap/mapcore/MapConfig;

    iget v3, v1, Lcom/autonavi/amap/mapcore/IPoint;->y:I

    invoke-virtual {v2, v3}, Lcom/autonavi/amap/mapcore/MapConfig;->setS_y(I)V

    .line 1003
    iget-object v2, p0, Lcom/amap/api/mapcore/util/b;->ay:Lcom/autonavi/amap/mapcore/MapConfig;

    invoke-virtual {v0}, Lcom/autonavi/amap/mapcore/MapProjection;->getMapZoomer()F

    move-result v3

    invoke-virtual {v2, v3}, Lcom/autonavi/amap/mapcore/MapConfig;->setS_z(F)V

    .line 1004
    iget-object v2, p0, Lcom/amap/api/mapcore/util/b;->ay:Lcom/autonavi/amap/mapcore/MapConfig;

    invoke-virtual {v0}, Lcom/autonavi/amap/mapcore/MapProjection;->getCameraHeaderAngle()F

    move-result v3

    invoke-virtual {v2, v3}, Lcom/autonavi/amap/mapcore/MapConfig;->setS_c(F)V

    .line 1005
    iget-object v2, p0, Lcom/amap/api/mapcore/util/b;->ay:Lcom/autonavi/amap/mapcore/MapConfig;

    invoke-virtual {v0}, Lcom/autonavi/amap/mapcore/MapProjection;->getMapAngle()F

    move-result v0

    invoke-virtual {v2, v0}, Lcom/autonavi/amap/mapcore/MapConfig;->setS_r(F)V

    .line 1006
    iget v0, p0, Lcom/amap/api/mapcore/util/b;->a:I

    const/4 v2, -0x1

    if-eq v0, v2, :cond_8

    .line 1007
    iget-object v0, p0, Lcom/amap/api/mapcore/util/b;->az:Lcom/amap/api/mapcore/util/dv;

    iget v2, p0, Lcom/amap/api/mapcore/util/b;->a:I

    invoke-virtual {v0, v2}, Lcom/amap/api/mapcore/util/dv;->a(I)V

    .line 1012
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/b;->ay:Lcom/autonavi/amap/mapcore/MapConfig;

    invoke-virtual {v0}, Lcom/autonavi/amap/mapcore/MapConfig;->isMapStateChange()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1014
    iget-object v0, p0, Lcom/amap/api/mapcore/util/b;->P:Lcom/autonavi/amap/mapcore/MapProjection;

    if-eqz v0, :cond_2

    .line 1016
    iget-object v0, p0, Lcom/amap/api/mapcore/util/b;->P:Lcom/autonavi/amap/mapcore/MapProjection;

    invoke-virtual {v0, v4}, Lcom/autonavi/amap/mapcore/MapProjection;->getMapLenWithWin(I)F

    move-result v0

    .line 1017
    iget-object v2, p0, Lcom/amap/api/mapcore/util/b;->ay:Lcom/autonavi/amap/mapcore/MapConfig;

    invoke-virtual {v2, v0}, Lcom/autonavi/amap/mapcore/MapConfig;->setMapPerPixelUnitLength(F)V

    .line 1021
    :cond_2
    new-instance v0, Lcom/autonavi/amap/mapcore/DPoint;

    invoke-direct {v0}, Lcom/autonavi/amap/mapcore/DPoint;-><init>()V

    .line 1022
    iget v2, v1, Lcom/autonavi/amap/mapcore/IPoint;->x:I

    iget v1, v1, Lcom/autonavi/amap/mapcore/IPoint;->y:I

    invoke-static {v2, v1, v0}, Lcom/autonavi/amap/mapcore/MapProjection;->geo2LonLat(IILcom/autonavi/amap/mapcore/DPoint;)V

    .line 1023
    new-instance v7, Lcom/amap/api/maps/model/CameraPosition;

    new-instance v1, Lcom/amap/api/maps/model/LatLng;

    iget-wide v2, v0, Lcom/autonavi/amap/mapcore/DPoint;->y:D

    iget-wide v4, v0, Lcom/autonavi/amap/mapcore/DPoint;->x:D

    const/4 v6, 0x0

    invoke-direct/range {v1 .. v6}, Lcom/amap/api/maps/model/LatLng;-><init>(DDZ)V

    iget-object v0, p0, Lcom/amap/api/mapcore/util/b;->ay:Lcom/autonavi/amap/mapcore/MapConfig;

    .line 1024
    invoke-virtual {v0}, Lcom/autonavi/amap/mapcore/MapConfig;->getS_z()F

    move-result v0

    iget-object v2, p0, Lcom/amap/api/mapcore/util/b;->ay:Lcom/autonavi/amap/mapcore/MapConfig;

    invoke-virtual {v2}, Lcom/autonavi/amap/mapcore/MapConfig;->getS_c()F

    move-result v2

    iget-object v3, p0, Lcom/amap/api/mapcore/util/b;->ay:Lcom/autonavi/amap/mapcore/MapConfig;

    .line 1025
    invoke-virtual {v3}, Lcom/autonavi/amap/mapcore/MapConfig;->getS_r()F

    move-result v3

    invoke-direct {v7, v1, v0, v2, v3}, Lcom/amap/api/maps/model/CameraPosition;-><init>(Lcom/amap/api/maps/model/LatLng;FFF)V

    .line 1027
    iget-object v0, p0, Lcom/amap/api/mapcore/util/b;->n:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 1028
    const/16 v1, 0xa

    iput v1, v0, Landroid/os/Message;->what:I

    .line 1029
    iput-object v7, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1030
    iget-object v1, p0, Lcom/amap/api/mapcore/util/b;->n:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1031
    invoke-virtual {p0}, Lcom/amap/api/mapcore/util/b;->l()V

    .line 1033
    invoke-direct {p0}, Lcom/amap/api/mapcore/util/b;->I()V

    .line 1039
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/b;->ai:Lcom/amap/api/mapcore/util/o;

    invoke-interface {v0}, Lcom/amap/api/mapcore/util/o;->isZoomControlsEnabled()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/amap/api/mapcore/util/b;->ay:Lcom/autonavi/amap/mapcore/MapConfig;

    invoke-virtual {v0}, Lcom/autonavi/amap/mapcore/MapConfig;->isNeedUpdateZoomControllerState()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1040
    invoke-virtual {p0}, Lcom/amap/api/mapcore/util/b;->h()V

    .line 1043
    :cond_3
    iget-object v0, p0, Lcom/amap/api/mapcore/util/b;->ay:Lcom/autonavi/amap/mapcore/MapConfig;

    invoke-virtual {v0}, Lcom/autonavi/amap/mapcore/MapConfig;->getChangeGridRatio()D

    move-result-wide v0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    cmpl-double v0, v0, v2

    if-eqz v0, :cond_4

    .line 1044
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/amap/api/mapcore/util/b;->g(Z)V

    .line 1047
    :cond_4
    iget-object v0, p0, Lcom/amap/api/mapcore/util/b;->ai:Lcom/amap/api/mapcore/util/o;

    invoke-interface {v0}, Lcom/amap/api/mapcore/util/o;->isCompassEnabled()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/amap/api/mapcore/util/b;->ay:Lcom/autonavi/amap/mapcore/MapConfig;

    invoke-virtual {v0}, Lcom/autonavi/amap/mapcore/MapConfig;->isTiltChanged()Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/amap/api/mapcore/util/b;->ay:Lcom/autonavi/amap/mapcore/MapConfig;

    .line 1048
    invoke-virtual {v0}, Lcom/autonavi/amap/mapcore/MapConfig;->isBearingChanged()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1049
    :cond_5
    invoke-virtual {p0}, Lcom/amap/api/mapcore/util/b;->g()V

    .line 1052
    :cond_6
    iget-object v0, p0, Lcom/amap/api/mapcore/util/b;->ai:Lcom/amap/api/mapcore/util/o;

    invoke-interface {v0}, Lcom/amap/api/mapcore/util/o;->isScaleControlsEnabled()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1053
    invoke-virtual {p0}, Lcom/amap/api/mapcore/util/b;->i()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1066
    :cond_7
    :goto_1
    return-void

    .line 1008
    :cond_8
    iget-object v0, p0, Lcom/amap/api/mapcore/util/b;->M:Lcom/autonavi/amap/mapcore/MapCore;

    invoke-virtual {v0}, Lcom/autonavi/amap/mapcore/MapCore;->getAnimateionsCount()I

    move-result v0

    if-nez v0, :cond_1

    .line 1009
    iget-object v0, p0, Lcom/amap/api/mapcore/util/b;->az:Lcom/amap/api/mapcore/util/dv;

    const/16 v2, 0xf

    invoke-virtual {v0, v2}, Lcom/amap/api/mapcore/util/dv;->a(I)V

    goto/16 :goto_0

    .line 1055
    :catch_0
    move-exception v0

    .line 1056
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1
.end method

.method public k()I
    .locals 1

    .prologue
    .line 1144
    iget v0, p0, Lcom/amap/api/mapcore/util/b;->q:I

    return v0
.end method

.method public l()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 1149
    iget-boolean v0, p0, Lcom/amap/api/mapcore/util/b;->aq:Z

    if-eqz v0, :cond_0

    .line 1150
    iget-object v0, p0, Lcom/amap/api/mapcore/util/b;->n:Landroid/os/Handler;

    const/16 v1, 0x15

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1151
    :cond_0
    return-void
.end method

.method public m()Lcom/amap/api/mapcore/util/o;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1920
    iget-object v0, p0, Lcom/amap/api/mapcore/util/b;->ai:Lcom/amap/api/mapcore/util/o;

    return-object v0
.end method

.method public moveCamera(Lcom/amap/api/maps/CameraUpdate;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1176
    if-nez p1, :cond_0

    .line 1179
    :goto_0
    return-void

    .line 1178
    :cond_0
    invoke-virtual {p1}, Lcom/amap/api/maps/CameraUpdate;->getCameraUpdateFactoryDelegate()Lcom/autonavi/amap/mapcore/MapMessage;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/amap/api/mapcore/util/b;->a(Lcom/autonavi/amap/mapcore/MapMessage;)V

    goto :goto_0
.end method

.method public n()V
    .locals 1

    .prologue
    .line 2612
    iget-object v0, p0, Lcom/amap/api/mapcore/util/b;->j:Lcom/amap/api/mapcore/util/cq;

    if-eqz v0, :cond_0

    .line 2613
    iget-object v0, p0, Lcom/amap/api/mapcore/util/b;->j:Lcom/amap/api/mapcore/util/cq;

    invoke-interface {v0}, Lcom/amap/api/mapcore/util/cq;->d()V

    .line 2615
    :cond_0
    return-void
.end method

.method public o()F
    .locals 1

    .prologue
    .line 2619
    iget-object v0, p0, Lcom/amap/api/mapcore/util/b;->P:Lcom/autonavi/amap/mapcore/MapProjection;

    if-eqz v0, :cond_0

    .line 2620
    iget-object v0, p0, Lcom/amap/api/mapcore/util/b;->P:Lcom/autonavi/amap/mapcore/MapProjection;

    invoke-virtual {v0}, Lcom/autonavi/amap/mapcore/MapProjection;->getMapZoomer()F

    move-result v0

    .line 2622
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/b;->ay:Lcom/autonavi/amap/mapcore/MapConfig;

    invoke-virtual {v0}, Lcom/autonavi/amap/mapcore/MapConfig;->getS_z()F

    move-result v0

    goto :goto_0
.end method

.method public onActivityPause()V
    .locals 1

    .prologue
    .line 322
    invoke-direct {p0}, Lcom/amap/api/mapcore/util/b;->B()V

    .line 323
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/amap/api/mapcore/util/b;->w:Z

    .line 325
    return-void
.end method

.method public onActivityResume()V
    .locals 1

    .prologue
    .line 312
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/amap/api/mapcore/util/b;->w:Z

    .line 313
    return-void
.end method

.method public onChangeFinish()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 3519
    invoke-direct {p0}, Lcom/amap/api/mapcore/util/b;->K()V

    .line 3520
    iget-object v0, p0, Lcom/amap/api/mapcore/util/b;->n:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 3521
    const/16 v1, 0xc

    iput v1, v0, Landroid/os/Message;->what:I

    .line 3522
    iget-object v1, p0, Lcom/amap/api/mapcore/util/b;->n:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 3523
    return-void
.end method

.method public onDrawFrame(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 821
    iget-object v0, p0, Lcom/amap/api/mapcore/util/b;->au:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/amap/api/mapcore/util/b;->v:Z

    if-eqz v0, :cond_1

    .line 862
    :cond_0
    :goto_0
    return-void

    .line 827
    :cond_1
    :try_start_0
    iget-boolean v0, p0, Lcom/amap/api/mapcore/util/b;->aq:Z

    if-eqz v0, :cond_5

    .line 828
    const/high16 v0, 0x3f800000    # 1.0f

    const/high16 v1, 0x3f800000    # 1.0f

    const/high16 v2, 0x3f800000    # 1.0f

    const/high16 v3, 0x3f000000    # 0.5f

    invoke-interface {p1, v0, v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL10;->glColor4f(FFFF)V

    .line 829
    const/16 v0, 0x4100

    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glClear(I)V

    .line 830
    invoke-direct {p0}, Lcom/amap/api/mapcore/util/b;->J()V

    .line 832
    iget-object v0, p0, Lcom/amap/api/mapcore/util/b;->M:Lcom/autonavi/amap/mapcore/MapCore;

    invoke-virtual {v0, p1}, Lcom/autonavi/amap/mapcore/MapCore;->setGL(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 833
    iget-object v0, p0, Lcom/amap/api/mapcore/util/b;->M:Lcom/autonavi/amap/mapcore/MapCore;

    invoke-virtual {v0, p1}, Lcom/autonavi/amap/mapcore/MapCore;->drawFrame(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 834
    iget-object v0, p0, Lcom/amap/api/mapcore/util/b;->f:Lcom/amap/api/mapcore/util/v;

    invoke-virtual {v0, p1}, Lcom/amap/api/mapcore/util/v;->a(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 835
    iget v0, p0, Lcom/amap/api/mapcore/util/b;->J:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/amap/api/mapcore/util/b;->aA:Lcom/amap/api/mapcore/util/r;

    if-eqz v0, :cond_2

    .line 836
    iget-object v0, p0, Lcom/amap/api/mapcore/util/b;->aA:Lcom/amap/api/mapcore/util/r;

    iget-object v1, p0, Lcom/amap/api/mapcore/util/b;->ak:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    iget-object v2, p0, Lcom/amap/api/mapcore/util/b;->ak:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    invoke-virtual {v0, p1, v1, v2}, Lcom/amap/api/mapcore/util/r;->a(Ljavax/microedition/khronos/opengles/GL10;II)V

    .line 838
    :cond_2
    iget-object v0, p0, Lcom/amap/api/mapcore/util/b;->b:Lcom/amap/api/mapcore/util/j;

    const/4 v1, 0x0

    iget v2, p0, Lcom/amap/api/mapcore/util/b;->an:I

    invoke-virtual {v0, p1, v1, v2}, Lcom/amap/api/mapcore/util/j;->a(Ljavax/microedition/khronos/opengles/GL10;ZI)V

    .line 839
    iget v0, p0, Lcom/amap/api/mapcore/util/b;->J:I

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/amap/api/mapcore/util/b;->aA:Lcom/amap/api/mapcore/util/r;

    if-eqz v0, :cond_3

    .line 840
    iget-object v0, p0, Lcom/amap/api/mapcore/util/b;->e:Lcom/amap/api/mapcore/util/q;

    invoke-virtual {v0, p1}, Lcom/amap/api/mapcore/util/q;->b(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 841
    iget-object v0, p0, Lcom/amap/api/mapcore/util/b;->aA:Lcom/amap/api/mapcore/util/r;

    iget-object v1, p0, Lcom/amap/api/mapcore/util/b;->ak:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    iget-object v2, p0, Lcom/amap/api/mapcore/util/b;->ak:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    invoke-virtual {v0, p1, v1, v2}, Lcom/amap/api/mapcore/util/r;->a(Ljavax/microedition/khronos/opengles/GL10;II)V

    .line 842
    iget-object v0, p0, Lcom/amap/api/mapcore/util/b;->b:Lcom/amap/api/mapcore/util/j;

    invoke-virtual {v0, p1}, Lcom/amap/api/mapcore/util/j;->a(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 844
    :cond_3
    iget-object v0, p0, Lcom/amap/api/mapcore/util/b;->e:Lcom/amap/api/mapcore/util/q;

    invoke-virtual {v0, p1}, Lcom/amap/api/mapcore/util/q;->a(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 845
    iget-object v0, p0, Lcom/amap/api/mapcore/util/b;->Q:Lcom/amap/api/mapcore/util/de;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/amap/api/mapcore/util/b;->P:Lcom/autonavi/amap/mapcore/MapProjection;

    if-eqz v0, :cond_4

    .line 846
    iget-object v0, p0, Lcom/amap/api/mapcore/util/b;->Q:Lcom/amap/api/mapcore/util/de;

    iget-object v1, p0, Lcom/amap/api/mapcore/util/b;->P:Lcom/autonavi/amap/mapcore/MapProjection;

    invoke-virtual {p0}, Lcom/amap/api/mapcore/util/b;->getMapWidth()I

    move-result v2

    invoke-virtual {p0}, Lcom/amap/api/mapcore/util/b;->getMapHeight()I

    move-result v3

    invoke-virtual {v0, p1, v1, v2, v3}, Lcom/amap/api/mapcore/util/de;->a(Ljavax/microedition/khronos/opengles/GL10;Lcom/autonavi/amap/mapcore/MapProjection;II)V

    .line 848
    :cond_4
    invoke-direct {p0, p1}, Lcom/amap/api/mapcore/util/b;->a(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 849
    invoke-direct {p0}, Lcom/amap/api/mapcore/util/b;->H()V

    .line 850
    invoke-virtual {p0}, Lcom/amap/api/mapcore/util/b;->j()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 859
    :catch_0
    move-exception v0

    .line 860
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_0

    .line 852
    :cond_5
    const/high16 v0, 0x3f720000    # 0.9453125f

    const v1, 0x3f6effc1    # 0.93359f

    const v2, 0x3f68fc50    # 0.9101f

    const/high16 v3, 0x3f800000    # 1.0f

    :try_start_1
    invoke-interface {p1, v0, v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL10;->glClearColor(FFFF)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method

.method public onFling()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 2346
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/b;->f:Lcom/amap/api/mapcore/util/v;

    if-eqz v0, :cond_0

    .line 2347
    iget-object v0, p0, Lcom/amap/api/mapcore/util/b;->f:Lcom/amap/api/mapcore/util/v;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/amap/api/mapcore/util/v;->b(Z)V

    .line 2349
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/amap/api/mapcore/util/b;->ax:Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 2353
    :goto_0
    return-void

    .line 2350
    :catch_0
    move-exception v0

    .line 2351
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public onSurfaceChanged(Ljavax/microedition/khronos/opengles/GL10;II)V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 3252
    :try_start_0
    new-instance v0, Landroid/graphics/Rect;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, p2, p3}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Lcom/amap/api/mapcore/util/b;->ak:Landroid/graphics/Rect;

    .line 3253
    iget-object v0, p0, Lcom/amap/api/mapcore/util/b;->M:Lcom/autonavi/amap/mapcore/MapCore;

    invoke-virtual {v0, p1}, Lcom/autonavi/amap/mapcore/MapCore;->setGL(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 3254
    iget-object v0, p0, Lcom/amap/api/mapcore/util/b;->M:Lcom/autonavi/amap/mapcore/MapCore;

    invoke-virtual {v0, p1, p2, p3}, Lcom/autonavi/amap/mapcore/MapCore;->surfaceChange(Ljavax/microedition/khronos/opengles/GL10;II)V

    .line 3256
    iget-object v0, p0, Lcom/amap/api/mapcore/util/b;->ay:Lcom/autonavi/amap/mapcore/MapConfig;

    if-eqz v0, :cond_0

    .line 3257
    iget-object v0, p0, Lcom/amap/api/mapcore/util/b;->ay:Lcom/autonavi/amap/mapcore/MapConfig;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/autonavi/amap/mapcore/MapConfig;->updateMapRectNextFrame(Z)V

    .line 3260
    :cond_0
    invoke-direct {p0}, Lcom/amap/api/mapcore/util/b;->E()V

    .line 3262
    iget-object v0, p0, Lcom/amap/api/mapcore/util/b;->aJ:Lcom/amap/api/mapcore/util/b$a;

    iget-boolean v0, v0, Lcom/amap/api/mapcore/util/b$a;->b:Z

    if-eqz v0, :cond_1

    .line 3263
    iget-object v0, p0, Lcom/amap/api/mapcore/util/b;->n:Landroid/os/Handler;

    if-eqz v0, :cond_3

    .line 3264
    iget-object v0, p0, Lcom/amap/api/mapcore/util/b;->n:Landroid/os/Handler;

    iget-object v1, p0, Lcom/amap/api/mapcore/util/b;->aJ:Lcom/amap/api/mapcore/util/b$a;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 3269
    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/amap/api/mapcore/util/b;->K()V

    .line 3270
    iget-object v0, p0, Lcom/amap/api/mapcore/util/b;->o:Lcom/amap/api/maps/CustomRenderer;

    if-eqz v0, :cond_2

    .line 3271
    iget-object v0, p0, Lcom/amap/api/mapcore/util/b;->o:Lcom/amap/api/maps/CustomRenderer;

    invoke-interface {v0, p1, p2, p3}, Lcom/amap/api/maps/CustomRenderer;->onSurfaceChanged(Ljavax/microedition/khronos/opengles/GL10;II)V

    .line 3276
    :cond_2
    :goto_1
    return-void

    .line 3266
    :cond_3
    iget-object v0, p0, Lcom/amap/api/mapcore/util/b;->aJ:Lcom/amap/api/mapcore/util/b$a;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/b$a;->run()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 3273
    :catch_0
    move-exception v0

    .line 3274
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1
.end method

.method public onSurfaceCreated(Ljavax/microedition/khronos/opengles/GL10;Ljavax/microedition/khronos/egl/EGLConfig;)V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 3213
    :try_start_0
    iget-boolean v0, p0, Lcom/amap/api/mapcore/util/b;->aq:Z

    if-nez v0, :cond_0

    .line 3214
    invoke-direct {p0}, Lcom/amap/api/mapcore/util/b;->C()V

    .line 3217
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/amap/api/mapcore/util/b;->aB:Z

    .line 3218
    iget-object v0, p0, Lcom/amap/api/mapcore/util/b;->M:Lcom/autonavi/amap/mapcore/MapCore;

    invoke-virtual {v0, p1}, Lcom/autonavi/amap/mapcore/MapCore;->setGL(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 3219
    invoke-direct {p0}, Lcom/amap/api/mapcore/util/b;->N()V

    .line 3221
    iget-object v0, p0, Lcom/amap/api/mapcore/util/b;->D:Lcom/amap/api/mapcore/util/i$c;

    sget-object v1, Lcom/amap/api/mapcore/util/i$c;->b:Lcom/amap/api/mapcore/util/i$c;

    if-ne v0, v1, :cond_2

    .line 3222
    iget-object v0, p0, Lcom/amap/api/mapcore/util/b;->M:Lcom/autonavi/amap/mapcore/MapCore;

    const/16 v1, 0x961

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/autonavi/amap/mapcore/MapCore;->setParameter(IIIII)V

    .line 3223
    iget-object v0, p0, Lcom/amap/api/mapcore/util/b;->g:Lcom/amap/api/mapcore/util/es;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/es;->c()Lcom/amap/api/mapcore/util/eo;

    move-result-object v0

    sget v1, Lcom/amap/api/mapcore/util/eo;->b:I

    invoke-virtual {v0, v1}, Lcom/amap/api/mapcore/util/eo;->a(I)V

    .line 3228
    :goto_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/b;->M:Lcom/autonavi/amap/mapcore/MapCore;

    invoke-virtual {v0, p1}, Lcom/autonavi/amap/mapcore/MapCore;->surfaceCreate(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 3229
    invoke-direct {p0, p1}, Lcom/amap/api/mapcore/util/b;->b(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 3230
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/amap/api/mapcore/util/b;->aw:Z

    .line 3231
    invoke-direct {p0}, Lcom/amap/api/mapcore/util/b;->S()V

    .line 3233
    invoke-direct {p0}, Lcom/amap/api/mapcore/util/b;->L()V

    .line 3234
    invoke-direct {p0}, Lcom/amap/api/mapcore/util/b;->K()V

    .line 3236
    invoke-direct {p0}, Lcom/amap/api/mapcore/util/b;->Q()V

    .line 3238
    iget-object v0, p0, Lcom/amap/api/mapcore/util/b;->o:Lcom/amap/api/maps/CustomRenderer;

    if-eqz v0, :cond_1

    .line 3239
    iget-object v0, p0, Lcom/amap/api/mapcore/util/b;->o:Lcom/amap/api/maps/CustomRenderer;

    invoke-interface {v0, p1, p2}, Lcom/amap/api/maps/CustomRenderer;->onSurfaceCreated(Ljavax/microedition/khronos/opengles/GL10;Ljavax/microedition/khronos/egl/EGLConfig;)V

    .line 3245
    :cond_1
    :goto_1
    return-void

    .line 3225
    :cond_2
    iget-object v0, p0, Lcom/amap/api/mapcore/util/b;->g:Lcom/amap/api/mapcore/util/es;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/es;->c()Lcom/amap/api/mapcore/util/eo;

    move-result-object v0

    sget v1, Lcom/amap/api/mapcore/util/eo;->a:I

    invoke-virtual {v0, v1}, Lcom/amap/api/mapcore/util/eo;->a(I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 3241
    :catch_0
    move-exception v0

    .line 3242
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1
.end method

.method public p()[Lcom/autonavi/amap/mapcore/FPoint;
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 2631
    iget-object v0, p0, Lcom/amap/api/mapcore/util/b;->ay:Lcom/autonavi/amap/mapcore/MapConfig;

    invoke-virtual {v0}, Lcom/autonavi/amap/mapcore/MapConfig;->getMapRect()[Lcom/autonavi/amap/mapcore/FPoint;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2632
    iget-object v0, p0, Lcom/amap/api/mapcore/util/b;->ay:Lcom/autonavi/amap/mapcore/MapConfig;

    const/4 v1, 0x1

    invoke-static {p0, v1}, Lcom/amap/api/mapcore/util/en;->a(Lcom/amap/api/mapcore/util/l;Z)[Lcom/autonavi/amap/mapcore/FPoint;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/autonavi/amap/mapcore/MapConfig;->setMapRect([Lcom/autonavi/amap/mapcore/FPoint;)V

    .line 2634
    :cond_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/b;->ay:Lcom/autonavi/amap/mapcore/MapConfig;

    invoke-virtual {v0}, Lcom/autonavi/amap/mapcore/MapConfig;->getMapRect()[Lcom/autonavi/amap/mapcore/FPoint;

    move-result-object v0

    return-object v0
.end method

.method public q()Landroid/graphics/Point;
    .locals 1

    .prologue
    .line 2830
    iget-object v0, p0, Lcom/amap/api/mapcore/util/b;->g:Lcom/amap/api/mapcore/util/es;

    if-eqz v0, :cond_0

    .line 2831
    iget-object v0, p0, Lcom/amap/api/mapcore/util/b;->g:Lcom/amap/api/mapcore/util/es;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/es;->a()Landroid/graphics/Point;

    move-result-object v0

    .line 2832
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    goto :goto_0
.end method

.method public r()V
    .locals 1

    .prologue
    .line 2985
    iget-object v0, p0, Lcom/amap/api/mapcore/util/b;->b:Lcom/amap/api/mapcore/util/j;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/j;->c()V

    .line 2986
    return-void
.end method

.method public reloadMap()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 3372
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/amap/api/mapcore/util/b;->ar:Z

    .line 3373
    invoke-virtual {p0}, Lcom/amap/api/mapcore/util/b;->e()V

    .line 3375
    const-wide/16 v0, 0xc8

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3379
    :goto_0
    invoke-virtual {p0}, Lcom/amap/api/mapcore/util/b;->d()V

    .line 3380
    return-void

    .line 3376
    :catch_0
    move-exception v0

    .line 3377
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0
.end method

.method public removecache()V
    .locals 1

    .prologue
    .line 3030
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/amap/api/mapcore/util/b;->removecache(Lcom/amap/api/maps/AMap$OnCacheRemoveListener;)V

    .line 3031
    return-void
.end method

.method public removecache(Lcom/amap/api/maps/AMap$OnCacheRemoveListener;)V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 3034
    iget-object v0, p0, Lcom/amap/api/mapcore/util/b;->n:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 3036
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/b;->M:Lcom/autonavi/amap/mapcore/MapCore;

    const/16 v1, 0xa29

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/autonavi/amap/mapcore/MapCore;->setParameter(IIIII)V

    .line 3037
    new-instance v0, Lcom/amap/api/mapcore/util/b$c;

    iget-object v1, p0, Lcom/amap/api/mapcore/util/b;->N:Landroid/content/Context;

    invoke-direct {v0, p0, v1, p1}, Lcom/amap/api/mapcore/util/b$c;-><init>(Lcom/amap/api/mapcore/util/b;Landroid/content/Context;Lcom/amap/api/maps/AMap$OnCacheRemoveListener;)V

    .line 3039
    iget-object v1, p0, Lcom/amap/api/mapcore/util/b;->n:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 3040
    iget-object v1, p0, Lcom/amap/api/mapcore/util/b;->n:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 3046
    :cond_0
    :goto_0
    return-void

    .line 3041
    :catch_0
    move-exception v0

    .line 3042
    const-string/jumbo v1, "AMapDelegateImp"

    const-string/jumbo v2, "removecache"

    invoke-static {v0, v1, v2}, Lcom/amap/api/mapcore/util/ft;->b(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 3043
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public resetMinMaxZoomPreference()V
    .locals 1

    .prologue
    .line 3740
    iget-object v0, p0, Lcom/amap/api/mapcore/util/b;->ay:Lcom/autonavi/amap/mapcore/MapConfig;

    invoke-virtual {v0}, Lcom/autonavi/amap/mapcore/MapConfig;->resetMinMaxZoomPreference()V

    .line 3741
    return-void
.end method

.method public s()V
    .locals 1

    .prologue
    .line 3049
    iget-object v0, p0, Lcom/amap/api/mapcore/util/b;->b:Lcom/amap/api/mapcore/util/j;

    if-eqz v0, :cond_0

    .line 3050
    iget-object v0, p0, Lcom/amap/api/mapcore/util/b;->b:Lcom/amap/api/mapcore/util/j;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/j;->d()V

    .line 3052
    :cond_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/b;->e:Lcom/amap/api/mapcore/util/q;

    if-eqz v0, :cond_1

    .line 3053
    iget-object v0, p0, Lcom/amap/api/mapcore/util/b;->e:Lcom/amap/api/mapcore/util/q;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/q;->c()V

    .line 3055
    :cond_1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/b;->o:Lcom/amap/api/maps/CustomRenderer;

    if-eqz v0, :cond_2

    .line 3056
    iget-object v0, p0, Lcom/amap/api/mapcore/util/b;->o:Lcom/amap/api/maps/CustomRenderer;

    invoke-interface {v0}, Lcom/amap/api/maps/CustomRenderer;->OnMapReferencechanged()V

    .line 3059
    :cond_2
    return-void
.end method

.method public set3DBuildingEnabled(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1830
    iget-object v0, p0, Lcom/amap/api/mapcore/util/b;->au:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1843
    :goto_0
    return-void

    .line 1834
    :cond_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/b;->ay:Lcom/autonavi/amap/mapcore/MapConfig;

    invoke-virtual {v0, p1}, Lcom/autonavi/amap/mapcore/MapConfig;->setBuildingEnable(Z)V

    .line 1835
    invoke-direct {p0}, Lcom/amap/api/mapcore/util/b;->K()V

    .line 1836
    new-instance v0, Lcom/amap/api/mapcore/util/b$2;

    invoke-direct {v0, p0, p1}, Lcom/amap/api/mapcore/util/b$2;-><init>(Lcom/amap/api/mapcore/util/b;Z)V

    invoke-virtual {p0, v0}, Lcom/amap/api/mapcore/util/b;->a(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public setAMapGestureListener(Lcom/amap/api/maps/model/AMapGestureListener;)V
    .locals 1

    .prologue
    .line 3654
    iput-object p1, p0, Lcom/amap/api/mapcore/util/b;->ag:Lcom/amap/api/maps/model/AMapGestureListener;

    .line 3655
    iget-object v0, p0, Lcom/amap/api/mapcore/util/b;->h:Lcom/amap/api/mapcore/util/h;

    invoke-virtual {v0, p1}, Lcom/amap/api/mapcore/util/h;->a(Lcom/amap/api/maps/model/AMapGestureListener;)V

    .line 3656
    return-void
.end method

.method public setCenterToPixel(II)V
    .locals 1

    .prologue
    .line 2990
    iget-object v0, p0, Lcom/amap/api/mapcore/util/b;->O:Lcom/amap/api/mapcore/util/a;

    if-eqz v0, :cond_0

    .line 2991
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/amap/api/mapcore/util/b;->z:Z

    .line 2992
    iput p1, p0, Lcom/amap/api/mapcore/util/b;->A:I

    .line 2993
    iput p2, p0, Lcom/amap/api/mapcore/util/b;->B:I

    .line 2995
    :cond_0
    return-void
.end method

.method public setCustomMapStylePath(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 3798
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3799
    iget-object v0, p0, Lcom/amap/api/mapcore/util/b;->ay:Lcom/autonavi/amap/mapcore/MapConfig;

    invoke-virtual {v0, p1}, Lcom/autonavi/amap/mapcore/MapConfig;->setCustomStylePath(Ljava/lang/String;)V

    .line 3800
    :cond_0
    return-void
.end method

.method public setCustomRenderer(Lcom/amap/api/maps/CustomRenderer;)V
    .locals 0

    .prologue
    .line 3194
    iput-object p1, p0, Lcom/amap/api/mapcore/util/b;->o:Lcom/amap/api/maps/CustomRenderer;

    .line 3195
    return-void
.end method

.method public setIndoorBuildingInfo(Lcom/amap/api/maps/model/IndoorBuildingInfo;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3158
    iget-object v0, p0, Lcom/amap/api/mapcore/util/b;->au:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3185
    :cond_0
    :goto_0
    return-void

    .line 3162
    :cond_1
    if-eqz p1, :cond_0

    iget-object v0, p1, Lcom/amap/api/maps/model/IndoorBuildingInfo;->activeFloorName:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/amap/api/maps/model/IndoorBuildingInfo;->poiid:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 3167
    check-cast p1, Lcom/amap/api/mapcore/util/aq;

    iput-object p1, p0, Lcom/amap/api/mapcore/util/b;->i:Lcom/amap/api/mapcore/util/aq;

    .line 3172
    invoke-direct {p0}, Lcom/amap/api/mapcore/util/b;->K()V

    .line 3173
    const/4 v0, 0x0

    iput v0, p0, Lcom/amap/api/mapcore/util/b;->k:I

    .line 3174
    new-instance v0, Lcom/amap/api/mapcore/util/b$9;

    invoke-direct {v0, p0}, Lcom/amap/api/mapcore/util/b$9;-><init>(Lcom/amap/api/mapcore/util/b;)V

    invoke-virtual {p0, v0}, Lcom/amap/api/mapcore/util/b;->a(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public setIndoorEnabled(Z)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/16 v1, 0x402

    const/4 v3, 0x0

    .line 1791
    iget-object v0, p0, Lcom/amap/api/mapcore/util/b;->au:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1825
    :cond_0
    :goto_0
    return-void

    .line 1795
    :cond_1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/b;->ay:Lcom/autonavi/amap/mapcore/MapConfig;

    invoke-virtual {v0, p1}, Lcom/autonavi/amap/mapcore/MapConfig;->setIndoorEnable(Z)V

    .line 1796
    invoke-direct {p0}, Lcom/amap/api/mapcore/util/b;->K()V

    .line 1797
    if-eqz p1, :cond_3

    .line 1798
    iget-object v0, p0, Lcom/amap/api/mapcore/util/b;->M:Lcom/autonavi/amap/mapcore/MapCore;

    const/4 v2, 0x1

    move v4, v3

    move v5, v3

    invoke-virtual/range {v0 .. v5}, Lcom/autonavi/amap/mapcore/MapCore;->setParameter(IIIII)V

    .line 1807
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/b;->ai:Lcom/amap/api/mapcore/util/o;

    invoke-interface {v0}, Lcom/amap/api/mapcore/util/o;->isIndoorSwitchEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1808
    iget-object v0, p0, Lcom/amap/api/mapcore/util/b;->n:Landroid/os/Handler;

    new-instance v1, Lcom/amap/api/mapcore/util/b$21;

    invoke-direct {v1, p0, p1}, Lcom/amap/api/mapcore/util/b$21;-><init>(Lcom/amap/api/mapcore/util/b;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 1800
    :cond_3
    iget-object v0, p0, Lcom/amap/api/mapcore/util/b;->M:Lcom/autonavi/amap/mapcore/MapCore;

    move v2, v3

    move v4, v3

    move v5, v3

    invoke-virtual/range {v0 .. v5}, Lcom/autonavi/amap/mapcore/MapCore;->setParameter(IIIII)V

    .line 1802
    iget-object v1, p0, Lcom/amap/api/mapcore/util/b;->ay:Lcom/autonavi/amap/mapcore/MapConfig;

    iget-object v0, p0, Lcom/amap/api/mapcore/util/b;->ay:Lcom/autonavi/amap/mapcore/MapConfig;

    invoke-virtual {v0}, Lcom/autonavi/amap/mapcore/MapConfig;->isSetLimitZoomLevel()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/amap/api/mapcore/util/b;->ay:Lcom/autonavi/amap/mapcore/MapConfig;

    invoke-virtual {v0}, Lcom/autonavi/amap/mapcore/MapConfig;->getMaxZoomLevel()F

    move-result v0

    :goto_2
    iput v0, v1, Lcom/autonavi/amap/mapcore/MapConfig;->maxZoomLevel:F

    .line 1803
    iget-object v0, p0, Lcom/amap/api/mapcore/util/b;->ai:Lcom/amap/api/mapcore/util/o;

    invoke-interface {v0}, Lcom/amap/api/mapcore/util/o;->isZoomControlsEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1804
    invoke-virtual {p0}, Lcom/amap/api/mapcore/util/b;->h()V

    goto :goto_1

    .line 1802
    :cond_4
    const/high16 v0, 0x41980000    # 19.0f

    goto :goto_2
.end method

.method public setInfoWindowAdapter(Lcom/amap/api/maps/AMap$InfoWindowAdapter;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2038
    iget-object v0, p0, Lcom/amap/api/mapcore/util/b;->au:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2070
    :cond_0
    :goto_0
    return-void

    .line 2044
    :cond_1
    :try_start_0
    instance-of v0, p1, Lcom/amap/api/maps/AMap$MultiPositionInfoWindowAdapter;

    if-eqz v0, :cond_3

    .line 2046
    iget-object v0, p0, Lcom/amap/api/mapcore/util/b;->j:Lcom/amap/api/mapcore/util/cq;

    if-eqz v0, :cond_2

    .line 2047
    iget-object v0, p0, Lcom/amap/api/mapcore/util/b;->j:Lcom/amap/api/mapcore/util/cq;

    invoke-interface {v0}, Lcom/amap/api/mapcore/util/cq;->d()V

    .line 2049
    :cond_2
    iget-object v0, p0, Lcom/amap/api/mapcore/util/b;->Q:Lcom/amap/api/mapcore/util/de;

    iput-object v0, p0, Lcom/amap/api/mapcore/util/b;->j:Lcom/amap/api/mapcore/util/cq;

    .line 2050
    iget-object v0, p0, Lcom/amap/api/mapcore/util/b;->Q:Lcom/amap/api/mapcore/util/de;

    if-eqz v0, :cond_0

    .line 2051
    iget-object v0, p0, Lcom/amap/api/mapcore/util/b;->Q:Lcom/amap/api/mapcore/util/de;

    check-cast p1, Lcom/amap/api/maps/AMap$MultiPositionInfoWindowAdapter;

    invoke-virtual {v0, p1}, Lcom/amap/api/mapcore/util/de;->a(Lcom/amap/api/maps/AMap$MultiPositionInfoWindowAdapter;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2066
    :catch_0
    move-exception v0

    .line 2067
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 2055
    :cond_3
    :try_start_1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/b;->Q:Lcom/amap/api/mapcore/util/de;

    if-eqz v0, :cond_4

    .line 2056
    iget-object v0, p0, Lcom/amap/api/mapcore/util/b;->Q:Lcom/amap/api/mapcore/util/de;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/de;->destroy()V

    .line 2063
    :cond_4
    iget-object v0, p0, Lcom/amap/api/mapcore/util/b;->g:Lcom/amap/api/mapcore/util/es;

    iput-object v0, p0, Lcom/amap/api/mapcore/util/b;->j:Lcom/amap/api/mapcore/util/cq;

    .line 2064
    iget-object v0, p0, Lcom/amap/api/mapcore/util/b;->g:Lcom/amap/api/mapcore/util/es;

    invoke-virtual {v0, p1}, Lcom/amap/api/mapcore/util/es;->a(Lcom/amap/api/maps/AMap$InfoWindowAdapter;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public setLoadOfflineData(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3020
    new-instance v0, Lcom/amap/api/mapcore/util/b$6;

    invoke-direct {v0, p0, p1}, Lcom/amap/api/mapcore/util/b$6;-><init>(Lcom/amap/api/mapcore/util/b;Z)V

    invoke-virtual {p0, v0}, Lcom/amap/api/mapcore/util/b;->a(Ljava/lang/Runnable;)V

    .line 3027
    return-void
.end method

.method public setLocationSource(Lcom/amap/api/maps/LocationSource;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 1897
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/b;->au:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1911
    :goto_0
    return-void

    .line 1901
    :cond_0
    iput-object p1, p0, Lcom/amap/api/mapcore/util/b;->aj:Lcom/amap/api/maps/LocationSource;

    .line 1902
    if-eqz p1, :cond_1

    .line 1903
    iget-object v0, p0, Lcom/amap/api/mapcore/util/b;->g:Lcom/amap/api/mapcore/util/es;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/es;->g()Lcom/amap/api/mapcore/util/er;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/amap/api/mapcore/util/er;->a(Z)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1907
    :catch_0
    move-exception v0

    .line 1908
    const-string/jumbo v1, "AMapDelegateImp"

    const-string/jumbo v2, "setLocationSource"

    invoke-static {v0, v1, v2}, Lcom/amap/api/mapcore/util/ft;->b(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 1909
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 1905
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/b;->g:Lcom/amap/api/mapcore/util/es;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/es;->g()Lcom/amap/api/mapcore/util/er;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/amap/api/mapcore/util/er;->a(Z)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public setMapCustomEnable(Z)V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 3804
    iget-object v0, p0, Lcom/amap/api/mapcore/util/b;->ay:Lcom/autonavi/amap/mapcore/MapConfig;

    invoke-virtual {v0}, Lcom/autonavi/amap/mapcore/MapConfig;->getCustomStylePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3816
    :cond_0
    :goto_0
    return-void

    .line 3807
    :cond_1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/b;->ay:Lcom/autonavi/amap/mapcore/MapConfig;

    invoke-virtual {v0, p1}, Lcom/autonavi/amap/mapcore/MapConfig;->setCustomStyleEnable(Z)V

    .line 3808
    if-eqz p1, :cond_2

    .line 3809
    sget-object v0, Lcom/amap/api/mapcore/util/i$a;->a:Lcom/amap/api/mapcore/util/i$a;

    sget-object v1, Lcom/amap/api/mapcore/util/i$c;->a:Lcom/amap/api/mapcore/util/i$c;

    invoke-virtual {p0, v0, v1}, Lcom/amap/api/mapcore/util/b;->a(Lcom/amap/api/mapcore/util/i$a;Lcom/amap/api/mapcore/util/i$c;)V

    goto :goto_0

    .line 3811
    :cond_2
    iget-object v0, p0, Lcom/amap/api/mapcore/util/b;->G:Lcom/amap/api/mapcore/util/i$c;

    if-eqz v0, :cond_0

    .line 3812
    iget-object v0, p0, Lcom/amap/api/mapcore/util/b;->H:Lcom/amap/api/mapcore/util/i$a;

    iget-object v1, p0, Lcom/amap/api/mapcore/util/b;->G:Lcom/amap/api/mapcore/util/i$c;

    iget-object v2, p0, Lcom/amap/api/mapcore/util/b;->I:Lcom/amap/api/mapcore/util/i$b;

    invoke-virtual {p0, v0, v1, v2}, Lcom/amap/api/mapcore/util/b;->a(Lcom/amap/api/mapcore/util/i$a;Lcom/amap/api/mapcore/util/i$c;Lcom/amap/api/mapcore/util/i$b;)V

    goto :goto_0
.end method

.method public setMapStatusLimits(Lcom/amap/api/maps/model/LatLngBounds;)V
    .locals 1

    .prologue
    .line 3732
    iget-object v0, p0, Lcom/amap/api/mapcore/util/b;->ay:Lcom/autonavi/amap/mapcore/MapConfig;

    invoke-virtual {v0, p1}, Lcom/autonavi/amap/mapcore/MapConfig;->setLimitLatLngBounds(Lcom/amap/api/maps/model/LatLngBounds;)V

    .line 3733
    invoke-direct {p0}, Lcom/amap/api/mapcore/util/b;->W()V

    .line 3736
    return-void
.end method

.method public setMapTextEnable(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1769
    iget-object v0, p0, Lcom/amap/api/mapcore/util/b;->au:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1782
    :goto_0
    return-void

    .line 1773
    :cond_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/b;->ay:Lcom/autonavi/amap/mapcore/MapConfig;

    invoke-virtual {v0, p1}, Lcom/autonavi/amap/mapcore/MapConfig;->setMapTextEnable(Z)V

    .line 1774
    invoke-direct {p0}, Lcom/amap/api/mapcore/util/b;->K()V

    .line 1775
    new-instance v0, Lcom/amap/api/mapcore/util/b$20;

    invoke-direct {v0, p0, p1}, Lcom/amap/api/mapcore/util/b$20;-><init>(Lcom/amap/api/mapcore/util/b;Z)V

    invoke-virtual {p0, v0}, Lcom/amap/api/mapcore/util/b;->a(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public setMapTextZIndex(I)V
    .locals 0

    .prologue
    .line 3004
    iput p1, p0, Lcom/amap/api/mapcore/util/b;->an:I

    .line 3005
    return-void
.end method

.method public setMapType(I)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1573
    iput p1, p0, Lcom/amap/api/mapcore/util/b;->L:I

    .line 1582
    iget-object v0, p0, Lcom/amap/api/mapcore/util/b;->ay:Lcom/autonavi/amap/mapcore/MapConfig;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/autonavi/amap/mapcore/MapConfig;->setCustomStyleEnable(Z)V

    .line 1583
    iput-object v2, p0, Lcom/amap/api/mapcore/util/b;->G:Lcom/amap/api/mapcore/util/i$c;

    .line 1584
    iput-object v2, p0, Lcom/amap/api/mapcore/util/b;->H:Lcom/amap/api/mapcore/util/i$a;

    .line 1585
    iput-object v2, p0, Lcom/amap/api/mapcore/util/b;->I:Lcom/amap/api/mapcore/util/i$b;

    .line 1588
    if-ne p1, v3, :cond_0

    .line 1589
    :try_start_0
    sget-object v0, Lcom/amap/api/mapcore/util/i$a;->a:Lcom/amap/api/mapcore/util/i$a;

    sget-object v1, Lcom/amap/api/mapcore/util/i$c;->a:Lcom/amap/api/mapcore/util/i$c;

    invoke-virtual {p0, v0, v1}, Lcom/amap/api/mapcore/util/b;->a(Lcom/amap/api/mapcore/util/i$a;Lcom/amap/api/mapcore/util/i$c;)V

    .line 1602
    :goto_0
    invoke-direct {p0}, Lcom/amap/api/mapcore/util/b;->K()V

    .line 1607
    :goto_1
    return-void

    .line 1590
    :cond_0
    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    .line 1591
    sget-object v0, Lcom/amap/api/mapcore/util/i$a;->b:Lcom/amap/api/mapcore/util/i$a;

    sget-object v1, Lcom/amap/api/mapcore/util/i$c;->a:Lcom/amap/api/mapcore/util/i$c;

    invoke-virtual {p0, v0, v1}, Lcom/amap/api/mapcore/util/b;->a(Lcom/amap/api/mapcore/util/i$a;Lcom/amap/api/mapcore/util/i$c;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1603
    :catch_0
    move-exception v0

    .line 1604
    const-string/jumbo v1, "AMapDelegateImp"

    const-string/jumbo v2, "setMaptype"

    invoke-static {v0, v1, v2}, Lcom/amap/api/mapcore/util/ft;->b(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 1605
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1

    .line 1592
    :cond_1
    const/4 v0, 0x3

    if-ne p1, v0, :cond_2

    .line 1593
    :try_start_1
    sget-object v0, Lcom/amap/api/mapcore/util/i$a;->a:Lcom/amap/api/mapcore/util/i$a;

    sget-object v1, Lcom/amap/api/mapcore/util/i$c;->b:Lcom/amap/api/mapcore/util/i$c;

    sget-object v2, Lcom/amap/api/mapcore/util/i$b;->e:Lcom/amap/api/mapcore/util/i$b;

    invoke-virtual {p0, v0, v1, v2}, Lcom/amap/api/mapcore/util/b;->a(Lcom/amap/api/mapcore/util/i$a;Lcom/amap/api/mapcore/util/i$c;Lcom/amap/api/mapcore/util/i$b;)V

    goto :goto_0

    .line 1595
    :cond_2
    const/4 v0, 0x4

    if-ne p1, v0, :cond_3

    .line 1596
    sget-object v0, Lcom/amap/api/mapcore/util/i$a;->a:Lcom/amap/api/mapcore/util/i$a;

    sget-object v1, Lcom/amap/api/mapcore/util/i$c;->a:Lcom/amap/api/mapcore/util/i$c;

    sget-object v2, Lcom/amap/api/mapcore/util/i$b;->e:Lcom/amap/api/mapcore/util/i$b;

    invoke-virtual {p0, v0, v1, v2}, Lcom/amap/api/mapcore/util/b;->a(Lcom/amap/api/mapcore/util/i$a;Lcom/amap/api/mapcore/util/i$c;Lcom/amap/api/mapcore/util/i$b;)V

    goto :goto_0

    .line 1599
    :cond_3
    const/4 v0, 0x1

    iput v0, p0, Lcom/amap/api/mapcore/util/b;->L:I

    .line 1600
    sget-object v0, Lcom/amap/api/mapcore/util/i$a;->a:Lcom/amap/api/mapcore/util/i$a;

    sget-object v1, Lcom/amap/api/mapcore/util/i$c;->a:Lcom/amap/api/mapcore/util/i$c;

    invoke-virtual {p0, v0, v1}, Lcom/amap/api/mapcore/util/b;->a(Lcom/amap/api/mapcore/util/i$a;Lcom/amap/api/mapcore/util/i$c;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public setMaskLayerParams(IIIIIJ)V
    .locals 6

    .prologue
    .line 3669
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/b;->aA:Lcom/amap/api/mapcore/util/r;

    if-eqz v0, :cond_1

    .line 3670
    int-to-float v0, p4

    const/high16 v1, 0x437f0000    # 255.0f

    div-float v1, v0, v1

    .line 3672
    const/4 v0, -0x1

    if-ne p5, v0, :cond_2

    .line 3673
    new-instance v0, Lcom/amap/api/mapcore/util/dh;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/amap/api/mapcore/util/dh;-><init>(FF)V

    .line 3675
    new-instance v1, Lcom/amap/api/mapcore/util/b$14;

    invoke-direct {v1, p0, p5}, Lcom/amap/api/mapcore/util/b$14;-><init>(Lcom/amap/api/mapcore/util/b;I)V

    .line 3693
    invoke-virtual {v0, v1}, Lcom/amap/api/mapcore/util/dh;->a(Lcom/amap/api/maps/model/animation/Animation$AnimationListener;)V

    .line 3705
    :cond_0
    :goto_0
    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Lcom/amap/api/mapcore/util/dh;->a(Landroid/view/animation/Interpolator;)V

    .line 3706
    invoke-virtual {v0, p6, p7}, Lcom/amap/api/mapcore/util/dh;->a(J)V

    .line 3707
    iget-object v1, p0, Lcom/amap/api/mapcore/util/b;->aA:Lcom/amap/api/mapcore/util/r;

    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/amap/api/mapcore/util/r;->a(IIII)V

    .line 3708
    iget-object v1, p0, Lcom/amap/api/mapcore/util/b;->aA:Lcom/amap/api/mapcore/util/r;

    invoke-virtual {v1, v0}, Lcom/amap/api/mapcore/util/r;->a(Lcom/amap/api/mapcore/util/dh;)V

    .line 3713
    :cond_1
    :goto_1
    return-void

    .line 3695
    :cond_2
    iput p5, p0, Lcom/amap/api/mapcore/util/b;->J:I

    .line 3696
    new-instance v0, Lcom/amap/api/mapcore/util/dh;

    const/4 v2, 0x0

    invoke-direct {v0, v2, v1}, Lcom/amap/api/mapcore/util/dh;-><init>(FF)V

    .line 3697
    float-to-double v2, v1

    const-wide v4, 0x3fc999999999999aL    # 0.2

    cmpl-double v1, v2, v4

    if-lez v1, :cond_3

    .line 3698
    iget-object v1, p0, Lcom/amap/api/mapcore/util/b;->g:Lcom/amap/api/mapcore/util/es;

    if-eqz v1, :cond_0

    .line 3699
    iget-object v1, p0, Lcom/amap/api/mapcore/util/b;->g:Lcom/amap/api/mapcore/util/es;

    invoke-virtual {v1}, Lcom/amap/api/mapcore/util/es;->i()Lcom/amap/api/mapcore/util/eu;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/amap/api/mapcore/util/eu;->setVisibility(I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 3710
    :catch_0
    move-exception v0

    .line 3711
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1

    .line 3701
    :cond_3
    :try_start_1
    iget-object v1, p0, Lcom/amap/api/mapcore/util/b;->g:Lcom/amap/api/mapcore/util/es;

    if-eqz v1, :cond_0

    .line 3702
    iget-object v1, p0, Lcom/amap/api/mapcore/util/b;->g:Lcom/amap/api/mapcore/util/es;

    invoke-virtual {v1}, Lcom/amap/api/mapcore/util/es;->i()Lcom/amap/api/mapcore/util/eu;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/amap/api/mapcore/util/eu;->setVisibility(I)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public setMaxZoomLevel(F)V
    .locals 1

    .prologue
    .line 3722
    iget-object v0, p0, Lcom/amap/api/mapcore/util/b;->ay:Lcom/autonavi/amap/mapcore/MapConfig;

    invoke-virtual {v0, p1}, Lcom/autonavi/amap/mapcore/MapConfig;->setMaxZoomLevel(F)V

    .line 3723
    return-void
.end method

.method public setMinZoomLevel(F)V
    .locals 1

    .prologue
    .line 3727
    iget-object v0, p0, Lcom/amap/api/mapcore/util/b;->ay:Lcom/autonavi/amap/mapcore/MapConfig;

    invoke-virtual {v0, p1}, Lcom/autonavi/amap/mapcore/MapConfig;->setMinZoomLevel(F)V

    .line 3728
    return-void
.end method

.method public setMyLocationEnabled(Z)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 1853
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/b;->g:Lcom/amap/api/mapcore/util/es;

    if-eqz v0, :cond_0

    .line 1854
    iget-object v0, p0, Lcom/amap/api/mapcore/util/b;->g:Lcom/amap/api/mapcore/util/es;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/es;->g()Lcom/amap/api/mapcore/util/er;

    move-result-object v0

    .line 1855
    iget-object v1, p0, Lcom/amap/api/mapcore/util/b;->aj:Lcom/amap/api/maps/LocationSource;

    if-eqz v1, :cond_4

    .line 1856
    if-eqz p1, :cond_2

    .line 1857
    iget-object v1, p0, Lcom/amap/api/mapcore/util/b;->aj:Lcom/amap/api/maps/LocationSource;

    iget-object v2, p0, Lcom/amap/api/mapcore/util/b;->ad:Lcom/amap/api/mapcore/util/e;

    invoke-interface {v1, v2}, Lcom/amap/api/maps/LocationSource;->activate(Lcom/amap/api/maps/LocationSource$OnLocationChangedListener;)V

    .line 1858
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/amap/api/mapcore/util/er;->a(Z)V

    .line 1859
    iget-object v0, p0, Lcom/amap/api/mapcore/util/b;->al:Lcom/amap/api/mapcore/util/da;

    if-nez v0, :cond_0

    .line 1860
    new-instance v0, Lcom/amap/api/mapcore/util/da;

    iget-object v1, p0, Lcom/amap/api/mapcore/util/b;->N:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Lcom/amap/api/mapcore/util/da;-><init>(Lcom/amap/api/mapcore/util/l;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/amap/api/mapcore/util/b;->al:Lcom/amap/api/mapcore/util/da;

    .line 1874
    :cond_0
    :goto_0
    if-nez p1, :cond_1

    .line 1875
    iget-object v0, p0, Lcom/amap/api/mapcore/util/b;->ai:Lcom/amap/api/mapcore/util/o;

    invoke-interface {v0, p1}, Lcom/amap/api/mapcore/util/o;->setMyLocationButtonEnabled(Z)V

    .line 1877
    :cond_1
    iput-boolean p1, p0, Lcom/amap/api/mapcore/util/b;->ap:Z

    .line 1878
    invoke-direct {p0}, Lcom/amap/api/mapcore/util/b;->K()V

    .line 1883
    :goto_1
    return-void

    .line 1863
    :cond_2
    iget-object v0, p0, Lcom/amap/api/mapcore/util/b;->al:Lcom/amap/api/mapcore/util/da;

    if-eqz v0, :cond_3

    .line 1864
    iget-object v0, p0, Lcom/amap/api/mapcore/util/b;->al:Lcom/amap/api/mapcore/util/da;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/da;->b()V

    .line 1865
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/api/mapcore/util/b;->al:Lcom/amap/api/mapcore/util/da;

    .line 1867
    :cond_3
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/api/mapcore/util/b;->ao:Landroid/location/Location;

    .line 1868
    iget-object v0, p0, Lcom/amap/api/mapcore/util/b;->aj:Lcom/amap/api/maps/LocationSource;

    invoke-interface {v0}, Lcom/amap/api/maps/LocationSource;->deactivate()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1879
    :catch_0
    move-exception v0

    .line 1880
    const-string/jumbo v1, "AMapDelegateImp"

    const-string/jumbo v2, "setMyLocationEnabled"

    invoke-static {v0, v1, v2}, Lcom/amap/api/mapcore/util/ft;->b(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 1881
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1

    .line 1871
    :cond_4
    const/4 v1, 0x0

    :try_start_1
    invoke-virtual {v0, v1}, Lcom/amap/api/mapcore/util/er;->a(Z)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public setMyLocationRotateAngle(F)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 550
    iget-object v0, p0, Lcom/amap/api/mapcore/util/b;->al:Lcom/amap/api/mapcore/util/da;

    if-eqz v0, :cond_0

    .line 551
    iget-object v0, p0, Lcom/amap/api/mapcore/util/b;->al:Lcom/amap/api/mapcore/util/da;

    invoke-virtual {v0, p1}, Lcom/amap/api/mapcore/util/da;->a(F)V

    .line 553
    :cond_0
    return-void
.end method

.method public setMyLocationStyle(Lcom/amap/api/maps/model/MyLocationStyle;)V
    .locals 1

    .prologue
    .line 536
    iget-object v0, p0, Lcom/amap/api/mapcore/util/b;->al:Lcom/amap/api/mapcore/util/da;

    if-eqz v0, :cond_0

    .line 537
    iget-object v0, p0, Lcom/amap/api/mapcore/util/b;->al:Lcom/amap/api/mapcore/util/da;

    invoke-virtual {v0, p1}, Lcom/amap/api/mapcore/util/da;->a(Lcom/amap/api/maps/model/MyLocationStyle;)V

    .line 539
    :cond_0
    return-void
.end method

.method public setMyLocationType(I)V
    .locals 1

    .prologue
    .line 543
    iget-object v0, p0, Lcom/amap/api/mapcore/util/b;->al:Lcom/amap/api/mapcore/util/da;

    if-eqz v0, :cond_0

    .line 544
    iget-object v0, p0, Lcom/amap/api/mapcore/util/b;->al:Lcom/amap/api/mapcore/util/da;

    invoke-virtual {v0, p1}, Lcom/amap/api/mapcore/util/da;->a(I)V

    .line 546
    :cond_0
    return-void
.end method

.method public setMyTrafficStyle(Lcom/amap/api/maps/model/MyTrafficStyle;)V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v2, 0x1

    .line 1084
    iget-object v0, p0, Lcom/amap/api/mapcore/util/b;->au:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1098
    :cond_0
    :goto_0
    return-void

    .line 1088
    :cond_1
    iget-boolean v0, p0, Lcom/amap/api/mapcore/util/b;->aq:Z

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 1089
    iput-object p1, p0, Lcom/amap/api/mapcore/util/b;->C:Lcom/amap/api/maps/model/MyTrafficStyle;

    .line 1090
    iget-object v0, p0, Lcom/amap/api/mapcore/util/b;->M:Lcom/autonavi/amap/mapcore/MapCore;

    const/16 v1, 0x899

    move v3, v2

    move v4, v2

    move v5, v2

    invoke-virtual/range {v0 .. v5}, Lcom/autonavi/amap/mapcore/MapCore;->setParameter(IIIII)V

    .line 1094
    iget-object v0, p0, Lcom/amap/api/mapcore/util/b;->M:Lcom/autonavi/amap/mapcore/MapCore;

    const/16 v1, 0x89a

    invoke-virtual {p1}, Lcom/amap/api/maps/model/MyTrafficStyle;->getSmoothColor()I

    move-result v2

    .line 1095
    invoke-virtual {p1}, Lcom/amap/api/maps/model/MyTrafficStyle;->getSlowColor()I

    move-result v3

    invoke-virtual {p1}, Lcom/amap/api/maps/model/MyTrafficStyle;->getCongestedColor()I

    move-result v4

    .line 1096
    invoke-virtual {p1}, Lcom/amap/api/maps/model/MyTrafficStyle;->getSeriousCongestedColor()I

    move-result v5

    .line 1094
    invoke-virtual/range {v0 .. v5}, Lcom/autonavi/amap/mapcore/MapCore;->setParameter(IIIII)V

    goto :goto_0
.end method

.method public setOnCameraChangeListener(Lcom/amap/api/maps/AMap$OnCameraChangeListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1957
    iput-object p1, p0, Lcom/amap/api/mapcore/util/b;->W:Lcom/amap/api/maps/AMap$OnCameraChangeListener;

    .line 1958
    return-void
.end method

.method public setOnIndoorBuildingActiveListener(Lcom/amap/api/maps/AMap$OnIndoorBuildingActiveListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2032
    iput-object p1, p0, Lcom/amap/api/mapcore/util/b;->ac:Lcom/amap/api/maps/AMap$OnIndoorBuildingActiveListener;

    .line 2033
    return-void
.end method

.method public setOnInfoWindowClickListener(Lcom/amap/api/maps/AMap$OnInfoWindowClickListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2025
    iput-object p1, p0, Lcom/amap/api/mapcore/util/b;->ab:Lcom/amap/api/maps/AMap$OnInfoWindowClickListener;

    .line 2026
    return-void
.end method

.method public setOnMapClickListener(Lcom/amap/api/maps/AMap$OnMapClickListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1977
    iput-object p1, p0, Lcom/amap/api/mapcore/util/b;->X:Lcom/amap/api/maps/AMap$OnMapClickListener;

    .line 1978
    return-void
.end method

.method public setOnMapLongClickListener(Lcom/amap/api/maps/AMap$OnMapLongClickListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1995
    iput-object p1, p0, Lcom/amap/api/mapcore/util/b;->aa:Lcom/amap/api/maps/AMap$OnMapLongClickListener;

    .line 1996
    return-void
.end method

.method public setOnMapTouchListener(Lcom/amap/api/maps/AMap$OnMapTouchListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1983
    iput-object p1, p0, Lcom/amap/api/mapcore/util/b;->Y:Lcom/amap/api/maps/AMap$OnMapTouchListener;

    .line 1984
    return-void
.end method

.method public setOnMaploadedListener(Lcom/amap/api/maps/AMap$OnMapLoadedListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2019
    iput-object p1, p0, Lcom/amap/api/mapcore/util/b;->V:Lcom/amap/api/maps/AMap$OnMapLoadedListener;

    .line 2020
    return-void
.end method

.method public setOnMarkerClickListener(Lcom/amap/api/maps/AMap$OnMarkerClickListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2001
    iput-object p1, p0, Lcom/amap/api/mapcore/util/b;->S:Lcom/amap/api/maps/AMap$OnMarkerClickListener;

    .line 2002
    return-void
.end method

.method public setOnMarkerDragListener(Lcom/amap/api/maps/AMap$OnMarkerDragListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2013
    iput-object p1, p0, Lcom/amap/api/mapcore/util/b;->U:Lcom/amap/api/maps/AMap$OnMarkerDragListener;

    .line 2014
    return-void
.end method

.method public setOnMyLocationChangeListener(Lcom/amap/api/maps/AMap$OnMyLocationChangeListener;)V
    .locals 0

    .prologue
    .line 286
    iput-object p1, p0, Lcom/amap/api/mapcore/util/b;->R:Lcom/amap/api/maps/AMap$OnMyLocationChangeListener;

    .line 287
    return-void
.end method

.method public setOnPOIClickListener(Lcom/amap/api/maps/AMap$OnPOIClickListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1989
    iput-object p1, p0, Lcom/amap/api/mapcore/util/b;->Z:Lcom/amap/api/maps/AMap$OnPOIClickListener;

    .line 1990
    return-void
.end method

.method public setOnPolylineClickListener(Lcom/amap/api/maps/AMap$OnPolylineClickListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2007
    iput-object p1, p0, Lcom/amap/api/mapcore/util/b;->T:Lcom/amap/api/maps/AMap$OnPolylineClickListener;

    .line 2008
    return-void
.end method

.method public setRenderFps(I)V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 3334
    const/16 v0, 0xa

    const/16 v1, 0x28

    :try_start_0
    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/amap/api/mapcore/util/b;->a:I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 3338
    :goto_0
    return-void

    .line 3335
    :catch_0
    move-exception v0

    .line 3336
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public declared-synchronized setRunLowFrame(Z)V
    .locals 1

    .prologue
    .line 803
    monitor-enter p0

    if-nez p1, :cond_0

    .line 806
    :try_start_0
    invoke-direct {p0}, Lcom/amap/api/mapcore/util/b;->G()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 808
    :cond_0
    monitor-exit p0

    return-void

    .line 803
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setTrafficEnabled(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1750
    iget-object v0, p0, Lcom/amap/api/mapcore/util/b;->au:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1765
    :goto_0
    return-void

    .line 1754
    :cond_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/b;->ay:Lcom/autonavi/amap/mapcore/MapConfig;

    invoke-virtual {v0, p1}, Lcom/autonavi/amap/mapcore/MapConfig;->setTrafficEnabled(Z)V

    .line 1755
    invoke-direct {p0}, Lcom/amap/api/mapcore/util/b;->K()V

    .line 1756
    new-instance v0, Lcom/amap/api/mapcore/util/b$19;

    invoke-direct {v0, p0, p1}, Lcom/amap/api/mapcore/util/b$19;-><init>(Lcom/amap/api/mapcore/util/b;Z)V

    invoke-virtual {p0, v0}, Lcom/amap/api/mapcore/util/b;->a(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public setVisibilityEx(I)V
    .locals 1

    .prologue
    .line 3063
    iget-object v0, p0, Lcom/amap/api/mapcore/util/b;->d:Lcom/amap/api/mapcore/util/m;

    invoke-interface {v0, p1}, Lcom/amap/api/mapcore/util/m;->setVisibility(I)V

    .line 3064
    return-void
.end method

.method public setZOrderOnTop(Z)V
    .locals 1

    .prologue
    .line 1155
    iget-object v0, p0, Lcom/amap/api/mapcore/util/b;->d:Lcom/amap/api/mapcore/util/m;

    invoke-interface {v0, p1}, Lcom/amap/api/mapcore/util/m;->setZOrderOnTop(Z)V

    .line 1156
    return-void
.end method

.method public setZoomScaleParam(F)V
    .locals 0

    .prologue
    .line 3342
    iput p1, p0, Lcom/amap/api/mapcore/util/b;->t:F

    .line 3343
    return-void
.end method

.method public stopAnimation()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 1348
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/b;->M:Lcom/autonavi/amap/mapcore/MapCore;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amap/api/mapcore/util/b;->M:Lcom/autonavi/amap/mapcore/MapCore;

    invoke-virtual {v0}, Lcom/autonavi/amap/mapcore/MapCore;->getAnimateionsCount()I

    move-result v0

    if-lez v0, :cond_1

    .line 1349
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/amap/api/mapcore/util/b;->a(ZLcom/amap/api/maps/model/CameraPosition;)V

    .line 1350
    iget-object v0, p0, Lcom/amap/api/mapcore/util/b;->M:Lcom/autonavi/amap/mapcore/MapCore;

    invoke-virtual {v0}, Lcom/autonavi/amap/mapcore/MapCore;->clearAnimations()V

    .line 1351
    iget-object v0, p0, Lcom/amap/api/mapcore/util/b;->am:Lcom/amap/api/maps/AMap$CancelableCallback;

    if-eqz v0, :cond_0

    .line 1354
    iget-object v0, p0, Lcom/amap/api/mapcore/util/b;->am:Lcom/amap/api/maps/AMap$CancelableCallback;

    invoke-interface {v0}, Lcom/amap/api/maps/AMap$CancelableCallback;->onCancel()V

    .line 1357
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/api/mapcore/util/b;->am:Lcom/amap/api/maps/AMap$CancelableCallback;

    .line 1359
    :cond_1
    invoke-direct {p0}, Lcom/amap/api/mapcore/util/b;->K()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 1364
    :goto_0
    return-void

    .line 1360
    :catch_0
    move-exception v0

    .line 1361
    const-string/jumbo v1, "AMapDelegateImp"

    const-string/jumbo v2, "CancelableCallback.onCancel"

    invoke-static {v0, v1, v2}, Lcom/amap/api/mapcore/util/ft;->b(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 1362
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public t()Landroid/content/Context;
    .locals 1

    .prologue
    .line 3198
    iget-object v0, p0, Lcom/amap/api/mapcore/util/b;->N:Landroid/content/Context;

    return-object v0
.end method

.method public u()F
    .locals 1

    .prologue
    .line 3306
    iget v0, p0, Lcom/amap/api/mapcore/util/b;->t:F

    return v0
.end method

.method public v()Lcom/amap/api/mapcore/util/i$c;
    .locals 1

    .prologue
    .line 3310
    iget-object v0, p0, Lcom/amap/api/mapcore/util/b;->D:Lcom/amap/api/mapcore/util/i$c;

    return-object v0
.end method

.method public w()Lcom/amap/api/mapcore/util/i$a;
    .locals 1

    .prologue
    .line 3314
    iget-object v0, p0, Lcom/amap/api/mapcore/util/b;->E:Lcom/amap/api/mapcore/util/i$a;

    return-object v0
.end method

.method public x()Lcom/amap/api/mapcore/util/i$b;
    .locals 1

    .prologue
    .line 3318
    iget-object v0, p0, Lcom/amap/api/mapcore/util/b;->F:Lcom/amap/api/mapcore/util/i$b;

    return-object v0
.end method

.method public y()F
    .locals 1

    .prologue
    .line 3352
    iget-object v0, p0, Lcom/amap/api/mapcore/util/b;->ay:Lcom/autonavi/amap/mapcore/MapConfig;

    invoke-virtual {v0}, Lcom/autonavi/amap/mapcore/MapConfig;->getS_r()F

    move-result v0

    return v0
.end method

.method public z()Landroid/view/View;
    .locals 1

    .prologue
    .line 3511
    iget-object v0, p0, Lcom/amap/api/mapcore/util/b;->d:Lcom/amap/api/mapcore/util/m;

    check-cast v0, Landroid/view/View;

    return-object v0
.end method
