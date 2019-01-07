.class public Lhdy;
.super Lhdu;
.source "FileChooserDelegate.java"


# static fields
.field public static final e:Ljava/lang/String;


# instance fields
.field public b:Landroid/webkit/ValueCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/webkit/ValueCallback",
            "<[",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field

.field public c:Landroid/webkit/ValueCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/webkit/ValueCallback",
            "<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field

.field public d:Landroid/app/Activity;

.field private f:Landroid/content/BroadcastReceiver;

.field private g:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 53
    const-class v0, Lhdy;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lhdy;->e:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 56
    invoke-direct {p0, p1}, Lhdu;-><init>(Landroid/app/Activity;)V

    .line 51
    const/4 v0, 0x0

    iput-boolean v0, p0, Lhdy;->g:Z

    .line 57
    iput-object p1, p0, Lhdy;->d:Landroid/app/Activity;

    .line 58
    return-void
.end method

.method static synthetic a(Lhdy;)Landroid/app/Activity;
    .locals 1
    .param p0, "x0"    # Lhdy;

    .prologue
    .line 37
    iget-object v0, p0, Lhdy;->d:Landroid/app/Activity;

    return-object v0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)Landroid/net/Uri;
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "filePath"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 230
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    new-array v2, v4, [Ljava/lang/String;

    const-string/jumbo v3, "_id"

    aput-object v3, v2, v5

    const-string/jumbo v3, "_data=? "

    new-array v4, v4, [Ljava/lang/String;

    aput-object p1, v4, v5

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 235
    .local v6, "cursor":Landroid/database/Cursor;
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 236
    const-string/jumbo v0, "_id"

    .line 237
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 236
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    .line 238
    .local v7, "id":I
    sget-object v0, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 240
    .end local v7    # "id":I
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    goto :goto_0
.end method

.method static synthetic a(Lhdy;Landroid/webkit/ValueCallback;)Landroid/webkit/ValueCallback;
    .locals 1
    .param p0, "x0"    # Lhdy;
    .param p1, "x1"    # Landroid/webkit/ValueCallback;

    .prologue
    .line 37
    const/4 v0, 0x0

    iput-object v0, p0, Lhdy;->b:Landroid/webkit/ValueCallback;

    return-object v0
.end method

.method static synthetic a(Lhdy;Z)Z
    .locals 1
    .param p0, "x0"    # Lhdy;
    .param p1, "x1"    # Z

    .prologue
    .line 37
    const/4 v0, 0x1

    iput-boolean v0, p0, Lhdy;->g:Z

    return v0
.end method

.method static synthetic b(Lhdy;Landroid/webkit/ValueCallback;)Landroid/webkit/ValueCallback;
    .locals 1
    .param p0, "x0"    # Lhdy;
    .param p1, "x1"    # Landroid/webkit/ValueCallback;

    .prologue
    .line 37
    const/4 v0, 0x0

    iput-object v0, p0, Lhdy;->c:Landroid/webkit/ValueCallback;

    return-object v0
.end method

.method static synthetic b(Lhdy;)V
    .locals 7
    .param p0, "x0"    # Lhdy;

    .prologue
    const/4 v6, 0x0

    .line 37
    .line 2216
    const-string/jumbo v0, "H5"

    const/4 v1, 0x0

    sget-object v2, Lhdy;->e:Ljava/lang/String;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const-string/jumbo v4, "handleChooseFileException mChooseActionOn=>"

    aput-object v4, v3, v6

    const/4 v4, 0x1

    iget-boolean v5, p0, Lhdy;->g:Z

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/alibaba/lightapp/runtime/monitor/RuntimeTrace;->trace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2217
    iget-boolean v0, p0, Lhdy;->g:Z

    if-nez v0, :cond_0

    .line 2218
    invoke-direct {p0}, Lhdy;->f()V

    :goto_0
    return-void

    .line 2220
    :cond_0
    iput-boolean v6, p0, Lhdy;->g:Z

    goto :goto_0
.end method

.method static synthetic c(Lhdy;)Landroid/webkit/ValueCallback;
    .locals 1
    .param p0, "x0"    # Lhdy;

    .prologue
    .line 37
    iget-object v0, p0, Lhdy;->b:Landroid/webkit/ValueCallback;

    return-object v0
.end method

.method static synthetic d(Lhdy;)Landroid/webkit/ValueCallback;
    .locals 1
    .param p0, "x0"    # Lhdy;

    .prologue
    .line 37
    iget-object v0, p0, Lhdy;->c:Landroid/webkit/ValueCallback;

    return-object v0
.end method

.method static synthetic e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 37
    sget-object v0, Lhdy;->e:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic e(Lhdy;)V
    .locals 0
    .param p0, "x0"    # Lhdy;

    .prologue
    .line 37
    invoke-direct {p0}, Lhdy;->f()V

    return-void
.end method

.method private f()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 323
    const/4 v1, 0x1

    new-array v0, v1, [Landroid/net/Uri;

    .line 324
    .local v0, "emptyUri":[Landroid/net/Uri;
    sget-object v1, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    aput-object v1, v0, v2

    .line 325
    iget-object v1, p0, Lhdy;->b:Landroid/webkit/ValueCallback;

    if-eqz v1, :cond_1

    .line 326
    iget-object v1, p0, Lhdy;->b:Landroid/webkit/ValueCallback;

    invoke-interface {v1, v0}, Landroid/webkit/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V

    .line 331
    :cond_0
    :goto_0
    iput-object v3, p0, Lhdy;->b:Landroid/webkit/ValueCallback;

    .line 332
    iput-object v3, p0, Lhdy;->c:Landroid/webkit/ValueCallback;

    .line 333
    return-void

    .line 327
    :cond_1
    iget-object v1, p0, Lhdy;->c:Landroid/webkit/ValueCallback;

    if-eqz v1, :cond_0

    .line 328
    iget-object v1, p0, Lhdy;->c:Landroid/webkit/ValueCallback;

    aget-object v2, v0, v2

    invoke-interface {v1, v2}, Landroid/webkit/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V

    goto :goto_0
.end method


# virtual methods
.method public final a()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 62
    .line 1246
    new-instance v0, Lhdy$3;

    invoke-direct {v0, p0}, Lhdy$3;-><init>(Lhdy;)V

    iput-object v0, p0, Lhdy;->f:Landroid/content/BroadcastReceiver;

    .line 1314
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 1315
    const-string/jumbo v1, "lightapp.runtime.webview.action.CHOOSE_PHOTO"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1316
    const-string/jumbo v1, "lightapp.runtime.webview.action.CHOOSE_FILE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1317
    const-string/jumbo v1, "com.workapp.choose.picture.from.album.cancel"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1318
    const-string/jumbo v1, "com.workapp.choose.file.from.picker.cancel"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1319
    iget-object v1, p0, Lhdy;->d:Landroid/app/Activity;

    invoke-static {v1}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v1

    iget-object v2, p0, Lhdy;->f:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Ldq;->a(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 63
    return-void
.end method

.method public final b()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 68
    .line 1336
    iget-object v0, p0, Lhdy;->f:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 1337
    iget-object v0, p0, Lhdy;->d:Landroid/app/Activity;

    invoke-static {v0}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v0

    iget-object v1, p0, Lhdy;->f:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Ldq;->a(Landroid/content/BroadcastReceiver;)V

    .line 1338
    const/4 v0, 0x0

    iput-object v0, p0, Lhdy;->f:Landroid/content/BroadcastReceiver;

    .line 69
    :cond_0
    return-void
.end method
