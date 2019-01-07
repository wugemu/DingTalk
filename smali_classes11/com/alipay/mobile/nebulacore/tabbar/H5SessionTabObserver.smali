.class public Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabObserver;
.super Ljava/lang/Object;
.source "H5SessionTabObserver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabObserver$H5SessionTabListener;
    }
.end annotation


# static fields
.field public static final ENTRY_NAME:Ljava/lang/String; = "tabBar.json"


# instance fields
.field private volatile data:Ljava/lang/String;

.field private volatile listener:Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabObserver$H5SessionTabListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 28
    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabObserver;->listener:Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabObserver$H5SessionTabListener;

    .line 29
    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabObserver;->data:Ljava/lang/String;

    .line 30
    return-void
.end method

.method public declared-synchronized getData(Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabObserver$H5SessionTabListener;)Ljava/lang/String;
    .locals 1
    .param p1, "h5SessionTabListener"    # Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabObserver$H5SessionTabListener;

    .prologue
    .line 23
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabObserver;->listener:Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabObserver$H5SessionTabListener;

    .line 24
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabObserver;->data:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 23
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setData(Ljava/lang/String;)Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabObserver$H5SessionTabListener;
    .locals 1
    .param p1, "data"    # Ljava/lang/String;

    .prologue
    .line 17
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabObserver;->data:Ljava/lang/String;

    .line 18
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabObserver;->listener:Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabObserver$H5SessionTabListener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 17
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
