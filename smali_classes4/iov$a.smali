.class public final Liov$a;
.super Ljava/lang/Object;
.source "H5Plugin.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Liov;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# static fields
.field public static A:Ljava/lang/String;

.field public static B:Ljava/lang/String;

.field public static C:Ljava/lang/String;

.field public static D:Ljava/lang/String;

.field public static E:Ljava/lang/String;

.field public static F:Ljava/lang/String;

.field public static G:Ljava/lang/String;

.field public static a:Ljava/lang/String;

.field public static b:Ljava/lang/String;

.field public static c:Ljava/lang/String;

.field public static d:Ljava/lang/String;

.field public static e:Ljava/lang/String;

.field public static f:Ljava/lang/String;

.field public static g:Ljava/lang/String;

.field public static h:Ljava/lang/String;

.field public static i:Ljava/lang/String;

.field public static j:Ljava/lang/String;

.field public static k:Ljava/lang/String;

.field public static l:Ljava/lang/String;

.field public static m:Ljava/lang/String;

.field public static n:Ljava/lang/String;

.field public static o:Ljava/lang/String;

.field public static p:Ljava/lang/String;

.field public static q:Ljava/lang/String;

.field public static r:Ljava/lang/String;

.field public static s:Ljava/lang/String;

.field public static t:Ljava/lang/String;

.field public static u:Ljava/lang/String;

.field public static v:Ljava/lang/String;

.field public static w:Ljava/lang/String;

.field public static x:Ljava/lang/String;

.field public static y:Ljava/lang/String;

.field public static z:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 341
    const-string/jumbo v0, "H5_FAVORITES_RESULT"

    sput-object v0, Liov$a;->a:Ljava/lang/String;

    .line 342
    const-string/jumbo v0, "H5_LONG_CLICK"

    sput-object v0, Liov$a;->b:Ljava/lang/String;

    .line 343
    const-string/jumbo v0, "H5_AL_GETSHARECONTENT_RESULT"

    sput-object v0, Liov$a;->c:Ljava/lang/String;

    .line 346
    const-string/jumbo v0, "H5_AL_PAY_BEFORE_INTERCEPT"

    sput-object v0, Liov$a;->d:Ljava/lang/String;

    .line 347
    const-string/jumbo v0, "H5_TAOBAOSSO_RESULT"

    sput-object v0, Liov$a;->e:Ljava/lang/String;

    .line 348
    const-string/jumbo v0, "H5_TAOBAOSSO_TIME"

    sput-object v0, Liov$a;->f:Ljava/lang/String;

    .line 350
    const-string/jumbo v0, "H5_AL_SESSION_ENTRYRPC_ERROR"

    sput-object v0, Liov$a;->g:Ljava/lang/String;

    .line 352
    const-string/jumbo v0, "H5_AL_JSAPI_RESULT_ERROR"

    sput-object v0, Liov$a;->h:Ljava/lang/String;

    .line 354
    const-string/jumbo v0, "H5_AL_SHARE_RESULT"

    sput-object v0, Liov$a;->i:Ljava/lang/String;

    .line 355
    const-string/jumbo v0, "H5_SHARE_RESULT"

    sput-object v0, Liov$a;->j:Ljava/lang/String;

    .line 356
    const-string/jumbo v0, "H5_AL_SESSION_FROM_NATIVE"

    sput-object v0, Liov$a;->k:Ljava/lang/String;

    .line 357
    const-string/jumbo v0, "H5_AL_SESSION_TO_NATIVE"

    sput-object v0, Liov$a;->l:Ljava/lang/String;

    .line 359
    const-string/jumbo v0, "H5_AL_NETWORK_PERFORMANCE_ERROR"

    sput-object v0, Liov$a;->m:Ljava/lang/String;

    .line 361
    const-string/jumbo v0, "H5_AL_SESSION_AUTOLOGIN"

    sput-object v0, Liov$a;->n:Ljava/lang/String;

    .line 362
    const-string/jumbo v0, "H5_OPEN_IN_BROWSER"

    sput-object v0, Liov$a;->o:Ljava/lang/String;

    .line 363
    const-string/jumbo v0, "H5_TOOLBAR_COPYLINK_BT"

    sput-object v0, Liov$a;->p:Ljava/lang/String;

    .line 365
    const-string/jumbo v0, "H5_AL_SESSION_ENTRY_ERROR"

    sput-object v0, Liov$a;->q:Ljava/lang/String;

    .line 366
    const-string/jumbo v0, "H5_AL_SESSION_FALLBACK"

    sput-object v0, Liov$a;->r:Ljava/lang/String;

    .line 369
    const-string/jumbo v0, "h5_dev_console"

    sput-object v0, Liov$a;->s:Ljava/lang/String;

    .line 370
    const-string/jumbo v0, "h5_dev_console_exception"

    sput-object v0, Liov$a;->t:Ljava/lang/String;

    .line 371
    const-string/jumbo v0, "h5_dev_js_api_to_web"

    sput-object v0, Liov$a;->u:Ljava/lang/String;

    .line 372
    const-string/jumbo v0, "h5_dev_js_api_to_native"

    sput-object v0, Liov$a;->v:Ljava/lang/String;

    .line 373
    const-string/jumbo v0, "h5_dev_webview_create"

    sput-object v0, Liov$a;->w:Ljava/lang/String;

    .line 374
    const-string/jumbo v0, "h5_dev_webview_release"

    sput-object v0, Liov$a;->x:Ljava/lang/String;

    .line 375
    const-string/jumbo v0, "h5_dev_net_work_start"

    sput-object v0, Liov$a;->y:Ljava/lang/String;

    .line 376
    const-string/jumbo v0, "h5_dev_net_work_finish"

    sput-object v0, Liov$a;->z:Ljava/lang/String;

    .line 377
    const-string/jumbo v0, "h5_dev_screenshot_upload"

    sput-object v0, Liov$a;->A:Ljava/lang/String;

    .line 379
    const-string/jumbo v0, "h5ResourceLost"

    sput-object v0, Liov$a;->B:Ljava/lang/String;

    .line 380
    const-string/jumbo v0, "getCameraAuthorizedStatus"

    sput-object v0, Liov$a;->C:Ljava/lang/String;

    .line 383
    const-string/jumbo v0, "restartTinyApp"

    sput-object v0, Liov$a;->D:Ljava/lang/String;

    .line 386
    const-string/jumbo v0, "hideCloseButton"

    sput-object v0, Liov$a;->E:Ljava/lang/String;

    .line 387
    const-string/jumbo v0, "h5_switch_sessiontab"

    sput-object v0, Liov$a;->F:Ljava/lang/String;

    .line 389
    const-string/jumbo v0, "page.bizReady"

    sput-object v0, Liov$a;->G:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
