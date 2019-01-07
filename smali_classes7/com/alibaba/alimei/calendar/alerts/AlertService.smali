.class public Lcom/alibaba/alimei/calendar/alerts/AlertService;
.super Landroid/app/Service;
.source "AlertService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/alimei/calendar/alerts/AlertService$a;
    }
.end annotation


# static fields
.field private static a:Ljava/lang/String;

.field private static b:I

.field private static c:Ljava/lang/String;


# instance fields
.field private volatile d:Landroid/os/Looper;

.field private volatile e:Lcom/alibaba/alimei/calendar/alerts/AlertService$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 59
    const-string/jumbo v0, "<div "

    sput-object v0, Lcom/alibaba/alimei/calendar/alerts/AlertService;->a:Ljava/lang/String;

    .line 60
    const/16 v0, 0x96

    sput v0, Lcom/alibaba/alimei/calendar/alerts/AlertService;->b:I

    .line 61
    const-string/jumbo v0, "..."

    sput-object v0, Lcom/alibaba/alimei/calendar/alerts/AlertService;->c:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 55
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 96
    return-void
.end method

.method static synthetic a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 55
    sget-object v0, Lcom/alibaba/alimei/calendar/alerts/AlertService;->a:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic b()I
    .locals 1

    .prologue
    .line 55
    sget v0, Lcom/alibaba/alimei/calendar/alerts/AlertService;->b:I

    return v0
.end method

.method static synthetic c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 55
    sget-object v0, Lcom/alibaba/alimei/calendar/alerts/AlertService;->c:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 93
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 68
    new-instance v0, Landroid/os/HandlerThread;

    const-string/jumbo v1, "AlertService"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    .line 69
    .local v0, "thread":Landroid/os/HandlerThread;
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 71
    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/alimei/calendar/alerts/AlertService;->d:Landroid/os/Looper;

    .line 72
    new-instance v1, Lcom/alibaba/alimei/calendar/alerts/AlertService$a;

    iget-object v2, p0, Lcom/alibaba/alimei/calendar/alerts/AlertService;->d:Landroid/os/Looper;

    invoke-direct {v1, p0, v2}, Lcom/alibaba/alimei/calendar/alerts/AlertService$a;-><init>(Landroid/app/Service;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/alibaba/alimei/calendar/alerts/AlertService;->e:Lcom/alibaba/alimei/calendar/alerts/AlertService$a;

    .line 73
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/alibaba/alimei/calendar/alerts/AlertService;->d:Landroid/os/Looper;

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    .line 89
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "startId"    # I

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 77
    if-eqz p1, :cond_0

    .line 78
    iget-object v1, p0, Lcom/alibaba/alimei/calendar/alerts/AlertService;->e:Lcom/alibaba/alimei/calendar/alerts/AlertService$a;

    invoke-virtual {v1}, Lcom/alibaba/alimei/calendar/alerts/AlertService$a;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 79
    .local v0, "msg":Landroid/os/Message;
    iput p3, v0, Landroid/os/Message;->arg1:I

    .line 80
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 81
    iget-object v1, p0, Lcom/alibaba/alimei/calendar/alerts/AlertService;->e:Lcom/alibaba/alimei/calendar/alerts/AlertService$a;

    invoke-virtual {v1, v0}, Lcom/alibaba/alimei/calendar/alerts/AlertService$a;->sendMessage(Landroid/os/Message;)Z

    .line 83
    .end local v0    # "msg":Landroid/os/Message;
    :cond_0
    const/4 v1, 0x3

    return v1
.end method
