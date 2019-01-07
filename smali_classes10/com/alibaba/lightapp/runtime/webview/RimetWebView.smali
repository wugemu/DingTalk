.class public Lcom/alibaba/lightapp/runtime/webview/RimetWebView;
.super Lcom/alibaba/lightapp/runtime/permission/JsapiPermissionWebView;
.source "RimetWebView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/lightapp/runtime/webview/RimetWebView$a;,
        Lcom/alibaba/lightapp/runtime/webview/RimetWebView$b;,
        Lcom/alibaba/lightapp/runtime/webview/RimetWebView$e;,
        Lcom/alibaba/lightapp/runtime/webview/RimetWebView$CommonJavascriptInterfaceProxy;,
        Lcom/alibaba/lightapp/runtime/webview/RimetWebView$c;,
        Lcom/alibaba/lightapp/runtime/webview/RimetWebView$IJavascriptInterface;,
        Lcom/alibaba/lightapp/runtime/webview/RimetWebView$NajsCommunicator;,
        Lcom/alibaba/lightapp/runtime/webview/RimetWebView$InnerAgentWebViewClient;,
        Lcom/alibaba/lightapp/runtime/webview/RimetWebView$d;
    }
.end annotation


# static fields
.field private static B:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static D:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private A:Ljava/lang/String;

.field private C:Landroid/view/GestureDetector;

.field private E:Ljava/lang/String;

.field private F:Ljava/lang/String;

.field private G:Ljava/lang/String;

.field private H:Z

.field private I:Lcom/alibaba/doraemon/statistics/Statistics;

.field private J:Lcom/alibaba/lightapp/runtime/webview/RimetWebView$a;

.field private K:Lhqe$c;

.field g:Z

.field public h:Lcom/alibaba/lightapp/runtime/webview/RimetWebView$b;

.field private i:Lcom/alibaba/lightapp/runtime/webview/RimetWebView$InnerAgentWebViewClient;

.field private j:Lcom/alibaba/lightapp/runtime/webview/RimetWebView$d;

.field private k:Lcom/alibaba/lightapp/runtime/webview/RimetWebView$c;

.field private l:Lcom/alibaba/lightapp/runtime/webview/RimetWebView$NajsCommunicator;

.field private m:Z

.field private n:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private o:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private p:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private q:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private r:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/alibaba/dingtalk/runtimebase/web/WebViewWrapper$a;",
            ">;"
        }
    .end annotation
.end field

.field private s:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private t:J

.field private u:Lcom/alibaba/lightapp/runtime/monitor/RuntimeStatistics$H5StatTransaction;

.field private v:Lhpe$c;

.field private w:Lhpe$e;

.field private x:Z

.field private y:Z

.field private z:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 218
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/alibaba/lightapp/runtime/webview/RimetWebView;->B:Ljava/util/List;

    .line 225
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/alibaba/lightapp/runtime/webview/RimetWebView;->D:Ljava/util/Set;

    .line 229
    sget-object v0, Lcom/alibaba/lightapp/runtime/webview/RimetWebView;->B:Ljava/util/List;

    const-string/jumbo v1, "https://oapi.fosun.com/api/oauth2/authorize"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 230
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 262
    invoke-direct {p0, p1}, Lcom/alibaba/lightapp/runtime/permission/JsapiPermissionWebView;-><init>(Landroid/content/Context;)V

    .line 170
    iput-object v3, p0, Lcom/alibaba/lightapp/runtime/webview/RimetWebView;->l:Lcom/alibaba/lightapp/runtime/webview/RimetWebView$NajsCommunicator;

    .line 171
    iput-boolean v2, p0, Lcom/alibaba/lightapp/runtime/webview/RimetWebView;->m:Z

    .line 173
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/lightapp/runtime/webview/RimetWebView;->n:Ljava/util/List;

    .line 174
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/lightapp/runtime/webview/RimetWebView;->o:Ljava/util/List;

    .line 175
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/lightapp/runtime/webview/RimetWebView;->p:Ljava/util/List;

    .line 176
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/lightapp/runtime/webview/RimetWebView;->q:Ljava/util/List;

    .line 178
    iput-object v3, p0, Lcom/alibaba/lightapp/runtime/webview/RimetWebView;->r:Ljava/util/Map;

    .line 179
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alibaba/lightapp/runtime/webview/RimetWebView;->s:Ljava/util/Map;

    .line 200
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/alibaba/lightapp/runtime/webview/RimetWebView;->t:J

    .line 207
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alibaba/lightapp/runtime/webview/RimetWebView;->x:Z

    .line 209
    iput-boolean v2, p0, Lcom/alibaba/lightapp/runtime/webview/RimetWebView;->g:Z

    .line 211
    iput-boolean v2, p0, Lcom/alibaba/lightapp/runtime/webview/RimetWebView;->y:Z

    .line 213
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/alibaba/lightapp/runtime/webview/RimetWebView;->z:J

    .line 242
    iput-object v3, p0, Lcom/alibaba/lightapp/runtime/webview/RimetWebView;->E:Ljava/lang/String;

    .line 243
    iput-object v3, p0, Lcom/alibaba/lightapp/runtime/webview/RimetWebView;->F:Ljava/lang/String;

    .line 246
    iput-boolean v2, p0, Lcom/alibaba/lightapp/runtime/webview/RimetWebView;->H:Z

    .line 252
    new-instance v0, Lcom/alibaba/lightapp/runtime/webview/RimetWebView$a;

    invoke-direct {v0, p0, v2}, Lcom/alibaba/lightapp/runtime/webview/RimetWebView$a;-><init>(Lcom/alibaba/lightapp/runtime/webview/RimetWebView;B)V

    iput-object v0, p0, Lcom/alibaba/lightapp/runtime/webview/RimetWebView;->J:Lcom/alibaba/lightapp/runtime/webview/RimetWebView$a;

    .line 254
    new-instance v0, Lcom/alibaba/lightapp/runtime/webview/RimetWebView$1;

    invoke-direct {v0, p0}, Lcom/alibaba/lightapp/runtime/webview/RimetWebView$1;-><init>(Lcom/alibaba/lightapp/runtime/webview/RimetWebView;)V

    iput-object v0, p0, Lcom/alibaba/lightapp/runtime/webview/RimetWebView;->K:Lhqe$c;

    .line 263
    invoke-direct {p0, p1}, Lcom/alibaba/lightapp/runtime/webview/RimetWebView;->a(Landroid/content/Context;)V

    .line 264
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 272
    invoke-direct {p0, p1, p2}, Lcom/alibaba/lightapp/runtime/permission/JsapiPermissionWebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 170
    iput-object v3, p0, Lcom/alibaba/lightapp/runtime/webview/RimetWebView;->l:Lcom/alibaba/lightapp/runtime/webview/RimetWebView$NajsCommunicator;

    .line 171
    iput-boolean v2, p0, Lcom/alibaba/lightapp/runtime/webview/RimetWebView;->m:Z

    .line 173
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/lightapp/runtime/webview/RimetWebView;->n:Ljava/util/List;

    .line 174
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/lightapp/runtime/webview/RimetWebView;->o:Ljava/util/List;

    .line 175
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/lightapp/runtime/webview/RimetWebView;->p:Ljava/util/List;

    .line 176
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/lightapp/runtime/webview/RimetWebView;->q:Ljava/util/List;

    .line 178
    iput-object v3, p0, Lcom/alibaba/lightapp/runtime/webview/RimetWebView;->r:Ljava/util/Map;

    .line 179
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alibaba/lightapp/runtime/webview/RimetWebView;->s:Ljava/util/Map;

    .line 200
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/alibaba/lightapp/runtime/webview/RimetWebView;->t:J

    .line 207
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alibaba/lightapp/runtime/webview/RimetWebView;->x:Z

    .line 209
    iput-boolean v2, p0, Lcom/alibaba/lightapp/runtime/webview/RimetWebView;->g:Z

    .line 211
    iput-boolean v2, p0, Lcom/alibaba/lightapp/runtime/webview/RimetWebView;->y:Z

    .line 213
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/alibaba/lightapp/runtime/webview/RimetWebView;->z:J

    .line 242
    iput-object v3, p0, Lcom/alibaba/lightapp/runtime/webview/RimetWebView;->E:Ljava/lang/String;

    .line 243
    iput-object v3, p0, Lcom/alibaba/lightapp/runtime/webview/RimetWebView;->F:Ljava/lang/String;

    .line 246
    iput-boolean v2, p0, Lcom/alibaba/lightapp/runtime/webview/RimetWebView;->H:Z

    .line 252
    new-instance v0, Lcom/alibaba/lightapp/runtime/webview/RimetWebView$a;

    invoke-direct {v0, p0, v2}, Lcom/alibaba/lightapp/runtime/webview/RimetWebView$a;-><init>(Lcom/alibaba/lightapp/runtime/webview/RimetWebView;B)V

    iput-object v0, p0, Lcom/alibaba/lightapp/runtime/webview/RimetWebView;->J:Lcom/alibaba/lightapp/runtime/webview/RimetWebView$a;

    .line 254
    new-instance v0, Lcom/alibaba/lightapp/runtime/webview/RimetWebView$1;

    invoke-direct {v0, p0}, Lcom/alibaba/lightapp/runtime/webview/RimetWebView$1;-><init>(Lcom/alibaba/lightapp/runtime/webview/RimetWebView;)V

    iput-object v0, p0, Lcom/alibaba/lightapp/runtime/webview/RimetWebView;->K:Lhqe$c;

    .line 273
    invoke-direct {p0, p1}, Lcom/alibaba/lightapp/runtime/webview/RimetWebView;->a(Landroid/content/Context;)V

    .line 274
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 277
    invoke-direct {p0, p1, p2, p3}, Lcom/alibaba/lightapp/runtime/permission/JsapiPermissionWebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 170
    iput-object v3, p0, Lcom/alibaba/lightapp/runtime/webview/RimetWebView;->l:Lcom/alibaba/lightapp/runtime/webview/RimetWebView$NajsCommunicator;

    .line 171
    iput-boolean v2, p0, Lcom/alibaba/lightapp/runtime/webview/RimetWebView;->m:Z

    .line 173
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/lightapp/runtime/webview/RimetWebView;->n:Ljava/util/List;

    .line 174
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/lightapp/runtime/webview/RimetWebView;->o:Ljava/util/List;

    .line 175
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/lightapp/runtime/webview/RimetWebView;->p:Ljava/util/List;

    .line 176
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/lightapp/runtime/webview/RimetWebView;->q:Ljava/util/List;

    .line 178
    iput-object v3, p0, Lcom/alibaba/lightapp/runtime/webview/RimetWebView;->r:Ljava/util/Map;

    .line 179
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alibaba/lightapp/runtime/webview/RimetWebView;->s:Ljava/util/Map;

    .line 200
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/alibaba/lightapp/runtime/webview/RimetWebView;->t:J

    .line 207
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alibaba/lightapp/runtime/webview/RimetWebView;->x:Z

    .line 209
    iput-boolean v2, p0, Lcom/alibaba/lightapp/runtime/webview/RimetWebView;->g:Z

    .line 211
    iput-boolean v2, p0, Lcom/alibaba/lightapp/runtime/webview/RimetWebView;->y:Z

    .line 213
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/alibaba/lightapp/runtime/webview/RimetWebView;->z:J

    .line 242
    iput-object v3, p0, Lcom/alibaba/lightapp/runtime/webview/RimetWebView;->E:Ljava/lang/String;

    .line 243
    iput-object v3, p0, Lcom/alibaba/lightapp/runtime/webview/RimetWebView;->F:Ljava/lang/String;

    .line 246
    iput-boolean v2, p0, Lcom/alibaba/lightapp/runtime/webview/RimetWebView;->H:Z

    .line 252
    new-instance v0, Lcom/alibaba/lightapp/runtime/webview/RimetWebView$a;

    invoke-direct {v0, p0, v2}, Lcom/alibaba/lightapp/runtime/webview/RimetWebView$a;-><init>(Lcom/alibaba/lightapp/runtime/webview/RimetWebView;B)V

    iput-object v0, p0, Lcom/alibaba/lightapp/runtime/webview/RimetWebView;->J:Lcom/alibaba/lightapp/runtime/webview/RimetWebView$a;

    .line 254
    new-instance v0, Lcom/alibaba/lightapp/runtime/webview/RimetWebView$1;

    invoke-direct {v0, p0}, Lcom/alibaba/lightapp/runtime/webview/RimetWebView$1;-><init>(Lcom/alibaba/lightapp/runtime/webview/RimetWebView;)V

    iput-object v0, p0, Lcom/alibaba/lightapp/runtime/webview/RimetWebView;->K:Lhqe$c;

    .line 278
    invoke-direct {p0, p1}, Lcom/alibaba/lightapp/runtime/webview/RimetWebView;->a(Landroid/content/Context;)V

    .line 279
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;IZ)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I
    .param p4, "privateBrowsing"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 283
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/alibaba/lightapp/runtime/permission/JsapiPermissionWebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IZ)V

    .line 170
    iput-object v3, p0, Lcom/alibaba/lightapp/runtime/webview/RimetWebView;->l:Lcom/alibaba/lightapp/runtime/webview/RimetWebView$NajsCommunicator;

    .line 171
    iput-boolean v2, p0, Lcom/alibaba/lightapp/runtime/webview/RimetWebView;->m:Z

    .line 173
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/lightapp/runtime/webview/RimetWebView;->n:Ljava/util/List;

    .line 174
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/lightapp/runtime/webview/RimetWebView;->o:Ljava/util/List;

    .line 175
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/lightapp/runtime/webview/RimetWebView;->p:Ljava/util/List;

    .line 176
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/lightapp/runtime/webview/RimetWebView;->q:Ljava/util/List;

    .line 178
    iput-object v3, p0, Lcom/alibaba/lightapp/runtime/webview/RimetWebView;->r:Ljava/util/Map;

    .line 179
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alibaba/lightapp/runtime/webview/RimetWebView;->s:Ljava/util/Map;

    .line 200
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/alibaba/lightapp/runtime/webview/RimetWebView;->t:J

    .line 207
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alibaba/lightapp/runtime/webview/RimetWebView;->x:Z

    .line 209
    iput-boolean v2, p0, Lcom/alibaba/lightapp/runtime/webview/RimetWebView;->g:Z

    .line 211
    iput-boolean v2, p0, Lcom/alibaba/lightapp/runtime/webview/RimetWebView;->y:Z

    .line 213
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/alibaba/lightapp/runtime/webview/RimetWebView;->z:J

    .line 242
    iput-object v3, p0, Lcom/alibaba/lightapp/runtime/webview/RimetWebView;->E:Ljava/lang/String;

    .line 243
    iput-object v3, p0, Lcom/alibaba/lightapp/runtime/webview/RimetWebView;->F:Ljava/lang/String;

    .line 246
    iput-boolean v2, p0, Lcom/alibaba/lightapp/runtime/webview/RimetWebView;->H:Z

    .line 252
    new-instance v0, Lcom/alibaba/lightapp/runtime/webview/RimetWebView$a;

    invoke-direct {v0, p0, v2}, Lcom/alibaba/lightapp/runtime/webview/RimetWebView$a;-><init>(Lcom/alibaba/lightapp/runtime/webview/RimetWebView;B)V

    iput-object v0, p0, Lcom/alibaba/lightapp/runtime/webview/RimetWebView;->J:Lcom/alibaba/lightapp/runtime/webview/RimetWebView$a;

    .line 254
    new-instance v0, Lcom/alibaba/lightapp/runtime/webview/RimetWebView$1;

    invoke-direct {v0, p0}, Lcom/alibaba/lightapp/runtime/webview/RimetWebView$1;-><init>(Lcom/alibaba/lightapp/runtime/webview/RimetWebView;)V

    iput-object v0, p0, Lcom/alibaba/lightapp/runtime/webview/RimetWebView;->K:Lhqe$c;

    .line 284
    invoke-direct {p0, p1}, Lcom/alibaba/lightapp/runtime/webview/RimetWebView;->a(Landroid/content/Context;)V

    .line 285
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "isSystemCore"    # Z

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 267
    invoke-direct {p0, p1, p2}, Lcom/alibaba/lightapp/runtime/permission/JsapiPermissionWebView;-><init>(Landroid/content/Context;Z)V

    .line 170
    iput-object v3, p0, Lcom/alibaba/lightapp/runtime/webview/RimetWebView;->l:Lcom/alibaba/lightapp/runtime/webview/RimetWebView$NajsCommunicator;

    .line 171
    iput-boolean v2, p0, Lcom/alibaba/lightapp/runtime/webview/RimetWebView;->m:Z

    .line 173
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/lightapp/runtime/webview/RimetWebView;->n:Ljava/util/List;

    .line 174
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/lightapp/runtime/webview/RimetWebView;->o:Ljava/util/List;

    .line 175
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/lightapp/runtime/webview/RimetWebView;->p:Ljava/util/List;

    .line 176
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/lightapp/runtime/webview/RimetWebView;->q:Ljava/util/List;

    .line 178
    iput-object v3, p0, Lcom/alibaba/lightapp/runtime/webview/RimetWebView;->r:Ljava/util/Map;

    .line 179
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alibaba/lightapp/runtime/webview/RimetWebView;->s:Ljava/util/Map;

    .line 200
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/alibaba/lightapp/runtime/webview/RimetWebView;->t:J

    .line 207
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alibaba/lightapp/runtime/webview/RimetWebView;->x:Z

    .line 209
    iput-boolean v2, p0, Lcom/alibaba/lightapp/runtime/webview/RimetWebView;->g:Z

    .line 211
    iput-boolean v2, p0, Lcom/alibaba/lightapp/runtime/webview/RimetWebView;->y:Z

    .line 213
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/alibaba/lightapp/runtime/webview/RimetWebView;->z:J

    .line 242
    iput-object v3, p0, Lcom/alibaba/lightapp/runtime/webview/RimetWebView;->E:Ljava/lang/String;

    .line 243
    iput-object v3, p0, Lcom/alibaba/lightapp/runtime/webview/RimetWebView;->F:Ljava/lang/String;

    .line 246
    iput-boolean v2, p0, Lcom/alibaba/lightapp/runtime/webview/RimetWebView;->H:Z

    .line 252
    new-instance v0, Lcom/alibaba/lightapp/runtime/webview/RimetWebView$a;

    invoke-direct {v0, p0, v2}, Lcom/alibaba/lightapp/runtime/webview/RimetWebView$a;-><init>(Lcom/alibaba/lightapp/runtime/webview/RimetWebView;B)V

    iput-object v0, p0, Lcom/alibaba/lightapp/runtime/webview/RimetWebView;->J:Lcom/alibaba/lightapp/runtime/webview/RimetWebView$a;

    .line 254
    new-instance v0, Lcom/alibaba/lightapp/runtime/webview/RimetWebView$1;

    invoke-direct {v0, p0}, Lcom/alibaba/lightapp/runtime/webview/RimetWebView$1;-><init>(Lcom/alibaba/lightapp/runtime/webview/RimetWebView;)V

    iput-object v0, p0, Lcom/alibaba/lightapp/runtime/webview/RimetWebView;->K:Lhqe$c;

    .line 268
    invoke-direct {p0, p1}, Lcom/alibaba/lightapp/runtime/webview/RimetWebView;->a(Landroid/content/Context;)V

    .line 269
    return-void
