.class public Lcom/ali/user/open/core/model/WUAData;
.super Ljava/lang/Object;


# instance fields
.field public appKey:Ljava/lang/String;

.field public t:Ljava/lang/String;

.field public wua:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ali/user/open/core/model/WUAData;->appKey:Ljava/lang/String;

    iput-object p2, p0, Lcom/ali/user/open/core/model/WUAData;->t:Ljava/lang/String;

    iput-object p3, p0, Lcom/ali/user/open/core/model/WUAData;->wua:Ljava/lang/String;

    return-void
.end method
