.class public Lcom/taobao/accs/base/TaoBaseService$ConnectInfo;
.super Ljava/lang/Object;
.source "TaoBaseService.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taobao/accs/base/TaoBaseService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ConnectInfo"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x7c8c728e063e8a6aL


# instance fields
.field public connected:Z

.field public errorCode:I

.field public errordetail:Ljava/lang/String;

.field public host:Ljava/lang/String;

.field public isCenterHost:Z

.field public isInapp:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;ZZ)V
    .locals 0
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "isInapp"    # Z
    .param p3, "isCenterHost"    # Z

    .prologue
    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    iput-object p1, p0, Lcom/taobao/accs/base/TaoBaseService$ConnectInfo;->host:Ljava/lang/String;

    .line 71
    iput-boolean p2, p0, Lcom/taobao/accs/base/TaoBaseService$ConnectInfo;->isInapp:Z

    .line 72
    iput-boolean p3, p0, Lcom/taobao/accs/base/TaoBaseService$ConnectInfo;->isCenterHost:Z

    .line 73
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ZZILjava/lang/String;)V
    .locals 0
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "isInapp"    # Z
    .param p3, "isCenterHost"    # Z
    .param p4, "errorCode"    # I
    .param p5, "errordetail"    # Ljava/lang/String;

    .prologue
    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    iput-object p1, p0, Lcom/taobao/accs/base/TaoBaseService$ConnectInfo;->host:Ljava/lang/String;

    .line 79
    iput-boolean p2, p0, Lcom/taobao/accs/base/TaoBaseService$ConnectInfo;->isInapp:Z

    .line 80
    iput-boolean p3, p0, Lcom/taobao/accs/base/TaoBaseService$ConnectInfo;->isCenterHost:Z

    .line 81
    iput p4, p0, Lcom/taobao/accs/base/TaoBaseService$ConnectInfo;->errorCode:I

    .line 82
    iput-object p5, p0, Lcom/taobao/accs/base/TaoBaseService$ConnectInfo;->errordetail:Ljava/lang/String;

    .line 83
    return-void
.end method
