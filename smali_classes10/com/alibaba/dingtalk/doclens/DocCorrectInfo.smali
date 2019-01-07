.class public Lcom/alibaba/dingtalk/doclens/DocCorrectInfo;
.super Lcom/alibaba/laiwang/photokit/picker/media/ImageItem;
.source "DocCorrectInfo.java"


# instance fields
.field private mCorrectDocPath:Ljava/lang/String;

.field private mOrientation:I

.field private mQuad:[F

.field private mSourceImageHeight:I

.field private mSourceImagePath:Ljava/lang/String;

.field private mSourceImageWidth:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;[F)V
    .locals 9
    .param p1, "sourceImagePath"    # Ljava/lang/String;
    .param p2, "correctDocPath"    # Ljava/lang/String;
    .param p3, "quad"    # [F

    .prologue
    const-wide/16 v4, 0x0

    const/16 v8, 0x8

    .line 47
    const/4 v1, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    move-object v2, p2

    move-wide v6, v4

    invoke-direct/range {v0 .. v7}, Lcom/alibaba/laiwang/photokit/picker/media/ImageItem;-><init>(ILjava/lang/String;Ljava/lang/String;JJ)V

    .line 48
    iput-object p2, p0, Lcom/alibaba/dingtalk/doclens/DocCorrectInfo;->mCorrectDocPath:Ljava/lang/String;

    .line 49
    iput-object p1, p0, Lcom/alibaba/dingtalk/doclens/DocCorrectInfo;->mSourceImagePath:Ljava/lang/String;

    .line 50
    if-eqz p3, :cond_0

    array-length v0, p3

    if-ne v0, v8, :cond_0

    .line 51
    invoke-static {p3, v8}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/dingtalk/doclens/DocCorrectInfo;->mQuad:[F

    .line 53
    :cond_0
    return-void
.end method


# virtual methods
.method public getCorrectDocPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcom/alibaba/dingtalk/doclens/DocCorrectInfo;->mCorrectDocPath:Ljava/lang/String;

    return-object v0
.end method

.method public getOrientation()I
    .locals 1

    .prologue
    .line 68
    iget v0, p0, Lcom/alibaba/dingtalk/doclens/DocCorrectInfo;->mOrientation:I

    return v0
.end method

.method public getQuad()[F
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/alibaba/dingtalk/doclens/DocCorrectInfo;->mQuad:[F

    return-object v0
.end method

.method public getSourceImageHeight()I
    .locals 1

    .prologue
    .line 76
    iget v0, p0, Lcom/alibaba/dingtalk/doclens/DocCorrectInfo;->mSourceImageHeight:I

    return v0
.end method

.method public getSourceImagePath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lcom/alibaba/dingtalk/doclens/DocCorrectInfo;->mSourceImagePath:Ljava/lang/String;

    return-object v0
.end method

.method public getSourceImageWidth()I
    .locals 1

    .prologue
    .line 84
    iget v0, p0, Lcom/alibaba/dingtalk/doclens/DocCorrectInfo;->mSourceImageWidth:I

    return v0
.end method

.method public setCorrectDocPath(Ljava/lang/String;)V
    .locals 0
    .param p1, "correctDocPath"    # Ljava/lang/String;

    .prologue
    .line 88
    iput-object p1, p0, Lcom/alibaba/dingtalk/doclens/DocCorrectInfo;->mCorrectDocPath:Ljava/lang/String;

    .line 89
    invoke-virtual {p0, p1}, Lcom/alibaba/dingtalk/doclens/DocCorrectInfo;->setContentPath(Ljava/lang/String;)V

    .line 90
    return-void
.end method

.method public setOrientation(I)V
    .locals 0
    .param p1, "orientation"    # I

    .prologue
    .line 64
    iput p1, p0, Lcom/alibaba/dingtalk/doclens/DocCorrectInfo;->mOrientation:I

    .line 65
    return-void
.end method

.method public setQuad([F)V
    .locals 0
    .param p1, "quad"    # [F

    .prologue
    .line 56
    iput-object p1, p0, Lcom/alibaba/dingtalk/doclens/DocCorrectInfo;->mQuad:[F

    .line 57
    return-void
.end method

.method public setSourceImageHeight(I)V
    .locals 0
    .param p1, "sourceImageHeight"    # I

    .prologue
    .line 72
    iput p1, p0, Lcom/alibaba/dingtalk/doclens/DocCorrectInfo;->mSourceImageHeight:I

    .line 73
    return-void
.end method

.method public setSourceImagePath(Ljava/lang/String;)V
    .locals 0
    .param p1, "sourceImagePath"    # Ljava/lang/String;

    .prologue
    .line 97
    iput-object p1, p0, Lcom/alibaba/dingtalk/doclens/DocCorrectInfo;->mSourceImagePath:Ljava/lang/String;

    .line 98
    return-void
.end method

.method public setSourceImageWidth(I)V
    .locals 0
    .param p1, "sourceImageWidth"    # I

    .prologue
    .line 80
    iput p1, p0, Lcom/alibaba/dingtalk/doclens/DocCorrectInfo;->mSourceImageWidth:I

    .line 81
    return-void
.end method
