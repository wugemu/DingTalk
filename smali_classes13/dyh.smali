.class public final Ldyh;
.super Ljava/lang/Object;
.source "OAMessageAPIImpl.java"

# interfaces
.implements Ldyg;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(JLjava/lang/String;Lcma;)V
    .locals 1
    .param p1, "msgId"    # J
    .param p3, "action"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/lang/String;",
            "Lcma",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 15
    .local p4, "listener":Lcma;, "Lcma<Ljava/lang/String;>;"
    invoke-static {}, Lcom/alibaba/dingtalk/runtimebase/LightAppRuntimeReverseInterface;->getInterfaceImpl()Lcom/alibaba/dingtalk/runtimebase/LightAppRuntimeReverseInterface;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/alibaba/dingtalk/runtimebase/LightAppRuntimeReverseInterface;->messageActionACK(JLjava/lang/String;Lcma;)V

    .line 17
    return-void
.end method
