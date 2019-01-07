.class public Lcom/alibaba/doraemon/audio/opus/Utils$AudioTime;
.super Ljava/lang/Object;
.source "Utils.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/doraemon/audio/opus/Utils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AudioTime"
.end annotation


# instance fields
.field private mFormat:Ljava/lang/String;

.field private mHour:I

.field private mMinute:I

.field private mSecond:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 131
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 126
    const-string/jumbo v0, "%02d:%02d:%02d"

    iput-object v0, p0, Lcom/alibaba/doraemon/audio/opus/Utils$AudioTime;->mFormat:Ljava/lang/String;

    .line 127
    iput v1, p0, Lcom/alibaba/doraemon/audio/opus/Utils$AudioTime;->mHour:I

    .line 128
    iput v1, p0, Lcom/alibaba/doraemon/audio/opus/Utils$AudioTime;->mMinute:I

    .line 129
    iput v1, p0, Lcom/alibaba/doraemon/audio/opus/Utils$AudioTime;->mSecond:I

    .line 133
    return-void
.end method

.method public constructor <init>(J)V
    .locals 3
    .param p1, "seconds"    # J

    .prologue
    const/4 v1, 0x0

    .line 135
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 126
    const-string/jumbo v0, "%02d:%02d:%02d"

    iput-object v0, p0, Lcom/alibaba/doraemon/audio/opus/Utils$AudioTime;->mFormat:Ljava/lang/String;

    .line 127
    iput v1, p0, Lcom/alibaba/doraemon/audio/opus/Utils$AudioTime;->mHour:I

    .line 128
    iput v1, p0, Lcom/alibaba/doraemon/audio/opus/Utils$AudioTime;->mMinute:I

    .line 129
    iput v1, p0, Lcom/alibaba/doraemon/audio/opus/Utils$AudioTime;->mSecond:I

    .line 136
    invoke-virtual {p0, p1, p2}, Lcom/alibaba/doraemon/audio/opus/Utils$AudioTime;->setTimeInSecond(J)V

    .line 137
    return-void
.end method


# virtual methods
.method public add(I)V
    .locals 2
    .param p1, "seconds"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/16 v1, 0x3c

    .line 154
    iget v0, p0, Lcom/alibaba/doraemon/audio/opus/Utils$AudioTime;->mSecond:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/alibaba/doraemon/audio/opus/Utils$AudioTime;->mSecond:I

    .line 155
    iget v0, p0, Lcom/alibaba/doraemon/audio/opus/Utils$AudioTime;->mSecond:I

    if-lt v0, v1, :cond_0

    .line 156
    iget v0, p0, Lcom/alibaba/doraemon/audio/opus/Utils$AudioTime;->mSecond:I

    rem-int/lit8 v0, v0, 0x3c

    iput v0, p0, Lcom/alibaba/doraemon/audio/opus/Utils$AudioTime;->mSecond:I

    .line 157
    iget v0, p0, Lcom/alibaba/doraemon/audio/opus/Utils$AudioTime;->mMinute:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/alibaba/doraemon/audio/opus/Utils$AudioTime;->mMinute:I

    .line 159
    iget v0, p0, Lcom/alibaba/doraemon/audio/opus/Utils$AudioTime;->mMinute:I

    if-lt v0, v1, :cond_0

    .line 160
    iget v0, p0, Lcom/alibaba/doraemon/audio/opus/Utils$AudioTime;->mMinute:I

    rem-int/lit8 v0, v0, 0x3c

    iput v0, p0, Lcom/alibaba/doraemon/audio/opus/Utils$AudioTime;->mMinute:I

    .line 161
    iget v0, p0, Lcom/alibaba/doraemon/audio/opus/Utils$AudioTime;->mHour:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/alibaba/doraemon/audio/opus/Utils$AudioTime;->mHour:I

    .line 164
    :cond_0
    return-void
.end method

.method public getTime()Ljava/lang/String;
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 144
    iget-object v0, p0, Lcom/alibaba/doraemon/audio/opus/Utils$AudioTime;->mFormat:Ljava/lang/String;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget v3, p0, Lcom/alibaba/doraemon/audio/opus/Utils$AudioTime;->mHour:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget v3, p0, Lcom/alibaba/doraemon/audio/opus/Utils$AudioTime;->mMinute:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget v3, p0, Lcom/alibaba/doraemon/audio/opus/Utils$AudioTime;->mSecond:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setTimeInSecond(J)V
    .locals 7
    .param p1, "seconds"    # J

    .prologue
    const-wide/16 v4, 0x3c

    .line 147
    rem-long v2, p1, v4

    long-to-int v2, v2

    iput v2, p0, Lcom/alibaba/doraemon/audio/opus/Utils$AudioTime;->mSecond:I

    .line 148
    div-long v0, p1, v4

    .line 149
    .local v0, "m":J
    rem-long v2, v0, v4

    long-to-int v2, v2

    iput v2, p0, Lcom/alibaba/doraemon/audio/opus/Utils$AudioTime;->mMinute:I

    .line 150
    div-long v2, v0, v4

    long-to-int v2, v2

    iput v2, p0, Lcom/alibaba/doraemon/audio/opus/Utils$AudioTime;->mHour:I

    .line 152
    return-void
.end method
