.class final Ljde$a;
.super Ljava/lang/Object;
.source "Cache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljde;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field a:Lcom/autonavi/aps/amapapi/model/AMapLocationServer;

.field b:Ljava/lang/String;


# direct methods
.method protected constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Ljde$a;->a:Lcom/autonavi/aps/amapapi/model/AMapLocationServer;

    iput-object v0, p0, Ljde$a;->b:Ljava/lang/String;

    return-void
.end method
