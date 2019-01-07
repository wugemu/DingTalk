.class public Lcom/alipay/android/h5appmanager/tracker/TrackEventBuilder;
.super Ljava/lang/Object;
.source "TrackEventBuilder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/android/h5appmanager/tracker/TrackEventBuilder$TrackEvent;
    }
.end annotation


# instance fields
.field private category:Ljava/lang/String;

.field private id:Ljava/lang/String;

.field private result:Landroid/os/Bundle;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/android/h5appmanager/tracker/TrackEventBuilder;->category:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public category(Ljava/lang/String;)Lcom/alipay/android/h5appmanager/tracker/TrackEventBuilder;
    .locals 0
    .param p1, "category"    # Ljava/lang/String;

    .prologue
    .line 21
    iput-object p1, p0, Lcom/alipay/android/h5appmanager/tracker/TrackEventBuilder;->category:Ljava/lang/String;

    .line 22
    return-object p0
.end method

.method public createEvent()Lcom/alipay/android/h5appmanager/tracker/TrackEventBuilder$TrackEvent;
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 31
    new-instance v0, Lcom/alipay/android/h5appmanager/tracker/TrackEventBuilder$TrackEvent;

    iget-object v1, p0, Lcom/alipay/android/h5appmanager/tracker/TrackEventBuilder;->id:Ljava/lang/String;

    iget-object v2, p0, Lcom/alipay/android/h5appmanager/tracker/TrackEventBuilder;->category:Ljava/lang/String;

    iget-object v3, p0, Lcom/alipay/android/h5appmanager/tracker/TrackEventBuilder;->result:Landroid/os/Bundle;

    invoke-direct {v0, v1, v2, v3}, Lcom/alipay/android/h5appmanager/tracker/TrackEventBuilder$TrackEvent;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    return-object v0
.end method

.method public id(Ljava/lang/String;)Lcom/alipay/android/h5appmanager/tracker/TrackEventBuilder;
    .locals 0
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 16
    iput-object p1, p0, Lcom/alipay/android/h5appmanager/tracker/TrackEventBuilder;->id:Ljava/lang/String;

    .line 17
    return-object p0
.end method

.method public result(Landroid/os/Bundle;)Lcom/alipay/android/h5appmanager/tracker/TrackEventBuilder;
    .locals 0
    .param p1, "result"    # Landroid/os/Bundle;

    .prologue
    .line 26
    iput-object p1, p0, Lcom/alipay/android/h5appmanager/tracker/TrackEventBuilder;->result:Landroid/os/Bundle;

    .line 27
    return-object p0
.end method
