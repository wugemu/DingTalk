.class final Lcom/android/installreferrer/api/InstallReferrerClientImpl$a;
.super Ljava/lang/Object;
.source "InstallReferrerClientImpl.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/installreferrer/api/InstallReferrerClientImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/android/installreferrer/api/InstallReferrerClientImpl;

.field private final b:Livl;


# direct methods
.method private constructor <init>(Lcom/android/installreferrer/api/InstallReferrerClientImpl;Livl;)V
    .locals 2
    .param p2, "listener"    # Livl;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 210
    iput-object p1, p0, Lcom/android/installreferrer/api/InstallReferrerClientImpl$a;->a:Lcom/android/installreferrer/api/InstallReferrerClientImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 211
    if-nez p2, :cond_0

    .line 212
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "Please specify a listener to know when setup is done."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 214
    :cond_0
    iput-object p2, p0, Lcom/android/installreferrer/api/InstallReferrerClientImpl$a;->b:Livl;

    .line 215
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/installreferrer/api/InstallReferrerClientImpl;Livl;B)V
    .locals 0
    .param p1, "x0"    # Lcom/android/installreferrer/api/InstallReferrerClientImpl;
    .param p2, "x1"    # Livl;

    .prologue
    .line 207
    invoke-direct {p0, p1, p2}, Lcom/android/installreferrer/api/InstallReferrerClientImpl$a;-><init>(Lcom/android/installreferrer/api/InstallReferrerClientImpl;Livl;)V

    return-void
.end method


# virtual methods
.method public final onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 3
    .param p1, "componentName"    # Landroid/content/ComponentName;
    .param p2, "iBinder"    # Landroid/os/IBinder;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v2, 0x2

    .line 219
    const-string/jumbo v0, "InstallReferrerClient"

    const-string/jumbo v1, "Install Referrer service connected."

    .line 1030
    invoke-static {v0, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 220
    iget-object v0, p0, Lcom/android/installreferrer/api/InstallReferrerClientImpl$a;->a:Lcom/android/installreferrer/api/InstallReferrerClientImpl;

    invoke-static {p2}, Liwl$a;->a(Landroid/os/IBinder;)Liwl;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/installreferrer/api/InstallReferrerClientImpl;->a(Lcom/android/installreferrer/api/InstallReferrerClientImpl;Liwl;)Liwl;

    .line 221
    iget-object v0, p0, Lcom/android/installreferrer/api/InstallReferrerClientImpl$a;->a:Lcom/android/installreferrer/api/InstallReferrerClientImpl;

    invoke-static {v0, v2}, Lcom/android/installreferrer/api/InstallReferrerClientImpl;->a(Lcom/android/installreferrer/api/InstallReferrerClientImpl;I)I

    .line 222
    iget-object v0, p0, Lcom/android/installreferrer/api/InstallReferrerClientImpl$a;->b:Livl;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Livl;->a(I)V

    .line 223
    return-void
.end method

.method public final onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .param p1, "componentName"    # Landroid/content/ComponentName;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 227
    const-string/jumbo v0, "InstallReferrerClient"

    const-string/jumbo v1, "Install Referrer service disconnected."

    invoke-static {v0, v1}, Livn;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 228
    iget-object v0, p0, Lcom/android/installreferrer/api/InstallReferrerClientImpl$a;->a:Lcom/android/installreferrer/api/InstallReferrerClientImpl;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/installreferrer/api/InstallReferrerClientImpl;->a(Lcom/android/installreferrer/api/InstallReferrerClientImpl;Liwl;)Liwl;

    .line 229
    iget-object v0, p0, Lcom/android/installreferrer/api/InstallReferrerClientImpl$a;->a:Lcom/android/installreferrer/api/InstallReferrerClientImpl;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/installreferrer/api/InstallReferrerClientImpl;->a(Lcom/android/installreferrer/api/InstallReferrerClientImpl;I)I

    .line 230
    iget-object v0, p0, Lcom/android/installreferrer/api/InstallReferrerClientImpl$a;->b:Livl;

    invoke-interface {v0}, Livl;->a()V

    .line 231
    return-void
.end method
