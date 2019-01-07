.class final Lcom/alibaba/alimei/restfulapi/support/TypeInfo$Counter;
.super Ljava/lang/Object;
.source "TypeInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/alimei/restfulapi/support/TypeInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Counter"
.end annotation


# static fields
.field public static MAX_LEVEL:I


# instance fields
.field public currentCount:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 70
    const/4 v0, 0x3

    sput v0, Lcom/alibaba/alimei/restfulapi/support/TypeInfo$Counter;->MAX_LEVEL:I

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    const/4 v0, 0x0

    iput v0, p0, Lcom/alibaba/alimei/restfulapi/support/TypeInfo$Counter;->currentCount:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/alibaba/alimei/restfulapi/support/TypeInfo$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/alibaba/alimei/restfulapi/support/TypeInfo$1;

    .prologue
    .line 68
    invoke-direct {p0}, Lcom/alibaba/alimei/restfulapi/support/TypeInfo$Counter;-><init>()V

    return-void
.end method


# virtual methods
.method public final isContinue()Z
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 75
    iget v0, p0, Lcom/alibaba/alimei/restfulapi/support/TypeInfo$Counter;->currentCount:I

    sget v1, Lcom/alibaba/alimei/restfulapi/support/TypeInfo$Counter;->MAX_LEVEL:I

    if-gt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final step()V
    .locals 1

    .prologue
    .line 79
    iget v0, p0, Lcom/alibaba/alimei/restfulapi/support/TypeInfo$Counter;->currentCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/alibaba/alimei/restfulapi/support/TypeInfo$Counter;->currentCount:I

    .line 80
    return-void
.end method
