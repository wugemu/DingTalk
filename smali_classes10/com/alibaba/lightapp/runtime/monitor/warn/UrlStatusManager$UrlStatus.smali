.class public Lcom/alibaba/lightapp/runtime/monitor/warn/UrlStatusManager$UrlStatus;
.super Ljava/lang/Object;
.source "UrlStatusManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/lightapp/runtime/monitor/warn/UrlStatusManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "UrlStatus"
.end annotation


# instance fields
.field public content:Ljava/lang/String;

.field public expireTime:J

.field public name:Ljava/lang/String;

.field public status:Z

.field public tel:Ljava/lang/String;

.field final synthetic this$0:Lcom/alibaba/lightapp/runtime/monitor/warn/UrlStatusManager;

.field public title:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/alibaba/lightapp/runtime/monitor/warn/UrlStatusManager;)V
    .locals 1
    .param p1, "this$0"    # Lcom/alibaba/lightapp/runtime/monitor/warn/UrlStatusManager;

    .prologue
    .line 148
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/monitor/warn/UrlStatusManager$UrlStatus;->this$0:Lcom/alibaba/lightapp/runtime/monitor/warn/UrlStatusManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 149
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alibaba/lightapp/runtime/monitor/warn/UrlStatusManager$UrlStatus;->status:Z

    return-void
.end method
