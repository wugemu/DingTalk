.class public Lfnl;
.super Lcom/alibaba/android/dingtalkbase/db/AbsDataSource;
.source "TmpFriendRequestDataSourceImpl.java"

# interfaces
.implements Lfmy;


# static fields
.field public static final a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    const-class v0, Lfnl;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lfnl;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkbase/db/AbsDataSource;-><init>()V

    return-void
.end method

.method static synthetic a(Lfnl;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lfnl;

    .prologue
    .line 20
    invoke-virtual {p0}, Lfnl;->k()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic b(Lfnl;)Lcom/alibaba/bee/DBManager;
    .locals 1
    .param p0, "x0"    # Lfnl;

    .prologue
    .line 20
    iget-object v0, p0, Lfnl;->c:Lcom/alibaba/bee/DBManager;

    return-object v0
.end method


# virtual methods
.method public final a(Ljava/util/List;)I
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/FriendRequestObject;",
            ">;)I"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .local p1, "friendRequestObjectList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/FriendRequestObject;>;"
    const/4 v4, 0x0

    .line 26
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    .line 27
    .local v0, "result":Ljava/util/concurrent/atomic/AtomicInteger;
    iget-object v1, p0, Lfnl;->c:Lcom/alibaba/bee/DBManager;

    invoke-virtual {p0}, Lfnl;->k()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lfnl$1;

    invoke-direct {v3, p0, p1, v0}, Lfnl$1;-><init>(Lfnl;Ljava/util/List;Ljava/util/concurrent/atomic/AtomicInteger;)V

    invoke-virtual {v1, v2, v3, v4}, Lcom/alibaba/bee/DBManager;->execInTransaction(Ljava/lang/String;Ljava/lang/Runnable;Lcom/alibaba/bee/SQLiteTransactionListener;)Z

    .line 49
    invoke-static {}, Lcom/alibaba/android/user/internal/IMContextEngine;->a()Lcom/alibaba/android/user/internal/IMContextEngine;

    move-result-object v1

    .line 1090
    iget-object v1, v1, Lcom/alibaba/android/user/internal/IMContextEngine;->b:Landroid/content/Context;

    .line 49
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {p0}, Lfnl;->l()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2, v4}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 50
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->intValue()I

    move-result v1

    return v1
.end method

.method protected final p_()Ljava/lang/String;
    .locals 1

    .prologue
    .line 94
    const-class v0, Lfnl;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
