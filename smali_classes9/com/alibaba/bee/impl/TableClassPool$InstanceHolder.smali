.class Lcom/alibaba/bee/impl/TableClassPool$InstanceHolder;
.super Ljava/lang/Object;
.source "TableClassPool.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/bee/impl/TableClassPool;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "InstanceHolder"
.end annotation


# static fields
.field public static sInstance:Lcom/alibaba/bee/impl/TableClassPool;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 54
    new-instance v0, Lcom/alibaba/bee/impl/TableClassPool;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/alibaba/bee/impl/TableClassPool;-><init>(Lcom/alibaba/bee/impl/TableClassPool$1;)V

    sput-object v0, Lcom/alibaba/bee/impl/TableClassPool$InstanceHolder;->sInstance:Lcom/alibaba/bee/impl/TableClassPool;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
