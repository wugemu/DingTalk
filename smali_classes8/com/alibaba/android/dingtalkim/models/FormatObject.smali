.class public final Lcom/alibaba/android/dingtalkim/models/FormatObject;
.super Ljava/lang/Object;
.source "FormatObject.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public bold:I

.field public end:I

.field public start:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final fromModelIDL(Ldti;)Lcom/alibaba/android/dingtalkim/models/FormatObject;
    .locals 3
    .param p1, "model"    # Ldti;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v2, 0x0

    .line 17
    new-instance v0, Lcom/alibaba/android/dingtalkim/models/FormatObject;

    invoke-direct {v0}, Lcom/alibaba/android/dingtalkim/models/FormatObject;-><init>()V

    .line 18
    .local v0, "object":Lcom/alibaba/android/dingtalkim/models/FormatObject;
    if-eqz p1, :cond_0

    .line 19
    iget-object v1, p1, Ldti;->a:Ljava/lang/Integer;

    .line 1033
    invoke-static {v1, v2}, Lcoc;->a(Ljava/lang/Integer;I)I

    move-result v1

    .line 19
    iput v1, v0, Lcom/alibaba/android/dingtalkim/models/FormatObject;->start:I

    .line 20
    iget-object v1, p1, Ldti;->b:Ljava/lang/Integer;

    .line 2033
    invoke-static {v1, v2}, Lcoc;->a(Ljava/lang/Integer;I)I

    move-result v1

    .line 20
    iput v1, v0, Lcom/alibaba/android/dingtalkim/models/FormatObject;->end:I

    .line 21
    iget-object v1, p1, Ldti;->c:Ljava/lang/Integer;

    .line 3033
    invoke-static {v1, v2}, Lcoc;->a(Ljava/lang/Integer;I)I

    move-result v1

    .line 21
    iput v1, v0, Lcom/alibaba/android/dingtalkim/models/FormatObject;->bold:I

    .line 23
    :cond_0
    return-object v0
.end method
