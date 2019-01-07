.class Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingActivity$MyTimeTask;
.super Ljava/util/TimerTask;
.source "H5LoadingActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MyTimeTask"
.end annotation


# instance fields
.field private appId:Ljava/lang/String;

.field final synthetic this$0:Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingActivity;

.field private timeout:I

.field private type:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingActivity;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0
    .param p2, "type"    # Ljava/lang/String;
    .param p3, "appId"    # Ljava/lang/String;
    .param p4, "timeout"    # I

    .prologue
    .line 140
    iput-object p1, p0, Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingActivity$MyTimeTask;->this$0:Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingActivity;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    .line 141
    iput-object p2, p0, Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingActivity$MyTimeTask;->type:Ljava/lang/String;

    .line 142
    iput-object p3, p0, Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingActivity$MyTimeTask;->appId:Ljava/lang/String;

    .line 143
    iput p4, p0, Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingActivity$MyTimeTask;->timeout:I

    .line 144
    return-void
.end method

.method static synthetic access$100(Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingActivity$MyTimeTask;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingActivity$MyTimeTask;

    .prologue
    .line 132
    iget-object v0, p0, Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingActivity$MyTimeTask;->type:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingActivity$MyTimeTask;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingActivity$MyTimeTask;

    .prologue
    .line 132
    iget-object v0, p0, Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingActivity$MyTimeTask;->appId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingActivity$MyTimeTask;)I
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingActivity$MyTimeTask;

    .prologue
    .line 132
    iget v0, p0, Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingActivity$MyTimeTask;->timeout:I

    return v0
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 149
    new-instance v0, Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingActivity$MyTimeTask$1;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingActivity$MyTimeTask$1;-><init>(Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingActivity$MyTimeTask;)V

    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->runOnMain(Ljava/lang/Runnable;)V

    .line 176
    return-void
.end method
