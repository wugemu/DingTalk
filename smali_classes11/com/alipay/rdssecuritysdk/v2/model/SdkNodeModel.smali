.class public Lcom/alipay/rdssecuritysdk/v2/model/SdkNodeModel;
.super Liqm;
.source "SdkNodeModel.java"


# static fields
.field public static final a:[Ljava/lang/String;


# instance fields
.field private b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 19
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "dev"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v2, "loc"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string/jumbo v2, "env"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string/jumbo v2, "usr"

    aput-object v2, v0, v1

    sput-object v0, Lcom/alipay/rdssecuritysdk/v2/model/SdkNodeModel;->a:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 30
    invoke-direct {p0}, Liqm;-><init>()V

    .line 31
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alipay/rdssecuritysdk/v2/model/SdkNodeModel;->b:Ljava/util/Map;

    .line 32
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/alipay/rdssecuritysdk/v2/model/SdkNodeModel;-><init>()V

    .line 28
    return-void
.end method
