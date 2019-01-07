.class Lcom/amap/api/mapcore/util/w;
.super Ljava/lang/Object;
.source "UiSettingsDelegateImp.java"

# interfaces
.implements Lcom/amap/api/mapcore/util/o;


# instance fields
.field final a:Landroid/os/Handler;

.field private b:Lcom/amap/api/mapcore/util/l;

.field private c:Z

.field private d:Z

.field private e:Z

.field private f:Z

.field private g:Z

.field private h:Z

.field private i:Z

.field private j:Z

.field private k:I

.field private l:I

.field private m:Z

.field private n:Z

.field private o:Z


# direct methods
.method constructor <init>(Lcom/amap/api/mapcore/util/l;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-boolean v0, p0, Lcom/amap/api/mapcore/util/w;->c:Z

    .line 13
    iput-boolean v0, p0, Lcom/amap/api/mapcore/util/w;->d:Z

    .line 14
    iput-boolean v0, p0, Lcom/amap/api/mapcore/util/w;->e:Z

    .line 15
    iput-boolean v1, p0, Lcom/amap/api/mapcore/util/w;->f:Z

    .line 16
    iput-boolean v0, p0, Lcom/amap/api/mapcore/util/w;->g:Z

    .line 17
    iput-boolean v0, p0, Lcom/amap/api/mapcore/util/w;->h:Z

    .line 18
    iput-boolean v0, p0, Lcom/amap/api/mapcore/util/w;->i:Z

    .line 19
    iput-boolean v1, p0, Lcom/amap/api/mapcore/util/w;->j:Z

    .line 20
    iput v1, p0, Lcom/amap/api/mapcore/util/w;->k:I

    .line 21
    iput v0, p0, Lcom/amap/api/mapcore/util/w;->l:I

    .line 22
    iput-boolean v0, p0, Lcom/amap/api/mapcore/util/w;->m:Z

    .line 30
    iput-boolean v1, p0, Lcom/amap/api/mapcore/util/w;->n:Z

    .line 31
    iput-boolean v1, p0, Lcom/amap/api/mapcore/util/w;->o:Z

    .line 33
    new-instance v0, Lcom/amap/api/mapcore/util/w$1;

    invoke-direct {v0, p0}, Lcom/amap/api/mapcore/util/w$1;-><init>(Lcom/amap/api/mapcore/util/w;)V

    iput-object v0, p0, Lcom/amap/api/mapcore/util/w;->a:Landroid/os/Handler;

    .line 71
    iput-object p1, p0, Lcom/amap/api/mapcore/util/w;->b:Lcom/amap/api/mapcore/util/l;

    .line 72
    return-void
.end method

.method static synthetic a(Lcom/amap/api/mapcore/util/w;)Lcom/amap/api/mapcore/util/l;
    .locals 1

    .prologue
    .line 9
    iget-object v0, p0, Lcom/amap/api/mapcore/util/w;->b:Lcom/amap/api/mapcore/util/l;

    return-object v0
.end method

.method static synthetic b(Lcom/amap/api/mapcore/util/w;)Z
    .locals 1

    .prologue
    .line 9
    iget-boolean v0, p0, Lcom/amap/api/mapcore/util/w;->h:Z

    return v0
.end method

.method static synthetic c(Lcom/amap/api/mapcore/util/w;)Z
    .locals 1

    .prologue
    .line 9
    iget-boolean v0, p0, Lcom/amap/api/mapcore/util/w;->j:Z

    return v0
.end method

.method static synthetic d(Lcom/amap/api/mapcore/util/w;)Z
    .locals 1

    .prologue
    .line 9
    iget-boolean v0, p0, Lcom/amap/api/mapcore/util/w;->i:Z

    return v0
.end method

.method static synthetic e(Lcom/amap/api/mapcore/util/w;)Z
    .locals 1

    .prologue
    .line 9
    iget-boolean v0, p0, Lcom/amap/api/mapcore/util/w;->f:Z

    return v0
.end method

.method static synthetic f(Lcom/amap/api/mapcore/util/w;)Z
    .locals 1

    .prologue
    .line 9
    iget-boolean v0, p0, Lcom/amap/api/mapcore/util/w;->m:Z

    return v0
.end method


# virtual methods
.method public getLogoMarginRate(I)F
    .locals 1

    .prologue
    .line 228
    iget-object v0, p0, Lcom/amap/api/mapcore/util/w;->b:Lcom/amap/api/mapcore/util/l;

    invoke-interface {v0, p1}, Lcom/amap/api/mapcore/util/l;->e(I)F

    move-result v0

    return v0
.end method

.method public getLogoPosition()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 198
    iget v0, p0, Lcom/amap/api/mapcore/util/w;->k:I

    return v0
.end method

.method public getZoomPosition()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 203
    iget v0, p0, Lcom/amap/api/mapcore/util/w;->l:I

    return v0
.end method

.method public isCompassEnabled()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 168
    iget-boolean v0, p0, Lcom/amap/api/mapcore/util/w;->i:Z

    return v0
.end method

.method public isGestureScaleByMapCenter()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 243
    iget-boolean v0, p0, Lcom/amap/api/mapcore/util/w;->o:Z

    return v0
.end method

.method public isIndoorSwitchEnabled()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 76
    iget-boolean v0, p0, Lcom/amap/api/mapcore/util/w;->m:Z

    return v0
.end method

.method public isMyLocationButtonEnabled()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 173
    iget-boolean v0, p0, Lcom/amap/api/mapcore/util/w;->f:Z

    return v0
.end method

.method public isRotateGesturesEnabled()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 193
    iget-boolean v0, p0, Lcom/amap/api/mapcore/util/w;->c:Z

    return v0
.end method

.method public isScaleControlsEnabled()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 158
    iget-boolean v0, p0, Lcom/amap/api/mapcore/util/w;->j:Z

    return v0
.end method

.method public isScrollGesturesEnabled()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 178
    iget-boolean v0, p0, Lcom/amap/api/mapcore/util/w;->d:Z

    return v0
.end method

.method public isTiltGesturesEnabled()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 188
    iget-boolean v0, p0, Lcom/amap/api/mapcore/util/w;->e:Z

    return v0
.end method

.method public isZoomControlsEnabled()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 163
    iget-boolean v0, p0, Lcom/amap/api/mapcore/util/w;->h:Z

    return v0
.end method

.method public isZoomGesturesEnabled()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 183
    iget-boolean v0, p0, Lcom/amap/api/mapcore/util/w;->g:Z

    return v0
.end method

.method public isZoomInByScreenCenter()Z
    .locals 1

    .prologue
    .line 213
    iget-boolean v0, p0, Lcom/amap/api/mapcore/util/w;->n:Z

    return v0
.end method

.method public setAllGesturesEnabled(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 138
    invoke-virtual {p0, p1}, Lcom/amap/api/mapcore/util/w;->setRotateGesturesEnabled(Z)V

    .line 139
    invoke-virtual {p0, p1}, Lcom/amap/api/mapcore/util/w;->setTiltGesturesEnabled(Z)V

    .line 140
    invoke-virtual {p0, p1}, Lcom/amap/api/mapcore/util/w;->setZoomGesturesEnabled(Z)V

    .line 141
    invoke-virtual {p0, p1}, Lcom/amap/api/mapcore/util/w;->setScrollGesturesEnabled(Z)V

    .line 142
    return-void
.end method

.method public setCompassEnabled(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 101
    iput-boolean p1, p0, Lcom/amap/api/mapcore/util/w;->i:Z

    .line 102
    iget-object v0, p0, Lcom/amap/api/mapcore/util/w;->a:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 104
    return-void
.end method

.method public setGestureScaleByMapCenter(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 238
    iput-boolean p1, p0, Lcom/amap/api/mapcore/util/w;->o:Z

    .line 239
    return-void
.end method

.method public setIndoorSwitchEnabled(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 81
    iput-boolean p1, p0, Lcom/amap/api/mapcore/util/w;->m:Z

    .line 82
    iget-object v0, p0, Lcom/amap/api/mapcore/util/w;->a:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 83
    return-void
.end method

.method public setLogoBottomMargin(I)V
    .locals 1

    .prologue
    .line 218
    iget-object v0, p0, Lcom/amap/api/mapcore/util/w;->b:Lcom/amap/api/mapcore/util/l;

    invoke-interface {v0, p1}, Lcom/amap/api/mapcore/util/l;->c(I)V

    .line 219
    return-void
.end method

.method public setLogoLeftMargin(I)V
    .locals 1

    .prologue
    .line 223
    iget-object v0, p0, Lcom/amap/api/mapcore/util/w;->b:Lcom/amap/api/mapcore/util/l;

    invoke-interface {v0, p1}, Lcom/amap/api/mapcore/util/l;->d(I)V

    .line 224
    return-void
.end method

.method public setLogoMarginRate(IF)V
    .locals 1

    .prologue
    .line 233
    iget-object v0, p0, Lcom/amap/api/mapcore/util/w;->b:Lcom/amap/api/mapcore/util/l;

    invoke-interface {v0, p1, p2}, Lcom/amap/api/mapcore/util/l;->a(IF)V

    .line 234
    return-void
.end method

.method public setLogoPosition(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 146
    iput p1, p0, Lcom/amap/api/mapcore/util/w;->k:I

    .line 147
    iget-object v0, p0, Lcom/amap/api/mapcore/util/w;->b:Lcom/amap/api/mapcore/util/l;

    invoke-interface {v0, p1}, Lcom/amap/api/mapcore/util/l;->b(I)V

    .line 148
    return-void
.end method

.method public setMyLocationButtonEnabled(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 109
    iput-boolean p1, p0, Lcom/amap/api/mapcore/util/w;->f:Z

    .line 110
    iget-object v0, p0, Lcom/amap/api/mapcore/util/w;->a:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 112
    return-void
.end method

.method public setRotateGesturesEnabled(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 133
    iput-boolean p1, p0, Lcom/amap/api/mapcore/util/w;->c:Z

    .line 134
    return-void
.end method

.method public setScaleControlsEnabled(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 87
    iput-boolean p1, p0, Lcom/amap/api/mapcore/util/w;->j:Z

    .line 88
    iget-object v0, p0, Lcom/amap/api/mapcore/util/w;->a:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 90
    return-void
.end method

.method public setScrollGesturesEnabled(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 117
    iput-boolean p1, p0, Lcom/amap/api/mapcore/util/w;->d:Z

    .line 118
    return-void
.end method

.method public setTiltGesturesEnabled(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 127
    iput-boolean p1, p0, Lcom/amap/api/mapcore/util/w;->e:Z

    .line 128
    return-void
.end method

.method public setZoomControlsEnabled(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 94
    iput-boolean p1, p0, Lcom/amap/api/mapcore/util/w;->h:Z

    .line 95
    iget-object v0, p0, Lcom/amap/api/mapcore/util/w;->a:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 97
    return-void
.end method

.method public setZoomGesturesEnabled(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 122
    iput-boolean p1, p0, Lcom/amap/api/mapcore/util/w;->g:Z

    .line 123
    return-void
.end method

.method public setZoomInByScreenCenter(Z)V
    .locals 0

    .prologue
    .line 208
    iput-boolean p1, p0, Lcom/amap/api/mapcore/util/w;->n:Z

    .line 209
    return-void
.end method

.method public setZoomPosition(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 152
    iput p1, p0, Lcom/amap/api/mapcore/util/w;->l:I

    .line 153
    iget-object v0, p0, Lcom/amap/api/mapcore/util/w;->b:Lcom/amap/api/mapcore/util/l;

    invoke-interface {v0, p1}, Lcom/amap/api/mapcore/util/l;->f(I)V

    .line 154
    return-void
.end method
