.class public Lcom/taobao/taobaoavsdk/widget/extra/danmu/DWDanmakuRequest;
.super Ljava/lang/Object;
.source "DWDanmakuRequest.java"

# interfaces
.implements Lcom/taobao/taobaoavsdk/IAVObject;


# instance fields
.field public apiName:Ljava/lang/String;

.field public apiVersion:Ljava/lang/String;

.field public needLogin:Z

.field public paramMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public responseClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
