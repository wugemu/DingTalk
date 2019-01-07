.class public final Lfwu$5;
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
.field final synthetic a:Lfwt;

.field final synthetic b:Lcma;

.field final synthetic c:Lfwu;


# direct methods
.method public constructor <init>(Lfwu;Lfwt;Lcma;)V
    .locals 0
    .param p1, "this$0"    # Lfwu;

    .prologue
    .line 147
    iput-object p1, p0, Lfwu$5;->c:Lfwu;

    iput-object p2, p0, Lfwu$5;->a:Lfwt;

    iput-object p3, p0, Lfwu$5;->b:Lcma;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 150
    iget-object v2, p0, Lfwu$5;->a:Lfwt;

    if-nez v2, :cond_0

    .line 151
    iget-object v2, p0, Lfwu$5;->b:Lcma;

    if-eqz v2, :cond_0

    .line 152
    iget-object v2, p0, Lfwu$5;->b:Lcma;

    const-string/jumbo v3, ""

    const-string/jumbo v4, ""

    invoke-interface {v2, v3, v4}, Lcma;->onException(Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    :cond_0
    new-instance v0, Lfwu$5$1;

    invoke-direct {v0, p0}, Lfwu$5$1;-><init>(Lfwu$5;)V

    .line 170
    .local v0, "callback":Lcmi;, "Lcmi<Ljava/lang/Void;>;"
    const-class v2, Lcom/alibaba/android/user/idl/services/PersonalDeviceIService;

    invoke-static {v2}, Liyx;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/user/idl/services/PersonalDeviceIService;

    .line 171
    .local v1, "service":Lcom/alibaba/android/user/idl/services/PersonalDeviceIService;
    iget-object v2, p0, Lfwu$5;->a:Lfwt;

    invoke-virtual {v2}, Lfwt;->a()Lcfo;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Lcom/alibaba/android/user/idl/services/PersonalDeviceIService;->authorizeByAutoLogin(Lcfo;Liyv;)V

    .line 172
    return-void
.end method
