.class Lcom/alibaba/wukong/im/UserTagServiceImpl$InstanceHandler;
.super Ljava/lang/Object;
.source "UserTagServiceImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/wukong/im/UserTagServiceImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "InstanceHandler"
.end annotation


# static fields
.field public static sInstance:Lcom/alibaba/wukong/im/UserTagServiceImpl;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 17
    new-instance v0, Lcom/alibaba/wukong/im/UserTagServiceImpl;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/alibaba/wukong/im/UserTagServiceImpl;-><init>(Lcom/alibaba/wukong/im/UserTagServiceImpl$1;)V

    sput-object v0, Lcom/alibaba/wukong/im/UserTagServiceImpl$InstanceHandler;->sInstance:Lcom/alibaba/wukong/im/UserTagServiceImpl;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
