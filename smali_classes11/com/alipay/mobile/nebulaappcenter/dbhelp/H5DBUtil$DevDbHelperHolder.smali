.class Lcom/alipay/mobile/nebulaappcenter/dbhelp/H5DBUtil$DevDbHelperHolder;
.super Ljava/lang/Object;
.source "H5DBUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/mobile/nebulaappcenter/dbhelp/H5DBUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "DevDbHelperHolder"
.end annotation


# static fields
.field private static final INSTANCE:Lcom/alipay/mobile/nebulaappcenter/dbhelp/H5BaseDBHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 41
    new-instance v0, Lcom/alipay/mobile/nebulaappcenter/dbhelp/H5DevDBOpenHelper;

    invoke-direct {v0}, Lcom/alipay/mobile/nebulaappcenter/dbhelp/H5DevDBOpenHelper;-><init>()V

    sput-object v0, Lcom/alipay/mobile/nebulaappcenter/dbhelp/H5DBUtil$DevDbHelperHolder;->INSTANCE:Lcom/alipay/mobile/nebulaappcenter/dbhelp/H5BaseDBHelper;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$100()Lcom/alipay/mobile/nebulaappcenter/dbhelp/H5BaseDBHelper;
    .locals 1

    .prologue
    .line 40
    sget-object v0, Lcom/alipay/mobile/nebulaappcenter/dbhelp/H5DBUtil$DevDbHelperHolder;->INSTANCE:Lcom/alipay/mobile/nebulaappcenter/dbhelp/H5BaseDBHelper;

    return-object v0
.end method
