.class Lcom/ut/mini/UTVariables;
.super Ljava/lang/Object;
.source "UTVariables.java"


# static fields
.field private static s_instance:Lcom/ut/mini/UTVariables;


# instance fields
.field private m1010and2001EventInstance:Lcom/ut/mini/UTMI1010_2001Event;

.field private mBackupH5Url:Ljava/lang/String;

.field private mH5RefPage:Ljava/lang/String;

.field private mH5Url:Ljava/lang/String;

.field private mRefPage:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 4
    new-instance v0, Lcom/ut/mini/UTVariables;

    invoke-direct {v0}, Lcom/ut/mini/UTVariables;-><init>()V

    sput-object v0, Lcom/ut/mini/UTVariables;->s_instance:Lcom/ut/mini/UTVariables;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    iput-object v0, p0, Lcom/ut/mini/UTVariables;->mH5RefPage:Ljava/lang/String;

    .line 7
    iput-object v0, p0, Lcom/ut/mini/UTVariables;->mRefPage:Ljava/lang/String;

    .line 8
    iput-object v0, p0, Lcom/ut/mini/UTVariables;->mH5Url:Ljava/lang/String;

    .line 9
    iput-object v0, p0, Lcom/ut/mini/UTVariables;->m1010and2001EventInstance:Lcom/ut/mini/UTMI1010_2001Event;

    .line 10
    iput-object v0, p0, Lcom/ut/mini/UTVariables;->mBackupH5Url:Ljava/lang/String;

    return-void
.end method

.method public static getInstance()Lcom/ut/mini/UTVariables;
    .locals 1

    .prologue
    .line 22
    sget-object v0, Lcom/ut/mini/UTVariables;->s_instance:Lcom/ut/mini/UTVariables;

    return-object v0
.end method


# virtual methods
.method public getBackupH5Url()Ljava/lang/String;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/ut/mini/UTVariables;->mBackupH5Url:Ljava/lang/String;

    return-object v0
.end method

.method public getH5RefPage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/ut/mini/UTVariables;->mH5RefPage:Ljava/lang/String;

    return-object v0
.end method

.method public getH5Url()Ljava/lang/String;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/ut/mini/UTVariables;->mH5Url:Ljava/lang/String;

    return-object v0
.end method

.method public getRefPage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/ut/mini/UTVariables;->mRefPage:Ljava/lang/String;

    return-object v0
.end method

.method public declared-synchronized getUTMI1010_2001EventInstance()Lcom/ut/mini/UTMI1010_2001Event;
    .locals 1

    .prologue
    .line 18
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/ut/mini/UTVariables;->m1010and2001EventInstance:Lcom/ut/mini/UTMI1010_2001Event;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setBackupH5Url(Ljava/lang/String;)V
    .locals 0
    .param p1, "aH5Url"    # Ljava/lang/String;

    .prologue
    .line 34
    iput-object p1, p0, Lcom/ut/mini/UTVariables;->mBackupH5Url:Ljava/lang/String;

    .line 35
    return-void
.end method

.method public setH5RefPage(Ljava/lang/String;)V
    .locals 0
    .param p1, "aH5PrePage"    # Ljava/lang/String;

    .prologue
    .line 54
    iput-object p1, p0, Lcom/ut/mini/UTVariables;->mH5RefPage:Ljava/lang/String;

    .line 55
    return-void
.end method

.method public setH5Url(Ljava/lang/String;)V
    .locals 0
    .param p1, "aH5Url"    # Ljava/lang/String;

    .prologue
    .line 30
    iput-object p1, p0, Lcom/ut/mini/UTVariables;->mH5Url:Ljava/lang/String;

    .line 31
    return-void
.end method

.method public setRefPage(Ljava/lang/String;)V
    .locals 0
    .param p1, "aRefPage"    # Ljava/lang/String;

    .prologue
    .line 46
    iput-object p1, p0, Lcom/ut/mini/UTVariables;->mRefPage:Ljava/lang/String;

    .line 47
    return-void
.end method

.method public declared-synchronized setUTMI1010_2001EventInstance(Lcom/ut/mini/UTMI1010_2001Event;)V
    .locals 1
    .param p1, "aInstance"    # Lcom/ut/mini/UTMI1010_2001Event;

    .prologue
    .line 14
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/ut/mini/UTVariables;->m1010and2001EventInstance:Lcom/ut/mini/UTMI1010_2001Event;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 15
    monitor-exit p0

    return-void

    .line 14
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
