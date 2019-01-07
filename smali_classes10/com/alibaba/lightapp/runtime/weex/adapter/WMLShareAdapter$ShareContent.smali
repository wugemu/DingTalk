.class Lcom/alibaba/lightapp/runtime/weex/adapter/WMLShareAdapter$ShareContent;
.super Ljava/lang/Object;
.source "WMLShareAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/lightapp/runtime/weex/adapter/WMLShareAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ShareContent"
.end annotation


# instance fields
.field public activityParams:Ljava/util/Map;
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

.field public businessId:Ljava/lang/String;

.field public contentType:Ljava/lang/String;

.field public description:Ljava/lang/String;

.field public disableBackToClient:Z

.field public disableHeadUrl:Z

.field public disableQrcode:Z

.field public disableTextInfo:Z

.field public extendParams:Ljava/util/Map;
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

.field public extraParams:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public headUrl:Ljava/lang/String;

.field public imageSoure:Landroid/graphics/Bitmap;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public imageUrl:Ljava/lang/String;

.field public isActivity:Ljava/lang/String;

.field public maskAlpha:Ljava/lang/String;

.field public needSaveContent:Ljava/lang/String;

.field public popUrl:Ljava/lang/String;

.field public qrConfig:Lcom/alibaba/fastjson/JSONObject;

.field public shareId:Ljava/lang/String;

.field public shareScene:Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public snapshotImages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public suId:Ljava/lang/String;

.field final synthetic this$0:Lcom/alibaba/lightapp/runtime/weex/adapter/WMLShareAdapter;

.field public title:Ljava/lang/String;

.field public url:Ljava/lang/String;

.field public weixinAppId:Ljava/lang/String;

.field public weixinMsgType:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/alibaba/lightapp/runtime/weex/adapter/WMLShareAdapter;)V
    .locals 1
    .param p1, "this$0"    # Lcom/alibaba/lightapp/runtime/weex/adapter/WMLShareAdapter;

    .prologue
    const/4 v0, 0x0

    .line 69
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/weex/adapter/WMLShareAdapter$ShareContent;->this$0:Lcom/alibaba/lightapp/runtime/weex/adapter/WMLShareAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 91
    iput-boolean v0, p0, Lcom/alibaba/lightapp/runtime/weex/adapter/WMLShareAdapter$ShareContent;->disableQrcode:Z

    .line 92
    iput-boolean v0, p0, Lcom/alibaba/lightapp/runtime/weex/adapter/WMLShareAdapter$ShareContent;->disableTextInfo:Z

    .line 93
    iput-boolean v0, p0, Lcom/alibaba/lightapp/runtime/weex/adapter/WMLShareAdapter$ShareContent;->disableHeadUrl:Z

    .line 95
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alibaba/lightapp/runtime/weex/adapter/WMLShareAdapter$ShareContent;->maskAlpha:Ljava/lang/String;

    return-void
.end method
