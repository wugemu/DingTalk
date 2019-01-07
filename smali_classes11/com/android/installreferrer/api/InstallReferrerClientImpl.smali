.class public Lcom/android/installreferrer/api/InstallReferrerClientImpl;
.super Lcom/android/installreferrer/api/InstallReferrerClient;
.source "InstallReferrerClientImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/installreferrer/api/InstallReferrerClientImpl$a;,
        Lcom/android/installreferrer/api/InstallReferrerClientImpl$ClientState;
    }
.end annotation


# instance fields
.field private a:I

.field private final b:Landroid/content/Context;

.field private c:Liwl;

.field private d:Landroid/content/ServiceConnection;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 83
    invoke-direct {p0}, Lcom/android/installreferrer/api/InstallReferrerClient;-><init>()V

    .line 72
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/installreferrer/api/InstallReferrerClientImpl;->a:I

    .line 84
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/installreferrer/api/InstallReferrerClientImpl;->b:Landroid/content/Context;

    .line 85
    return-void
.end method

.method static synthetic a(Lcom/android/installreferrer/api/InstallReferrerClientImpl;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/installreferrer/api/InstallReferrerClientImpl;
    .param p1, "x1"    # I

    .prologue
    .line 38
    iput p1, p0, Lcom/android/installreferrer/api/InstallReferrerClientImpl;->a:I

    return p1
.end method

.method static synthetic a(Lcom/android/installreferrer/api/InstallReferrerClientImpl;Liwl;)Liwl;
    .locals 0
    .param p0, "x0"    # Lcom/android/installreferrer/api/InstallReferrerClientImpl;
    .param p1, "x1"    # Liwl;

    .prologue
    .line 38
    iput-object p1, p0, Lcom/android/installreferrer/api/InstallReferrerClientImpl;->c:Liwl;

    return-object p1
.end method

.method private d()Z
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v3, 0x0

    .line 197
    iget-object v4, p0, Lcom/android/installreferrer/api/InstallReferrerClientImpl;->b:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 199
    .local v1, "mPm":Landroid/content/pm/PackageManager;
    :try_start_0
    const-string/jumbo v4, "com.android.vending"

    const/16 v5, 0x80

    invoke-virtual {v1, v4, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 200
    .local v0, "info":Landroid/content/pm/PackageInfo;
    iget v2, v0, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 201
    .local v2, "versionCode":I
    const v4, 0x4d17ab4

    if-lt v2, v4, :cond_0

    const/4 v3, 0x1

    .line 203
    .end local v0    # "info":Landroid/content/pm/PackageInfo;
    .end local v2    # "versionCode":I
    :cond_0
    :goto_0
    return v3

    :catch_0
    move-exception v4

    goto :goto_0
.end method


# virtual methods
.method public final a(Livl;)V
    .locals 13
    .param p1, "listener"    # Livl;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v12

    invoke-static {v12}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v9, 0x3

    const/4 v12, 0x1

    const/4 v11, 0x2

    const/4 v10, 0x0

    .line 94
    invoke-virtual {p0}, Lcom/android/installreferrer/api/InstallReferrerClientImpl;->a()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 95
    const-string/jumbo v7, "InstallReferrerClient"

    const-string/jumbo v8, "Service connection is valid. No need to re-initialize."

    .line 1030
    invoke-static {v7, v11}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 97
    invoke-interface {p1, v10}, Livl;->a(I)V

    .line 163
    :goto_0
    return-void

    .line 101
    :cond_0
    iget v7, p0, Lcom/android/installreferrer/api/InstallReferrerClientImpl;->a:I

    if-ne v7, v12, :cond_1

    .line 102
    const-string/jumbo v7, "InstallReferrerClient"

    const-string/jumbo v8, "Client is already in the process of connecting to the service."

    invoke-static {v7, v8}, Livn;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    invoke-interface {p1, v9}, Livl;->a(I)V

    goto :goto_0

    .line 108
    :cond_1
    iget v7, p0, Lcom/android/installreferrer/api/InstallReferrerClientImpl;->a:I

    if-ne v7, v9, :cond_2

    .line 109
    const-string/jumbo v7, "InstallReferrerClient"

    const-string/jumbo v8, "Client was already closed and can\'t be reused. Please create another instance."

    invoke-static {v7, v8}, Livn;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    invoke-interface {p1, v9}, Livl;->a(I)V

    goto :goto_0

    .line 116
    :cond_2
    const-string/jumbo v7, "InstallReferrerClient"

    const-string/jumbo v8, "Starting install referrer service setup."

    .line 2030
    invoke-static {v7, v11}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 117
    new-instance v7, Lcom/android/installreferrer/api/InstallReferrerClientImpl$a;

    invoke-direct {v7, p0, p1, v10}, Lcom/android/installreferrer/api/InstallReferrerClientImpl$a;-><init>(Lcom/android/installreferrer/api/InstallReferrerClientImpl;Livl;B)V

    iput-object v7, p0, Lcom/android/installreferrer/api/InstallReferrerClientImpl;->d:Landroid/content/ServiceConnection;

    .line 119
    new-instance v6, Landroid/content/Intent;

    const-string/jumbo v7, "com.google.android.finsky.BIND_GET_INSTALL_REFERRER_SERVICE"

    invoke-direct {v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 120
    .local v6, "serviceIntent":Landroid/content/Intent;
    new-instance v7, Landroid/content/ComponentName;

    const-string/jumbo v8, "com.android.vending"

    const-string/jumbo v9, "com.google.android.finsky.externalreferrer.GetInstallReferrerService"

    invoke-direct {v7, v8, v9}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6, v7}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 121
    iget-object v7, p0, Lcom/android/installreferrer/api/InstallReferrerClientImpl;->b:Landroid/content/Context;

    .line 122
    invoke-virtual {v7}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    invoke-virtual {v7, v6, v10}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v3

    .line 124
    .local v3, "intentServices":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v3, :cond_5

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_5

    .line 126
    invoke-interface {v3, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/ResolveInfo;

    .line 127
    .local v5, "resolveInfo":Landroid/content/pm/ResolveInfo;
    iget-object v7, v5, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    if-eqz v7, :cond_5

    .line 128
    iget-object v7, v5, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v4, v7, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    .line 129
    .local v4, "packageName":Ljava/lang/String;
    iget-object v7, v5, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v0, v7, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    .line 130
    .local v0, "className":Ljava/lang/String;
    const-string/jumbo v7, "com.android.vending"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    if-eqz v0, :cond_4

    .line 132
    invoke-direct {p0}, Lcom/android/installreferrer/api/InstallReferrerClientImpl;->d()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 133
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2, v6}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 134
    .local v2, "explicitServiceIntent":Landroid/content/Intent;
    iget-object v7, p0, Lcom/android/installreferrer/api/InstallReferrerClientImpl;->b:Landroid/content/Context;

    iget-object v8, p0, Lcom/android/installreferrer/api/InstallReferrerClientImpl;->d:Landroid/content/ServiceConnection;

    .line 135
    invoke-virtual {v7, v2, v8, v12}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v1

    .line 137
    .local v1, "connectionResult":Z
    if-eqz v1, :cond_3

    .line 139
    const-string/jumbo v7, "InstallReferrerClient"

    const-string/jumbo v8, "Service was bonded successfully."

    .line 3030
    invoke-static {v7, v11}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    goto/16 :goto_0

    .line 144
    :cond_3
    const-string/jumbo v7, "InstallReferrerClient"

    const-string/jumbo v8, "Connection to service is blocked."

    invoke-static {v7, v8}, Livn;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    iput v10, p0, Lcom/android/installreferrer/api/InstallReferrerClientImpl;->a:I

    .line 146
    invoke-interface {p1, v12}, Livl;->a(I)V

    goto/16 :goto_0

    .line 151
    .end local v1    # "connectionResult":Z
    .end local v2    # "explicitServiceIntent":Landroid/content/Intent;
    :cond_4
    const-string/jumbo v7, "InstallReferrerClient"

    const-string/jumbo v8, "Play Store missing or incompatible. Version 8.3.73 or later required."

    invoke-static {v7, v8}, Livn;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    iput v10, p0, Lcom/android/installreferrer/api/InstallReferrerClientImpl;->a:I

    .line 154
    invoke-interface {p1, v11}, Livl;->a(I)V

    goto/16 :goto_0

    .line 160
    .end local v0    # "className":Ljava/lang/String;
    .end local v4    # "packageName":Ljava/lang/String;
    .end local v5    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    :cond_5
    iput v10, p0, Lcom/android/installreferrer/api/InstallReferrerClientImpl;->a:I

    .line 161
    const-string/jumbo v7, "InstallReferrerClient"

    const-string/jumbo v8, "Install Referrer service unavailable on device."

    .line 4030
    invoke-static {v7, v11}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 162
    invoke-interface {p1, v11}, Livl;->a(I)V

    goto/16 :goto_0
.end method

.method public final a()Z
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 89
    iget v0, p0, Lcom/android/installreferrer/api/InstallReferrerClientImpl;->a:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/installreferrer/api/InstallReferrerClientImpl;->c:Liwl;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/installreferrer/api/InstallReferrerClientImpl;->d:Landroid/content/ServiceConnection;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final b()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v2, 0x0

    .line 167
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/installreferrer/api/InstallReferrerClientImpl;->a:I

    .line 168
    iget-object v0, p0, Lcom/android/installreferrer/api/InstallReferrerClientImpl;->d:Landroid/content/ServiceConnection;

    if-eqz v0, :cond_0

    .line 169
    const-string/jumbo v0, "InstallReferrerClient"

    const-string/jumbo v1, "Unbinding from service."

    .line 5030
    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 170
    iget-object v0, p0, Lcom/android/installreferrer/api/InstallReferrerClientImpl;->b:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/installreferrer/api/InstallReferrerClientImpl;->d:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 171
    iput-object v2, p0, Lcom/android/installreferrer/api/InstallReferrerClientImpl;->d:Landroid/content/ServiceConnection;

    .line 173
    :cond_0
    iput-object v2, p0, Lcom/android/installreferrer/api/InstallReferrerClientImpl;->c:Liwl;

    .line 174
    return-void
.end method

.method public final c()Livm;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 178
    invoke-virtual {p0}, Lcom/android/installreferrer/api/InstallReferrerClientImpl;->a()Z

    move-result v3

    if-nez v3, :cond_0

    .line 179
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string/jumbo v4, "Service not connected. Please start a connection before using the service."

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 183
    :cond_0
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 184
    .local v1, "paramsBundle":Landroid/os/Bundle;
    const-string/jumbo v3, "package_name"

    iget-object v4, p0, Lcom/android/installreferrer/api/InstallReferrerClientImpl;->b:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 186
    :try_start_0
    new-instance v2, Livm;

    iget-object v3, p0, Lcom/android/installreferrer/api/InstallReferrerClientImpl;->c:Liwl;

    .line 187
    invoke-interface {v3, v1}, Liwl;->a(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v3

    invoke-direct {v2, v3}, Livm;-><init>(Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 188
    .local v2, "referrerDetails":Livm;
    return-object v2

    .line 189
    .end local v2    # "referrerDetails":Livm;
    :catch_0
    move-exception v0

    .line 190
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v3, "InstallReferrerClient"

    const-string/jumbo v4, "RemoteException getting install referrer information"

    invoke-static {v3, v4}, Livn;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    const/4 v3, 0x0

    iput v3, p0, Lcom/android/installreferrer/api/InstallReferrerClientImpl;->a:I

    .line 192
    throw v0
.end method
