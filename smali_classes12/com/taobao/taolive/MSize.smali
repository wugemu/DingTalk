.class public Lcom/taobao/taolive/MSize;
.super Ljava/lang/Object;
.source "MSize.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public height:I

.field public width:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(II)V
    .locals 0
    .param p1, "cx"    # I
    .param p2, "cy"    # I

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput p1, p0, Lcom/taobao/taolive/MSize;->width:I

    .line 27
    iput p2, p0, Lcom/taobao/taolive/MSize;->height:I

    .line 28
    return-void
.end method


# virtual methods
.method public copy(Lcom/taobao/taolive/MSize;)V
    .locals 1
    .param p1, "s"    # Lcom/taobao/taolive/MSize;

    .prologue
    .line 39
    if-eqz p1, :cond_0

    .line 40
    iget v0, p1, Lcom/taobao/taolive/MSize;->width:I

    iput v0, p0, Lcom/taobao/taolive/MSize;->width:I

    .line 41
    iget v0, p1, Lcom/taobao/taolive/MSize;->height:I

    iput v0, p0, Lcom/taobao/taolive/MSize;->height:I

    .line 43
    :cond_0
    return-void
.end method

.method public equals(II)Z
    .locals 1
    .param p1, "w"    # I
    .param p2, "h"    # I

    .prologue
    .line 31
    iget v0, p0, Lcom/taobao/taolive/MSize;->width:I

    if-ne v0, p1, :cond_0

    iget v0, p0, Lcom/taobao/taolive/MSize;->height:I

    if-ne v0, p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public equals(Lcom/taobao/taolive/MSize;)Z
    .locals 2
    .param p1, "s"    # Lcom/taobao/taolive/MSize;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 35
    if-eqz p1, :cond_0

    iget v0, p1, Lcom/taobao/taolive/MSize;->width:I

    iget v1, p1, Lcom/taobao/taolive/MSize;->height:I

    invoke-virtual {p0, v0, v1}, Lcom/taobao/taolive/MSize;->equals(II)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 46
    new-instance v0, Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "MSize: width = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/taobao/taolive/MSize;->width:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " height= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/taobao/taolive/MSize;->height:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    return-object v0
.end method
