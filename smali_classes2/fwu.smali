.class public final Lfwu;
.super Ljava/lang/Object;
.source "DeviceSettingRPC.java"


# static fields
.field private static a:Lfwu;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    new-instance v0, Lfwu;

    invoke-direct {v0}, Lfwu;-><init>()V

    sput-object v0, Lfwu;->a:Lfwu;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    return-void
.end method

.method public static a()Lfwu;
    .locals 1

    .prologue
    .line 28
    sget-object v0, Lfwu;->a:Lfwu;

    return-object v0
.end method


# virtual methods
.method public final a(Lcma;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcma",
            "<",
            "Lfws;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 32
    .local p1, "listener":Lcma;, "Lcma<Lfws;>;"
    invoke-static {}, Lcom/alibaba/aether/api/Aether;->b()Lcom/alibaba/doraemon/threadpool/Thread;

    move-result-object v0

    new-instance v1, Lfwu$1;

    invoke-direct {v1, p0, p1}, Lfwu$1;-><init>(Lfwu;Lcma;)V

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/threadpool/Thread;->start(Ljava/lang/Runnable;)V

    .line 55
    return-void
.end method
