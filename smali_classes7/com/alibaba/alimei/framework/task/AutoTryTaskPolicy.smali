.class public final Lcom/alibaba/alimei/framework/task/AutoTryTaskPolicy;
.super Ljava/lang/Object;
.source "AutoTryTaskPolicy.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/alimei/framework/task/AutoTryTaskPolicy$AutoTryFailure;,
        Lcom/alibaba/alimei/framework/task/AutoTryTaskPolicy$AutoTryNetwork;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lcom/alibaba/alimei/framework/task/AutoTryTaskPolicy$AutoTryNetwork;)Ljava/lang/String;
    .locals 1
    .param p0, "network"    # Lcom/alibaba/alimei/framework/task/AutoTryTaskPolicy$AutoTryNetwork;

    .prologue
    .line 19
    if-nez p0, :cond_0

    .line 20
    sget-object v0, Lcom/alibaba/alimei/framework/task/AutoTryTaskPolicy$AutoTryNetwork;->Wifi:Lcom/alibaba/alimei/framework/task/AutoTryTaskPolicy$AutoTryNetwork;

    invoke-virtual {v0}, Lcom/alibaba/alimei/framework/task/AutoTryTaskPolicy$AutoTryNetwork;->name()Ljava/lang/String;

    move-result-object v0

    .line 22
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/alimei/framework/task/AutoTryTaskPolicy$AutoTryNetwork;->name()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
