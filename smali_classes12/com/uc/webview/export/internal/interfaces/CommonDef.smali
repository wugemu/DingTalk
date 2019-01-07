.class public Lcom/uc/webview/export/internal/interfaces/CommonDef;
.super Ljava/lang/Object;
.source "ProGuard"


# annotations
.annotation build Lcom/uc/webview/export/annotations/Reflection;
.end annotation


# static fields
.field public static final NETWORK_TYPE_DEGRADABLE_NETWORK:I = 0x2

.field public static final NETWORK_TYPE_HTTP_NETWORK:I = 0x0

.field public static final NETWORK_TYPE_SPDY_NETWORK:I = 0x1

.field public static final ON_CREATE_WINDOW_TYPE_NO:I = 0x0

.field public static final ON_CREATE_WINDOW_TYPE_SYSTEM:I = 0x1

.field public static final ON_CREATE_WINDOW_TYPE_UC:I = 0x2

.field public static final REQUEST_CSS:I = 0x3

.field public static final REQUEST_FAVICON:I = 0xd

.field public static final REQUEST_FONTRESOURCE:I = 0x5

.field public static final REQUEST_IMAGE:I = 0x6

.field public static final REQUEST_JS:I = 0x4

.field public static final REQUEST_MAINFRAME:I = 0x0

.field public static final REQUEST_MEDIA:I = 0x8

.field public static final REQUEST_OBJECT:I = 0x7

.field public static final REQUEST_PREFETCH:I = 0xb

.field public static final REQUEST_PREFRENDER:I = 0xc

.field public static final REQUEST_SHAREDWORKER:I = 0xa

.field public static final REQUEST_SOURCE_NORMAL:I = 0x0

.field public static final REQUEST_SOURCE_PRECONN:I = 0x5

.field public static final REQUEST_SOURCE_PREDICT:I = 0x9

.field public static final REQUEST_SOURCE_PREDICT_MAINPAGE:I = 0xb

.field public static final REQUEST_SOURCE_PREDICT_PAGEINFO:I = 0xd

.field public static final REQUEST_SOURCE_PREDICT_TOUCH:I = 0xc

.field public static final REQUEST_SOURCE_PREFETCH:I = 0xa

.field public static final REQUEST_SOURCE_PRELOAD:I = 0x1

.field public static final REQUEST_SOURCE_PREREAD:I = 0x4

.field public static final REQUEST_SOURCE_VALIDATE_CACHE:I = 0x2

.field public static final REQUEST_SUBFRAME:I = 0x1

.field public static final REQUEST_SUBRESOURCE:I = 0x2

.field public static final REQUEST_TEXTTRACK:I = 0xf

.field public static final REQUEST_UNSPECIFIED:I = 0x10

.field public static final REQUEST_WORKER:I = 0x9

.field public static final REQUEST_XHR:I = 0xe

.field public static final UCDNS_INTENT_NONE:I = 0x0

.field public static final UCDNS_INTENT_USED:I = 0x2

.field public static final UCDNS_INTENT_WILL_USE:I = 0x1

.field public static sOnCreateWindowType:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 51
    const/4 v0, 0x0

    sput v0, Lcom/uc/webview/export/internal/interfaces/CommonDef;->sOnCreateWindowType:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
