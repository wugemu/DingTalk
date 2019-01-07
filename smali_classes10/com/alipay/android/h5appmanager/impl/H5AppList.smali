.class public Lcom/alipay/android/h5appmanager/impl/H5AppList;
.super Ljava/lang/Object;
.source "H5AppList.java"


# instance fields
.field appList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alipay/android/h5appmanager/AppInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    return-void
.end method


# virtual methods
.method public getAppList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/android/h5appmanager/AppInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 21
    iget-object v0, p0, Lcom/alipay/android/h5appmanager/impl/H5AppList;->appList:Ljava/util/List;

    return-object v0
.end method

.method public setAppList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/android/h5appmanager/AppInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 25
    .local p1, "appList":Ljava/util/List;, "Ljava/util/List<Lcom/alipay/android/h5appmanager/AppInfo;>;"
    iput-object p1, p0, Lcom/alipay/android/h5appmanager/impl/H5AppList;->appList:Ljava/util/List;

    .line 26
    return-void
.end method
