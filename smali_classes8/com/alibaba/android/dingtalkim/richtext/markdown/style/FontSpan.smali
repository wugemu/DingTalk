.class public Lcom/alibaba/android/dingtalkim/richtext/markdown/style/FontSpan;
.super Landroid/text/style/StyleSpan;
.source "FontSpan.java"

# interfaces
.implements Landroid/text/ParcelableSpan;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/alibaba/android/dingtalkim/richtext/markdown/style/FontSpan;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final color:I

.field private final size:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 60
    new-instance v0, Lcom/alibaba/android/dingtalkim/richtext/markdown/style/FontSpan$1;

    invoke-direct {v0}, Lcom/alibaba/android/dingtalkim/richtext/markdown/style/FontSpan$1;-><init>()V

    sput-object v0, Lcom/alibaba/android/dingtalkim/richtext/markdown/style/FontSpan;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(FII)V
    .locals 0
    .param p1, "size"    # F
    .param p2, "style"    # I
    .param p3, "color"    # I

    .prologue
    .line 22
    invoke-direct {p0, p2}, Landroid/text/style/StyleSpan;-><init>(I)V

    .line 23
    iput p1, p0, Lcom/alibaba/android/dingtalkim/richtext/markdown/style/FontSpan;->size:F

    .line 24
    iput p3, p0, Lcom/alibaba/android/dingtalkim/richtext/markdown/style/FontSpan;->color:I

    .line 25
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "parcel"    # Landroid/os/Parcel;

    .prologue
    .line 28
    invoke-direct {p0, p1}, Landroid/text/style/StyleSpan;-><init>(Landroid/os/Parcel;)V

    .line 29
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/alibaba/android/dingtalkim/richtext/markdown/style/FontSpan;->size:F

    .line 30
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/alibaba/android/dingtalkim/richtext/markdown/style/FontSpan;->color:I

    .line 31
    return-void
.end method


# virtual methods
.method public updateDrawState(Landroid/text/TextPaint;)V
    .locals 1
    .param p1, "tp"    # Landroid/text/TextPaint;

    .prologue
    .line 54
    invoke-super {p0, p1}, Landroid/text/style/StyleSpan;->updateDrawState(Landroid/text/TextPaint;)V

    .line 55
    invoke-virtual {p0, p1}, Lcom/alibaba/android/dingtalkim/richtext/markdown/style/FontSpan;->updateMeasureState(Landroid/text/TextPaint;)V

    .line 56
    iget v0, p0, Lcom/alibaba/android/dingtalkim/richtext/markdown/style/FontSpan;->color:I

    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setColor(I)V

    .line 57
    return-void
.end method

.method public updateMeasureState(Landroid/text/TextPaint;)V
    .locals 6
    .param p1, "p"    # Landroid/text/TextPaint;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 44
    :try_start_0
    invoke-super {p0, p1}, Landroid/text/style/StyleSpan;->updateMeasureState(Landroid/text/TextPaint;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 49
    :goto_0
    invoke-virtual {p1}, Landroid/text/TextPaint;->getTextSize()F

    move-result v1

    iget v2, p0, Lcom/alibaba/android/dingtalkim/richtext/markdown/style/FontSpan;->size:F

    mul-float/2addr v1, v2

    invoke-virtual {p1, v1}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 50
    return-void

    .line 45
    :catch_0
    move-exception v0

    .line 46
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "im"

    const/4 v2, 0x0

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string/jumbo v5, "updateMeasureState exception="

    aput-object v5, v3, v4

    const/4 v4, 0x1

    .line 47
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    .line 46
    invoke-static {v3}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 36
    invoke-super {p0, p1, p2}, Landroid/text/style/StyleSpan;->writeToParcel(Landroid/os/Parcel;I)V

    .line 37
    iget v0, p0, Lcom/alibaba/android/dingtalkim/richtext/markdown/style/FontSpan;->size:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 38
    iget v0, p0, Lcom/alibaba/android/dingtalkim/richtext/markdown/style/FontSpan;->color:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 39
    return-void
.end method
