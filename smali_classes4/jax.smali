.class public Ljax;
.super Ljava/lang/Object;
.source "Update.java"

# interfaces
.implements Ljba;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljax$b;,
        Ljax$a;,
        Ljax$c;
    }
.end annotation


# static fields
.field private static final l:Ljava/lang/String;


# instance fields
.field public a:Ljaw;

.field public b:Z

.field private c:Landroid/content/Context;

.field private d:Ljau;

.field private e:Ljaz;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Ljax$c;

.field private i:Ljava/lang/String;

.field private j:Ljax$a;

.field private final k:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 57
    const-class v0, Ljax;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Ljax;->l:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljau;Ljaz;Ljaw;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "downloader"    # Ljau;
    .param p3, "request"    # Ljaz;
    .param p4, "listener"    # Ljaw;

    .prologue
    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljax;->b:Z

    .line 56
    const/high16 v0, 0x200000

    iput v0, p0, Ljax;->k:I

    .line 66
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Ljax;->c:Landroid/content/Context;

    .line 67
    iput-object p2, p0, Ljax;->d:Ljau;

    .line 68
    iput-object p3, p0, Ljax;->e:Ljaz;

    .line 70
    iget-object v0, p0, Ljax;->e:Ljaz;

    invoke-interface {v0, p0}, Ljaz;->a(Ljba;)V

    .line 72
    iput-object p4, p0, Ljax;->a:Ljaw;

    .line 73
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljax;->f:Ljava/lang/String;

    .line 74
    return-void
.end method

.method static synthetic a(Ljax;)Ljaz;
    .locals 1
    .param p0, "x0"    # Ljax;

    .prologue
    .line 44
    iget-object v0, p0, Ljax;->e:Ljaz;

    return-object v0
.end method

.method public static synthetic a(Ljax;Z)Z
    .locals 1
    .param p0, "x0"    # Ljax;
    .param p1, "x1"    # Z

    .prologue
    .line 44
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljax;->b:Z

    return v0
.end method

.method public static synthetic b(Ljax;)Ljau;
    .locals 1
    .param p0, "x0"    # Ljax;

    .prologue
    .line 44
    iget-object v0, p0, Ljax;->d:Ljau;

    return-object v0
.end method

.method public static synthetic c(Ljax;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Ljax;

    .prologue
    .line 44
    iget-object v0, p0, Ljax;->f:Ljava/lang/String;

    return-object v0
.end method

.method public static synthetic d(Ljax;)Ljaw;
    .locals 1
    .param p0, "x0"    # Ljax;

    .prologue
    .line 44
    iget-object v0, p0, Ljax;->a:Ljaw;

    return-object v0
.end method

.method static synthetic e(Ljax;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Ljax;

    .prologue
    .line 44
    iget-object v0, p0, Ljax;->g:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public final a(Ljay;I)V
    .locals 4
    .param p1, "result"    # Ljay;
    .param p2, "errorCode"    # I
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v3, 0x0

    .line 137
    if-eqz p1, :cond_0

    iget-object v1, p1, Ljay;->b:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p1, Ljay;->b:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_2

    .line 140
    :cond_0
    iput-boolean v3, p0, Ljax;->b:Z

    .line 142
    move v0, p2

    .line 150
    .local v0, "errCode":I
    :goto_0
    iget-object v1, p0, Ljax;->a:Ljaw;

    if-eqz v1, :cond_1

    .line 151
    iget-object v1, p0, Ljax;->a:Ljaw;

    iget-object v2, p0, Ljax;->j:Ljax$a;

    invoke-interface {v1, p1, v2, v0}, Ljaw;->a(Ljay;Ljax$a;I)V

    .line 153
    :cond_1
    return-void

    .line 146
    .end local v0    # "errCode":I
    :cond_2
    new-instance v1, Ljax$a;

    iget-object v2, p0, Ljax;->i:Ljava/lang/String;

    invoke-direct {v1, p0, p1, v2, v3}, Ljax$a;-><init>(Ljax;Ljay;Ljava/lang/String;B)V

    iput-object v1, p0, Ljax;->j:Ljax$a;

    .line 147
    const/4 v0, 0x0

    .restart local v0    # "errCode":I
    goto :goto_0
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4
    .param p1, "apkPath"    # Ljava/lang/String;
    .param p2, "appName"    # Ljava/lang/String;
    .param p3, "version"    # Ljava/lang/String;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 101
    iget-boolean v2, p0, Ljax;->b:Z

    if-eqz v2, :cond_0

    .line 116
    :goto_0
    return v0

    .line 104
    :cond_0
    iget-object v2, p0, Ljax;->j:Ljax$a;

    if-eqz v2, :cond_1

    .line 105
    iget-object v2, p0, Ljax;->j:Ljax$a;

    .line 1258
    invoke-virtual {v2}, Ljax$a;->a()V

    .line 1259
    iput-boolean v1, v2, Ljax$a;->a:Z

    .line 106
    :cond_1
    iput-boolean v1, p0, Ljax;->b:Z

    .line 108
    iput-object p1, p0, Ljax;->g:Ljava/lang/String;

    .line 109
    iput-object p2, p0, Ljax;->i:Ljava/lang/String;

    .line 111
    new-instance v2, Ljax$c;

    invoke-direct {v2, p0, p1, p2, p3}, Ljax$c;-><init>(Ljax;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v2, p0, Ljax;->h:Ljax$c;

    .line 112
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xb

    if-le v2, v3, :cond_2

    .line 113
    iget-object v2, p0, Ljax;->h:Ljax$c;

    sget-object v3, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-array v0, v0, [Ljava/lang/Void;

    invoke-virtual {v2, v3, v0}, Ljax$c;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    :goto_1
    move v0, v1

    .line 116
    goto :goto_0

    .line 115
    :cond_2
    iget-object v2, p0, Ljax;->h:Ljax$c;

    new-array v0, v0, [Ljava/lang/Void;

    invoke-virtual {v2, v0}, Ljax$c;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_1
.end method
