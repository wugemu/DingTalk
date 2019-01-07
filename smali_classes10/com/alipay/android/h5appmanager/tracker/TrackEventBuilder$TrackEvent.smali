.class public Lcom/alipay/android/h5appmanager/tracker/TrackEventBuilder$TrackEvent;
.super Ljava/lang/Object;
.source "TrackEventBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/android/h5appmanager/tracker/TrackEventBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TrackEvent"
.end annotation


# instance fields
.field private category:Ljava/lang/String;

.field private id:Ljava/lang/String;

.field private result:Landroid/os/Bundle;


# direct methods
.method protected constructor <init>(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 2
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "category"    # Ljava/lang/String;
    .param p3, "result"    # Landroid/os/Bundle;

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/android/h5appmanager/tracker/TrackEventBuilder$TrackEvent;->category:Ljava/lang/String;

    .line 40
    if-nez p1, :cond_0

    .line 41
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "id of a TrackEvent can\'t be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 43
    :cond_0
    iput-object p1, p0, Lcom/alipay/android/h5appmanager/tracker/TrackEventBuilder$TrackEvent;->id:Ljava/lang/String;

    .line 44
    iput-object p2, p0, Lcom/alipay/android/h5appmanager/tracker/TrackEventBuilder$TrackEvent;->category:Ljava/lang/String;

    .line 45
    iput-object p3, p0, Lcom/alipay/android/h5appmanager/tracker/TrackEventBuilder$TrackEvent;->result:Landroid/os/Bundle;

    .line 46
    return-void
.end method


# virtual methods
.method public category()Ljava/lang/String;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/alipay/android/h5appmanager/tracker/TrackEventBuilder$TrackEvent;->category:Ljava/lang/String;

    return-object v0
.end method

.method public id()Ljava/lang/String;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/alipay/android/h5appmanager/tracker/TrackEventBuilder$TrackEvent;->id:Ljava/lang/String;

    return-object v0
.end method

.method public result()Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/alipay/android/h5appmanager/tracker/TrackEventBuilder$TrackEvent;->result:Landroid/os/Bundle;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/16 v2, 0x27

    .line 62
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "TrackEvent{id=\'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/alipay/android/h5appmanager/tracker/TrackEventBuilder$TrackEvent;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", category=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/android/h5appmanager/tracker/TrackEventBuilder$TrackEvent;->category:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", result="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/android/h5appmanager/tracker/TrackEventBuilder$TrackEvent;->result:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
