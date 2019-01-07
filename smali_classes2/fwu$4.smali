.class public final Lfwu$4;
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

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Lfwu;


# direct methods
.method public constructor <init>(Lfwu;Lcma;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lfwu;

    .prologue
    .line 121
    iput-object p1, p0, Lfwu$4;->d:Lfwu;

    iput-object p2, p0, Lfwu$4;->a:Lcma;

    iput-object p3, p0, Lfwu$4;->b:Ljava/lang/String;

    iput-object p4, p0, Lfwu$4;->c:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 124
    new-instance v0, Lfwu$4$1;

    invoke-direct {v0, p0}, Lfwu$4$1;-><init>(Lfwu$4;)V

    .line 140
    .local v0, "callback":Lcmi;, "Lcmi<Ljava/lang/Void;>;"
    const-class v2, Lcom/alibaba/android/user/idl/services/PersonalDeviceIService;

    invoke-static {v2}, Liyx;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/user/idl/services/PersonalDeviceIService;

    .line 141
    .local v1, "service":Lcom/alibaba/android/user/idl/services/PersonalDeviceIService;
    iget-object v2, p0, Lfwu$4;->b:Ljava/lang/String;

    iget-object v3, p0, Lfwu$4;->c:Ljava/lang/String;

    invoke-interface {v1, v2, v3, v0}, Lcom/alibaba/android/user/idl/services/PersonalDeviceIService;->update(Ljava/lang/String;Ljava/lang/String;Liyv;)V

    .line 142
    return-void
.end method
