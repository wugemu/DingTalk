.class public Lcom/alibaba/android/dingtalkim/mdrender/format/DtImageFormat;
.super Ljava/lang/Object;
.source "DtImageFormat.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static TYPE_BLOCK_IMG:I = 0x0

.field public static TYPE_INLINE_IMG:I = 0x0

.field private static final serialVersionUID:J = 0x3bce9b585d7a486cL


# instance fields
.field private tips:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "tips"
    .end annotation
.end field

.field private type:I
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "type"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 14
    const/4 v0, 0x0

    sput v0, Lcom/alibaba/android/dingtalkim/mdrender/format/DtImageFormat;->TYPE_BLOCK_IMG:I

    .line 15
    const/4 v0, 0x1

    sput v0, Lcom/alibaba/android/dingtalkim/mdrender/format/DtImageFormat;->TYPE_INLINE_IMG:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static buildDefault(Ljava/lang/String;)Lcom/alibaba/android/dingtalkim/mdrender/format/DtImageFormat;
    .locals 1
    .param p0, "tips"    # Ljava/lang/String;

    .prologue
    .line 52
    new-instance v0, Lcom/alibaba/android/dingtalkim/mdrender/format/DtImageFormat;

    invoke-direct {v0}, Lcom/alibaba/android/dingtalkim/mdrender/format/DtImageFormat;-><init>()V

    .line 53
    .local v0, "dtImageFormat":Lcom/alibaba/android/dingtalkim/mdrender/format/DtImageFormat;
    invoke-virtual {v0, p0}, Lcom/alibaba/android/dingtalkim/mdrender/format/DtImageFormat;->setTips(Ljava/lang/String;)V

    .line 54
    return-object v0
.end method


# virtual methods
.method public getTips()Ljava/lang/String;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/mdrender/format/DtImageFormat;->tips:Ljava/lang/String;

    return-object v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 35
    iget v0, p0, Lcom/alibaba/android/dingtalkim/mdrender/format/DtImageFormat;->type:I

    return v0
.end method

.method public isBlockImage()Z
    .locals 2
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        serialize = false
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 44
    iget v0, p0, Lcom/alibaba/android/dingtalkim/mdrender/format/DtImageFormat;->type:I

    sget v1, Lcom/alibaba/android/dingtalkim/mdrender/format/DtImageFormat;->TYPE_BLOCK_IMG:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isInlineImage()Z
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 48
    iget v0, p0, Lcom/alibaba/android/dingtalkim/mdrender/format/DtImageFormat;->type:I

    sget v1, Lcom/alibaba/android/dingtalkim/mdrender/format/DtImageFormat;->TYPE_INLINE_IMG:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setTips(Ljava/lang/String;)V
    .locals 0
    .param p1, "tips"    # Ljava/lang/String;

    .prologue
    .line 31
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/mdrender/format/DtImageFormat;->tips:Ljava/lang/String;

    .line 32
    return-void
.end method

.method public setType(I)V
    .locals 0
    .param p1, "type"    # I

    .prologue
    .line 39
    iput p1, p0, Lcom/alibaba/android/dingtalkim/mdrender/format/DtImageFormat;->type:I

    .line 40
    return-void
.end method
