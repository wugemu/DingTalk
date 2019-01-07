.class Lcom/alibaba/bee/DBManager$InstanceHolder;
.super Ljava/lang/Object;
.source "DBManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/bee/DBManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "InstanceHolder"
.end annotation


# static fields
.field public static sInstance:Lcom/alibaba/bee/DBManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 52
    new-instance v0, Lcom/alibaba/bee/DBManager;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/alibaba/bee/DBManager;-><init>(Lcom/alibaba/bee/DBManager$1;)V

    sput-object v0, Lcom/alibaba/bee/DBManager$InstanceHolder;->sInstance:Lcom/alibaba/bee/DBManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