.end method

.method static synthetic a(Lcom/alibaba/lightapp/runtime/webview/RimetWebView;J)J
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/webview/RimetWebView;
    .param p1, "x1"    # J

    .prologue
    .line 148
    iput-wide p1, p0, Lcom/alibaba/lightapp/runtime/webview/RimetWebView;->t:J

    return-wide p1
.end method

.method static synthetic a(Lcom/alibaba/lightapp/runtime/webview/RimetWebView;)Lcom/alibaba/lightapp/runtime/monitor/RuntimeStatistics$H5StatTransaction;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/webview/RimetWebView;

    .prologue
    .line 148
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/webview/RimetWebView;->u:Lcom/alibaba/lightapp/runtime/monitor/RuntimeStatistics$H5StatTransaction;

    return-object v0
.end method

.method static synthetic a(Lcom/alibaba/lightapp/runtime/webview/RimetWebView;Lcom/alibaba/lightapp/runtime/monitor/RuntimeStatistics$H5StatTransaction;)Lcom/alibaba/lightapp/runtime/monitor/RuntimeStatistics$H5StatTransaction;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/webview/RimetWebView;
    .param p1, "x1"    # Lcom/alibaba/lightapp/runtime/monitor/RuntimeStatistics$H5StatTransaction;

    .prologue
    .line 148
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/webview/RimetWebView;->u:Lcom/alibaba/lightapp/runtime/monitor/RuntimeStatistics$H5StatTransaction;

    return-object p1
.end method

