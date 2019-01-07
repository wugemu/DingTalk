.class public Lcom/ut/mini/exposure/ExposureView;
.super Ljava/lang/Object;
.source "ExposureView.java"


# static fields
.field public static final INITIAL:I = 0x0

.field public static final SEEN:I = 0x1

.field public static final UNSEEN:I = 0x2


# instance fields
.field public area:D

.field public beginTime:J

.field public block:Ljava/lang/String;

.field public endTime:J

.field public lastCalTime:J

.field public lastState:I

.field public tag:Ljava/lang/String;

.field public view:Landroid/view/View;

.field public viewData:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const-wide/16 v0, 0x0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-wide v0, p0, Lcom/ut/mini/exposure/ExposureView;->beginTime:J

    .line 26
    iput-wide v0, p0, Lcom/ut/mini/exposure/ExposureView;->endTime:J

    .line 27
    iput-wide v0, p0, Lcom/ut/mini/exposure/ExposureView;->lastCalTime:J

    .line 29
    const/4 v0, 0x0

    iput v0, p0, Lcom/ut/mini/exposure/ExposureView;->lastState:I

    .line 30
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/ut/mini/exposure/ExposureView;->area:D

    .line 33
    iput-object p1, p0, Lcom/ut/mini/exposure/ExposureView;->view:Landroid/view/View;

    .line 34
    return-void
.end method

.method private getState(I)Ljava/lang/String;
    .locals 1
    .param p1, "lastState"    # I

    .prologue
    .line 67
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 68
    const-string/jumbo v0, "\u53ef\u89c1"

    .line 73
    :goto_0
    return-object v0

    .line 70
    :cond_0
    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    .line 71
    const-string/jumbo v0, "\u4e0d\u53ef\u89c1"

    goto :goto_0

    .line 73
    :cond_1
    const-string/jumbo v0, "\u521d\u59cb\u503c"

    goto :goto_0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "object"    # Ljava/lang/Object;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v1, 0x0

    .line 38
    if-ne p0, p1, :cond_1

    .line 39
    const/4 v1, 0x1

    .line 48
    :cond_0
    :goto_0
    return v1

    .line 41
    :cond_1
    if-eqz p1, :cond_0

    .line 44
    instance-of v2, p1, Lcom/ut/mini/exposure/ExposureView;

    if-eqz v2, :cond_0

    move-object v0, p1

    .line 47
    check-cast v0, Lcom/ut/mini/exposure/ExposureView;

    .line 48
    .local v0, "exposureView":Lcom/ut/mini/exposure/ExposureView;
    iget-object v1, p0, Lcom/ut/mini/exposure/ExposureView;->tag:Ljava/lang/String;

    iget-object v2, v0, Lcom/ut/mini/exposure/ExposureView;->tag:Ljava/lang/String;

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/ut/mini/exposure/ExposureView;->tag:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method protected isSatisfyTimeRequired()Z
    .locals 8

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 77
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/ut/mini/exposure/ExposureView;->beginTime:J

    sub-long v0, v4, v6

    .line 78
    .local v0, "duration":J
    const/4 v4, 0x0

    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/Object;

    const-string/jumbo v6, "tag"

    aput-object v6, v5, v3

    iget-object v6, p0, Lcom/ut/mini/exposure/ExposureView;->tag:Ljava/lang/String;

    aput-object v6, v5, v2

    const/4 v6, 0x2

    const-string/jumbo v7, "duration"

    aput-object v7, v5, v6

    const/4 v6, 0x3

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Lamu;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 79
    sget v4, Lcom/ut/mini/exposure/ExposureConfigMgr;->timeThreshold:I

    int-to-long v4, v4

    cmp-long v4, v0, v4

    if-lez v4, :cond_0

    sget v4, Lcom/ut/mini/exposure/ExposureConfigMgr;->maxTimeThreshold:I

    int-to-long v4, v4

    cmp-long v4, v0, v4

    if-gez v4, :cond_0

    :goto_0
    return v2

    :cond_0
    move v2, v3

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 58
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 59
    .local v0, "sb":Ljava/lang/StringBuilder;
    iget-object v1, p0, Lcom/ut/mini/exposure/ExposureView;->view:Landroid/view/View;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    iget-object v1, p0, Lcom/ut/mini/exposure/ExposureView;->tag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    iget-object v1, p0, Lcom/ut/mini/exposure/ExposureView;->view:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, ""

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    iget v1, p0, Lcom/ut/mini/exposure/ExposureView;->lastState:I

    invoke-direct {p0, v1}, Lcom/ut/mini/exposure/ExposureView;->getState(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 61
    :cond_0
    iget-object v1, p0, Lcom/ut/mini/exposure/ExposureView;->view:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v1

    goto :goto_0
.end method
