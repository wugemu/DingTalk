.class public Lcom/alipay/rdssecuritysdk/v2/model/UaNodeModel;
.super Liqm;
.source "UaNodeModel.java"


# static fields
.field public static final a:[Ljava/lang/String;


# instance fields
.field private b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private c:J

.field private d:Ljava/util/concurrent/atomic/AtomicInteger;

.field private e:Ljava/util/concurrent/atomic/AtomicInteger;

.field private f:Lcom/alipay/rdssecuritysdk/v2/model/action/ActionNodeModel;

.field private g:Liqm;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 30
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "t"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v2, "num"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string/jumbo v2, "action"

    aput-object v2, v0, v1

    sput-object v0, Lcom/alipay/rdssecuritysdk/v2/model/UaNodeModel;->a:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 50
    invoke-direct {p0}, Liqm;-><init>()V

    .line 51
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alipay/rdssecuritysdk/v2/model/UaNodeModel;->b:Ljava/util/Map;

    .line 52
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alipay/rdssecuritysdk/v2/model/UaNodeModel;->c:J

    .line 53
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/alipay/rdssecuritysdk/v2/model/UaNodeModel;->d:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 54
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/alipay/rdssecuritysdk/v2/model/UaNodeModel;->e:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 55
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/rdssecuritysdk/v2/model/UaNodeModel;->g:Liqm;

    .line 56
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/alipay/rdssecuritysdk/v2/model/UaNodeModel;-><init>()V

    .line 44
    new-instance v0, Lcom/alipay/rdssecuritysdk/v2/model/action/ActionNodeModel;

    invoke-direct {v0, p1}, Lcom/alipay/rdssecuritysdk/v2/model/action/ActionNodeModel;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/alipay/rdssecuritysdk/v2/model/UaNodeModel;->f:Lcom/alipay/rdssecuritysdk/v2/model/action/ActionNodeModel;

    .line 45
    iget-object v0, p0, Lcom/alipay/rdssecuritysdk/v2/model/UaNodeModel;->b:Ljava/util/Map;

    const-string/jumbo v1, "t"

    iget-wide v2, p0, Lcom/alipay/rdssecuritysdk/v2/model/UaNodeModel;->c:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    iget-object v0, p0, Lcom/alipay/rdssecuritysdk/v2/model/UaNodeModel;->b:Ljava/util/Map;

    const-string/jumbo v1, "num"

    iget-object v2, p0, Lcom/alipay/rdssecuritysdk/v2/model/UaNodeModel;->d:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    iget-object v0, p0, Lcom/alipay/rdssecuritysdk/v2/model/UaNodeModel;->b:Ljava/util/Map;

    const-string/jumbo v1, "action"

    iget-object v2, p0, Lcom/alipay/rdssecuritysdk/v2/model/UaNodeModel;->f:Lcom/alipay/rdssecuritysdk/v2/model/action/ActionNodeModel;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    return-void
.end method
