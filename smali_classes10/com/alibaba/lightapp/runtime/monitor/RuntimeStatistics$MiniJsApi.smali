.class public Lcom/alibaba/lightapp/runtime/monitor/RuntimeStatistics$MiniJsApi;
.super Ljava/lang/Object;
.source "RuntimeStatistics.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/lightapp/runtime/monitor/RuntimeStatistics;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MiniJsApi"
.end annotation


# instance fields
.field public errorCode:I

.field public jsApiName:Ljava/lang/String;

.field public miniAppId:Ljava/lang/String;

.field public status:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 2322
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
