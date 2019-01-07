.class public final Lfwu$3;
.super Ljava/lang/Object;
.source "DeviceSettingRPC.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfwu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcma;

.field final synthetic b:Ljava/util/List;

.field final synthetic c:Lfwu;


# direct methods
.method public constructor <init>(Lfwu;Lcma;Ljava/util/List;)V
    .locals 0
    .param p1, "this$0"    # Lfwu;

    .prologue
    .line 95
    iput-object p1, p0, Lfwu$3;->c:Lfwu;

    iput-object p2, p0, Lfwu$3;->a:Lcma;

    iput-object p3, p0, Lfwu$3;->b:Ljava/util/List;

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
    .line 98
    new-instance v0, Lfwu$3$1;

    invoke-direct {v0, p0}, Lfwu$3$1;-><init>(Lfwu$3;)V

    .line 114
    .local v0, "callback":Lcmi;, "Lcmi<Ljava/lang/Void;>;"
    const-class v2, Lcom/alibaba/android/user/idl/services/PersonalDeviceIService;

    invoke-static {v2}, Liyx;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/user/idl/services/PersonalDeviceIService;

    .line 115
    .local v1, "service":Lcom/alibaba/android/user/idl/services/PersonalDeviceIService;
    iget-object v2, p0, Lfwu$3;->b:Ljava/util/List;

    invoke-interface {v1, v2, v0}, Lcom/alibaba/android/user/idl/services/PersonalDeviceIService;->delete(Ljava/util/List;Liyv;)V

    .line 116
    return-void
.end method
