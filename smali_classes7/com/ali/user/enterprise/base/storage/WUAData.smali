.class public Lcom/ali/user/enterprise/base/storage/WUAData;
.super Ljava/lang/Object;
.source "WUAData.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public appKey:Ljava/lang/String;

.field public t:Ljava/lang/String;

.field public wua:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "appKey"    # Ljava/lang/String;
    .param p2, "t"    # Ljava/lang/String;
    .param p3, "wua"    # Ljava/lang/String;

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/ali/user/enterprise/base/storage/WUAData;->appKey:Ljava/lang/String;

    .line 27
    iput-object p2, p0, Lcom/ali/user/enterprise/base/storage/WUAData;->t:Ljava/lang/String;

    .line 28
    iput-object p3, p0, Lcom/ali/user/enterprise/base/storage/WUAData;->wua:Ljava/lang/String;

    .line 29
    return-void
.end method
