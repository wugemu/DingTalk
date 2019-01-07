.class public final Lcom/amap/api/maps/model/Text;
.super Ljava/lang/Object;
.source "Text.java"


# static fields
.field public static final ALIGN_BOTTOM:I = 0x10

.field public static final ALIGN_CENTER_HORIZONTAL:I = 0x4

.field public static final ALIGN_CENTER_VERTICAL:I = 0x20

.field public static final ALIGN_LEFT:I = 0x1

.field public static final ALIGN_RIGHT:I = 0x2

.field public static final ALIGN_TOP:I = 0x8


# instance fields
.field private a:Lcom/autonavi/amap/mapcore/interfaces/IText;


# direct methods
.method public constructor <init>(Lcom/autonavi/amap/mapcore/interfaces/IText;)V
    .locals 0

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput-object p1, p0, Lcom/amap/api/maps/model/Text;->a:Lcom/autonavi/amap/mapcore/interfaces/IText;

    .line 57
    return-void
.end method


# virtual methods
.method public final destroy()V
    .locals 1

    .prologue
    .line 81
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/maps/model/Text;->a:Lcom/autonavi/amap/mapcore/interfaces/IText;

    if-eqz v0, :cond_0

    .line 82
    iget-object v0, p0, Lcom/amap/api/maps/model/Text;->a:Lcom/autonavi/amap/mapcore/interfaces/IText;

    invoke-interface {v0}, Lcom/autonavi/amap/mapcore/interfaces/IText;->destroy()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 87
    :cond_0
    :goto_0
    return-void

    .line 84
    :catch_0
    move-exception v0

    .line 85
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v0, 0x0

    .line 352
    instance-of v1, p1, Lcom/amap/api/maps/model/Text;

    if-nez v1, :cond_0

    .line 360
    :goto_0
    return v0

    .line 356
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/amap/api/maps/model/Text;->a:Lcom/autonavi/amap/mapcore/interfaces/IText;

    check-cast p1, Lcom/amap/api/maps/model/Text;

    iget-object v2, p1, Lcom/amap/api/maps/model/Text;->a:Lcom/autonavi/amap/mapcore/interfaces/IText;

    .line 357
    invoke-interface {v1, v2}, Lcom/autonavi/amap/mapcore/interfaces/IText;->equalsRemote(Lcom/autonavi/amap/mapcore/interfaces/IOverlayImage;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    .line 358
    :catch_0
    move-exception v1

    .line 359
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public final getAlignX()I
    .locals 1

    .prologue
    .line 297
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/maps/model/Text;->a:Lcom/autonavi/amap/mapcore/interfaces/IText;

    invoke-interface {v0}, Lcom/autonavi/amap/mapcore/interfaces/IText;->getAlignX()I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 300
    :goto_0
    return v0

    .line 298
    :catch_0
    move-exception v0

    .line 299
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 300
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final getAlignY()I
    .locals 1

    .prologue
    .line 312
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/maps/model/Text;->a:Lcom/autonavi/amap/mapcore/interfaces/IText;

    invoke-interface {v0}, Lcom/autonavi/amap/mapcore/interfaces/IText;->getAlignY()I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 315
    :goto_0
    return v0

    .line 313
    :catch_0
    move-exception v0

    .line 314
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 315
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final getBackgroundColor()I
    .locals 1

    .prologue
    .line 183
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/maps/model/Text;->a:Lcom/autonavi/amap/mapcore/interfaces/IText;

    invoke-interface {v0}, Lcom/autonavi/amap/mapcore/interfaces/IText;->getBackgroundColor()I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 186
    :goto_0
    return v0

    .line 184
    :catch_0
    move-exception v0

    .line 185
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 186
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final getFontColor()I
    .locals 1

    .prologue
    .line 211
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/maps/model/Text;->a:Lcom/autonavi/amap/mapcore/interfaces/IText;

    invoke-interface {v0}, Lcom/autonavi/amap/mapcore/interfaces/IText;->getFontColor()I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 214
    :goto_0
    return v0

    .line 212
    :catch_0
    move-exception v0

    .line 213
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 214
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final getFontSize()I
    .locals 1

    .prologue
    .line 239
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/maps/model/Text;->a:Lcom/autonavi/amap/mapcore/interfaces/IText;

    invoke-interface {v0}, Lcom/autonavi/amap/mapcore/interfaces/IText;->getFontSize()I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 242
    :goto_0
    return v0

    .line 240
    :catch_0
    move-exception v0

    .line 241
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 242
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 97
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/maps/model/Text;->a:Lcom/autonavi/amap/mapcore/interfaces/IText;

    invoke-interface {v0}, Lcom/autonavi/amap/mapcore/interfaces/IText;->getId()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 100
    :goto_0
    return-object v0

    .line 98
    :catch_0
    move-exception v0

    .line 99
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 100
    const-string/jumbo v0, ""

    goto :goto_0
.end method

.method public final getObject()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 375
    iget-object v0, p0, Lcom/amap/api/maps/model/Text;->a:Lcom/autonavi/amap/mapcore/interfaces/IText;

    invoke-interface {v0}, Lcom/autonavi/amap/mapcore/interfaces/IText;->getObject()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final getPosition()Lcom/amap/api/maps/model/LatLng;
    .locals 1

    .prologue
    .line 126
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/maps/model/Text;->a:Lcom/autonavi/amap/mapcore/interfaces/IText;

    invoke-interface {v0}, Lcom/autonavi/amap/mapcore/interfaces/IText;->getPosition()Lcom/amap/api/maps/model/LatLng;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 129
    :goto_0
    return-object v0

    .line 127
    :catch_0
    move-exception v0

    .line 128
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 129
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final getRotate()F
    .locals 1

    .prologue
    .line 398
    iget-object v0, p0, Lcom/amap/api/maps/model/Text;->a:Lcom/autonavi/amap/mapcore/interfaces/IText;

    invoke-interface {v0}, Lcom/autonavi/amap/mapcore/interfaces/IText;->getRotateAngle()F

    move-result v0

    return v0
.end method

.method public final getText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 155
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/maps/model/Text;->a:Lcom/autonavi/amap/mapcore/interfaces/IText;

    invoke-interface {v0}, Lcom/autonavi/amap/mapcore/interfaces/IText;->getText()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 158
    :goto_0
    return-object v0

    .line 156
    :catch_0
    move-exception v0

    .line 157
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 158
    const-string/jumbo v0, ""

    goto :goto_0
.end method

.method public final getTypeface()Landroid/graphics/Typeface;
    .locals 1

    .prologue
    .line 267
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/maps/model/Text;->a:Lcom/autonavi/amap/mapcore/interfaces/IText;

    invoke-interface {v0}, Lcom/autonavi/amap/mapcore/interfaces/IText;->getTypeface()Landroid/graphics/Typeface;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 270
    :goto_0
    return-object v0

    .line 268
    :catch_0
    move-exception v0

    .line 269
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 270
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final getZIndex()F
    .locals 1

    .prologue
    .line 418
    iget-object v0, p0, Lcom/amap/api/maps/model/Text;->a:Lcom/autonavi/amap/mapcore/interfaces/IText;

    invoke-interface {v0}, Lcom/autonavi/amap/mapcore/interfaces/IText;->getZIndex()F

    move-result v0

    return v0
.end method

.method public final hashCode()I
    .locals 1

    .prologue
    .line 366
    iget-object v0, p0, Lcom/amap/api/maps/model/Text;->a:Lcom/autonavi/amap/mapcore/interfaces/IText;

    invoke-interface {v0}, Lcom/autonavi/amap/mapcore/interfaces/IText;->hashCodeRemote()I

    move-result v0

    return v0
.end method

.method public final isVisible()Z
    .locals 1

    .prologue
    .line 342
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/maps/model/Text;->a:Lcom/autonavi/amap/mapcore/interfaces/IText;

    invoke-interface {v0}, Lcom/autonavi/amap/mapcore/interfaces/IText;->isVisible()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 345
    :goto_0
    return v0

    .line 343
    :catch_0
    move-exception v0

    .line 344
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 345
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final remove()V
    .locals 1

    .prologue
    .line 67
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/maps/model/Text;->a:Lcom/autonavi/amap/mapcore/interfaces/IText;

    invoke-interface {v0}, Lcom/autonavi/amap/mapcore/interfaces/IText;->remove()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 71
    :goto_0
    return-void

    .line 68
    :catch_0
    move-exception v0

    .line 69
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public final setAlign(II)V
    .locals 1

    .prologue
    .line 283
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/maps/model/Text;->a:Lcom/autonavi/amap/mapcore/interfaces/IText;

    invoke-interface {v0, p1, p2}, Lcom/autonavi/amap/mapcore/interfaces/IText;->setAlign(II)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 287
    :goto_0
    return-void

    .line 284
    :catch_0
    move-exception v0

    .line 285
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public final setBackgroundColor(I)V
    .locals 1

    .prologue
    .line 170
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/maps/model/Text;->a:Lcom/autonavi/amap/mapcore/interfaces/IText;

    invoke-interface {v0, p1}, Lcom/autonavi/amap/mapcore/interfaces/IText;->setBackgroundColor(I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 174
    :goto_0
    return-void

    .line 171
    :catch_0
    move-exception v0

    .line 172
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public final setFontColor(I)V
    .locals 1

    .prologue
    .line 198
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/maps/model/Text;->a:Lcom/autonavi/amap/mapcore/interfaces/IText;

    invoke-interface {v0, p1}, Lcom/autonavi/amap/mapcore/interfaces/IText;->setFontColor(I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 202
    :goto_0
    return-void

    .line 199
    :catch_0
    move-exception v0

    .line 200
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public final setFontSize(I)V
    .locals 1

    .prologue
    .line 226
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/maps/model/Text;->a:Lcom/autonavi/amap/mapcore/interfaces/IText;

    invoke-interface {v0, p1}, Lcom/autonavi/amap/mapcore/interfaces/IText;->setFontSize(I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 230
    :goto_0
    return-void

    .line 227
    :catch_0
    move-exception v0

    .line 228
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public final setObject(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 371
    iget-object v0, p0, Lcom/amap/api/maps/model/Text;->a:Lcom/autonavi/amap/mapcore/interfaces/IText;

    invoke-interface {v0, p1}, Lcom/autonavi/amap/mapcore/interfaces/IText;->setObject(Ljava/lang/Object;)V

    .line 372
    return-void
.end method

.method public final setPosition(Lcom/amap/api/maps/model/LatLng;)V
    .locals 1

    .prologue
    .line 112
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/maps/model/Text;->a:Lcom/autonavi/amap/mapcore/interfaces/IText;

    invoke-interface {v0, p1}, Lcom/autonavi/amap/mapcore/interfaces/IText;->setPosition(Lcom/amap/api/maps/model/LatLng;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 116
    :goto_0
    return-void

    .line 113
    :catch_0
    move-exception v0

    .line 114
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public final setRotate(F)V
    .locals 1

    .prologue
    .line 386
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/maps/model/Text;->a:Lcom/autonavi/amap/mapcore/interfaces/IText;

    invoke-interface {v0, p1}, Lcom/autonavi/amap/mapcore/interfaces/IText;->setRotateAngle(F)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 390
    :goto_0
    return-void

    .line 387
    :catch_0
    move-exception v0

    .line 388
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public final setText(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 141
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/maps/model/Text;->a:Lcom/autonavi/amap/mapcore/interfaces/IText;

    invoke-interface {v0, p1}, Lcom/autonavi/amap/mapcore/interfaces/IText;->setText(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 145
    :goto_0
    return-void

    .line 142
    :catch_0
    move-exception v0

    .line 143
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public final setTypeface(Landroid/graphics/Typeface;)V
    .locals 1

    .prologue
    .line 254
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/maps/model/Text;->a:Lcom/autonavi/amap/mapcore/interfaces/IText;

    invoke-interface {v0, p1}, Lcom/autonavi/amap/mapcore/interfaces/IText;->setTypeface(Landroid/graphics/Typeface;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 258
    :goto_0
    return-void

    .line 255
    :catch_0
    move-exception v0

    .line 256
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public final setVisible(Z)V
    .locals 1

    .prologue
    .line 328
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/maps/model/Text;->a:Lcom/autonavi/amap/mapcore/interfaces/IText;

    invoke-interface {v0, p1}, Lcom/autonavi/amap/mapcore/interfaces/IText;->setVisible(Z)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 332
    :goto_0
    return-void

    .line 329
    :catch_0
    move-exception v0

    .line 330
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public final setZIndex(F)V
    .locals 1

    .prologue
    .line 408
    iget-object v0, p0, Lcom/amap/api/maps/model/Text;->a:Lcom/autonavi/amap/mapcore/interfaces/IText;

    invoke-interface {v0, p1}, Lcom/autonavi/amap/mapcore/interfaces/IText;->setZIndex(F)V

    .line 409
    return-void
.end method