.method static synthetic a(Lcom/alibaba/lightapp/runtime/webview/RimetWebView;ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/webview/RimetWebView;
    .param p1, "x1"    # I
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Ljava/lang/String;

    .prologue
    .line 148
    .line 24182
    const-string/jumbo v0, "en"

    .line 24183
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    .line 24184
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v2

    invoke-virtual {v2}, Lcid;->c()Landroid/app/Application;

    move-result-object v2

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    const-string/jumbo v3, "pref_locale"

    const-string/jumbo v4, ""

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 24185
    const-string/jumbo v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 24186
    const-string/jumbo v1, "_"

    invoke-virtual {v2, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 24187
    array-length v2, v1

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    .line 24188
    const/4 v0, 0x0

    aget-object v0, v1, v0

    .line 24189
    const/4 v2, 0x1

    aget-object v1, v1, v2

    .line 24190
    invoke-static {v0, v1}, Lcom/alibaba/lightapp/runtime/webview/RimetWebView;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 24195
    :cond_0
    :goto_0
    invoke-static {}, Lcom/alibaba/doraemon/performance/DDStringBuilderProxy;->getDDStringBuilder()Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v1

    const-string/jumbo v2, "file:///android_asset/lightapp/errorpage/error_page.html"

    invoke-virtual {v1, v2}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v1

    const-string/jumbo v2, "?target="

    invoke-virtual {v1, v2}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v1

    .line 24196
    invoke-static {p3}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v1

    const-string/jumbo v2, "&language="

    invoke-virtual {v1, v2}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v0

    const-string/jumbo v1, "&errorcode="

    .line 24197
    invoke-virtual {v0, v1}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(I)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v0

    const-string/jumbo v1, "&description="

    invoke-virtual {v0, v1}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 148
    return-object v0

    .line 24193
    :cond_1
    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alibaba/lightapp/runtime/webview/RimetWebView;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "language"    # Ljava/lang/String;
    .param p1, "country"    # Ljava/lang/String;

    .prologue
    .line 2203
    const-string/jumbo v0, "en"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2204
    const-string/jumbo p0, "en"

    .line 2212
    .end local p0    # "language":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object p0

    .line 2205
    .restart local p0    # "language":Ljava/lang/String;
    :cond_1
    const-string/jumbo v0, "zh"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2206
    const-string/jumbo v0, "TW"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2207
    const-string/jumbo p0, "zh-Hant"

    goto :goto_0

    .line 2209
    :cond_2
    const-string/jumbo p0, "zh-Hans"

    goto :goto_0
.end method

.method private a(Landroid/content/Context;)V
    .locals 12
    .param p1, "context"    # Landroid/content/Context;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v11

    invoke-static {v11}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/16 v7, 0x10

    const/16 v11, 0xb

    const/4 v8, 0x2

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 289
    invoke-static {}, Lhsa;->a()V

    .line 290
    new-instance v6, Lcom/alibaba/lightapp/runtime/webview/RimetWebView$InnerAgentWebViewClient;

    invoke-direct {v6, p0, v9}, Lcom/alibaba/lightapp/runtime/webview/RimetWebView$InnerAgentWebViewClient;-><init>(Lcom/alibaba/lightapp/runtime/webview/RimetWebView;B)V

    iput-object v6, p0, Lcom/alibaba/lightapp/runtime/webview/RimetWebView;->i:Lcom/alibaba/lightapp/runtime/webview/RimetWebView$InnerAgentWebViewClient;

    .line 291
    iget-object v6, p0, Lcom/alibaba/lightapp/runtime/webview/RimetWebView;->i:Lcom/alibaba/lightapp/runtime/webview/RimetWebView$InnerAgentWebViewClient;

    invoke-virtual {p0, v6}, Lcom/alibaba/lightapp/runtime/webview/RimetWebView;->a(Lhdq;)V

    .line 292
    new-instance v6, Lcom/alibaba/lightapp/runtime/webview/RimetWebView$d;

    invoke-direct {v6, p0, v9}, Lcom/alibaba/lightapp/runtime/webview/RimetWebView$d;-><init>(Lcom/alibaba/lightapp/runtime/webview/RimetWebView;B)V

    iput-object v6, p0, Lcom/alibaba/lightapp/runtime/webview/RimetWebView;->j:Lcom/alibaba/lightapp/runtime/webview/RimetWebView$d;

    .line 293
    iget-object v6, p0, Lcom/alibaba/lightapp/runtime/webview/RimetWebView;->j:Lcom/alibaba/lightapp/runtime/webview/RimetWebView$d;

    invoke-virtual {p0, v6}, Lcom/alibaba/lightapp/runtime/webview/RimetWebView;->a(Lhdp;)V

    .line 295
    invoke-static {v7}, Lcms;->b(I)Z

    move-result v6

    if-nez v6, :cond_0

    .line 296
    const/4 v6, 0x0

    invoke-virtual {p0, v10, v6}, Lcom/alibaba/lightapp/runtime/webview/RimetWebView;->setLayerType(ILandroid/graphics/Paint;)V

    .line 299
    :cond_0
    invoke-virtual {p0, v9}, Lcom/alibaba/lightapp/runtime/webview/RimetWebView;->setHorizontalScrollBarEnabled(Z)V

    .line 300
    invoke-virtual {p0, v9}, Lcom/alibaba/lightapp/runtime/webview/RimetWebView;->setVerticalScrollBarEnabled(Z)V

    .line 302
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v6, v11, :cond_1

    .line 303
    const-string/jumbo v6, "searchBoxJavaBridge_"

    invoke-virtual {p0, v6}, Lcom/alibaba/lightapp/runtime/webview/RimetWebView;->removeJavascriptInterface(Ljava/lang/String;)V

    .line 306
    :cond_1
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v6, v7, :cond_2

    .line 307
    invoke-static {v10, v9, v9, v9}, Landroid/graphics/Color;->argb(IIII)I

    move-result v6

    invoke-virtual {p0, v6}, Lcom/alibaba/lightapp/runtime/webview/RimetWebView;->setBackgroundColor(I)V

    .line 310
    :cond_2
    new-instance v6, Lcom/alibaba/lightapp/runtime/webview/RimetWebView$11;

    invoke-direct {v6, p0}, Lcom/alibaba/lightapp/runtime/webview/RimetWebView$11;-><init>(Lcom/alibaba/lightapp/runtime/webview/RimetWebView;)V

    invoke-virtual {p0, v6}, Lcom/alibaba/lightapp/runtime/webview/RimetWebView;->setVerifier(Lcom/alibaba/lightapp/runtime/SecureWebView$a;)V

    .line 323
    invoke-static {}, Lhqe;->a()Lhqe;

    move-result-object v6

    iget-object v7, p0, Lcom/alibaba/lightapp/runtime/webview/RimetWebView;->K:Lhqe$c;

    invoke-virtual {v6, v7}, Lhqe;->a(Lhqe$c;)V

    .line 325
    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/webview/RimetWebView;->getSettings()Lcom/uc/webview/export/WebSettings;

    move-result-object v5

    .line 326
    .local v5, "settings":Lcom/uc/webview/export/WebSettings;
    if-eqz v5, :cond_7

    .line 327
    invoke-virtual {v5, v10}, Lcom/uc/webview/export/WebSettings;->setDomStorageEnabled(Z)V

    .line 328
    invoke-virtual {v5, v9}, Lcom/uc/webview/export/WebSettings;->setSavePassword(Z)V

    .line 329
    invoke-virtual {v5, v10}, Lcom/uc/webview/export/WebSettings;->setDatabaseEnabled(Z)V

    .line 330
    invoke-virtual {v5, v10}, Lcom/uc/webview/export/WebSettings;->setAppCacheEnabled(Z)V

    .line 331
    invoke-virtual {v5, v10}, Lcom/uc/webview/export/WebSettings;->setAllowFileAccess(Z)V

    .line 332
    const-wide/32 v6, 0x800000

    invoke-virtual {v5, v6, v7}, Lcom/uc/webview/export/WebSettings;->setAppCacheMaxSize(J)V

    .line 333
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v6

    invoke-virtual {v6}, Lcid;->c()Landroid/app/Application;

    move-result-object v6

    const-string/jumbo v7, "pref_key_settings_developer_options_smartapp_cache"

    invoke-static {v6, v7}, Lcpk;->d(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v6

    iput-boolean v6, p0, Lcom/alibaba/lightapp/runtime/webview/RimetWebView;->y:Z

    .line 334
    iget-boolean v6, p0, Lcom/alibaba/lightapp/runtime/webview/RimetWebView;->y:Z

    if-eqz v6, :cond_a

    .line 335
    invoke-virtual {v5, v8}, Lcom/uc/webview/export/WebSettings;->setCacheMode(I)V

    .line 339
    :goto_0
    const-string/jumbo v6, "cache"

    invoke-virtual {p1, v6, v9}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 340
    .local v0, "appCacheDir":Ljava/lang/String;
    invoke-virtual {v5, v0}, Lcom/uc/webview/export/WebSettings;->setAppCachePath(Ljava/lang/String;)V

    .line 342
    invoke-virtual {v5, v10}, Lcom/uc/webview/export/WebSettings;->setJavaScriptEnabled(Z)V

    .line 343
    invoke-virtual {v5, v10}, Lcom/uc/webview/export/WebSettings;->setAllowFileAccess(Z)V

    .line 344
    invoke-virtual {v5, v10}, Lcom/uc/webview/export/WebSettings;->setUseWideViewPort(Z)V

    .line 345
    const-string/jumbo v6, "utf-8"

    invoke-virtual {v5, v6}, Lcom/uc/webview/export/WebSettings;->setDefaultTextEncodingName(Ljava/lang/String;)V

    .line 346
    invoke-virtual {v5, v10}, Lcom/uc/webview/export/WebSettings;->setLoadWithOverviewMode(Z)V

    .line 347
    invoke-virtual {v5, v10}, Lcom/uc/webview/export/WebSettings;->setJavaScriptCanOpenWindowsAutomatically(Z)V

    .line 348
    sget-object v6, Lcom/uc/webview/export/WebSettings$RenderPriority;->HIGH:Lcom/uc/webview/export/WebSettings$RenderPriority;

    invoke-virtual {v5, v6}, Lcom/uc/webview/export/WebSettings;->setRenderPriority(Lcom/uc/webview/export/WebSettings$RenderPriority;)V

    .line 350
    invoke-virtual {v5, v10}, Lcom/uc/webview/export/WebSettings;->setBuiltInZoomControls(Z)V

    .line 351
    invoke-virtual {v5, v9}, Lcom/uc/webview/export/WebSettings;->setDisplayZoomControls(Z)V

    .line 352
    invoke-virtual {v5, v10}, Lcom/uc/webview/export/WebSettings;->setSupportZoom(Z)V

    .line 354
    sget-object v6, Lcom/uc/webview/export/WebSettings$TextSize;->NORMAL:Lcom/uc/webview/export/WebSettings$TextSize;

    invoke-virtual {v5, v6}, Lcom/uc/webview/export/WebSettings;->setTextSize(Lcom/uc/webview/export/WebSettings$TextSize;)V

    .line 356
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0x11

    if-lt v6, v7, :cond_3

    .line 357
    invoke-virtual {v5, v9}, Lcom/uc/webview/export/WebSettings;->setMediaPlaybackRequiresUserGesture(Z)V

    .line 361
    :cond_3
    invoke-virtual {v5, v9}, Lcom/uc/webview/export/WebSettings;->setMediaPlaybackRequiresUserGesture(Z)V

    .line 363
    sget-object v6, Lcom/uc/webview/export/WebSettings$PluginState;->ON:Lcom/uc/webview/export/WebSettings$PluginState;

    invoke-virtual {v5, v6}, Lcom/uc/webview/export/WebSettings;->setPluginState(Lcom/uc/webview/export/WebSettings$PluginState;)V

    .line 365
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v6, v11, :cond_4

    .line 366
    invoke-virtual {v5, v9}, Lcom/uc/webview/export/WebSettings;->setDisplayZoomControls(Z)V

    .line 371
    :cond_4
    invoke-virtual {v5, v9}, Lcom/uc/webview/export/WebSettings;->setAllowFileAccessFromFileURLs(Z)V

    .line 372
    invoke-virtual {v5, v9}, Lcom/uc/webview/export/WebSettings;->setAllowUniversalAccessFromFileURLs(Z)V

    .line 378
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0x15

    if-lt v6, v7, :cond_5

    .line 379
    invoke-static {}, Lcom/alibaba/lightapp/runtime/webview/RimetWebView;->getCoreType()I

    move-result v6

    if-ne v6, v8, :cond_5

    .line 380
    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/webview/RimetWebView;->getCoreView()Landroid/view/View;

    move-result-object v2

    .line 381
    .local v2, "coreView":Landroid/view/View;
    if-eqz v2, :cond_5

    instance-of v6, v2, Landroid/webkit/WebView;

    if-eqz v6, :cond_5

    .line 382
    check-cast v2, Landroid/webkit/WebView;

    .end local v2    # "coreView":Landroid/view/View;
    invoke-virtual {v2}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    .line 383
    .local v1, "coreSettings":Landroid/webkit/WebSettings;
    if-eqz v1, :cond_5

    .line 384
    invoke-virtual {v1, v8}, Landroid/webkit/WebSettings;->setMixedContentMode(I)V

    .line 389
    .end local v1    # "coreSettings":Landroid/webkit/WebSettings;
    :cond_5
    const-string/jumbo v6, "%1$s %2$s"

    new-array v7, v8, [Ljava/lang/Object;

    invoke-virtual {v5}, Lcom/uc/webview/export/WebSettings;->getUserAgentString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v9

    .line 390
    invoke-static {}, Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;->k()Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;

    move-result-object v8

    invoke-virtual {v8}, Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;->c()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v10

    .line 389
    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/alibaba/lightapp/runtime/webview/RimetWebView;->setUserAgentString(Ljava/lang/String;)V

    .line 392
    const/4 v4, 0x0

    .line 395
    .local v4, "method":Ljava/lang/reflect/Method;
    :try_start_0
    const-class v6, Lcom/uc/webview/export/WebSettings;

    const-string/jumbo v7, "setHardwareAccelSkiaEnabled"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Class;

    const/4 v9, 0x0

    sget-object v10, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v10, v8, v9

    invoke-virtual {v6, v7, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_3

    move-result-object v4

    .line 400
    :goto_1
    if-eqz v4, :cond_6

    .line 403
    const/4 v6, 0x1

    :try_start_1
    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    const/4 v8, 0x1

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-virtual {v4, v5, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_1

    .line 3561
    :cond_6
    :goto_2
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0x11

    if-ne v6, v7, :cond_7

    .line 3563
    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/webview/RimetWebView;->getContext()Landroid/content/Context;

    move-result-object v6

    if-eqz v6, :cond_7

    .line 3565
    :try_start_2
    const-string/jumbo v7, "accessibility"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/accessibility/AccessibilityManager;

    .line 3566
    if-eqz v6, :cond_7

    invoke-virtual {v6}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-result v7

    if-nez v7, :cond_b

    .line 423
    .end local v0    # "appCacheDir":Ljava/lang/String;
    .end local v4    # "method":Ljava/lang/reflect/Method;
    :cond_7
    :goto_3
    sget v6, Lcom/uc/webview/export/extension/UCSettings;->FORCE_USER_SCALABLE_DISABLE:I

    invoke-static {v6}, Lcom/uc/webview/export/extension/UCSettings;->setForceUserScalable(I)V

    .line 425
    invoke-static {}, Lhfv;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/uc/webview/export/extension/UCSettings;->setEnableCustomErrorPage(Z)V

    .line 427
    const-string/jumbo v6, "STATISTICS"

    invoke-static {v6}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/alibaba/doraemon/statistics/Statistics;

    iput-object v6, p0, Lcom/alibaba/lightapp/runtime/webview/RimetWebView;->I:Lcom/alibaba/doraemon/statistics/Statistics;

    .line 428
    invoke-static {}, Lcom/alibaba/lightapp/runtime/webview/RimetWebView$e;->a()Ljava/util/concurrent/Executor;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/alibaba/lightapp/runtime/webview/RimetWebView;->setExecutorService(Ljava/util/concurrent/Executor;)V

    .line 429
    invoke-static {}, Lhqe;->a()Lhqe;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/alibaba/lightapp/runtime/webview/RimetWebView;->setPermissionService(Lhdk;)V

    .line 432
    new-instance v6, Lcom/alibaba/lightapp/runtime/webview/RimetWebView$12;

    invoke-direct {v6, p0}, Lcom/alibaba/lightapp/runtime/webview/RimetWebView$12;-><init>(Lcom/alibaba/lightapp/runtime/webview/RimetWebView;)V

    const-string/jumbo v7, "statistics"

    invoke-virtual {p0, v6, v7}, Lcom/alibaba/lightapp/runtime/webview/RimetWebView;->a(Lcom/alibaba/dingtalk/runtimebase/web/WebViewWrapper$a;Ljava/lang/String;)V

    .line 471
    new-instance v6, Lcom/alibaba/lightapp/runtime/webview/RimetWebView$13;

    invoke-direct {v6, p0}, Lcom/alibaba/lightapp/runtime/webview/RimetWebView$13;-><init>(Lcom/alibaba/lightapp/runtime/webview/RimetWebView;)V

    iput-object v6, p0, Lcom/alibaba/lightapp/runtime/webview/RimetWebView;->v:Lhpe$c;

    .line 481
    new-instance v6, Lcom/alibaba/lightapp/runtime/webview/RimetWebView$14;

    invoke-direct {v6, p0}, Lcom/alibaba/lightapp/runtime/webview/RimetWebView$14;-><init>(Lcom/alibaba/lightapp/runtime/webview/RimetWebView;)V

    iput-object v6, p0, Lcom/alibaba/lightapp/runtime/webview/RimetWebView;->w:Lhpe$e;

    .line 501
    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/webview/RimetWebView;->getUCExtension()Lcom/uc/webview/export/extension/UCExtension;

    move-result-object v6

    if-eqz v6, :cond_9

    .line 502
    new-instance v6, Lhrh$a;

    invoke-direct {v6}, Lhrh$a;-><init>()V

    .line 4296
    iget-object v7, v6, Lhrh$a;->a:Lhrg$a;

    iput-object p0, v7, Lhrg$a;->a:Lcom/uc/webview/export/WebView;

    .line 4306
    new-instance v3, Lhrh;

    invoke-direct {v3}, Lhrh;-><init>()V

    .line 4307
    iget-object v6, v6, Lhrh$a;->a:Lhrg$a;

    invoke-static {v3}, Lhrh;->a(Lhrh;)Lhrg;

    move-result-object v7

    .line 5048
    if-eqz v7, :cond_8

    .line 5051
    iget-object v8, v6, Lhrg$a;->a:Lcom/uc/webview/export/WebView;

    if-eqz v8, :cond_8

    .line 5052
    iget-object v6, v6, Lhrg$a;->a:Lcom/uc/webview/export/WebView;

    .line 6018
    iput-object v6, v7, Lhrg;->a:Lcom/uc/webview/export/WebView;

    .line 505
    .local v3, "dingExtentionClient":Lhrh;
    :cond_8
    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/webview/RimetWebView;->getUCExtension()Lcom/uc/webview/export/extension/UCExtension;

    move-result-object v6

    invoke-virtual {v6, v3}, Lcom/uc/webview/export/extension/UCExtension;->setClient(Lcom/uc/webview/export/extension/UCClient;)V

    .line 508
    .end local v3    # "dingExtentionClient":Lhrh;
    :cond_9
    invoke-static {}, Lcom/alibaba/lightapp/runtime/monitor/RuntimeLog;->getInstance()Lcom/alibaba/lightapp/runtime/monitor/RuntimeLog;

    move-result-object v6

    const-string/jumbo v7, "webview_init"

    invoke-virtual {v6, v7}, Lcom/alibaba/lightapp/runtime/monitor/RuntimeLog;->addRuntimeLifeCycle(Ljava/lang/String;)V

    .line 510
    invoke-direct {p0, p1}, Lcom/alibaba/lightapp/runtime/webview/RimetWebView;->setDownloadListener(Landroid/content/Context;)V

    .line 512
    invoke-static {}, Lcom/uc/webview/export/WebView;->getCoreType()I

    move-result v6

    invoke-static {v6}, Lcom/alibaba/lightapp/runtime/monitor/RuntimeStatistics;->commitUCCorePV(I)V

    .line 514
    return-void

    .line 337
    :cond_a
    const/4 v6, -0x1

    invoke-virtual {v5, v6}, Lcom/uc/webview/export/WebSettings;->setCacheMode(I)V

    goto/16 :goto_0

    .line 3569
    .restart local v0    # "appCacheDir":Ljava/lang/String;
    .restart local v4    # "method":Ljava/lang/reflect/Method;
    :cond_b
    :try_start_3
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    if-eqz v7, :cond_7

    .line 3570
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    const-string/jumbo v8, "setState"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Class;

    const/4 v10, 0x0

    sget-object v11, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v11, v9, v10

    invoke-virtual {v7, v8, v9}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v7

    .line 3571
    if-eqz v7, :cond_7

    .line 3572
    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 3573
    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-virtual {v7, v6, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_3

    :catch_0
    move-exception v6

    goto/16 :goto_3

    :catch_1
    move-exception v6

    goto/16 :goto_2

    .line 408
    :catch_2
    move-exception v6

    goto/16 :goto_2

    :catch_3
    move-exception v6

    goto/16 :goto_1
.end method

.method private a(Lcom/alibaba/lightapp/runtime/monitor/warn/UrlStatusManager$UrlStatus;)V
    .locals 2
    .param p1, "urlStatus"    # Lcom/alibaba/lightapp/runtime/monitor/warn/UrlStatusManager$UrlStatus;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 2560
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v0

    new-instance v1, Lcom/alibaba/lightapp/runtime/webview/RimetWebView$10;

    invoke-direct {v1, p0, p1}, Lcom/alibaba/lightapp/runtime/webview/RimetWebView$10;-><init>(Lcom/alibaba/lightapp/runtime/webview/RimetWebView;Lcom/alibaba/lightapp/runtime/monitor/warn/UrlStatusManager$UrlStatus;)V

    invoke-virtual {v0, v1}, Lhcv;->post(Ljava/lang/Runnable;)Z

    .line 2621
    return-void
.end method

.method static synthetic a(Lcom/alibaba/lightapp/runtime/webview/RimetWebView;Landroid/webkit/ValueCallback;Z)V
    .locals 2
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/webview/RimetWebView;
    .param p1, "x1"    # Landroid/webkit/ValueCallback;
    .param p2, "x2"    # Z

    .prologue
    .line 148
    .line 22259
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/webview/RimetWebView;->h:Lcom/alibaba/lightapp/runtime/webview/RimetWebView$b;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/webview/RimetWebView;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 22260
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/webview/RimetWebView;->h:Lcom/alibaba/lightapp/runtime/webview/RimetWebView$b;

    new-instance v1, Lcom/alibaba/lightapp/runtime/webview/RimetWebView$8;

    invoke-direct {v1, p0, p1}, Lcom/alibaba/lightapp/runtime/webview/RimetWebView$8;-><init>(Lcom/alibaba/lightapp/runtime/webview/RimetWebView;Landroid/webkit/ValueCallback;)V

    invoke-interface {v0, v1}, Lcom/alibaba/lightapp/runtime/webview/RimetWebView$b;->b(Landroid/webkit/ValueCallback;)V

    .line 22271
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/webview/RimetWebView;->h:Lcom/alibaba/lightapp/runtime/webview/RimetWebView$b;

    invoke-interface {v0, p2}, Lcom/alibaba/lightapp/runtime/webview/RimetWebView$b;->b(Z)V

    .line 148
    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/alibaba/lightapp/runtime/webview/RimetWebView;Lcom/alibaba/lightapp/runtime/monitor/warn/UrlStatusManager$UrlStatus;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/webview/RimetWebView;
    .param p1, "x1"    # Lcom/alibaba/lightapp/runtime/monitor/warn/UrlStatusManager$UrlStatus;

    .prologue
    .line 148
    invoke-direct {p0, p1}, Lcom/alibaba/lightapp/runtime/webview/RimetWebView;->a(Lcom/alibaba/lightapp/runtime/monitor/warn/UrlStatusManager$UrlStatus;)V

    return-void
.end method

.method static synthetic a(Lcom/alibaba/lightapp/runtime/webview/RimetWebView;Ljava/lang/String;)V
    .locals 7
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/webview/RimetWebView;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 148
    .line 18602
    invoke-static {}, Lhfo;->a()Lhfo;

    move-result-object v0

    invoke-virtual {v0, p1}, Lhfo;->a(Ljava/lang/String;)Lhfo$b;

    move-result-object v0

    .line 18603
    iget-object v0, v0, Lhfo$b;->a:Ljava/lang/String;

    .line 18606
    :try_start_0
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    .line 18607
    const-wide v0, 0x7fffffffffffffffL

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 18612
    :goto_0
    return-void

    .line 18610
    :catch_0
    move-exception v0

    .line 18611
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 18615
    :cond_0
    new-instance v4, Lhqq;

    invoke-direct {v4}, Lhqq;-><init>()V

    .line 18616
    invoke-static {}, Lcmx;->a()Lcom/alibaba/doraemon/eventbus/EventButler;

    move-result-object v0

    new-instance v1, Lcom/alibaba/lightapp/runtime/webview/RimetWebView$16;

    invoke-direct {v1, p0}, Lcom/alibaba/lightapp/runtime/webview/RimetWebView$16;-><init>(Lcom/alibaba/lightapp/runtime/webview/RimetWebView;)V

    const-class v5, Lcma;

    .line 18634
    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/webview/RimetWebView;->getActivity()Landroid/app/Activity;

    move-result-object v6

    .line 18616
    invoke-interface {v0, v1, v5, v6}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcma;

    .line 19019
    const-class v1, Lcom/alibaba/lightapp/runtime/idl/MicroAppStoreIService;

    invoke-static {v1}, Liyx;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/lightapp/runtime/idl/MicroAppStoreIService;

    .line 19020
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    new-instance v3, Lhqq$1;

    invoke-direct {v3, v4, v0}, Lhqq$1;-><init>(Lhqq;Lcma;)V

    invoke-interface {v1, v2, v3}, Lcom/alibaba/lightapp/runtime/idl/MicroAppStoreIService;->isvContactInfoByApp(Ljava/lang/Long;Lcmi;)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/alibaba/lightapp/runtime/webview/RimetWebView;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/webview/RimetWebView;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 148
    .line 20279
    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/webview/RimetWebView;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 20281
    if-eqz v0, :cond_0

    .line 20282
    new-instance v1, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/webview/RimetWebView;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 20283
    invoke-virtual {v1, p1}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 20285
    sget v2, Lhdn$k;->sure:I

    new-instance v3, Lcom/alibaba/lightapp/runtime/webview/RimetWebView$6;

    invoke-direct {v3, p0, p2}, Lcom/alibaba/lightapp/runtime/webview/RimetWebView$6;-><init>(Lcom/alibaba/lightapp/runtime/webview/RimetWebView;Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 20294
    sget v2, Lhdn$k;->login_cancel:I

    new-instance v3, Lcom/alibaba/lightapp/runtime/webview/RimetWebView$7;

    invoke-direct {v3, p0, p2, v0}, Lcom/alibaba/lightapp/runtime/webview/RimetWebView$7;-><init>(Lcom/alibaba/lightapp/runtime/webview/RimetWebView;Ljava/lang/String;Landroid/app/Activity;)V

    invoke-virtual {v1, v2, v3}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 20305
    invoke-virtual {v1}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->show()Landroid/support/v7/app/AlertDialog;

    .line 148
    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/alibaba/lightapp/runtime/webview/RimetWebView;Ljava/lang/String;Ljava/util/Map;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/webview/RimetWebView;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/util/Map;

    .prologue
    .line 148
    invoke-super {p0, p1, p2}, Lcom/alibaba/lightapp/runtime/permission/JsapiPermissionWebView;->loadUrl(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/util/Map;)V
    .locals 13
    .param p1, "url"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v12

    invoke-static {v12}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 1060
    .local p2, "additionalHttpHeaders":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-boolean v7, p0, Lcom/alibaba/lightapp/runtime/webview/RimetWebView;->m:Z

    if-nez v7, :cond_f

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_f

    .line 1061
    invoke-static {}, Lcom/alibaba/lightapp/runtime/monitor/WebLogger;->getInstance()Lcom/alibaba/lightapp/runtime/monitor/WebLogger;

    move-result-object v7

    const-string/jumbo v8, ""

    const-string/jumbo v9, "loadUrl:"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    aput-object p1, v10, v11

    invoke-virtual {v7, v8, v9, v10}, Lcom/alibaba/lightapp/runtime/monitor/WebLogger;->logLow(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1062
    invoke-static {}, Lcom/alibaba/lightapp/runtime/monitor/RuntimeLog;->getInstance()Lcom/alibaba/lightapp/runtime/monitor/RuntimeLog;

    move-result-object v7

    const-string/jumbo v8, "webview_loadUrl"

    invoke-virtual {v7, v8}, Lcom/alibaba/lightapp/runtime/monitor/RuntimeLog;->addRuntimeLifeCycle(Ljava/lang/String;)V

    .line 1065
    invoke-static {}, Lcom/alibaba/lightapp/runtime/monitor/RuntimePerformanceMagician;->getInstance()Lcom/alibaba/lightapp/runtime/monitor/RuntimePerformanceMagician;

    move-result-object v7

    iget-object v8, p0, Lcom/alibaba/lightapp/runtime/webview/RimetWebView;->E:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    invoke-virtual {v7, v8, v10, v11}, Lcom/alibaba/lightapp/runtime/monitor/RuntimePerformanceMagician;->setRuntimeLoadUrlTime(Ljava/lang/String;J)V

    .line 1067
    invoke-static {p1}, Lhsc;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1069
    const-string/jumbo v7, "url_trim_enable"

    const/4 v8, 0x1

    invoke-static {v7, v8}, Lhdo;->b(Ljava/lang/String;Z)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 1070
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 13162
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_12

    .line 13166
    const-string/jumbo v7, "http://"

    invoke-virtual {p1, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_1

    const-string/jumbo v7, "https://"

    invoke-virtual {p1, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_10

    .line 13167
    :cond_1
    const/4 v7, 0x1

    .line 1072
    :goto_0
    if-eqz v7, :cond_15

    .line 1073
    iget-object v7, p0, Lcom/alibaba/lightapp/runtime/webview/RimetWebView;->E:Ljava/lang/String;

    if-eqz v7, :cond_2

    .line 1074
    invoke-static {}, Lhqe;->a()Lhqe;

    move-result-object v7

    iget-object v8, p0, Lcom/alibaba/lightapp/runtime/webview/RimetWebView;->E:Ljava/lang/String;

    invoke-virtual {v7, v8}, Lhqe;->a(Ljava/lang/String;)V

    .line 1076
    :cond_2
    invoke-static {}, Lhli;->a()Lhli;

    .line 14115
    invoke-static {p1}, Lcom/ali/user/enterprise/Login;->isLoginUrl(Ljava/lang/String;)Z

    move-result v7

    .line 1076
    if-nez v7, :cond_3

    .line 15040
    invoke-static {p1}, Lhlh;->a(Ljava/lang/String;)Z

    move-result v7

    .line 1076
    if-eqz v7, :cond_4

    :cond_3
    iget-object v7, p0, Lcom/alibaba/lightapp/runtime/webview/RimetWebView;->E:Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 1077
    :cond_4
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/webview/RimetWebView;->E:Ljava/lang/String;

    .line 1079
    :cond_5
    iget-object v7, p0, Lcom/alibaba/lightapp/runtime/webview/RimetWebView;->E:Ljava/lang/String;

    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    invoke-virtual {v7}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/alibaba/lightapp/runtime/webview/RimetWebView;->F:Ljava/lang/String;

    .line 1080
    iget-object v7, p0, Lcom/alibaba/lightapp/runtime/webview/RimetWebView;->E:Ljava/lang/String;

    invoke-static {v7}, Lcom/alibaba/lightapp/runtime/monitor/RuntimeStatistics;->createH5StatTransaction(Ljava/lang/String;)Lcom/alibaba/lightapp/runtime/monitor/RuntimeStatistics$H5StatTransaction;

    move-result-object v7

    iput-object v7, p0, Lcom/alibaba/lightapp/runtime/webview/RimetWebView;->u:Lcom/alibaba/lightapp/runtime/monitor/RuntimeStatistics$H5StatTransaction;

    .line 1082
    invoke-virtual {p0, p1}, Lcom/alibaba/lightapp/runtime/webview/RimetWebView;->e(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 1086
    :cond_6
    if-nez p2, :cond_7

    .line 1087
    new-instance p2, Ljava/util/HashMap;

    .end local p2    # "additionalHttpHeaders":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    .line 16202
    .restart local p2    # "additionalHttpHeaders":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_7
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_a

    .line 16204
    :try_start_0
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 16207
    const-string/jumbo v7, "Accept-Language"

    invoke-interface {p2, v7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_9

    .line 16208
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v7

    .line 16209
    invoke-virtual {v7}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v8

    .line 16210
    invoke-virtual {v7}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v7

    .line 16212
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v9

    invoke-virtual {v9}, Lcid;->c()Landroid/app/Application;

    move-result-object v9

    invoke-static {v9}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v9

    const-string/jumbo v10, "pref_locale"

    const-string/jumbo v11, ""

    invoke-interface {v9, v10, v11}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 16213
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_8

    .line 16214
    const-string/jumbo v10, "_"

    invoke-virtual {v9, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    .line 16215
    array-length v10, v9

    const/4 v11, 0x2

    if-ne v10, v11, :cond_8

    .line 16216
    const/4 v7, 0x0

    aget-object v8, v9, v7

    .line 16217
    const/4 v7, 0x1

    aget-object v7, v9, v7

    .line 16222
    :cond_8
    invoke-static {}, Lcom/alibaba/doraemon/performance/DDStringBuilderProxy;->getDDStringBuilder()Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v9

    .line 16223
    invoke-virtual {v9, v8}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 16224
    const/16 v8, 0x2d

    invoke-virtual {v9, v8}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(C)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 16225
    invoke-virtual {v9, v7}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 16226
    const-string/jumbo v7, "Accept-Language"

    invoke-virtual {v9}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {p2, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 16231
    :cond_9
    invoke-static {}, Lhhq;->a()Lhhq;

    const-string/jumbo v7, "hybrid_web_referer_change"

    const/4 v8, 0x1

    invoke-static {v7, v8}, Lhhq;->a(Ljava/lang/String;Z)Z

    move-result v7

    if-eqz v7, :cond_13

    .line 16232
    const-string/jumbo v7, "Referer"

    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/webview/RimetWebView;->getUrl()Ljava/lang/String;

    move-result-object v8

    invoke-interface {p2, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1092
    :cond_a
    :goto_1
    invoke-static {p1}, Lhsc;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1093
    .local v3, "ipUrl":Ljava/lang/String;
    invoke-static {}, Lcom/alibaba/lightapp/runtime/monitor/WebLogger;->getInstance()Lcom/alibaba/lightapp/runtime/monitor/WebLogger;

    move-result-object v7

    iget-object v8, p0, Lcom/alibaba/lightapp/runtime/webview/RimetWebView;->E:Ljava/lang/String;

    const-string/jumbo v9, "loadUrl:"

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    const-string/jumbo v12, ";ipurl="

    aput-object v12, v10, v11

    const/4 v11, 0x1

    aput-object v3, v10, v11

    invoke-virtual {v7, v8, p1, v9, v10}, Lcom/alibaba/lightapp/runtime/monitor/WebLogger;->logMiddle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1095
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_d

    .line 1096
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    .line 1097
    .local v6, "uri":Landroid/net/Uri;
    if-eqz v6, :cond_c

    .line 17185
    if-eqz v6, :cond_b

    .line 17186
    invoke-virtual {v6}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v7

    .line 17188
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_b

    const-string/jumbo v8, ".dingtalk.com"

    invoke-virtual {v7, v8}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_b

    .line 17190
    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    .line 17192
    if-eqz v7, :cond_b

    .line 17193
    invoke-virtual {v7}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v7

    invoke-static {}, Lcom/alibaba/wukong/auth/WKAuthProxy;->getAccessToken()Ljava/lang/String;

    move-result-object v8

    invoke-static {}, Lcom/alibaba/wukong/auth/WKAuthProxy;->getDeviceId()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v8, v9}, Lcms;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1099
    :cond_b
    iget-object v7, p0, Lcom/alibaba/lightapp/runtime/webview/RimetWebView;->s:Ljava/util/Map;

    invoke-interface {v7, v3, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1101
    const-string/jumbo v7, "Host"

    invoke-interface {p2, v7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_c

    .line 1102
    invoke-virtual {v6}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v2

    .line 1103
    .local v2, "host":Ljava/lang/String;
    if-eqz v6, :cond_c

    if-eqz p2, :cond_c

    .line 1104
    invoke-virtual {v6}, Landroid/net/Uri;->getPort()I

    move-result v5

    .line 1105
    .local v5, "port":I
    if-gez v5, :cond_14

    .line 1106
    const-string/jumbo v7, "Host"

    invoke-interface {p2, v7, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1114
    .end local v2    # "host":Ljava/lang/String;
    .end local v5    # "port":I
    :cond_c
    :goto_2
    move-object p1, v3

    .line 1125
    .end local v6    # "uri":Landroid/net/Uri;
    :cond_d
    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/webview/RimetWebView;->getActivity()Landroid/app/Activity;

    move-result-object v7

    if-eqz v7, :cond_e

    .line 17535
    iget-boolean v7, p0, Lcom/alibaba/lightapp/runtime/webview/RimetWebView;->g:Z

    .line 1125
    if-nez v7, :cond_e

    .line 1126
    invoke-static {}, Lcom/alibaba/lightapp/runtime/monitor/BlankPageDetector;->getInstance()Lcom/alibaba/lightapp/runtime/monitor/BlankPageDetector;

    move-result-object v7

    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/webview/RimetWebView;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-virtual {v7, v8, p1}, Lcom/alibaba/lightapp/runtime/monitor/BlankPageDetector;->enterLoadUrl(Landroid/app/Activity;Ljava/lang/String;)V

    .line 1128
    :cond_e
    move-object v1, p1

    .line 1129
    .local v1, "finalUrl":Ljava/lang/String;
    move-object v0, p2

    .line 1130
    .local v0, "finalAdditionalHttpHeaders":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v7, "dd_addcookie=true"

    invoke-virtual {v1, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_16

    .line 18052
    sget-object v7, Lhra$a;->a:Lhqz;

    .line 1131
    new-instance v8, Lcom/alibaba/lightapp/runtime/webview/RimetWebView$4;

    invoke-direct {v8, p0, v1, v0}, Lcom/alibaba/lightapp/runtime/webview/RimetWebView$4;-><init>(Lcom/alibaba/lightapp/runtime/webview/RimetWebView;Ljava/lang/String;Ljava/util/Map;)V

    invoke-interface {v7, v1, v8}, Lhqz;->a(Ljava/lang/String;Lhqz$a;)V

    .line 1152
    .end local v0    # "finalAdditionalHttpHeaders":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v1    # "finalUrl":Ljava/lang/String;
    .end local v3    # "ipUrl":Ljava/lang/String;
    :cond_f
    :goto_3
    return-void

    .line 13170
    :cond_10
    const-string/jumbo v7, "url_check_enable"

    const/4 v8, 0x1

    invoke-static {v7, v8}, Lhdo;->b(Ljava/lang/String;Z)Z

    move-result v7

    if-eqz v7, :cond_11

    .line 13171
    const-string/jumbo v7, "file:///android_asset"

    invoke-virtual {p1, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_12

    .line 13172
    const/4 v7, 0x1

    goto/16 :goto_0

    .line 13175
    :cond_11
    const-string/jumbo v7, "file://"

    invoke-virtual {p1, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_12

    .line 13176
    const/4 v7, 0x1

    goto/16 :goto_0

    .line 13180
    :cond_12
    const/4 v7, 0x0

    goto/16 :goto_0

    .line 16234
    :cond_13
    :try_start_1
    const-string/jumbo v7, "Referer"

    iget-object v8, p0, Lcom/alibaba/lightapp/runtime/webview/RimetWebView;->E:Ljava/lang/String;

    invoke-interface {p2, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1

    .line 16243
    :catch_0
    move-exception v7

    .line 16244
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_1

    .line 1108
    .restart local v2    # "host":Ljava/lang/String;
    .restart local v3    # "ipUrl":Ljava/lang/String;
    .restart local v5    # "port":I
    .restart local v6    # "uri":Landroid/net/Uri;
    :cond_14
    const-string/jumbo v7, "Host"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, ":"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {p2, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_2

    .line 1117
    .end local v2    # "host":Ljava/lang/String;
    .end local v3    # "ipUrl":Ljava/lang/String;
    .end local v5    # "port":I
    .end local v6    # "uri":Landroid/net/Uri;
    :cond_15
    invoke-static {}, Lhsb;->a()Lhsb;

    move-result-object v7

    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/webview/RimetWebView;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-virtual {v7, v8, p1}, Lhsb;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v4

    .line 1118
    .local v4, "isHandleSuccess":Z
    invoke-static {}, Lcom/alibaba/lightapp/runtime/monitor/WebLogger;->getInstance()Lcom/alibaba/lightapp/runtime/monitor/WebLogger;

    move-result-object v7

    iget-object v8, p0, Lcom/alibaba/lightapp/runtime/webview/RimetWebView;->E:Ljava/lang/String;

    const-string/jumbo v9, "loadUrlImpl:"

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    const-string/jumbo v12, ";result="

    aput-object v12, v10, v11

    const/4 v11, 0x1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-virtual {v7, v8, p1, v9, v10}, Lcom/alibaba/lightapp/runtime/monitor/WebLogger;->logMiddle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1119
    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/webview/RimetWebView;->getActivity()Landroid/app/Activity;

    move-result-object v7

    if-eqz v7, :cond_f

    if-eqz v4, :cond_f

    .line 1120
    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/webview/RimetWebView;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/Activity;->finish()V

    goto/16 :goto_3

    .line 1148
    .end local v4    # "isHandleSuccess":Z
    .restart local v0    # "finalAdditionalHttpHeaders":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v1    # "finalUrl":Ljava/lang/String;
    .restart local v3    # "ipUrl":Ljava/lang/String;
    :cond_16
    invoke-super {p0, v1, v0}, Lcom/alibaba/lightapp/runtime/permission/JsapiPermissionWebView;->loadUrl(Ljava/lang/String;Ljava/util/Map;)V

    goto/16 :goto_3
.end method

.method static synthetic b(Lcom/alibaba/lightapp/runtime/webview/RimetWebView;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/webview/RimetWebView;

    .prologue
    .line 148
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/webview/RimetWebView;->E:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic b(Lcom/alibaba/lightapp/runtime/webview/RimetWebView;Landroid/webkit/ValueCallback;Z)V
    .locals 2
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/webview/RimetWebView;
    .param p1, "x1"    # Landroid/webkit/ValueCallback;
    .param p2, "x2"    # Z

    .prologue
    .line 148
    .line 22276
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/webview/RimetWebView;->h:Lcom/alibaba/lightapp/runtime/webview/RimetWebView$b;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/webview/RimetWebView;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 22277
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/webview/RimetWebView;->h:Lcom/alibaba/lightapp/runtime/webview/RimetWebView$b;

    new-instance v1, Lcom/alibaba/lightapp/runtime/webview/RimetWebView$9;

    invoke-direct {v1, p0, p1}, Lcom/alibaba/lightapp/runtime/webview/RimetWebView$9;-><init>(Lcom/alibaba/lightapp/runtime/webview/RimetWebView;Landroid/webkit/ValueCallback;)V

    invoke-interface {v0, v1}, Lcom/alibaba/lightapp/runtime/webview/RimetWebView$b;->a(Landroid/webkit/ValueCallback;)V

    .line 22287
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/webview/RimetWebView;->h:Lcom/alibaba/lightapp/runtime/webview/RimetWebView$b;

    invoke-interface {v0, p2}, Lcom/alibaba/lightapp/runtime/webview/RimetWebView$b;->b(Z)V

    .line 148
    :cond_0
    return-void
.end method

.method static synthetic b(Lcom/alibaba/lightapp/runtime/webview/RimetWebView;Ljava/lang/String;)V
    .locals 4
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/webview/RimetWebView;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 148
    .line 19543
    new-instance v0, Lcom/alibaba/lightapp/runtime/monitor/warn/UrlStatusManager$UrlStatus;

    invoke-static {}, Lcom/alibaba/lightapp/runtime/monitor/warn/UrlStatusManager;->getInstance()Lcom/alibaba/lightapp/runtime/monitor/warn/UrlStatusManager;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v0, v1}, Lcom/alibaba/lightapp/runtime/monitor/warn/UrlStatusManager$UrlStatus;-><init>(Lcom/alibaba/lightapp/runtime/monitor/warn/UrlStatusManager;)V

    .line 19544
    iput-object p1, v0, Lcom/alibaba/lightapp/runtime/monitor/warn/UrlStatusManager$UrlStatus;->tel:Ljava/lang/String;

    .line 19545
    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/webview/RimetWebView;->getActivity()Landroid/app/Activity;

    move-result-object v1

    sget v2, Lhdn$k;->dt_lightapp_webview_exception_title:I

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alibaba/lightapp/runtime/monitor/warn/UrlStatusManager$UrlStatus;->title:Ljava/lang/String;

    .line 19546
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 19547
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "  "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v2

    invoke-virtual {v2}, Lcid;->c()Landroid/app/Application;

    move-result-object v2

    .line 19548
    invoke-virtual {v2}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lhdn$k;->dt_lightapp_webview_exception_no_tel_msg:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alibaba/lightapp/runtime/monitor/warn/UrlStatusManager$UrlStatus;->content:Ljava/lang/String;

    .line 19555
    :goto_0
    invoke-direct {p0, v0}, Lcom/alibaba/lightapp/runtime/webview/RimetWebView;->a(Lcom/alibaba/lightapp/runtime/monitor/warn/UrlStatusManager$UrlStatus;)V

    .line 148
    return-void

    .line 19550
    :cond_0
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v1

    invoke-virtual {v1}, Lcid;->c()Landroid/app/Application;

    move-result-object v1

    .line 19551
    invoke-virtual {v1}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lhdn$k;->dt_lightapp_webview_exception_tel_msg:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 19552
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v1, v2, v3

    const/4 v1, 0x1

    aput-object p1, v2, v1

    invoke-static {v2}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 19553
    iput-object v1, v0, Lcom/alibaba/lightapp/runtime/monitor/warn/UrlStatusManager$UrlStatus;->content:Ljava/lang/String;

    goto :goto_0
.end method

.method static synthetic b(Lcom/alibaba/lightapp/runtime/webview/RimetWebView;Ljava/lang/String;Ljava/util/Map;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/webview/RimetWebView;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/util/Map;

    .prologue
    .line 148
    invoke-super {p0, p1, p2}, Lcom/alibaba/lightapp/runtime/permission/JsapiPermissionWebView;->loadUrl(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method static synthetic c(Lcom/alibaba/lightapp/runtime/webview/RimetWebView;)Lcom/alibaba/lightapp/runtime/webview/RimetWebView$NajsCommunicator;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/webview/RimetWebView;

    .prologue
    .line 148
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/webview/RimetWebView;->l:Lcom/alibaba/lightapp/runtime/webview/RimetWebView$NajsCommunicator;

    return-object v0
.end method

.method static synthetic c(Lcom/alibaba/lightapp/runtime/webview/RimetWebView;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/webview/RimetWebView;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 148
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/webview/RimetWebView;->E:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic d(Lcom/alibaba/lightapp/runtime/webview/RimetWebView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/webview/RimetWebView;

    .prologue
    .line 148
    iget-boolean v0, p0, Lcom/alibaba/lightapp/runtime/webview/RimetWebView;->m:Z

    return v0
.end method

.method static synthetic d(Lcom/alibaba/lightapp/runtime/webview/RimetWebView;Ljava/lang/String;)Z
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/webview/RimetWebView;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 148
    invoke-direct {p0, p1}, Lcom/alibaba/lightapp/runtime/webview/RimetWebView;->f(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic e(Lcom/alibaba/lightapp/runtime/webview/RimetWebView;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/webview/RimetWebView;

    .prologue
    .line 148
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/webview/RimetWebView;->n:Ljava/util/List;

    return-object v0
.end method

.method static synthetic e(Lcom/alibaba/lightapp/runtime/webview/RimetWebView;Ljava/lang/String;)V
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/webview/RimetWebView;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 148
    .line 20056
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/alibaba/lightapp/runtime/webview/RimetWebView;->a(Ljava/lang/String;Ljava/util/Map;)V

    .line 148
    return-void
.end method

.method static synthetic f(Lcom/alibaba/lightapp/runtime/webview/RimetWebView;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/webview/RimetWebView;

    .prologue
    .line 148
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/webview/RimetWebView;->o:Ljava/util/List;

    return-object v0
.end method

.method static synthetic f(Lcom/alibaba/lightapp/runtime/webview/RimetWebView;Ljava/lang/String;)V
    .locals 4
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/webview/RimetWebView;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 148
    .line 21259
    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/webview/RimetWebView;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 21261
    if-eqz v0, :cond_0

    .line 21262
    new-instance v1, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/webview/RimetWebView;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 21263
    invoke-virtual {v1, p1}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 21265
    sget v2, Lhdn$k;->sure:I

    new-instance v3, Lcom/alibaba/lightapp/runtime/webview/RimetWebView$5;

    invoke-direct {v3, p0, v0}, Lcom/alibaba/lightapp/runtime/webview/RimetWebView$5;-><init>(Lcom/alibaba/lightapp/runtime/webview/RimetWebView;Landroid/app/Activity;)V

    invoke-virtual {v1, v2, v3}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 21274
    invoke-virtual {v1}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->show()Landroid/support/v7/app/AlertDialog;

    .line 148
    :cond_0
    return-void
.end method

.method private f(Ljava/lang/String;)Z
    .locals 6
    .param p1, "url"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 940
    const/4 v0, 0x0

    .line 942
    .local v0, "access":Z
    invoke-static {p1}, Lhdo;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 10852
    .local v1, "domain":Ljava/lang/String;
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0xb

    if-lt v3, v4, :cond_0

    .line 10853
    const-string/jumbo v3, "dingtalk"

    invoke-virtual {p0, v3}, Lcom/alibaba/lightapp/runtime/webview/RimetWebView;->removeJavascriptInterface(Ljava/lang/String;)V

    .line 10854
    const-string/jumbo v3, "dingtalk"

    .line 11487
    iget-object v4, p0, Lcom/alibaba/lightapp/runtime/NuvaWebView;->a:Ljava/util/Map;

    invoke-interface {v4, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10855
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/alibaba/lightapp/runtime/webview/RimetWebView;->l:Lcom/alibaba/lightapp/runtime/webview/RimetWebView$NajsCommunicator;

    .line 945
    :cond_0
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 946
    .local v2, "property":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v3, "url"

    invoke-interface {v2, v3, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 947
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v3

    const-string/jumbo v4, "RimetWebView"

    const-string/jumbo v5, "webview"

    invoke-interface {v3, v4, v5, v2}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 950
    const-string/jumbo v3, "javascript:"

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 951
    invoke-virtual {p0, p1}, Lcom/alibaba/lightapp/runtime/webview/RimetWebView;->e(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 952
    :cond_1
    const/4 v0, 0x1

    .line 953
    invoke-direct {p0}, Lcom/alibaba/lightapp/runtime/webview/RimetWebView;->j()V

    .line 966
    :goto_0
    return v0

    .line 954
    :cond_2
    iget-object v3, p0, Lcom/alibaba/lightapp/runtime/webview/RimetWebView;->n:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 955
    const/4 v0, 0x1

    goto :goto_0

    .line 956
    :cond_3
    iget-object v3, p0, Lcom/alibaba/lightapp/runtime/webview/RimetWebView;->p:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 957
    const/4 v0, 0x1

    goto :goto_0

    .line 958
    :cond_4
    iget-object v3, p0, Lcom/alibaba/lightapp/runtime/webview/RimetWebView;->q:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    iget-object v3, p0, Lcom/alibaba/lightapp/runtime/webview/RimetWebView;->o:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 959
    :cond_5
    const/4 v0, 0x0

    goto :goto_0

    .line 12364
    :cond_6
    const-string/jumbo v3, "file:///"

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    .line 960
    if-eqz v3, :cond_7

    .line 961
    const/4 v0, 0x1

    goto :goto_0

    .line 963
    :cond_7
    invoke-direct {p0, p1}, Lcom/alibaba/lightapp/runtime/webview/RimetWebView;->g(Ljava/lang/String;)V

    goto :goto_0
.end method

.method static synthetic g(Lcom/alibaba/lightapp/runtime/webview/RimetWebView;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/webview/RimetWebView;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 148
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/webview/RimetWebView;->A:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic g(Lcom/alibaba/lightapp/runtime/webview/RimetWebView;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/webview/RimetWebView;

    .prologue
    .line 148
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/webview/RimetWebView;->p:Ljava/util/List;

    return-object v0
.end method

.method private g(Ljava/lang/String;)V
    .locals 2
    .param p1, "url"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 994
    new-instance v0, Lcom/alibaba/lightapp/runtime/webview/RimetWebView$3;

    invoke-direct {v0, p0, p1}, Lcom/alibaba/lightapp/runtime/webview/RimetWebView$3;-><init>(Lcom/alibaba/lightapp/runtime/webview/RimetWebView;Ljava/lang/String;)V

    .line 1052
    .local v0, "callback":Lcmi;, "Lcmi<Lgtp;>;"
    invoke-static {}, Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;->k()Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;->b(Ljava/lang/String;Liyv;)V

    .line 1053
    return-void
.end method

.method static synthetic h(Lcom/alibaba/lightapp/runtime/webview/RimetWebView;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/webview/RimetWebView;

    .prologue
    .line 148
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/webview/RimetWebView;->q:Ljava/util/List;

    return-object v0
.end method

.method static synthetic h(Lcom/alibaba/lightapp/runtime/webview/RimetWebView;Ljava/lang/String;)Z
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/webview/RimetWebView;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 148
    .line 22364
    const-string/jumbo v0, "file:///"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    .line 148
    return v0
.end method

.method static synthetic i(Lcom/alibaba/lightapp/runtime/webview/RimetWebView;)Lcom/alibaba/lightapp/runtime/webview/RimetWebView$c;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/webview/RimetWebView;

    .prologue
    .line 148
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/webview/RimetWebView;->k:Lcom/alibaba/lightapp/runtime/webview/RimetWebView$c;

    return-object v0
.end method

.method static synthetic i()Ljava/util/Set;
    .locals 1

    .prologue
    .line 148
    sget-object v0, Lcom/alibaba/lightapp/runtime/webview/RimetWebView;->D:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic i(Lcom/alibaba/lightapp/runtime/webview/RimetWebView;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/webview/RimetWebView;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 148
    invoke-direct {p0, p1}, Lcom/alibaba/lightapp/runtime/webview/RimetWebView;->g(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic j(Lcom/alibaba/lightapp/runtime/webview/RimetWebView;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/webview/RimetWebView;

    .prologue
    .line 148
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/webview/RimetWebView;->A:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic j(Lcom/alibaba/lightapp/runtime/webview/RimetWebView;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/webview/RimetWebView;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 148
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/webview/RimetWebView;->F:Ljava/lang/String;

    return-object p1
.end method

.method private j()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 819
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/webview/RimetWebView;->l:Lcom/alibaba/lightapp/runtime/webview/RimetWebView$NajsCommunicator;

    if-nez v0, :cond_0

    .line 820
    new-instance v0, Lcom/alibaba/lightapp/runtime/webview/RimetWebView$NajsCommunicator;

    invoke-direct {v0, p0}, Lcom/alibaba/lightapp/runtime/webview/RimetWebView$NajsCommunicator;-><init>(Lcom/alibaba/lightapp/runtime/webview/RimetWebView;)V

    iput-object v0, p0, Lcom/alibaba/lightapp/runtime/webview/RimetWebView;->l:Lcom/alibaba/lightapp/runtime/webview/RimetWebView$NajsCommunicator;

    .line 821
    new-instance v0, Lcom/alibaba/lightapp/runtime/webview/RimetWebView$18;

    invoke-direct {v0, p0}, Lcom/alibaba/lightapp/runtime/webview/RimetWebView$18;-><init>(Lcom/alibaba/lightapp/runtime/webview/RimetWebView;)V

    const-string/jumbo v1, "dingtalk"

    invoke-virtual {p0, v0, v1}, Lcom/alibaba/lightapp/runtime/webview/RimetWebView;->a(Lcom/alibaba/dingtalk/runtimebase/web/WebViewWrapper$a;Ljava/lang/String;)V

    .line 845
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/webview/RimetWebView;->l:Lcom/alibaba/lightapp/runtime/webview/RimetWebView$NajsCommunicator;

    if-eqz v0, :cond_0

    .line 846
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/webview/RimetWebView;->l:Lcom/alibaba/lightapp/runtime/webview/RimetWebView$NajsCommunicator;

    const-string/jumbo v1, "dingtalk"

    invoke-virtual {p0, v0, v1}, Lcom/alibaba/lightapp/runtime/webview/RimetWebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 849
    :cond_0
    return-void
.end method

.method static synthetic k(Lcom/alibaba/lightapp/runtime/webview/RimetWebView;)Lcom/alibaba/lightapp/runtime/webview/RimetWebView$a;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/webview/RimetWebView;

    .prologue
    .line 148
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/webview/RimetWebView;->J:Lcom/alibaba/lightapp/runtime/webview/RimetWebView$a;

    return-object v0
.end method

.method private k()Ljava/lang/String;
    .locals 8

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 2218
    const/4 v0, 0x0

    .line 2220
    .local v0, "br":Ljava/io/BufferedReader;
    :try_start_0
    new-instance v3, Ljava/io/InputStreamReader;

    .line 2221
    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/webview/RimetWebView;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v6

    const-string/jumbo v7, "lightapp/errorpage/error_page.html"

    invoke-virtual {v6, v7}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v6

    invoke-direct {v3, v6}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 2222
    .local v3, "isr":Ljava/io/InputStreamReader;
    new-instance v1, Ljava/io/BufferedReader;

    invoke-direct {v1, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2224
    .end local v0    # "br":Ljava/io/BufferedReader;
    .local v1, "br":Ljava/io/BufferedReader;
    :try_start_1
    invoke-static {}, Lcom/alibaba/doraemon/performance/DDStringBuilderProxy;->getDDStringBuilder()Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v5

    .line 2225
    .local v5, "sb":Lcom/alibaba/doraemon/performance/DDStringBuilder;
    :goto_0
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    .local v4, "line":Ljava/lang/String;
    if-eqz v4, :cond_1

    .line 2226
    invoke-virtual {v5, v4}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v6

    const/16 v7, 0xa

    invoke-virtual {v6, v7}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(C)Lcom/alibaba/doraemon/performance/DDStringBuilder;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    .line 2231
    .end local v4    # "line":Ljava/lang/String;
    .end local v5    # "sb":Lcom/alibaba/doraemon/performance/DDStringBuilder;
    :catch_0
    move-exception v2

    move-object v0, v1

    .line 2232
    .end local v1    # "br":Ljava/io/BufferedReader;
    .end local v3    # "isr":Ljava/io/InputStreamReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    .local v2, "e":Ljava/lang/Exception;
    :goto_1
    :try_start_2
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2235
    if-eqz v0, :cond_0

    .line 2237
    :try_start_3
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 2243
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_2
    const-string/jumbo v6, ""

    :goto_3
    return-object v6

    .line 2229
    .end local v0    # "br":Ljava/io/BufferedReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    .restart local v3    # "isr":Ljava/io/InputStreamReader;
    .restart local v4    # "line":Ljava/lang/String;
    .restart local v5    # "sb":Lcom/alibaba/doraemon/performance/DDStringBuilder;
    :cond_1
    :try_start_4
    invoke-virtual {v5}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->toString()Ljava/lang/String;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-result-object v6

    .line 2237
    :try_start_5
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    :goto_4
    move-object v0, v1

    .line 2240
    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    goto :goto_3

    .line 2238
    .end local v0    # "br":Ljava/io/BufferedReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    :catch_1
    move-exception v2

    .line 2239
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    .line 2238
    .end local v1    # "br":Ljava/io/BufferedReader;
    .end local v3    # "isr":Ljava/io/InputStreamReader;
    .end local v4    # "line":Ljava/lang/String;
    .end local v5    # "sb":Lcom/alibaba/doraemon/performance/DDStringBuilder;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    .local v2, "e":Ljava/lang/Exception;
    :catch_2
    move-exception v2

    .line 2239
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 2235
    .end local v2    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v6

    :goto_5
    if-eqz v0, :cond_2

    .line 2237
    :try_start_6
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    .line 2240
    :cond_2
    :goto_6
    throw v6

    .line 2238
    :catch_3
    move-exception v2

    .line 2239
    .restart local v2    # "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_6

    .line 2235
    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v2    # "e":Ljava/io/IOException;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    .restart local v3    # "isr":Ljava/io/InputStreamReader;
    :catchall_1
    move-exception v6

    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    goto :goto_5

    .line 2231
    .end local v3    # "isr":Ljava/io/InputStreamReader;
    :catch_4
    move-exception v2

    goto :goto_1
.end method

.method static synthetic k(Lcom/alibaba/lightapp/runtime/webview/RimetWebView;Ljava/lang/String;)V
    .locals 4
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/webview/RimetWebView;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 148
    .line 24594
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.action.DIAL"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "tel:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 24595
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 24596
    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/webview/RimetWebView;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1, v0}, Lhrf;->a(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 24597
    sget v0, Lhdn$k;->system_call_fail_tip:I

    invoke-static {v0}, Lcms;->a(I)V

    .line 148
    :cond_0
    return-void
.end method

.method static synthetic l(Lcom/alibaba/lightapp/runtime/webview/RimetWebView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/webview/RimetWebView;

    .prologue
    .line 148
    iget-boolean v0, p0, Lcom/alibaba/lightapp/runtime/webview/RimetWebView;->g:Z

    return v0
.end method

.method static synthetic m(Lcom/alibaba/lightapp/runtime/webview/RimetWebView;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/webview/RimetWebView;

    .prologue
    .line 148
    invoke-direct {p0}, Lcom/alibaba/lightapp/runtime/webview/RimetWebView;->j()V

    return-void
.end method

.method static synthetic n(Lcom/alibaba/lightapp/runtime/webview/RimetWebView;)J
    .locals 2
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/webview/RimetWebView;

    .prologue
    .line 148
    iget-wide v0, p0, Lcom/alibaba/lightapp/runtime/webview/RimetWebView;->t:J

    return-wide v0
.end method

.method static synthetic o(Lcom/alibaba/lightapp/runtime/webview/RimetWebView;)V
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/webview/RimetWebView;

    .prologue
    .line 148
    .line 24013
    invoke-static {}, Lhpz;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p0, :cond_0

    .line 24015
    invoke-static {p0}, Lhqa;->a(Lcom/uc/webview/export/WebView;)V

    .line 148
    :cond_0
    return-void
.end method

.method static synthetic p(Lcom/alibaba/lightapp/runtime/webview/RimetWebView;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/webview/RimetWebView;

    .prologue
    .line 148
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/webview/RimetWebView;->G:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic q(Lcom/alibaba/lightapp/runtime/webview/RimetWebView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/webview/RimetWebView;

    .prologue
    .line 148
    iget-boolean v0, p0, Lcom/alibaba/lightapp/runtime/webview/RimetWebView;->H:Z

    return v0
.end method

.method static synthetic r(Lcom/alibaba/lightapp/runtime/webview/RimetWebView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/webview/RimetWebView;

    .prologue
    .line 148
    iget-boolean v0, p0, Lcom/alibaba/lightapp/runtime/webview/RimetWebView;->y:Z

    return v0
.end method

.method static synthetic s(Lcom/alibaba/lightapp/runtime/webview/RimetWebView;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/webview/RimetWebView;

    .prologue
    .line 148
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/webview/RimetWebView;->F:Ljava/lang/String;

    return-object v0
.end method

.method private setDownloadListener(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 638
    new-instance v0, Lcom/alibaba/lightapp/runtime/webview/RimetWebView$17;

    invoke-direct {v0, p0, p1}, Lcom/alibaba/lightapp/runtime/webview/RimetWebView$17;-><init>(Lcom/alibaba/lightapp/runtime/webview/RimetWebView;Landroid/content/Context;)V

    invoke-virtual {p0, v0}, Lcom/alibaba/lightapp/runtime/webview/RimetWebView;->setDownloadListener(Lcom/uc/webview/export/DownloadListener;)V

    .line 666
    return-void
.end method

.method private setUserAgentString(Ljava/lang/String;)V
    .locals 1
    .param p1, "ua"    # Ljava/lang/String;

    .prologue
    .line 932
    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/webview/RimetWebView;->getSettings()Lcom/uc/webview/export/WebSettings;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 933
    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/webview/RimetWebView;->getSettings()Lcom/uc/webview/export/WebSettings;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/uc/webview/export/WebSettings;->setUserAgentString(Ljava/lang/String;)V

    .line 935
    :cond_0
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/webview/RimetWebView;->G:Ljava/lang/String;

    .line 936
    return-void
.end method

.method static synthetic t(Lcom/alibaba/lightapp/runtime/webview/RimetWebView;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/webview/RimetWebView;

    .prologue
    .line 148
    invoke-direct {p0}, Lcom/alibaba/lightapp/runtime/webview/RimetWebView;->k()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic u(Lcom/alibaba/lightapp/runtime/webview/RimetWebView;)Lcom/alibaba/doraemon/statistics/Statistics;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/webview/RimetWebView;

    .prologue
    .line 148
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/webview/RimetWebView;->I:Lcom/alibaba/doraemon/statistics/Statistics;

    return-object v0
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "originUrl"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 1251
    move-object v0, p1

    .line 1252
    .local v0, "result":Ljava/lang/String;
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/webview/RimetWebView;->s:Ljava/util/Map;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/webview/RimetWebView;->s:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1253
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/webview/RimetWebView;->s:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "result":Ljava/lang/String;
    check-cast v0, Ljava/lang/String;

    .line 1255
    .restart local v0    # "result":Ljava/lang/String;
    :cond_0
    return-object v0
.end method

.method public coreDispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "motionEvent"    # Landroid/view/MotionEvent;

    .prologue
    .line 768
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/webview/RimetWebView;->C:Landroid/view/GestureDetector;

    if-eqz v0, :cond_0

    .line 769
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/webview/RimetWebView;->C:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 772
    :cond_0
    invoke-super {p0, p1}, Lcom/alibaba/lightapp/runtime/permission/JsapiPermissionWebView;->coreDispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public final d()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 805
    invoke-static {}, Lhqe;->a()Lhqe;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/webview/RimetWebView;->K:Lhqe$c;

    invoke-virtual {v0, v1}, Lhqe;->b(Lhqe$c;)V

    .line 806
    invoke-static {}, Lcom/alibaba/lightapp/runtime/monitor/BlankPageDetector;->getInstance()Lcom/alibaba/lightapp/runtime/monitor/BlankPageDetector;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/lightapp/runtime/monitor/BlankPageDetector;->exitWebView()V

    .line 807
    invoke-static {}, Lcom/alibaba/lightapp/runtime/monitor/LongRenderDetector;->getInstance()Lcom/alibaba/lightapp/runtime/monitor/LongRenderDetector;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/lightapp/runtime/monitor/LongRenderDetector;->exitWebView()V

    .line 809
    invoke-static {}, Lcom/alibaba/lightapp/runtime/monitor/RuntimeLog;->getInstance()Lcom/alibaba/lightapp/runtime/monitor/RuntimeLog;

    move-result-object v0

    const-string/jumbo v1, "webview_onDestroy"

    invoke-virtual {v0, v1}, Lcom/alibaba/lightapp/runtime/monitor/RuntimeLog;->addRuntimeLifeCycle(Ljava/lang/String;)V

    .line 810
    invoke-super {p0}, Lcom/alibaba/lightapp/runtime/permission/JsapiPermissionWebView;->d()V

    .line 811
    return-void
.end method

.method public destroy()V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 698
    iget-object v3, p0, Lcom/alibaba/lightapp/runtime/webview/RimetWebView;->u:Lcom/alibaba/lightapp/runtime/monitor/RuntimeStatistics$H5StatTransaction;

    if-eqz v3, :cond_0

    .line 699
    iget-object v3, p0, Lcom/alibaba/lightapp/runtime/webview/RimetWebView;->u:Lcom/alibaba/lightapp/runtime/monitor/RuntimeStatistics$H5StatTransaction;

    invoke-virtual {v3}, Lcom/alibaba/lightapp/runtime/monitor/RuntimeStatistics$H5StatTransaction;->end()V

    .line 701
    :cond_0
    invoke-static {}, Lhqe;->a()Lhqe;

    move-result-object v3

    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/webview/RimetWebView;->getUrl()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lhqe;->a(Ljava/lang/String;)V

    .line 703
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/alibaba/lightapp/runtime/webview/RimetWebView;->m:Z

    .line 704
    iget-object v3, p0, Lcom/alibaba/lightapp/runtime/webview/RimetWebView;->s:Ljava/util/Map;

    if-eqz v3, :cond_1

    .line 705
    iget-object v3, p0, Lcom/alibaba/lightapp/runtime/webview/RimetWebView;->s:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->clear()V

    .line 706
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/alibaba/lightapp/runtime/webview/RimetWebView;->s:Ljava/util/Map;

    .line 708
    :cond_1
    sget-object v3, Lcom/alibaba/lightapp/runtime/webview/RimetWebView;->D:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->clear()V

    .line 710
    :try_start_0
    invoke-static {}, Lhpe;->a()Lhpe;

    move-result-object v3

    invoke-virtual {v3}, Lhpe;->b()V

    .line 711
    const/16 v3, 0x8

    invoke-virtual {p0, v3}, Lcom/alibaba/lightapp/runtime/webview/RimetWebView;->setVisibility(I)V

    .line 712
    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/webview/RimetWebView;->stopLoading()V

    .line 714
    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/webview/RimetWebView;->getSettings()Lcom/uc/webview/export/WebSettings;

    move-result-object v0

    .line 715
    .local v0, "settings":Lcom/uc/webview/export/WebSettings;
    if-eqz v0, :cond_2

    .line 716
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lcom/uc/webview/export/WebSettings;->setSupportZoom(Z)V

    .line 717
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lcom/uc/webview/export/WebSettings;->setDisplayZoomControls(Z)V

    .line 718
    sget-object v3, Lcom/uc/webview/export/WebSettings$RenderPriority;->LOW:Lcom/uc/webview/export/WebSettings$RenderPriority;

    invoke-virtual {v0, v3}, Lcom/uc/webview/export/WebSettings;->setRenderPriority(Lcom/uc/webview/export/WebSettings$RenderPriority;)V

    .line 720
    :cond_2
    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/webview/RimetWebView;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    .line 721
    .local v2, "view":Landroid/view/ViewGroup;
    if-eqz v2, :cond_3

    .line 722
    invoke-virtual {v2}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 724
    :cond_3
    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/webview/RimetWebView;->removeAllViews()V

    .line 6148
    invoke-super {p0}, Lcom/alibaba/lightapp/runtime/permission/JsapiPermissionWebView;->destroy()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 742
    .end local v0    # "settings":Lcom/uc/webview/export/WebSettings;
    .end local v2    # "view":Landroid/view/ViewGroup;
    :goto_0
    return-void

    .line 739
    :catch_0
    move-exception v1

    .line 740
    .local v1, "throwable":Ljava/lang/Throwable;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public final e(Ljava/lang/String;)Z
    .locals 5
    .param p1, "url"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 2329
    sget-boolean v3, Lcic;->a:Z

    if-eqz v3, :cond_1

    .line 2331
    const-string/jumbo v3, "RimetWebView"

    const-string/jumbo v4, "------------------ DEBUG ------------------"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2332
    const/4 v1, 0x1

    .line 2360
    :cond_0
    :goto_0
    return v1

    .line 2335
    :cond_1
    const/4 v1, 0x0

    .line 2337
    .local v1, "result":Z
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 2339
    invoke-virtual {p0, p1}, Lcom/alibaba/lightapp/runtime/webview/RimetWebView;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 2340
    invoke-static {p1}, Lhdo;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2342
    .local v0, "domain":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 2344
    sget-object v3, Lhru;->a:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 2346
    .local v2, "whiteLink":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 2347
    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 2348
    const/4 v1, 0x1

    .line 2354
    .end local v2    # "whiteLink":Ljava/lang/String;
    :cond_3
    if-eqz p1, :cond_0

    const-string/jumbo v3, "file:///android_asset/privacy_policy/"

    .line 2355
    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_4

    const-string/jumbo v3, "file:///android_asset/lightapp/errorpage/"

    .line 2356
    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2357
    :cond_4
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public loadUrl(Ljava/lang/String;)V
    .locals 7
    .param p1, "url"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 883
    invoke-static {}, Lcom/alibaba/lightapp/runtime/monitor/RuntimeLog;->getInstance()Lcom/alibaba/lightapp/runtime/monitor/RuntimeLog;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/alibaba/lightapp/runtime/monitor/RuntimeLog;->addUrlForward(Ljava/lang/String;)V

    .line 884
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 8521
    const-string/jumbo v1, "dingtalk.com"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 8522
    const-string/jumbo v1, "dingtalk.com"

    const-string/jumbo v2, "http://www.dingtalk.com"

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 888
    .local v0, "urlString":Ljava/lang/String;
    :goto_0
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v1

    new-instance v2, Lcom/alibaba/lightapp/runtime/webview/RimetWebView$2;

    invoke-direct {v2, p0, v0}, Lcom/alibaba/lightapp/runtime/webview/RimetWebView$2;-><init>(Lcom/alibaba/lightapp/runtime/webview/RimetWebView;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lhcv;->post(Ljava/lang/Runnable;)Z

    .line 9521
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "http"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 9550
    .end local v0    # "urlString":Ljava/lang/String;
    :cond_0
    :goto_1
    return-void

    .line 8523
    :cond_1
    const-string/jumbo v1, "http://dingtalk.com"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 8524
    const-string/jumbo v1, "http://dingtalk.com"

    const-string/jumbo v2, "http://www.dingtalk.com"

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 8525
    :cond_2
    const-string/jumbo v1, "www.dingtalk.com"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 8526
    const-string/jumbo v1, "www.dingtalk.com"

    const-string/jumbo v2, "http://www.dingtalk.com"

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 8527
    :cond_3
    const-string/jumbo v1, "https://dingtalk.com"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 8528
    const-string/jumbo v1, "https://dingtalk.com"

    const-string/jumbo v2, "https://www.dingtalk.com"

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 9525
    .restart local v0    # "urlString":Ljava/lang/String;
    :cond_4
    :try_start_0
    invoke-static {v0}, Lhdo;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 9527
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 9531
    sget-object v1, Lhri;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_5
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 9532
    invoke-virtual {v2, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    goto :goto_1

    .line 9536
    :cond_6
    invoke-static {}, Lcom/alibaba/lightapp/runtime/monitor/warn/UrlStatusManager;->getInstance()Lcom/alibaba/lightapp/runtime/monitor/warn/UrlStatusManager;

    move-result-object v1

    new-instance v2, Lcom/alibaba/lightapp/runtime/webview/RimetWebView$15;

    invoke-direct {v2, p0}, Lcom/alibaba/lightapp/runtime/webview/RimetWebView$15;-><init>(Lcom/alibaba/lightapp/runtime/webview/RimetWebView;)V

    invoke-virtual {v1, v2}, Lcom/alibaba/lightapp/runtime/monitor/warn/UrlStatusManager;->getAppMalfunctionConfig(Lcmi;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 9547
    :catch_0
    move-exception v1

    .line 9548
    const-string/jumbo v2, "RuntimeStart"

    const-string/jumbo v3, "RimetWebView"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string/jumbo v6, "getAppMalfunctionConfig exception: "

    aput-object v6, v4, v5

    const/4 v5, 0x1

    .line 9549
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v5

    .line 9548
    invoke-static {v2, v0, v3, v4}, Lcom/alibaba/lightapp/runtime/monitor/RuntimeTrace;->trace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_1

    .end local v0    # "urlString":Ljava/lang/String;
    :cond_7
    move-object v0, p1

    goto/16 :goto_0
.end method

.method public loadUrl(Ljava/lang/String;Ljava/util/Map;)V
    .locals 1
    .param p1, "url"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 903
    .local p2, "additionalHttpHeaders":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {}, Lcom/alibaba/lightapp/runtime/monitor/RuntimeLog;->getInstance()Lcom/alibaba/lightapp/runtime/monitor/RuntimeLog;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/alibaba/lightapp/runtime/monitor/RuntimeLog;->addUrlForward(Ljava/lang/String;)V

    .line 904
    invoke-direct {p0, p1}, Lcom/alibaba/lightapp/runtime/webview/RimetWebView;->f(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 905
    invoke-direct {p0, p1, p2}, Lcom/alibaba/lightapp/runtime/webview/RimetWebView;->a(Ljava/lang/String;Ljava/util/Map;)V

    .line 907
    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 686
    :try_start_0
    invoke-super {p0}, Lcom/alibaba/lightapp/runtime/permission/JsapiPermissionWebView;->onDetachedFromWindow()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 690
    :goto_0
    return-void

    .line 687
    :catch_0
    move-exception v0

    .line 688
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method protected onMeasure(II)V
    .locals 0
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 745
    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/webview/RimetWebView;->invalidate()V

    .line 746
    invoke-super {p0, p1, p2}, Lcom/alibaba/lightapp/runtime/permission/JsapiPermissionWebView;->onMeasure(II)V

    .line 747
    return-void
.end method

.method public onPause()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v3, 0x0

    .line 794
    invoke-static {}, Lhpe;->a()Lhpe;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/webview/RimetWebView;->w:Lhpe$e;

    .line 7202
    iget-object v2, v0, Lhpe;->c:Lhpe$e;

    if-ne v2, v1, :cond_0

    .line 7203
    iput-object v3, v0, Lhpe;->c:Lhpe$e;

    .line 795
    :cond_0
    invoke-static {}, Lhpe;->a()Lhpe;

    move-result-object v0

    .line 7222
    iput-object v3, v0, Lhpe;->a:Lhpe$c;

    .line 796
    invoke-static {}, Lhpe;->a()Lhpe;

    move-result-object v0

    .line 8168
    const/4 v1, 0x1

    iput-boolean v1, v0, Lhpe;->d:Z

    .line 798
    invoke-static {}, Lcom/alibaba/lightapp/runtime/monitor/RuntimeLog;->getInstance()Lcom/alibaba/lightapp/runtime/monitor/RuntimeLog;

    move-result-object v0

    const-string/jumbo v1, "webview_onPause"

    invoke-virtual {v0, v1}, Lcom/alibaba/lightapp/runtime/monitor/RuntimeLog;->addRuntimeLifeCycle(Ljava/lang/String;)V

    .line 800
    invoke-super {p0}, Lcom/alibaba/lightapp/runtime/permission/JsapiPermissionWebView;->b()V

    .line 801
    return-void
.end method

.method public onResume()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 777
    invoke-super {p0}, Lcom/alibaba/lightapp/runtime/permission/JsapiPermissionWebView;->c()V

    .line 779
    invoke-static {}, Lhpe;->a()Lhpe;

    move-result-object v0

    .line 6175
    const/4 v1, 0x0

    iput-boolean v1, v0, Lhpe;->d:Z

    .line 781
    invoke-static {}, Lhpe;->a()Lhpe;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/webview/RimetWebView;->w:Lhpe$e;

    .line 6197
    iput-object v1, v0, Lhpe;->c:Lhpe$e;

    .line 782
    invoke-static {}, Lhpe;->a()Lhpe;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/webview/RimetWebView;->v:Lhpe$c;

    .line 6216
    iput-object v1, v0, Lhpe;->a:Lhpe$c;

    .line 784
    invoke-static {}, Lcom/alibaba/lightapp/runtime/monitor/RuntimeLog;->getInstance()Lcom/alibaba/lightapp/runtime/monitor/RuntimeLog;

    move-result-object v0

    const-string/jumbo v1, "webview_onResume"

    invoke-virtual {v0, v1}, Lcom/alibaba/lightapp/runtime/monitor/RuntimeLog;->addRuntimeLifeCycle(Ljava/lang/String;)V

    .line 785
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5
    .param p1, "event"    # Landroid/view/MotionEvent;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 752
    :try_start_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_0

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x13

    if-ge v1, v2, :cond_0

    iget-boolean v1, p0, Lcom/alibaba/lightapp/runtime/webview/RimetWebView;->x:Z

    if-eqz v1, :cond_0

    .line 755
    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/webview/RimetWebView;->getScrollX()I

    move-result v1

    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/webview/RimetWebView;->getScrollY()I

    move-result v2

    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/webview/RimetWebView;->getScrollX()I

    move-result v3

    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/webview/RimetWebView;->getScrollY()I

    move-result v4

    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/alibaba/lightapp/runtime/webview/RimetWebView;->onScrollChanged(IIII)V

    .line 756
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/alibaba/lightapp/runtime/webview/RimetWebView;->x:Z

    .line 759
    :cond_0
    invoke-super {p0, p1}, Lcom/alibaba/lightapp/runtime/permission/JsapiPermissionWebView;->onTouchEvent(Landroid/view/MotionEvent;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 762
    :goto_0
    return v1

    .line 760
    :catch_0
    move-exception v0

    .line 761
    .local v0, "e":Ljava/lang/Throwable;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 762
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public onWindowFocusChanged(Z)V
    .locals 1
    .param p1, "bHasWindowFocus"    # Z

    .prologue
    .line 676
    :try_start_0
    invoke-super {p0, p1}, Lcom/alibaba/lightapp/runtime/permission/JsapiPermissionWebView;->onWindowFocusChanged(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 680
    :goto_0
    return-void

    .line 677
    :catch_0
    move-exception v0

    .line 678
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public reload()V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v4, 0x1

    .line 911
    iput-boolean v4, p0, Lcom/alibaba/lightapp/runtime/webview/RimetWebView;->H:Z

    .line 912
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/webview/RimetWebView;->E:Ljava/lang/String;

    .line 913
    .local v0, "url":Ljava/lang/String;
    invoke-static {}, Lcom/alibaba/lightapp/runtime/monitor/WebLogger;->getInstance()Lcom/alibaba/lightapp/runtime/monitor/WebLogger;

    move-result-object v1

    const-string/jumbo v2, ""

    const-string/jumbo v3, "reload"

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    invoke-virtual {v1, v2, v3, v4}, Lcom/alibaba/lightapp/runtime/monitor/WebLogger;->logLow(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 914
    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/webview/RimetWebView;->getActivity()Landroid/app/Activity;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 10535
    iget-boolean v1, p0, Lcom/alibaba/lightapp/runtime/webview/RimetWebView;->g:Z

    .line 914
    if-nez v1, :cond_0

    .line 915
    invoke-static {}, Lcom/alibaba/lightapp/runtime/monitor/BlankPageDetector;->getInstance()Lcom/alibaba/lightapp/runtime/monitor/BlankPageDetector;

    move-result-object v1

    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/webview/RimetWebView;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/alibaba/lightapp/runtime/monitor/BlankPageDetector;->enterReload(Landroid/app/Activity;Ljava/lang/String;)V

    .line 917
    :cond_0
    invoke-super {p0}, Lcom/alibaba/lightapp/runtime/permission/JsapiPermissionWebView;->reload()V

    .line 918
    return-void
.end method

.method public setCustomized(Z)V
    .locals 0
    .param p1, "customized"    # Z

    .prologue
    .line 2539
    iput-boolean p1, p0, Lcom/alibaba/lightapp/runtime/webview/RimetWebView;->g:Z

    .line 2540
    return-void
.end method

.method public setGestureDetector(Landroid/view/GestureDetector;)V
    .locals 0
    .param p1, "gestureDetector"    # Landroid/view/GestureDetector;

    .prologue
    .line 2624
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/webview/RimetWebView;->C:Landroid/view/GestureDetector;

    .line 2625
    return-void
.end method

.method public setIVideoInterface(Lcom/alibaba/lightapp/runtime/webview/RimetWebView$c;)V
    .locals 0
    .param p1, "iVideoInterface"    # Lcom/alibaba/lightapp/runtime/webview/RimetWebView$c;

    .prologue
    .line 2404
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/webview/RimetWebView;->k:Lcom/alibaba/lightapp/runtime/webview/RimetWebView$c;

    .line 2405
    return-void
.end method

.method public setRimetWebViewCallback(Lcom/alibaba/lightapp/runtime/webview/RimetWebView$b;)V
    .locals 0
    .param p1, "callback"    # Lcom/alibaba/lightapp/runtime/webview/RimetWebView$b;

    .prologue
    .line 921
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/webview/RimetWebView;->h:Lcom/alibaba/lightapp/runtime/webview/RimetWebView$b;

    .line 922
    return-void
.end method
