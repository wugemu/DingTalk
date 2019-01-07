.class Lcom/alipay/mobile/nebulaappcenter/dbdao/H5NebulaAppDao$16$1;
.super Ljava/lang/Object;
.source "H5NebulaAppDao.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/nebulaappcenter/dbdao/H5NebulaAppDao$16;->execute(Lcom/alipay/mobile/nebulaappcenter/dbhelp/H5BaseDBHelper;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/alipay/mobile/nebulaappcenter/dbbean/H5NebulaAppBean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/alipay/mobile/nebulaappcenter/dbdao/H5NebulaAppDao$16;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/nebulaappcenter/dbdao/H5NebulaAppDao$16;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alipay/mobile/nebulaappcenter/dbdao/H5NebulaAppDao$16;

    .prologue
    .line 901
    iput-object p1, p0, Lcom/alipay/mobile/nebulaappcenter/dbdao/H5NebulaAppDao$16$1;->this$1:Lcom/alipay/mobile/nebulaappcenter/dbdao/H5NebulaAppDao$16;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/alipay/mobile/nebulaappcenter/dbbean/H5NebulaAppBean;Lcom/alipay/mobile/nebulaappcenter/dbbean/H5NebulaAppBean;)I
    .locals 2
    .param p1, "s1"    # Lcom/alipay/mobile/nebulaappcenter/dbbean/H5NebulaAppBean;
    .param p2, "s2"    # Lcom/alipay/mobile/nebulaappcenter/dbbean/H5NebulaAppBean;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 904
    invoke-virtual {p1}, Lcom/alipay/mobile/nebulaappcenter/dbbean/H5NebulaAppBean;->getVersion()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcom/alipay/mobile/nebulaappcenter/dbbean/H5NebulaAppBean;->getVersion()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/appcenter/util/H5AppUtil;->compareVersion(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 901
    check-cast p1, Lcom/alipay/mobile/nebulaappcenter/dbbean/H5NebulaAppBean;

    check-cast p2, Lcom/alipay/mobile/nebulaappcenter/dbbean/H5NebulaAppBean;

    invoke-virtual {p0, p1, p2}, Lcom/alipay/mobile/nebulaappcenter/dbdao/H5NebulaAppDao$16$1;->compare(Lcom/alipay/mobile/nebulaappcenter/dbbean/H5NebulaAppBean;Lcom/alipay/mobile/nebulaappcenter/dbbean/H5NebulaAppBean;)I

    move-result v0

    return v0
.end method
