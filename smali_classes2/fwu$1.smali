.class final Lfwu$1;
.super Ljava/lang/Object;
.source "DeviceSettingRPC.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfwu;->a(Lcma;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcma;

.field final synthetic b:Lfwu;


# direct methods
.method constructor <init>(Lfwu;Lcma;)V
    .locals 0
    .param p1, "this$0"    # Lfwu;

    .prologue
    .line 32
    iput-object p1, p0, Lfwu$1;->b:Lfwu;

    iput-object p2, p0, Lfwu$1;->a:Lcma;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 35
    new-instance v0, Lfwu$1$1;

    invoke-direct {v0, p0}, Lfwu$1$1;-><init>(Lfwu$1;)V

    .line 51
    .local v0, "callback":Lcmi;, "Lcmi<Lfpw;>;"
    const-class v2, Lcom/alibaba/android/user/idl/services/PersonalDeviceIService;

    invoke-static {v2}, Liyx;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/user/idl/services/PersonalDeviceIService;

    .line 52
    .local v1, "service":Lcom/alibaba/android/user/idl/services/PersonalDeviceIService;
    invoke-interface {v1, v0}, Lcom/alibaba/android/user/idl/services/PersonalDeviceIService;->query(Liyv;)V

    .line 53
    return-void
.end method
