.class public Lcom/alibaba/wukong/im/UserTagServiceImpl;
.super Ljava/lang/Object;
.source "UserTagServiceImpl.java"

# interfaces
.implements Lcom/alibaba/wukong/im/UserTagService;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/wukong/im/UserTagServiceImpl$InstanceHandler;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    return-void
.end method

.method synthetic constructor <init>(Lcom/alibaba/wukong/im/UserTagServiceImpl$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/alibaba/wukong/im/UserTagServiceImpl$1;

    .prologue
    .line 11
    invoke-direct {p0}, Lcom/alibaba/wukong/im/UserTagServiceImpl;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/alibaba/wukong/im/UserTagServiceImpl;
    .locals 1

    .prologue
    .line 21
    sget-object v0, Lcom/alibaba/wukong/im/UserTagServiceImpl$InstanceHandler;->sInstance:Lcom/alibaba/wukong/im/UserTagServiceImpl;

    return-object v0
.end method


# virtual methods
.method public registerUserTagListener(Lcom/alibaba/wukong/im/UserTagListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/alibaba/wukong/im/UserTagListener;

    .prologue
    .line 27
    if-eqz p1, :cond_0

    .line 28
    invoke-static {p1}, Lidw;->a(Lcom/alibaba/wukong/im/UserTagListener;)V

    .line 30
    :cond_0
    return-void
.end method

.method public unRegisterUserTagListener(Lcom/alibaba/wukong/im/UserTagListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/alibaba/wukong/im/UserTagListener;

    .prologue
    .line 34
    if-eqz p1, :cond_0

    .line 35
    invoke-static {p1}, Lidw;->b(Lcom/alibaba/wukong/im/UserTagListener;)V

    .line 38
    :cond_0
    return-void
.end method
