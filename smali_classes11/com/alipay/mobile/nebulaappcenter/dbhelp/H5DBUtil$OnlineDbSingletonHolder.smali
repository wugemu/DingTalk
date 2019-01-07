.class Lcom/alipay/mobile/nebulaappcenter/dbhelp/H5DBUtil$OnlineDbSingletonHolder;
.super Ljava/lang/Object;
.source "H5DBUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/mobile/nebulaappcenter/dbhelp/H5DBUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "OnlineDbSingletonHolder"
.end annotation


# static fields
.field private static final INSTANCE:Lcom/alipay/mobile/nebulaappcenter/dbhelp/H5BaseDBHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 37
    new-instance v0, Lcom/alipay/mobile/nebulaappcenter/dbhelp/H5OnLineDBHelper;

    invoke-direct {v0}, Lcom/alipay/mobile/nebulaappcenter/dbhelp/H5OnLineDBHelper;-><init>()V

    sput-object v0, Lcom/alipay/mobile/nebulaappcenter/dbhelp/H5DBUtil$OnlineDbSingletonHolder;->INSTANCE:Lcom/alipay/mobile/nebulaappcenter/dbhelp/H5BaseDBHelper;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Lcom/alipay/mobile/nebulaappcenter/dbhelp/H5BaseDBHelper;
    .locals 1

    .prologue
    .line 36
    sget-object v0, Lcom/alipay/mobile/nebulaappcenter/dbhelp/H5DBUtil$OnlineDbSingletonHolder;->INSTANCE:Lcom/alipay/mobile/nebulaappcenter/dbhelp/H5BaseDBHelper;

    return-object v0
.end method
