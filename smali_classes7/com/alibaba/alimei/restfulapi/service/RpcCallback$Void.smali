.class public final Lcom/alibaba/alimei/restfulapi/service/RpcCallback$Void;
.super Ljava/lang/Object;
.source "RpcCallback.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/alimei/restfulapi/service/RpcCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Void"
.end annotation


# static fields
.field static volatile instance:Lcom/alibaba/alimei/restfulapi/service/RpcCallback$Void;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 53
    new-instance v0, Lcom/alibaba/alimei/restfulapi/service/RpcCallback$Void;

    invoke-direct {v0}, Lcom/alibaba/alimei/restfulapi/service/RpcCallback$Void;-><init>()V

    sput-object v0, Lcom/alibaba/alimei/restfulapi/service/RpcCallback$Void;->instance:Lcom/alibaba/alimei/restfulapi/service/RpcCallback$Void;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    return-void
.end method

.method public static instance()Lcom/alibaba/alimei/restfulapi/service/RpcCallback$Void;
    .locals 1

    .prologue
    .line 57
    sget-object v0, Lcom/alibaba/alimei/restfulapi/service/RpcCallback$Void;->instance:Lcom/alibaba/alimei/restfulapi/service/RpcCallback$Void;

    return-object v0
.end method
